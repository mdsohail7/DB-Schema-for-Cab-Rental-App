-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema cabtransaction
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema cabtransaction
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `cabtransaction` DEFAULT CHARACTER SET utf8 ;
USE `cabtransaction` ;

-- -----------------------------------------------------
-- Table `cabtransaction`.`Driver`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cabtransaction`.`Driver` (
  `DriverId` INT NOT NULL,
  `DriverName` VARCHAR(45) NOT NULL,
  `DriverEmail` VARCHAR(45) NOT NULL,
  `DriverMobile` INT(10) NULL,
  PRIMARY KEY (`DriverId`),
  UNIQUE INDEX `DriverMobile_UNIQUE` (`DriverMobile` ASC) VISIBLE,
  UNIQUE INDEX `DriverEmail_UNIQUE` (`DriverEmail` ASC) VISIBLE,
  UNIQUE INDEX `DriverId_UNIQUE` (`DriverId` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cabtransaction`.`Passenger`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cabtransaction`.`Passenger` (
  `PassengerID` INT NOT NULL,
  `PassengerName` VARCHAR(45) NOT NULL,
  `PassengerMobile` INT(10) NOT NULL,
  `PassengerLocation` VARCHAR(70) NULL,
  PRIMARY KEY (`PassengerID`),
  UNIQUE INDEX `PassengerID_UNIQUE` (`PassengerID` ASC) VISIBLE,
  UNIQUE INDEX `PassengerMobile_UNIQUE` (`PassengerMobile` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cabtransaction`.`TransactionDetails`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cabtransaction`.`TransactionDetails` (
  `TransactionId` INT NOT NULL,
  `Total Amount` INT NOT NULL,
  `Status` VARCHAR(45) NOT NULL,
  `PaidThrough` VARCHAR(45) NOT NULL,
  `TransactionDate` DATE NOT NULL,
  `TaxAmount` INT NOT NULL,
  `DriverFee` INT NOT NULL,
  PRIMARY KEY (`TransactionId`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cabtransaction`.`Ride`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cabtransaction`.`Ride` (
  `RideId` INT NOT NULL,
  `RideDriver` INT NOT NULL,
  `RidePass` INT NOT NULL,
  `From` VARCHAR(45) NULL,
  `To` VARCHAR(45) NULL,
  `Fare` INT NOT NULL,
  PRIMARY KEY (`RideId`),
  UNIQUE INDEX `RideId_UNIQUE` (`RideId` ASC) VISIBLE,
  INDEX `RideDriver_idx` (`RideDriver` ASC) VISIBLE,
  INDEX `RidePass_idx` (`RidePass` ASC) VISIBLE,
  INDEX `Fare_idx` (`Fare` ASC) VISIBLE,
  CONSTRAINT `RideDriver`
    FOREIGN KEY (`RideDriver`)
    REFERENCES `cabtransaction`.`Driver` (`DriverId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `RidePass`
    FOREIGN KEY (`RidePass`)
    REFERENCES `cabtransaction`.`Passenger` (`PassengerID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Fare`
    FOREIGN KEY (`Fare`)
    REFERENCES `cabtransaction`.`TransactionDetails` (`TransactionId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cabtransaction`.`Payout`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cabtransaction`.`Payout` (
  `PayoutId` INT NOT NULL,
  `PayDriver` INT NOT NULL,
  `Amount` INT NOT NULL,
  `PayoutDate` DATE NOT NULL,
  PRIMARY KEY (`PayoutId`),
  INDEX `DriverId_idx` (`PayDriver` ASC) VISIBLE,
  INDEX `PayoutId_idx` (`Amount` ASC) VISIBLE,
  CONSTRAINT `DriverId`
    FOREIGN KEY (`PayDriver`)
    REFERENCES `cabtransaction`.`Driver` (`DriverId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `PayoutId`
    FOREIGN KEY (`Amount`)
    REFERENCES `cabtransaction`.`TransactionDetails` (`TransactionId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
