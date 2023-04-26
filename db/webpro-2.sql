-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema projectwebpro
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema projectwebpro
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `projectwebpro` DEFAULT CHARACTER SET utf8 ;
USE `projectwebpro` ;

-- -----------------------------------------------------
-- Table `projectwebpro`.`customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `projectwebpro`.`customer` (
  `cust_id` INT NOT NULL,
  `cust_email` VARCHAR(45) NULL,
  `cust_pass` VARCHAR(45) NULL,
  `fname` VARCHAR(45) NULL,
  `lname` VARCHAR(45) NULL,
  `cust_phone` VARCHAR(45) NULL,
  `role` VARCHAR(45) NULL,
  PRIMARY KEY (`cust_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `projectwebpro`.`history`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `projectwebpro`.`history` (
  `history_id` INT NOT NULL,
  `status_name` INT NULL,
  PRIMARY KEY (`history_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `projectwebpro`.`doctor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `projectwebpro`.`doctor` (
  `doc_id` INT NOT NULL,
  `doc_fname` VARCHAR(45) NULL,
  `doc_lname` VARCHAR(45) NULL,
  PRIMARY KEY (`doc_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `projectwebpro`.`booking`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `projectwebpro`.`booking` (
  `book_id` INT NOT NULL,
  `book_date` DATE NULL,
  `book_hour` VARCHAR(45) NULL,
  `cust_id` INT NOT NULL,
  `history_id` INT NOT NULL,
  `doc_id` INT NOT NULL,
  PRIMARY KEY (`book_id`),
  INDEX `fk_booking_customer_idx` (`cust_id` ASC) ,
  INDEX `fk_booking_history1_idx` (`history_id` ASC) ,
  INDEX `fk_booking_doctor1_idx` (`doc_id` ASC) ,
  CONSTRAINT `fk_booking_customer`
    FOREIGN KEY (`cust_id`)
    REFERENCES `projectwebpro`.`customer` (`cust_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_booking_history1`
    FOREIGN KEY (`history_id`)
    REFERENCES `projectwebpro`.`history` (`history_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_booking_doctor1`
    FOREIGN KEY (`doc_id`)
    REFERENCES `projectwebpro`.`doctor` (`doc_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `projectwebpro`.`schedule`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `projectwebpro`.`schedule` (
  `sched_id` INT NOT NULL,
  `date` DATE NULL,
  `doc_id` INT NOT NULL,
  PRIMARY KEY (`sched_id`),
  INDEX `fk_schedule_doctor1_idx` (`doc_id` ASC) ,
  CONSTRAINT `fk_schedule_doctor1`
    FOREIGN KEY (`doc_id`)
    REFERENCES `projectwebpro`.`doctor` (`doc_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `projectwebpro`.`available_time`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `projectwebpro`.`available_time` (
  `avail_time_id` INT NOT NULL,
  `time` TIME NULL,
  `is_booked` INT NULL,
  `sched_id` INT NOT NULL,
  PRIMARY KEY (`avail_time_id`),
  INDEX `fk_available_time_schedule1_idx` (`sched_id` ASC) ,
  CONSTRAINT `fk_available_time_schedule1`
    FOREIGN KEY (`sched_id`)
    REFERENCES `projectwebpro`.`schedule` (`sched_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


INSERT INTO `customer` (`cust_id`, `fname`, `lname`, `cust_phone`, `cust_email`, `cust_pass`, `role`) VALUES
(1, 'Intummadee', 'lastname', '0876161934', '64070257@kmitl.ac.th', '64070257', 'admin');


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

