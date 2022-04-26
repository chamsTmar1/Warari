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
-- Table `Warari`.`Patisserie`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Warari`.`Patisserie` (
  `idPatisserie` VARCHAR(45) NOT NULL,
  `nomPatisserie` VARCHAR(45) NULL,
  `adressePatisserie` VARCHAR(45) NULL,
  `contactPatisserie` VARCHAR(45) NULL,
  PRIMARY KEY (`idPatisserie`))
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
-- Table `Warari`.`Reservation`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Warari`.`Reservation` (
  `idRes` VARCHAR(45) NOT NULL,
  `dateRes` VARCHAR(45) NULL,
  `prixRes` VARCHAR(45) NULL,
  `Patisserie_idPatisserie` VARCHAR(45) NOT NULL,
  `Salle_idSalle` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idRes`, `Patisserie_idPatisserie`, `Salle_idSalle`),
  INDEX `fk_Reservation_Patisserie1_idx` (`Patisserie_idPatisserie` ASC) VISIBLE,
  INDEX `fk_Reservation_Salle1_idx` (`Salle_idSalle` ASC) VISIBLE,
  CONSTRAINT `fk_Reservation_Patisserie1`
    FOREIGN KEY (`Patisserie_idPatisserie`)
    REFERENCES `Warari`.`Patisserie` (`idPatisserie`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Reservation_Salle1`
    FOREIGN KEY (`Salle_idSalle`)
    REFERENCES `Warari`.`Salle` (`idSalle`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Warari`.`Client`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Warari`.`Client` (
  `idClient` VARCHAR(45) NOT NULL,
  `nomCli` VARCHAR(45) NULL,
  `emailCli` VARCHAR(45) NULL,
  `emailCliPart` VARCHAR(45) NULL,
  `pwdCli` VARCHAR(45) NULL,
  `Reservation_idRes` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idClient`, `Reservation_idRes`),
  INDEX `fk_Client_Reservation_idx` (`Reservation_idRes` ASC) VISIBLE,
  CONSTRAINT `fk_Client_Reservation`
    FOREIGN KEY (`Reservation_idRes`)
    REFERENCES `Warari`.`Reservation` (`idRes`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
