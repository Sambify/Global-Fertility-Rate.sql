SELECT
  Ship_Mode,
  COUNT(Order_ID)
FROM
  `valid-heuristic-371516.Superstone.Superstone Dataset`
GROUP BY
  Ship_Mode
