# Bank Customer Churn Analysis

End-to-end data analytics project: cleaning a raw bank customer dataset, loading it into a cloud data warehouse (Snowflake), answering business questions with SQL, and building a live, interactive Power BI dashboard.

## Project Overview

Customer churn (customers leaving the bank) is one of the most expensive problems a retail bank faces. This project analyzes a dataset of 5,000 bank customers to identify which customer segments churn the most, so the bank can prioritize retention efforts.

Workflow: Raw data to Python cleaning to Snowflake SQL analysis to Power BI dashboard.

## Dataset

The dataset contains 5,000 bank customer records with 15 attributes: CustomerID, Customer_Name, Age, CreditScore, Country, Gender, Tenure, Balance, NumOfProducts, HasCrCard, IsActiveMember, EstimatedSalary, Branch, JoinDate, and Exited, the churn target where 1 means churned and 0 means retained.

## Tools Used

Python with pandas for data cleaning and preparation. Snowflake as the cloud data warehouse, with SQL for business question analysis. Power BI for an interactive dashboard connected live to Snowflake, using DAX measures, calculated columns, and slicers.

## Data Cleaning

The raw dataset was cleaned in Python and pandas before analysis, including checking and handling missing values, removing duplicate records, standardizing column names and data types, and validating categorical values such as Country and Gender for consistency.

## SQL Analysis in Snowflake

The cleaned data was loaded into a Snowflake table and queried to answer four core business questions.

Churn rate by country: Spain 16.85 percent, Germany 16.38 percent, France 15.09 percent.

Churn rate by number of products: no strong pattern, with rates across 1 to 4 products ranging narrowly from about 14.9 percent to 16.9 percent.

Churn rate by active membership: inactive members 16.33 percent, active members 15.89 percent, a modest gap.

Churn rate by age group: Over 60 at 17.60 percent, Under 30 at 17.30 percent, 30 to 45 at 16.91 percent, and 46 to 60 at 13.79 percent, the most loyal segment.

## Power BI Dashboard

An interactive dashboard was built in Power BI, connected live to Snowflake via Import mode. It features KPI cards for Total Customers, Churn Rate, Average Balance, and Average Credit Score, a Churn Rate by Country chart, a Churn Rate by Age Group chart with custom sorting via DAX calculated columns, a Churn Rate by Active Membership chart, a Churn Rate by Number of Products chart, and a Country slicer for interactive filtering.

Dashboard screenshot to be added.

## Key Insights

Spain has the highest customer churn rate among the three countries. Customers aged 46 to 60 are the most loyal segment, while both younger and older customers churn more. Inactive membership is associated with slightly higher churn, though the effect is modest. Number of products held does not show a strong relationship with churn on its own.

## Skills Demonstrated

Python, pandas, SQL, Snowflake, Power BI, DAX, Data Cleaning, Data Visualization, Business Analysis.

## Author

Muhammad Usama Bin Babar
