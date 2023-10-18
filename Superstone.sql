
Data Analysis of Superstone Sales Data

  
Number of Orders by ShipMode

  
SELECT
  Ship_Mode,
  COUNT(Order_ID) AS Number_of_Order_ID
FROM
  `valid-heuristic-371516.Superstone.Superstone Dataset`
GROUP BY
  Ship_Mode



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






  
SELECT
  Ship_Mode,
  COUNT(Order_ID) AS Number_of_Order_ID
FROM
  `valid-heuristic-371516.Superstone.Superstone Dataset`
    WHERE Sales BETWEEN 5 AND 200
GROUP BY
  Ship_Mode



  
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




SELECT
  DISTINCT Order_ID,
FROM
  `valid-heuristic-371516.Superstone.Superstone Dataset`
WHERE
  Sales BETWEEN 5
  AND 200
  AND Segment = 'Consumer'


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



SELECT
  State,
  AVG(Sales) AS average_of_Sales
FROM
  `valid-heuristic-371516.Superstone.Superstone Dataset`
GROUP BY
  State
ORDER BY
  State asc

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




  


