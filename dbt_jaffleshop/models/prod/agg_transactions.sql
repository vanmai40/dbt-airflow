select 
  created,
  paymentmethod,
  count(paymentmethod) as transactions
from {{ source('stripe', 'payment') }}
group by 1,2
