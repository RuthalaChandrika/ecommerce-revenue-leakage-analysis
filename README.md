
# 🛒 E-Commerce Revenue Leakage Analysis

## 📌 Project Overview
This project analyzes Amazon E-Commerce sales data to identify the key drivers of **Revenue Leakage** and provide actionable recommendations to improve profitability.
Revenue leakage occurs when potential revenue is lost due to order cancellations, fulfillment inefficiencies, logistics failures, ineffective promotions, and inventory concentration in low-demand products.
Using **Excel, Power Query, SQL, and Power BI**, this project transforms raw sales data into business insights that support strategic decision-making.

---

# 🎯 Business Problem
Business Problem:
An e-commerce company has experienced strong sales growth, but management suspects that significant revenue is being lost due to:
Order cancellations
Shipping and fulfillment issues
Low-performing products
Ineffective promotional campaigns
Inventory allocated to products with low demand
The company wants to understand where revenue leakage occurs and how operational and sales strategies can be improved to increase profitability.

### Business Question
> How can the company increase profitability by identifying the causes of revenue leakage and optimizing product, promotion, and fulfillment strategies?

---

# 🗂 Dataset Information
The dataset contains Amazon sales transaction data with the following fields:
| Column |
|----------|
| Order ID |
| Date |
| Status |
| Fulfillment |
| Sales Channel |
| Ship Service Level |
| Style |
| SKU |
| Category |
| Size |
| ASIN |
| Courier Status |
| Quantity |
| Currency |
| Amount |
| Ship City |
| Ship State |
| Ship Postal Code |
| Ship Country |
| Promotion IDs |
| B2B |
| Fulfilled By |

---

# 🧹 Data Cleaning & Transformation

### Tool Used
- Excel Power Query

### Cleaning Steps

| Column | Transformation |
|----------|---------------|
| Courier Status | Missing values replaced with "Unknown" |
| Currency | Missing values replaced with "INR" |
| Amount | Missing values replaced with 0 for cancelled orders |
| Ship Country | Missing values replaced with "IN" |
| Promotion IDs | Missing values replaced with "Unknown" |
| Fulfilled By | Missing values replaced with "Unknown" |
| Status | Grouped into business-friendly status categories |

### Additional Columns Created

- Status Group
- Adjusted Amount

---

# 🛠 SQL Exploratory Data Analysis

The following analyses were performed:

## Revenue Leakage Analysis

- Cancellation Rate
- Revenue Leakage %
- Status-wise Performance

## Fulfillment Analysis

- Orders by Fulfillment
- Revenue by Fulfillment
- Cancellation Rate by Fulfillment

## Sales Channel Analysis

- Orders by Sales Channel
- Revenue by Sales Channel
- Cancellation Rate by Sales Channel

## Shipping Analysis

- Ship Service Level Performance
- Courier Status Analysis
- Shipping-related Cancellation Trends

## Product Analysis

- Category Performance
- SKU Performance
- Style Performance
- Size Analysis
- Quantity Analysis

## Geographic Analysis

- Revenue by State
- Revenue by City
- State-wise Cancellation Rate

## Promotion Analysis

- Promotion Revenue
- Promotion Cancellation Rate

## B2B Analysis

- Revenue Contribution
- Cancellation Analysis
- B2B Revenue %

---

# 📊 Key Performance Indicators (KPIs)

The dashboard tracks the following KPIs:

- Total Revenue
- Net Revenue
- Total Orders
- Cancelled Orders
- Cancellation Rate %
- Revenue Leakage %
- Average Order Value (AOV)
- B2B Revenue %
- Fulfillment Rate

---

# 📈 Power BI Dashboard

## Page 1: Revenue Leakage Analysis
### Objective
Identify where revenue is being lost.
### Visuals
- Cancellation Rate by Category
- Cancellation Rate by Fulfillment
- Cancellation Rate by State
- Cancellation Rate by Courier Status
- Cancellation Rate by Sales Channel
- Cancellation Rate by Promotion

### Business Question Answered
> Where is the company losing revenue?

---

## Page 2: Revenue Performance Dashboard
### Objective
Analyze revenue generation patterns.
### Visuals
- Revenue by Category
- Revenue by State
- Revenue by Style
- Revenue by Size
- Revenue by Fulfillment
- Revenue by Promotion
- Revenue by Courier Status
- Revenue by B2B Segment

### Business Question Answered
> Which products, regions, and operations generate the most revenue?

---

## Page 3: Executive Insights & Recommendations
### Objective
Provide business recommendations based on analytical findings.
---

# 🔍 Key Findings
### 1. High Revenue Leakage from Order Cancellations
- Cancellation Rate: 14.21%
- More than 18,000 orders were cancelled.
- Revenue Leakage: 8.80%
### 2. Fulfillment Inefficiencies
- Merchant Fulfillment experiences higher cancellation rates than Amazon Fulfillment.
### 3. Shipping Challenges
- Standard Shipping shows higher cancellation rates than Expedited Shipping.
### 4. Unshipped Orders Drive Cancellations
- A large share of cancelled orders originates from unshipped orders.
### 5. Product Performance
- Set, Kurta, and Western Dress categories generate the highest revenue.
- Some high-revenue categories also exhibit higher cancellation rates.
### 6. Geographic Performance
- Maharashtra, Karnataka, Telangana, and Tamil Nadu generate the highest revenue.
### 7. Promotion Effectiveness
- Certain promotions drive sales volume but also increase cancellations.
### 8. B2B Segment
- B2B contributes less than 1% of total revenue.
---

# 💡 Business Recommendations
## Improve Fulfillment Operations
- Increase Amazon Fulfillment adoption.
- Monitor merchant fulfillment performance.

## Reduce Shipping Delays
- Improve warehouse processing times.
- Accelerate courier assignment.

## Optimize Product Portfolio
- Focus inventory on high-performing categories.
- Reduce inventory investment in low-demand products.

## Improve Shipping Strategy
- Encourage expedited shipping for high-value orders.

## Optimize Promotions
- Review promotions with high cancellation rates.
- Improve promotion targeting.

## Expand High-Performing Markets
- Increase marketing efforts in top-performing states.

## Grow the B2B Segment
- Develop targeted campaigns for business buyers.

---

# 🛠 Tools & Technologies
- Microsoft Excel
- Power Query
- MySQL
- Power BI
- DAX

---

# 📚 Skills Demonstrated
- Data Cleaning
- Data Transformation
- SQL Querying
- Exploratory Data Analysis (EDA)
- KPI Development
- Data Visualization
- Dashboard Design
- Business Intelligence
- Data Storytelling
- Problem Solving

---


# 🚀 Project Outcome

This project successfully identified the primary causes of revenue leakage and provided data-driven recommendations to improve profitability through better fulfillment strategies, shipping optimization, inventory management, and promotion effectiveness.

The analysis demonstrates how data analytics can help e-commerce businesses reduce operational inefficiencies and maximize revenue.
