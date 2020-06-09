-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema my_sql
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema my_sql
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `my_sql` DEFAULT CHARACTER SET utf8 ;
USE `my_sql` ;

-- -----------------------------------------------------
-- Table `my_sql`.`Cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `my_sql`.`Cars` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `vin` VARCHAR(45) NOT NULL,
  `manufacturer` VARCHAR(45) NOT NULL,
  `model` VARCHAR(45) NOT NULL,
  `year` YEAR(4) NULL,
  `color` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `my_sql`.`Customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `my_sql`.`Customers` (
  `idCustomers` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `phone number` INT NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `address` VARCHAR(45) NOT NULL,
  `city` VARCHAR(45) NOT NULL,
  `state/province` VARCHAR(45) NOT NULL,
  `country` CHAR(2) NOT NULL,
  `zip/postal code` INT NOT NULL,
  PRIMARY KEY (`idCustomers`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `my_sql`.`Salespersons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `my_sql`.`Salespersons` (
  `staff ID` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `store of work` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`staff ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `my_sql`.`Invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `my_sql`.`Invoices` (
  `invoice number` INT NOT NULL,
  `date` VARCHAR(45) NULL,
  `car` VARCHAR(45) NULL,
  `customer` VARCHAR(45) NULL,
  `salesperson` VARCHAR(45) NULL,
  `Salespersons_staff ID` INT NOT NULL,
  `Customers_idCustomers` INT NOT NULL,
  `Cars_id` INT NOT NULL,
  PRIMARY KEY (`invoice number`, `Salespersons_staff ID`),
  INDEX `fk_Invoices_Salespersons_idx` (`Salespersons_staff ID` ASC) VISIBLE,
  INDEX `fk_Invoices_Customers1_idx` (`Customers_idCustomers` ASC) VISIBLE,
  INDEX `fk_Invoices_Cars1_idx` (`Cars_id` ASC) VISIBLE,
  CONSTRAINT `fk_Invoices_Salespersons`
    FOREIGN KEY (`Salespersons_staff ID`)
    REFERENCES `my_sql`.`Salespersons` (`staff ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoices_Customers1`
    FOREIGN KEY (`Customers_idCustomers`)
    REFERENCES `my_sql`.`Customers` (`idCustomers`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoices_Cars1`
    FOREIGN KEY (`Cars_id`)
    REFERENCES `my_sql`.`Cars` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
