# Customer Order Behavior Analysis (SQL Project)

This project uses PostgreSQL to analyze customer order behavior for an e-commerce dataset. It focuses on uncovering key insights into customer spending, product demand, category performance, and temporal trends.

## Overview

The goal of this project is to perform business-oriented data analysis using SQL, simulating how a data analyst might work with transactional data to generate actionable insights. The dataset includes customers, products, orders, and order items.

## Key Questions Answered

- What is the total lifetime value of each customer?
- Which products are ordered most frequently?
- Which product categories generate the most revenue?
- How frequently do customers order, and how can they be segmented?
- How do order volume and revenue vary by month?

## Technologies Used

- PostgreSQL
- pgAdmin
- SQL (aggregates, joins, views, case statements, date functions)

## Project Structure

```
customer-order-behavior-analysis/
├── sql/
│   ├── schema.sql                # Table creation (customers, products, orders, order_items)
│   ├── insert_sample_data.sql   # Sample data for testing queries
│   ├── analysis_queries.sql     # All analysis queries (CLV, segments, product trends)
│   └── views.sql                # SQL views for reusable insights
├── csv/
│   ├── customer_ltv.csv
│   ├── revenue_by_category.csv
│   └── orders_over_time.csv
├── README.md                    # Project documentation and summary
```

## How to Use

1. Clone the repository and open pgAdmin.
2. Run the scripts in `sql/` in this order:
   - `schema.sql`
   - `insert_sample_data.sql`
   - `analysis_queries.sql` or copy individual queries for analysis.
3. Use the `csv/` folder exports in Excel or Tableau for visualization.
4. Modify the sample data to simulate different scenarios or volumes.

## Insights Summary

- Customer Lifetime Value: Identified top-spending customers.
- Product Demand: Pinpointed the most frequently ordered products.
- Revenue by Category: Quantified category-level sales performance.
- Customer Segmentation: Classified customers into low, medium, and high order frequency.
- Time Trends: Aggregated monthly order counts and revenue for trend analysis.

## License

This project is open-source and available under the MIT License.
