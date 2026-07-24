-- ====================================
-- CREATING DATABASE AND IMPORTING DATA 
-- ====================================

   CREATE DATABASE IF NOT EXISTS indian_food_analysis;
   USE indian_food_analysis;
   DROP TABLE IF EXISTS indian_food;
   CREATE TABLE indian_food (
     name VARCHAR(100) NOT NULL,
     ingredients TEXT,
     diet VARCHAR(20),
     prep_time INT,
     cook_time INT,
     flavor_profile VARCHAR(30),
     course VARCHAR(50),
     state VARCHAR(100),
     region VARCHAR(30)
   );


-- =====================================
-- DATA EXPLORATION
-- =====================================

-- === count of rows ==== 
   select count(*) as total_dishes from indian_food;

-- sample data 
   select * from indian_food 
   limit 10;

-- null values
   select * from indian_food
   where name  is null
   or ingredients is null
   or diet is null
   or prep_time is null
   or cook_time is null
   or flavor_profile is null
   or course is null
   or state is null
   or region is null;

-- different food_item names
   select  distinct name 
   from indian_food 
   order by name;

-- count distinct values
   select
   count(distinct state) as state,
   count(distinct region) as region,
   count(distinct diet) as diets
   from indian_food;

-- unique states and regions
   select distinct state 
   from indian_food
   order by state;

   select distinct region
   from indian_food
   order by region;

-- Vegetarian vs Non-Vegetarian
   select diet,count(*) as total
   from indian_food
   group by diet;

-- Number of Dishes in Each State
   select state, count(*) as total_dishes
   from indian_food
   group by state
   order by total_dishes;

-- Number of Dishes by Region
   select region, count(*) as total_dishes
   from indian_food
   group by region
   order by total_dishes;

-- Number of Dishes by Course
   select course, count(*) as total_dishes
   from indian_food
   group by course
   order by total_dishes;

-- Preparation Time Statistics
   select
   min(prep_time) as min_prep,
   max(prep_time) as max_prep,
   avg(prep_time) as avg_prep
   from indian_food;

-- cooking Time Statistics
   select
   min(cook_time) as min_cook,
   max(cook_time) as max_cook,
   avg(cook_time) as avg_cook
   from indian_food;

-- Total Time Required
   select name,
   prep_time,
   cook_time,
   (cook_time + prep_time) as total_time
   from indian_food 
   order by total_time desc;

-- Top 10 Fastest Dishes
   select name,
   prep_time,
   cook_time,
   (cook_time + prep_time) as total_time
   from indian_food 
   order by total_time 
   limit 10;

-- Flavor Profile Distribution
   select flavor_profile,count(*) as total
   from indian_food
   group by flavor_profile;

-- =====================================
-- DATA CLEANING
-- =====================================

-- check fro duplicate records
   select name,count(*) as total_dishes
   from indian_food
   group by name
   having count(*) > 1;

-- Placeholder values (like -1)
   select * from indian_food
   where prep_time =-1 and cook_time =-1;

-- number of  missing values
   select sum(prep_time = -1)as missing_prep_time,
   sum(cook_time =-1) as missing_cook_time,
   sum(flavor_profile=-1) as missing_flavor_profile,
   sum(course =-1) as missing_course,
   sum(state =-1) as missing_state,
   sum(region =-1) as missing_region
   from indian_food;

-- for any thing we want to update in the table we use below syntax for safe update
   SET SQL_SAFE_UPDATES =0;
   
-- Replace -1 with NULL we will use update to replace values

   SET SQL_SAFE_UPDATES =0;
   update indian_food
   set prep_time = null
   where prep_time = -1;

   update indian_food
   set cook_time = null
   where cook_time = -1;

   update indian_food
   set flavor_profile = null
   where flavor_profile = '-1';

   update indian_food
   set state = null
   where state = '-1';

   update indian_food
   set region = null
   where region = '-1';

-- after updating all the missing values with null
   select sum(prep_time = -1)as missing_prep_time,
   sum(cook_time =-1) as missing_cook_time,
   sum(flavor_profile=-1) as missing_flavor_profile,
   sum(course =-1) as missing_course,
   sum(state =-1) as missing_state,
   sum(region =-1) as missing_region
   from indian_food;


-- After removing missing values display the data in the table
    select * from indian_food;

-- display unique flavor profile from the table
   SELECT DISTINCT flavor_profile
   FROM indian_food;

-- Missing values were retained as NULL because SQL aggregate
-- functions automatically ignore NULL values.
   
   
-- =====================================
-- BUSINESS ANALYSIS
-- =====================================
   
-- The dataset contains dishes from different states of India, showing the diversity of Indian cuisine.
   select distinct 
   state from indian_food
   order by state;

-- Vegetarian dishes are more common than non-vegetarian dishes in the dataset.
   select diet,count(*) as total_dishes from indian_food
   group by diet
   order by total_dishes desc;

-- Some states have more dishes than others, indicating they have a wider variety of famous foods.
   select state,count(name) as total_dishes from
   indian_food group by state 
   order by total_dishes desc;

-- Most dishes belong to the Main Course, Snack, and Dessert categories.
   select course,count(*) as total_dishes
   from indian_food
   group by course
   order by total_dishes desc;

-- Sweet and spicy are the most common flavor profiles.
   select flavor_profile,count(*) as total_dishes
   from indian_food
   group by flavor_profile
   order by total_dishes desc;

-- Many dishes take longer to cook than to prepare.
   select count(*) as total_dishes from indian_food
   where cook_time > prep_time;
 
-- Some dishes can be prepared quickly, while traditional dishes require more time.
   select name,prep_time
   from indian_food
   where prep_time <= 30;
 
 -- the dishes require preparetion more then one hour
   select name, prep_time
   from indian_food
   where prep_time >60;

-- Missing values (-1) were cleaned and replaced with NULL to improve data quality.
   select count(*) as missing_values
   from indian_food 
   where cook_time =-1
   or prep_time =-1;

-- After cleaning the data, the analysis became more accurate and reliable.
   select * 
   from indian_food 
   where cook_time =-1
   or prep_time =-1;

-- SQL helped identify useful patterns in Indian food based on state, region, diet, flavor, and cooking time.
   select state,count(*) as total_dishes
   from indian_food 
   group by state
   order by total_dishes desc;
   
-- =====================================
-- PROJECT CONCLUSION
-- =====================================

  -- 1. The dataset contains dishes from different states of India.
  -- 2. Vegetarian dishes are more common than non-vegetarian dishes.
  -- 3. Some states have a higher number of dishes than others.
  -- 4. Main Course, Snacks, and Desserts are the most common categories.
  -- 5. Sweet and spicy are the most common flavor profiles.
  -- 6. Many dishes require more cooking time than preparation time.
  -- 7. Missing values (-1) were replaced with NULL.
  -- 8. Data cleaning improved the quality of analysis.
  -- 9. SQL helped identify useful patterns in the dataset.
  -- 10. The project demonstrates practical SQL skills in data exploration, cleaning, and analysis.