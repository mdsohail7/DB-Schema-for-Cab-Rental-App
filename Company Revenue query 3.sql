select week(TransactionDate) as weekNo, sum(`Total Amount`) - sum(DriverFee) as revenue FROM cabtransaction.transactiondetails 
group by week(TransactionDate)
order by weekNo

