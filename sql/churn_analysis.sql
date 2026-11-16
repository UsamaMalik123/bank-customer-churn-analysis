-- Bank Customer Churn Analysis - SQL Business Questions
-- Run in Snowflake against BANK_CHURN_DB.PUBLIC.CUSTOMERS

-- 1. Which country has the highest churn rate?
SELECT
    Country,
    COUNT(*) AS total_customers,
    SUM(Exited) AS churned_customers,
    ROUND(SUM(Exited) * 100.0 / COUNT(*), 2) AS churn_rate_pct
FROM BANK_CHURN_DB.PUBLIC.CUSTOMERS
GROUP BY Country
ORDER BY churn_rate_pct DESC;
-- Results: Spain 16.85%, Germany 16.38%, France 15.09%


-- 2. Does the number of products a customer holds affect churn?
SELECT
    NumOfProducts,
    COUNT(*) AS total_customers,
    SUM(Exited) AS churned_customers,
    ROUND(SUM(Exited) * 100.0 / COUNT(*), 2) AS churn_rate_pct
FROM BANK_CHURN_DB.PUBLIC.CUSTOMERS
GROUP BY NumOfProducts
ORDER BY NumOfProducts;
-- Results: 1 product 16.9%, 2 products 15.3%, 3 products 14.88%, 4 products 16.33%
-- No strong pattern


-- 3. Are inactive members more likely to churn than active ones?
SELECT
    IsActiveMember,
    COUNT(*) AS total_customers,
    SUM(Exited) AS churned_customers,
    ROUND(SUM(Exited) * 100.0 / COUNT(*), 2) AS churn_rate_pct
FROM BANK_CHURN_DB.PUBLIC.CUSTOMERS
GROUP BY IsActiveMember
ORDER BY IsActiveMember;
-- Results: Inactive 16.33%, Active 15.89%


-- 4. Which age group churns the most?
SELECT
    CASE
        WHEN Age < 30 THEN 'Under 30'
        WHEN Age BETWEEN 30 AND 45 THEN '30-45'
        WHEN Age BETWEEN 46 AND 60 THEN '46-60'
        ELSE 'Over 60'
    END AS age_group,
    COUNT(*) AS total_customers,
    SUM(Exited) AS churned_customers,
    ROUND(SUM(Exited) * 100.0 / COUNT(*), 2) AS churn_rate_pct
FROM BANK_CHURN_DB.PUBLIC.CUSTOMERS
GROUP BY age_group
ORDER BY churn_rate_pct DESC;
-- Results: Over 60 17.6%, Under 30 17.3%, 30-45 16.91%, 46-60 13.79% (most loyal)
