# Data Analysis of Superstone Sales Data

## 📌 Solution

  

  
### 1. Number of Orders by ShipMode


````sql
SELECT
  Ship_Mode,
  COUNT(Order_ID) AS Number_of_Order_ID
FROM
  `valid-heuristic-371516.Superstone.Superstone Dataset`
GROUP BY
  Ship_Mode
````

**Answer:**

<img width="141" alt="image" src= https://github.com/Sambify/Superstone-data-analysis/blob/3e46dde348b70228277e8c1db7e56218e70c20bc/download%20(1).png

Results-

[{
  "Ship_Mode": "Standard Class",
  "Number_of_Order_ID": "5968"
}, {
  "Ship_Mode": "Second Class",
  "Number_of_Order_ID": "1945"
}, {
  "Ship_Mode": "Same Day",
  "Number_of_Order_ID": "543"
}, {
  "Ship_Mode": "First Class",
  "Number_of_Order_ID": "1538"
}]





### 2. Orders by Ship mode and Order_ID
  
````sql
SELECT
  Ship_Mode,
  COUNT(Order_ID) AS Number_of_Order_ID
FROM
  `valid-heuristic-371516.Superstone.Superstone Dataset`
WHERE
  Sales BETWEEN 5
  AND 200
GROUP BY
  Ship_Mode
````


**Answer:**

Results -
  
[{
  "Ship_Mode": "Standard Class",
  "Number_of_Order_ID": "4106"
}, {
  "Ship_Mode": "Second Class",
  "Number_of_Order_ID": "1350"
}, {
  "Ship_Mode": "Same Day",
  "Number_of_Order_ID": "386"
}, {
  "Ship_Mode": "First Class",
  "Number_of_Order_ID": "1066"
}]




### 3. Orders by Sales between 5 and 200 and Segment is consumer
  
````sql
SELECT
  DISTINCT Order_ID,
FROM
  `valid-heuristic-371516.Superstone.Superstone Dataset`
WHERE
  Sales BETWEEN 5
  AND 200
  AND Segment = 'Consumer'
````

**Answer:**


Results -

[{
  "Order_ID": "CA-2017-127656"
}, {
  "Order_ID": "CA-2017-160927"
}, {
  "Order_ID": "US-2017-106705"
}, {
  "Order_ID": "CA-2016-167584"

  .......




### 4. Average sales by State


````sql
SELECT
  State,
  AVG(Sales) AS average_of_Sales
FROM
  `valid-heuristic-371516.Superstone.Superstone Dataset`
GROUP BY
  State
ORDER BY
  State asc

````


**Answer:**


  Results - 

  [{
  "State": "Alabama",
  "average_of_Sales": "319.84655737704912"
}, {
  "State": "Arizona",
  "average_of_Sales": "157.50893303571428"
}, {
  "State": "Arkansas",
  "average_of_Sales": "194.63549999999992"
}, {
  "State": "California",
  "average_of_Sales": "228.72945102448807"
}, 

  .......




### 5. Maximum and Minimum Sales by State

````sql

  SELECT
  State,
  MAX(Sales) AS max_Sales,
  MIN(Sales) AS min_Sales
FROM
  `valid-heuristic-371516.Superstone.Superstone Dataset`
GROUP BY
  State
ORDER BY
  State
````

**Answer:**


Results - 

  [{
  "State": "Alabama",
  "max_Sales": "3040.0",
  "min_Sales": "3.62"
}, {
  "State": "Arizona",
  "max_Sales": "1879.96",
  "min_Sales": "1.408"
}, {
  "State": "Arkansas",
  "max_Sales": "1793.98",
  "min_Sales": "4.3"
}, {

  ........


  

### 6. Region-wise net profit - 
  

````sql

SELECT
  Region,
  SUM(Profit) AS Total_Profit,
FROM
  `valid-heuristic-371516.Superstone.Superstone Dataset`
WHERE
  DISCOUNT > 0.2
GROUP BY
  Region
ORDER BY
  Region
````

**Answer:**


  Results - 

  [{
  "Region": "Central",
  "Total_Profit": "-52392.274400000046"
}, {
  "Region": "East",
  "Total_Profit": "-42088.607599999974"
}, {
  "Region": "South",
  "Total_Profit": "-24880.481799999998"
}, {
  "Region": "West",
  "Total_Profit": "-16014.692199999996"
}]

........


  
  
### 7. Ship Modes where average profit is greater than 500

````sql

  SELECT
  Category,
  AVG(Profit) AS Average_profit
FROM
  `valid-heuristic-371516.Superstone.Superstone Dataset`
GROUP BY
  Category
HAVING
  AVG(Profit) > 10
  ````

**Answer:**


  Results - 


[{
  "Category": "Office Supplies",
  "Average_profit": "20.327049585131093"
}, {
  "Category": "Technology",
  "Average_profit": "78.75200221981595"
}]
...........

  

  
  ### 8. Number of orders where the sum of sales is greater than 100 between 11-12-2016 and 11/17/2017
  
````sql

  SELECT
  Category,
  COUNT(Order_ID) AS Number_of_orders
FROM
  `valid-heuristic-371516.Superstone.Superstone Dataset`
WHERE
  Order_Date BETWEEN '11-12-2016'
  AND '11/17/2017'
GROUP BY
  Category
HAVING
  SUM(Sales) > 100
````


**Answer:**


  Results -


[{
  "Category": "Office Supplies",
  "Number_of_orders": "144"
}, {
  "Category": "Technology",
  "Number_of_orders": "59"
}, {
  "Category": "Furniture",
  "Number_of_orders": "55"
}]



  




  


