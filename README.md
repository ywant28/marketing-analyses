#  Marketing Performance Analysis using SQL

## 🚀 Project Overview

This project demonstrates an **end-to-end SQL-based data analysis workflow** for evaluating marketing performance across multiple channels and products.

The analysis focuses on identifying **high-performing campaigns, inefficient ad spend, and growth opportunities** using key marketing KPIs.

---

## 🎯 Business Objective

To analyze marketing data and answer critical business questions such as:

* Which channel generates the highest return?
* Where is the budget being wasted?
* Which products perform best?
* What trends can be observed over time?

---

## 🧩 Workflow

1. **Data Import** from CSV files into MySQL
2. **Data Cleaning & Validation** (NULL, duplicates, logical errors)
3. **Applying Constraints** (Primary Keys & Foreign Keys)
4. **KPI Calculation** (CTR, CPM, ROAS, Conversion Rate)
5. **Product & Channel Analysis**
6. **Time-Series Analysis (Daily Trends)**
7. **Business Insights & Recommendations**

---

## 📂 Dataset Description

### Tables Used:

* **product** → Product details
* **platform** → Marketing channels
* **performance** → Daily campaign performance

---

## 📊 Key Metrics Explained

* **CTR (Click Through Rate)** = Clicks / Impressions × 100
* **CPM (Cost per 1000 Impressions)** = Cost / Impressions × 1000
* **ROAS (Return on Ad Spend)** = Revenue / Cost
* **Conversion Rate** = Conversions / Clicks × 100

---

## 📈 Sample Analysis

### 📊 Product Performance

![Product Analysis](screenshots/product_analysis.png)

### 📈 Channel ROAS

![Channel ROAS](screenshots/channel_roas.png)

### ⏳ Time-Series Trends

![Time Series](screenshots/time_series.png)

---

## 🔍 Key Insights

* 📌 High ROAS channels should be **scaled for better returns**
* 📉 Low CTR indicates **ineffective ad creatives**
* ⚠️ High clicks but low conversions suggest **landing page issues**
* 📊 Performance varies by date, indicating **seasonality trends**

---

## ⚠️ Challenges Identified

* Some channels showed **low ROAS despite high spend**
* High impressions with low clicks → **poor engagement**
* Inefficient allocation of marketing budget

---

## 💡 Recommendations

* Reallocate budget to **high-performing channels**
* Improve creatives for low CTR campaigns
* Optimize landing pages to increase conversions
* Use time-based trends to plan campaigns

---

## 🧠 What I Learned

* Data cleaning is crucial before analysis
* Metrics should be interpreted together, not in isolation
* Time-series analysis helps in better decision-making
* SQL can be used to solve real-world business problems

---

## 🛠️ Tools Used

* MySQL
* Excel (Data Preparation)

---

## 📌 Project Highlights

✔ End-to-End SQL Project
✔ Real-world Marketing Use Case
✔ Business-Focused Insights
✔ Clean & Structured Query Design


