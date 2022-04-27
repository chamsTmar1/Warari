-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Warari
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Warari
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Warari` DEFAULT CHARACTER SET utf8 ;
USE `Warari` ;

-- -----------------------------------------------------
-- Table `Warari`.`Compte`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Warari`.`Compte` (
  `idCompte` VARCHAR(45) NOT NULL,
  `nomCompte` VARCHAR(45) NULL,
  `emailCompte` VARCHAR(45) NULL,
  `emailCliPart` VARCHAR(45) NULL,
  `pwdCompte` VARCHAR(45) NULL,
  PRIMARY KEY (`idCompte`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Warari`.`Salle`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Warari`.`Salle` (
  `idSalle` VARCHAR(45) NOT NULL,
  `nomSalle` VARCHAR(45) NULL,
  `typeSalle` VARCHAR(45) NULL,
  `contactSalle` VARCHAR(45) NULL,
  `adresseSalle` VARCHAR(45) NULL,
  PRIMARY KEY (`idSalle`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Warari`.`Patisserie`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Warari`.`Patisserie` (
  `idPatisserie` VARCHAR(45) NOT NULL,
  `nomPatisserie` VARCHAR(45) NULL,
  `adressePatisserie` VARCHAR(45) NULL,
  `contactPatisserie` VARCHAR(45) NULL,
  PRIMARY KEY (`idPatisserie`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
