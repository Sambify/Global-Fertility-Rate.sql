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

<img width ="350" alt="image" src= "https://github.com/Sambify/Superstone-data-analysis/blob/3e46dde348b70228277e8c1db7e56218e70c20bc/download%20(1).jpg">

***

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

<img width ="350" alt="image" src= "https://github.com/Sambify/Superstone-data-analysis/blob/110330c7eb68565c5318dd6758c8d3ba8085ce63/download.jpg">





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


<img width ="350" alt="image" src= "https://github.com/Sambify/Superstone-data-analysis/blob/110330c7eb68565c5318dd6758c8d3ba8085ce63/download%20%201.jpg">



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


<img width ="350" alt="image" src= "https://github.com/Sambify/Superstone-data-analysis/blob/110330c7eb68565c5318dd6758c8d3ba8085ce63/download%202.jpg">



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

<img width ="350" alt="image" src= "https://github.com/Sambify/Superstone-data-analysis/blob/110330c7eb68565c5318dd6758c8d3ba8085ce63/download%203.jpg">


  

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


<img width ="350" alt="image" src= "https://github.com/Sambify/Superstone-data-analysis/blob/110330c7eb68565c5318dd6758c8d3ba8085ce63/download%204.jpg">

  
  
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

<img width ="350" alt="image" src= " https://github.com/Sambify/Superstone-data-analysis/blob/110330c7eb68565c5318dd6758c8d3ba8085ce63/download%205.jpg">
  
**
  
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

<img width ="350" alt="image" src= " https://github.com/Sambify/Superstone-data-analysis/blob/110330c7eb68565c5318dd6758c8d3ba8085ce63/download%206.jpg">
  




  


