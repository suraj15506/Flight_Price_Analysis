
# ✈️ Airline_Price_Analysis

A comprehensive data analytics project that explores flight pricing trends using **Python**, **SQL**, and **Power BI**. This project helps identify patterns in airline pricing to support data-driven decisions for travelers, airlines, and market analysts.

---

## 📁 Project Structure

Airline-Price-Analysis/

├── data/

│  └── flight_price.csv

├── notebooks/

│  └── 1_data_cleaning_analysis.ipynb

├── sql/

│  ├── 1_data_cleaning.sql

│  ├── 2_kpi_queries.sql

│  ├── 3_insight_queries.sql

│  └── 6_reporting_queries.sql

├── powerbi/

│  └── airline_price_analysis.pbix

├── README.md

└── .gitignore


---

## 🛠️ Tools & Technologies

- **Python (Pandas, NumPy, Matplotlib)** – For data cleaning and preliminary analysis.
- **SQL (MySQL / PostgreSQL)** – For writing queries to extract KPIs and deep insights.
- **Power BI** – For building interactive dashboards and visualizations.

---

## 📊 Dashboards

### 🔹 Page 1: Overview Dashboard
- **Card:** Total Flights
- **Card:** Average Price
- **Bar Chart:** Avg Price by Airline
- **Pie Chart:** Stops Distribution
- **Line Chart:** Price Trend Over Time

### 🔹 Page 2: Airline Analysis
- **Slicer:** Airline
- **Table:** All flight details
- **Line Chart:** Cumulative Average Price by Airline

---

## 📌 Key Insights

- Cumulative average pricing trend helps identify competitive airline offerings.
- Airlines with fewer stops tend to have higher prices.
- Top 3 cost-effective airlines identified.
- One-stop flights are the most common.

---

## ✅ How to Run This Project

1. **Clone the repository**
   ```bash
   git clone https://github.com/suraj15506/Flight_Price_Analysis
   cd airline-price-analysis
2. **Run the Jupyter Notebook**
   - Navigate to `notebooks/Flight_Price_P.ipynb`
   - Execute all cells to clean and analyze the data.

3. **Import `.csv` or Connect SQL in Power BI**
   - Load the `data/flight_price_cleaned.csv` file **or**
   - Connect to the SQL database using the provided `.sql` queries in the `sql/` folder.
   - Open the Power BI file: `powerbi/airline_price_analysis.pbix` to explore the interactive dashboards.

---

## 📂 Dataset

- **Dataset Used**: A real-world inspired flight pricing dataset with the following features:
  - **Airline**
  - **Source**
  - **Destination**
  - **Departure Time**
  - **Arrival Time**
  - **Duration**
  - **Stops**
  - **Price**

