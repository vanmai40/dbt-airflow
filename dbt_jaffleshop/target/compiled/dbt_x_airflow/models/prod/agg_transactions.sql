select 
  created,
  paymentmethod,
  count(paymentmethod) as transactions
from `dbt-tutorial`.`stripe`.`payment`
group by 1,2