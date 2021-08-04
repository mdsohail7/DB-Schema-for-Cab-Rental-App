SELECT Sum(`Total Amount`) TotalAmtCC FROM cabtransaction.transactiondetails
where PaidThrough = 'CreditCard' AND TransactionDate  BETWEEN "2021-01-01" AND "2021-01-30"