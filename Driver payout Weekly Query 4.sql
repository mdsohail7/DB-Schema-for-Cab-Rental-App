select week(PayoutDate) as weekNo,sum(DriverFee) as AmountPaid FROM cabtransaction.payout p 
inner join transactiondetails as t
on p.Amount = t.TransactionId
group by week(PayoutDate)
order by weekNo


