-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema roorest
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema roorest
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `roorest` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `roorest` ;

-- -----------------------------------------------------
-- Table `roorest`.`account`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `roorest`.`account` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(90) NULL,
  `address` VARCHAR(90) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `roorest`.`role`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `roorest`.`role` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(90) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `roorest`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `roorest`.`user` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `email` VARCHAR(90) NOT NULL,
  `password` VARCHAR(150) NOT NULL,
  `name` VARCHAR(90) NULL,
  `role_id` INT NOT NULL,
  `account_id` INT NOT NULL,
  PRIMARY KEY (`id`, `role_id`, `account_id`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC),
  INDEX `fk_user_role_idx` (`role_id` ASC),
  INDEX `fk_user_account1_idx` (`account_id` ASC),
  CONSTRAINT `fk_user_role`
    FOREIGN KEY (`role_id`)
    REFERENCES `roorest`.`role` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_user_account1`
    FOREIGN KEY (`account_id`)
    REFERENCES `roorest`.`account` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
