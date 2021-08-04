
SELECT DriverName, sum(DriverFee) as DriverEarned FROM cabtransaction.driver d
inner join payout as p
on p.PayDriver = d.DriverId
inner join transactiondetails as t
on p.Amount = t.TransactionId
Where TransactionDate  BETWEEN "2021-01-01" AND "2021-01-30"
group by DriverName



