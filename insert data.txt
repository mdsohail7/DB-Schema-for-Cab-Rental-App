INSERT INTO `cabtransaction`.`driver` (`DriverId`, `DriverName`, `DriverEmail`, `DriverMobile`) VALUES ('1', 'Sam', 'sam@mail.com', '4563219875');
INSERT INTO `cabtransaction`.`driver` (`DriverId`, `DriverName`, `DriverEmail`, `DriverMobile`) VALUES ('2', 'Sal', 'sal@mail.com', '6543287654');
INSERT INTO `cabtransaction`.`driver` (`DriverId`, `DriverName`, `DriverEmail`, `DriverMobile`) VALUES ('3', 'Soul', 'soul@mail.com', '4567539516');



INSERT INTO `cabtransaction`.`passenger` (`PassengerID`, `PassengerName`, `PassengerMobile`, `PassengerLocation`) VALUES ('101', 'Mosh', '4567856546', 'Fort, Mumbai');
INSERT INTO `cabtransaction`.`passenger` (`PassengerID`, `PassengerName`, `PassengerMobile`, `PassengerLocation`) VALUES ('102', 'Rosy', '9517536548', 'Juhu, Mumbai');
INSERT INTO `cabtransaction`.`passenger` (`PassengerID`, `PassengerName`, `PassengerMobile`, `PassengerLocation`) VALUES ('103', 'Rahul', '4567896545', 'Navi Mumbai');
INSERT INTO `cabtransaction`.`passenger` (`PassengerID`, `PassengerName`, `PassengerMobile`, `PassengerLocation`) VALUES ('104', 'Bose', '6549874565', 'Nerul, Mumbai');
INSERT INTO `cabtransaction`.`passenger` (`PassengerID`, `PassengerName`, `PassengerMobile`, `PassengerLocation`) VALUES ('105', 'Stenly', '8564759657', 'Vashi, Mumbai');



INSERT INTO `cabtransaction`.`transactiondetails` (`TransactionId`, `Total Amount`, `Status`, `PaidThrough`, `TransactionDate`, `TaxAmount`, `DriverFee`) VALUES ('501', '1000', 'Paid', 'CreditCard', '2021-01-01', '180', '123');
INSERT INTO `cabtransaction`.`transactiondetails` (`TransactionId`, `Total Amount`, `Status`, `PaidThrough`, `TransactionDate`, `TaxAmount`, `DriverFee`) VALUES ('502', '400', 'Paid', 'CreditCard', '2021-01-05', '72', '49');
INSERT INTO `cabtransaction`.`transactiondetails` (`TransactionId`, `Total Amount`, `Status`, `PaidThrough`, `TransactionDate`, `TaxAmount`, `DriverFee`) VALUES ('503', '600', 'Paid', 'Wallet', '2021-01-09', '108', '74');
INSERT INTO `cabtransaction`.`transactiondetails` (`TransactionId`, `Total Amount`, `Status`, `PaidThrough`, `TransactionDate`, `TaxAmount`, `DriverFee`) VALUES ('504', '800', 'Paid', 'CreditCard', '2021-01-11', '144', '98');
INSERT INTO `cabtransaction`.`transactiondetails` (`TransactionId`, `Total Amount`, `Status`, `PaidThrough`, `TransactionDate`, `TaxAmount`, `DriverFee`) VALUES ('505', '900', 'paid', 'Wallet', '2021-01-20', '162', '111');
INSERT INTO `cabtransaction`.`transactiondetails` (`TransactionId`, `Total Amount`, `Status`, `PaidThrough`, `TransactionDate`, `TaxAmount`, `DriverFee`) VALUES ('506', '600', 'paid', 'Netbanking', '2021-01-25', '108', '74');
INSERT INTO `cabtransaction`.`transactiondetails` (`TransactionId`, `Total Amount`, `Status`, `PaidThrough`, `TransactionDate`, `TaxAmount`, `DriverFee`) VALUES ('507', '400', 'paid', 'CreditCard', '2021-02-01', '72', '49');
INSERT INTO `cabtransaction`.`transactiondetails` (`TransactionId`, `Total Amount`, `Status`, `PaidThrough`, `TransactionDate`, `TaxAmount`, `DriverFee`) VALUES ('508', '1000', 'paid', 'CreditCard', '2021-02-08', '180', '123');
INSERT INTO `cabtransaction`.`transactiondetails` (`TransactionId`, `Total Amount`, `Status`, `PaidThrough`, `TransactionDate`, `TaxAmount`, `DriverFee`) VALUES ('509', '900', 'paid', 'Wallet', '2021-02-12', '162', '111');
INSERT INTO `cabtransaction`.`transactiondetails` (`TransactionId`, `Total Amount`, `Status`, `PaidThrough`, `TransactionDate`, `TaxAmount`, `DriverFee`) VALUES ('510', '600', 'paid', 'CreditCard', '2021-02-15', '108', '74');



INSERT INTO `cabtransaction`.`ride` (`RideId`, `RideDriver`, `RidePass`, `From`, `To`, `Fare`) VALUES ('201', '1', '101', 'Fort', 'Vashi', '501');   
INSERT INTO `cabtransaction`.`ride` (`RideId`, `RideDriver`, `RidePass`, `From`, `To`, `Fare`) VALUES ('202', '1', '103', 'Vashi', 'Nerul', '502');
INSERT INTO `cabtransaction`.`ride` (`RideId`, `RideDriver`, `RidePass`, `From`, `To`, `Fare`) VALUES ('203', '2', '102', 'Juhu', 'Versova', '503');
INSERT INTO `cabtransaction`.`ride` (`RideId`, `RideDriver`, `RidePass`, `From`, `To`, `Fare`) VALUES ('204', '1', '104', 'Nerul', 'Panvel', '504');
INSERT INTO `cabtransaction`.`ride` (`RideId`, `RideDriver`, `RidePass`, `From`, `To`, `Fare`) VALUES ('205', '2', '105', 'Vashi', 'Kurla', '505');
INSERT INTO `cabtransaction`.`ride` (`RideId`, `RideDriver`, `RidePass`, `From`, `To`, `Fare`) VALUES ('206', '1', '102', 'Versova', 'Juhu', '506');
INSERT INTO `cabtransaction`.`ride` (`RideId`, `RideDriver`, `RidePass`, `From`, `To`, `Fare`) VALUES ('207', '3', '103', 'Nerul', 'Vashi', '507');
INSERT INTO `cabtransaction`.`ride` (`RideId`, `RideDriver`, `RidePass`, `From`, `To`, `Fare`) VALUES ('208', '1', '101', 'Vashi', 'Fort', '508');
INSERT INTO `cabtransaction`.`ride` (`RideId`, `RideDriver`, `RidePass`, `From`, `To`, `Fare`) VALUES ('209', '3', '105', 'Kurla', 'Vashi', '509');
INSERT INTO `cabtransaction`.`ride` (`RideId`, `RideDriver`, `RidePass`, `From`, `To`, `Fare`) VALUES ('210', '1', '102', 'Juhu', 'CST', '510');



INSERT INTO `cabtransaction`.`payout` (`PayoutId`, `PayDriver`, `Amount`, `PayoutDate`) VALUES ('1001', '1', '501', '2021-01-01');
INSERT INTO `cabtransaction`.`payout` (`PayoutId`, `PayDriver`, `Amount`, `PayoutDate`) VALUES ('1002', '1', '502', '2021-01-05');
INSERT INTO `cabtransaction`.`payout` (`PayoutId`, `PayDriver`, `Amount`, `PayoutDate`) VALUES ('1003', '2', '503', '2021-01-09');
INSERT INTO `cabtransaction`.`payout` (`PayoutId`, `PayDriver`, `Amount`, `PayoutDate`) VALUES ('1004', '1', '504', '2021-01-11');
INSERT INTO `cabtransaction`.`payout` (`PayoutId`, `PayDriver`, `Amount`, `PayoutDate`) VALUES ('1005', '2', '505', '2021-01-20');
INSERT INTO `cabtransaction`.`payout` (`PayoutId`, `PayDriver`, `Amount`, `PayoutDate`) VALUES ('1006', '1', '506', '2021-01-25');
INSERT INTO `cabtransaction`.`payout` (`PayoutId`, `PayDriver`, `Amount`, `PayoutDate`) VALUES ('1007', '3', '507', '2021-02-01');
INSERT INTO `cabtransaction`.`payout` (`PayoutId`, `PayDriver`, `Amount`, `PayoutDate`) VALUES ('1008', '1', '508', '2021-02-08');
INSERT INTO `cabtransaction`.`payout` (`PayoutId`, `PayDriver`, `Amount`, `PayoutDate`) VALUES ('1009', '3', '509', '2021-02-12');
INSERT INTO `cabtransaction`.`payout` (`PayoutId`, `PayDriver`, `Amount`, `PayoutDate`) VALUES ('1010', '1', '510', '2021-02-15');

