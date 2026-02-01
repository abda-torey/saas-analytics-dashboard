# 📊 SaaS Analytics Dashboard with Power BI & SQL

This project explores a synthetic SaaS business dataset using SQL Server and Power BI. It presents a complete analytics workflow, from backend SQL views to a professional Power BI dashboard that covers executive KPIs, revenue trends, and churn insights.

---

## 🚀 Project Highlights

- 💡 Modeled business logic with **SQL views** in SQL Server
- 📈 Built a multi-page **Power BI dashboard** with interactive slicers and cumulative metrics
- 📁 Performed a detailed **Exploratory Data Analysis (EDA)** using Python and Jupyter
- 📘 Fully documented, modular, and portfolio-ready repository

---

## 📁 Folder Structure

```
ravenstack-saas-dashboard/
├── assets/
│   └── analytics_icon.png
├── data/
│   ├── acounts.csv
│   ├── churn_events.csv
│   ├── feature_usage.csv
│   ├── subscriptions.csv
│   └── support_tickets.csv
├── powerbi/
│   ├── dashboard.pbix
│   └── screenshots/
│       ├── page1_executive_summary.png
│       ├── page2_revenue_trends.png
│       └── page3_churn_retention.png
├── sql/
│   ├── vw_account_summary.sql
│   ├── vw_subscription_summary.sql
│   ├── vw_churn_summary.sql
│   ├── vw_support_metrics.sql
│   └── vw_feature_usage_summary.sql
├── notebooks/
│   └── 01_exploratory_analysis.ipynb
│   └── 01_exploratory_analysis.pdf
├── README.md
├── .gitignore
```

---

## 📊 Dashboard Overview

### Page 1: Executive Summary

- KPIs: MRR, ARR, Churn Rate, Avg Satisfaction
- Filters: Plan Tier, Industry, Country
- Visuals: Accounts by Plan Tier, dynamic slicer buttons

### Page 2: Revenue Trends & Plan Performance

- Cumulative MRR by month and plan
- New Subscriptions over time
- MRR by Industry and Plan Tier (matrix)
- MRR Distribution by Plan & Industry (treemap)

### Page 3: Churn & Retention

- KPIs: Churn Rate, Retention, Refund Avg
- Cumulative churn by plan tier
- Churn reasons with refund values (stacked chart)
- Churn rate by industry
- Treemap: churn reason by plan tier

---

## 🧠 SQL Logic Example

All visuals are powered by pre-aggregated SQL views. Example:

```sql
CREATE VIEW vw_churn_summary AS
SELECT
    a.account_id,
    a.plan_tier,
    c.reason_code,
    c.refund_amount_usd,
    c.churn_date
FROM churn_events c
JOIN accounts a ON c.account_id = a.account_id;
```

See `/sql` for all views.

---

## 📊 Exploratory Data Analysis

The project includes a full Python-based EDA notebook that covers:

- Loading and validating all CSV files
- Null value checks and schema inspection
- Basic distributions of plan tiers, referral sources, churn rates
- Monthly signup and subscription trends

📄 File: `notebooks/01_exploratory_analysis.ipynb`

---

## 🛠 Tools Used

- SQL Server 2022
- Power BI Desktop (16:9 layout)
- Python (pandas, matplotlib) for EDA
- DAX for KPIs and time intelligence


## 📎 Credits

This project is based on the **RavenStack synthetic SaaS dataset** by River @ Rivalytics.  
Used with attribution under MIT-like license.

🔗 [Original dataset on Kaggle](https://www.kaggle.com/datasets/rivalytics/saas-subscription-and-churn-analytics-dataset)
