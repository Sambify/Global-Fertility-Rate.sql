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



