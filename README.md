# 🍛 Indian Food Analysis using MySQL

## 📌 Project Overview

This project analyzes an **Indian Food Dataset** using **MySQL**. The main objective is to explore, clean, and analyze the dataset using SQL to extract meaningful insights about Indian cuisine.

---

# 📂 Project Structure

```text
INDIAN_FOOD_ANALYSIS/
│
├── indian_food.sql              # Complete SQL project
├── indian_food.csv              # Dataset
│
├── data_explore/                # Data Exploration screenshots
│
├── data_clean/                  # Data Cleaning screenshots
│
└── business_analysis/           # SQL Analysis screenshots
```

---

# 🛠️ Tools Used

* MySQL
* MySQL Workbench
* SQL

---

# 📊 Dataset Information

* **Dataset:** Indian Food Dataset
* **Total Records:** 255
* **Total Columns:** 9

Columns:

* Name
* Ingredients
* Diet
* Preparation Time
* Cooking Time
* Flavor Profile
* Course
* State
* Region

---

# 🚀 Project Workflow

## 1️⃣ Database Creation

* Created the database.
* Created the `indian_food` table.
* Imported the CSV dataset.

---

## 2️⃣ Data Exploration

Performed:

* Dataset overview
* Total records
* Unique states
* Unique regions
* Diet distribution
* Course distribution
* Flavor profile distribution
* Average cooking time
* Average preparation time
* Maximum and minimum cooking time

📷 **Screenshots:** `data_explore/`

---

## 3️⃣ Data Cleaning

Performed:

* Duplicate check
* NULL value check
* Missing value identification
* Replaced `-1` with `NULL`
* Verified cleaned dataset

📷 **Screenshots:** `data_clean/`

---

## 4️⃣ Business Analysis

Analyzed:

* State-wise dishes
* Region-wise dishes
* Vegetarian vs Non-Vegetarian dishes
* Most common courses
* Most common flavor profiles
* Longest cooking dishes
* Average preparation time
* Average cooking time
* Fast and slow cooking dishes

📷 **Screenshots:** `business_analysis/`

---

# 🔍 Key Insights

* The dataset contains dishes from different states of India.
* Vegetarian dishes are more common than non-vegetarian dishes.
* Some states have more dishes than others.
* Most dishes belong to the Main Course, Snack, and Dessert categories.
* Sweet and spicy are the most common flavor profiles.
* Many dishes take longer to cook than to prepare.
* Some dishes can be prepared quickly, while traditional dishes require more time.
* Missing values (`-1`) were replaced with `NULL` to improve data quality.
* Data cleaning improved the accuracy of the analysis.
* SQL helped identify useful patterns based on state, region, diet, flavor, and cooking time.

---

# 💻 SQL Concepts Used

* CREATE DATABASE
* CREATE TABLE
* SELECT
* WHERE
* GROUP BY
* ORDER BY
* DISTINCT
* COUNT()
* AVG()
* MIN()
* MAX()
* UPDATE
* NULL Handling
* Aggregate Functions

---

# 📚 Skills Demonstrated

* SQL
* MySQL
* Data Exploration
* Data Cleaning
* Data Analysis
* Business Insight Generation

---

# 🎯 Conclusion

This project demonstrates how SQL can be used to analyze a real-world dataset. I imported the dataset, explored its structure, cleaned missing values, and answered business questions using SQL. Through this project, I strengthened my SQL skills in data exploration, data cleaning, aggregation, filtering, grouping, and analytical thinking.

---

## 👨‍💻 Author

**Harish Kotgale**

If you found this project useful, consider giving it a ⭐ on GitHub.
