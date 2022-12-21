-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Escola_De_futebol
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Escola_De_futebol
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Escola_De_futebol` DEFAULT CHARACTER SET utf8 ;
USE `Escola_De_futebol` ;

-- -----------------------------------------------------
-- Table `Escola_De_futebol`.`Escalao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Escola_De_futebol`.`Escalao` (
  `ID` INT NOT NULL,
  `Designacao` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Escola_De_futebol`.`Encarregado_de_Educacao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Escola_De_futebol`.`Encarregado_de_Educacao` (
  `ID` INT NOT NULL,
  `Nome` VARCHAR(45) NOT NULL,
  `Mensalidade` INT NOT NULL,
  `Contacto` VARCHAR(9) NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Escola_De_futebol`.`Localidade`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Escola_De_futebol`.`Localidade` (
  `ID` INT NOT NULL,
  `Descricao` VARCHAR(80) NOT NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Escola_De_futebol`.`Treinador`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Escola_De_futebol`.`Treinador` (
  `ID` INT NOT NULL,
  `Nome` VARCHAR(45) NOT NULL,
  `TPTD` VARCHAR(150) NULL,
  `Foto` VARCHAR(150) NULL,
  `Tipo` VARCHAR(45) NULL,
  `Contacto` VARCHAR(9) NULL,
  `Rua` VARCHAR(100) NULL,
  `Codigo_de_Postal` VARCHAR(10) NULL,
  `Localidade` INT NOT NULL,
  PRIMARY KEY (`ID`),
  INDEX `fk_Treinador_Localidade1_idx` (`Localidade` ASC) VISIBLE,
  CONSTRAINT `fk_Treinador_Localidade1`
    FOREIGN KEY (`Localidade`)
    REFERENCES `Escola_De_futebol`.`Localidade` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Escola_De_futebol`.`Equipa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Escola_De_futebol`.`Equipa` (
  `ID` INT NOT NULL,
  `Classificacao` INT NULL,
  `Treinador_ID` INT NOT NULL,
  PRIMARY KEY (`ID`),
  INDEX `fk_Equipa_Treinador1_idx` (`Treinador_ID` ASC) INVISIBLE,
  CONSTRAINT `fk_Equipa_Treinador1`
    FOREIGN KEY (`Treinador_ID`)
    REFERENCES `Escola_De_futebol`.`Treinador` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Escola_De_futebol`.`Jogador`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Escola_De_futebol`.`Jogador` (
  `ID` INT NOT NULL,
  `Nome` VARCHAR(45) NOT NULL,
  `Data_de_Nascimento` DATE NOT NULL,
  `Foto` VARCHAR(150) NULL,
  `Rua` VARCHAR(100) NULL,
  `Codigo_de_Postal` VARCHAR(10) NULL,
  `Localidade` INT NOT NULL,
  `Escalao` INT NOT NULL,
  `Encarregado_de_Educacao_ID` INT NOT NULL,
  `Equipa_ID` INT NOT NULL,
  PRIMARY KEY (`ID`),
  INDEX `fk_Jogador_table11_idx` (`Escalao` ASC) VISIBLE,
  INDEX `fk_Jogador_Encarregado_de_Educação1_idx` (`Encarregado_de_Educacao_ID` ASC) VISIBLE,
  INDEX `fk_Jogador_Equipa1_idx` (`Equipa_ID` ASC) VISIBLE,
  INDEX `fk_Jogador_Localidade1_idx` (`Localidade` ASC) VISIBLE,
  CONSTRAINT `fk_Jogador_table11`
    FOREIGN KEY (`Escalao`)
    REFERENCES `Escola_De_futebol`.`Escalao` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Jogador_Encarregado_de_Educação1`
    FOREIGN KEY (`Encarregado_de_Educacao_ID`)
    REFERENCES `Escola_De_futebol`.`Encarregado_de_Educacao` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Jogador_Equipa1`
    FOREIGN KEY (`Equipa_ID`)
    REFERENCES `Escola_De_futebol`.`Equipa` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Jogador_Localidade1`
    FOREIGN KEY (`Localidade`)
    REFERENCES `Escola_De_futebol`.`Localidade` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Escola_De_futebol`.`Fisioterapeuta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Escola_De_futebol`.`Fisioterapeuta` (
  `ID` INT NOT NULL,
  `Nome` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Escola_De_futebol`.`Fisioterapeuta_has_Equipa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Escola_De_futebol`.`Fisioterapeuta_has_Equipa` (
  `Fisioterapeuta_ID` INT NOT NULL,
  `Equipa_ID` INT NOT NULL,
  PRIMARY KEY (`Fisioterapeuta_ID`, `Equipa_ID`),
  INDEX `fk_Fisioterapeuta_has_Equipa_Equipa1_idx` (`Equipa_ID` ASC) VISIBLE,
  INDEX `fk_Fisioterapeuta_has_Equipa_Fisioterapeuta1_idx` (`Fisioterapeuta_ID` ASC) VISIBLE,
  CONSTRAINT `fk_Fisioterapeuta_has_Equipa_Fisioterapeuta1`
    FOREIGN KEY (`Fisioterapeuta_ID`)
    REFERENCES `Escola_De_futebol`.`Fisioterapeuta` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Fisioterapeuta_has_Equipa_Equipa1`
    FOREIGN KEY (`Equipa_ID`)
    REFERENCES `Escola_De_futebol`.`Equipa` (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

CREATE INDEX NomeEE ON encarregado_de_educacao (nome);

CREATE INDEX NomeT ON treinador (nome);

CREATE INDEX NomeJogador ON jogador (nome);
