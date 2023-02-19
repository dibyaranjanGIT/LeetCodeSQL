1393. Capital Gain/Loss

select stock_name,
sum(new_price) as capital_gain_loss 
from
(select*,case when operation = 'Buy' then -1 * price else price end as new_price
from Stocks
)a
group by stock_name
