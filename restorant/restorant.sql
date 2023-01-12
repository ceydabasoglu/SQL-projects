-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
SET GLOBAL FOREIGN_KEY_CHECKS=0;
-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `mydb` ;

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Customer` (
  `Customer_İd` INT NOT NULL,
  `Customer_Name` VARCHAR(45) NOT NULL,
  `Customer_Surname` VARCHAR(45) NOT NULL,
  `Customer_PhoneNumber` VARCHAR(15) NOT NULL,
  `Customer_Email` VARCHAR(50) NOT NULL,
  `Customer_BirthDate` DATE NULL,
  PRIMARY KEY (`Customer_İd`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Rate`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Rate` (
  `Rate_İD` INT NOT NULL,
  `Cutomer_comment` VARCHAR(250) NULL,
  `Restaurant_Restaurantİd` INT NOT NULL,
  `Customer_Customerİd` INT NOT NULL,
  PRIMARY KEY (`Rate_İD`),
  INDEX `fk_Rate_Restaurant1_idx` (`Restaurant_Restaurantİd` ASC) VISIBLE,
  INDEX `fk_Rate_Customer1_idx` (`Customer_Customerİd` ASC) VISIBLE,
  CONSTRAINT `fk_Rate_Restaurant1`
    FOREIGN KEY (`Restaurant_Restaurantİd`)
    REFERENCES `mydb`.`Restaurant` (`Restaurant_Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Rate_Customer1`
    FOREIGN KEY (`Customer_Customerİd`)
    REFERENCES `mydb`.`Customer` (`Customer_İd`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Restaurant`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Restaurant` (
  `Restaurant_Id` INT NOT NULL,
  `Restaurant_Name` VARCHAR(100) NOT NULL,
  `Restaurant_Type` VARCHAR(45) NOT NULL,
  `Restauran_tAddress` VARCHAR(100) NOT NULL,
  `Restaurant_PhoneNum` VARCHAR(15) NOT NULL,
  `Open_Time` TIME NOT NULL,
  `CloseTime` TIME NOT NULL,
  `avg_DeliveryTime` VARCHAR(45) NOT NULL,
  `Restaurant_Rate` INT NULL,
  PRIMARY KEY (`Restaurant_Id`),
  INDEX `Rate_idx` (`Restaurant_Rate` ASC) VISIBLE,
  CONSTRAINT `Restaurant_Rate`
    FOREIGN KEY (`Restaurant_Rate`)
    REFERENCES `mydb`.`Rate` (`Rate_İD`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`FOOD`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`FOOD` (
  `Food_Id` INT NOT NULL,
  `Food_Description` VARCHAR(250) NOT NULL,
  `Food_Name` VARCHAR(45) NOT NULL,
  `Food_Price` DOUBLE NOT NULL,
  `Food_Image` BINARY NULL,
  `Restaurant_Restaurantİd` INT NOT NULL,
  PRIMARY KEY (`Food_Id`),
  INDEX `fk_Menu_Restaurant1_idx` (`Restaurant_Restaurantİd` ASC) VISIBLE,
  CONSTRAINT `fk_Menu_Restaurant1`
    FOREIGN KEY (`Restaurant_Restaurantİd`)
    REFERENCES `mydb`.`Restaurant` (`Restaurant_Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Ordering`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Ordering` (
  `Order_İD` INT NOT NULL,
  `Order_Name` VARCHAR(45) NOT NULL,
  `Restaurant_Restaurantİd` INT NOT NULL,
  `Order_Date` DATETIME NOT NULL,
  `Order_Amount` INT NOT NULL,
  PRIMARY KEY (`Order_İD`),
  INDEX `fk_Order_Restaurant1_idx` (`Restaurant_Restaurantİd` ASC) VISIBLE,
  CONSTRAINT `fk_Order_Restaurant1`
    FOREIGN KEY (`Restaurant_Restaurantİd`)
    REFERENCES `mydb`.`Restaurant` (`Restaurant_Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Address`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Address` (
  `Addressİd` INT NOT NULL AUTO_INCREMENT,
  `City` VARCHAR(45) NOT NULL,
  `StreetName` VARCHAR(100) NOT NULL,
  `Neighbourhood` VARCHAR(45) NOT NULL,
  `Town` VARCHAR(45) NOT NULL,
  `BuildingNum` INT NOT NULL,
  `RezidansNum` INT NOT NULL,
  `AddressType` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Addressİd`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Payment`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Payment` (
  `Payment_İD` INT NOT NULL,
  `Payment_Type` VARCHAR(45) NOT NULL,
  `creditCardNo` VARCHAR(45) NOT NULL,
  `validThru` DATE NOT NULL,
  `CVV` INT NOT NULL,
  `CardOwner` VARCHAR(150) NOT NULL,
  PRIMARY KEY (`Payment_İD`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Customer_has_Address`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Customer_has_Address` (
  `Customer_Customerİd` INT NOT NULL,
  `Address_Addressİd` INT NOT NULL,
  PRIMARY KEY (`Customer_Customerİd`, `Address_Addressİd`),
  INDEX `fk_Customer_has_Address_Address1_idx` (`Address_Addressİd` ASC) VISIBLE,
  INDEX `fk_Customer_has_Address_Customer_idx` (`Customer_Customerİd` ASC) VISIBLE,
  CONSTRAINT `fk_Customer_has_Address_Customer`
    FOREIGN KEY (`Customer_Customerİd`)
    REFERENCES `mydb`.`Customer` (`Customer_İd`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Customer_has_Address_Address1`
    FOREIGN KEY (`Address_Addressİd`)
    REFERENCES `mydb`.`Address` (`Addressİd`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Order_has_Customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Order_has_Customer` (
  `Order_OrderİD` INT NOT NULL,
  `Customer_Customerİd` INT NOT NULL,
  PRIMARY KEY (`Order_OrderİD`, `Customer_Customerİd`),
  INDEX `fk_Order_has_Customer_Customer1_idx` (`Customer_Customerİd` ASC) VISIBLE,
  INDEX `fk_Order_has_Customer_Order1_idx` (`Order_OrderİD` ASC) VISIBLE,
  CONSTRAINT `fk_Order_has_Customer_Order1`
    FOREIGN KEY (`Order_OrderİD`)
    REFERENCES `mydb`.`Order` (`Order_İD`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Order_has_Customer_Customer1`
    FOREIGN KEY (`Customer_Customerİd`)
    REFERENCES `mydb`.`Customer` (`Customer_İd`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Payment_has_Customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Payment_has_Customer` (
  `Payment_PaymentİD` INT NOT NULL,
  `Customer_Customerİd` INT NOT NULL,
  PRIMARY KEY (`Payment_PaymentİD`, `Customer_Customerİd`),
  INDEX `fk_Payment_has_Customer_Customer1_idx` (`Customer_Customerİd` ASC) VISIBLE,
  INDEX `fk_Payment_has_Customer_Payment1_idx` (`Payment_PaymentİD` ASC) VISIBLE,
  CONSTRAINT `fk_Payment_has_Customer_Payment1`
    FOREIGN KEY (`Payment_PaymentİD`)
    REFERENCES `mydb`.`Payment` (`Payment_İD`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Payment_has_Customer_Customer1`
    FOREIGN KEY (`Customer_Customerİd`)
    REFERENCES `mydb`.`Customer` (`Customer_İd`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;

