# Write your MySQL query statement below
select stock_name  , sum(case 
when operation = "sell" then price
when operation = "buy" then -price end ) as capital_gain_loss   #to getthe required total gain/loss coloumn
from Stocks
group by stock_name;    #groupedby stockname