-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema carona
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema carona
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `carona` DEFAULT CHARACTER SET utf8 ;
USE `carona` ;

-- -----------------------------------------------------
-- Table `carona`.`cadastro_motorista`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `carona`.`cadastro_motorista` (
  `idcadastro_motorista` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `data_nascimento` DATE NOT NULL,
  `rg` VARCHAR(10) NOT NULL,
  `cpf` VARCHAR(11) NOT NULL,
  `antecedentes_criminais` VARCHAR(45) NOT NULL,
  `cnh` VARCHAR(9) NOT NULL,
  PRIMARY KEY (`idcadastro_motorista`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `carona`.`residencias`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `carona`.`residencias` (
  `idresidencias` INT NOT NULL AUTO_INCREMENT,
  `rua` VARCHAR(80) NOT NULL,
  `numero` VARCHAR(5) NOT NULL,
  `bairro` VARCHAR(75) NOT NULL,
  `cidade` VARCHAR(45) NOT NULL,
  `cep` VARCHAR(8) NOT NULL,
  PRIMARY KEY (`idresidencias`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `carona`.`veiculos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `carona`.`veiculos` (
  `idveiculos` INT NOT NULL AUTO_INCREMENT,
  `marca` VARCHAR(45) NOT NULL,
  `modelo` VARCHAR(45) NOT NULL,
  `cor` VARCHAR(45) NOT NULL,
  `placa` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idveiculos`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `carona`.`itinerario_escola`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `carona`.`itinerario_escola` (
  `iditinerario_escola` INT NOT NULL AUTO_INCREMENT,
  `partida` VARCHAR(45) NOT NULL,
  `saida` VARCHAR(45) NOT NULL,
  `dias_semana` VARCHAR(90) NOT NULL,
  `cadastro_motorista_idcadastro_motorista` INT NOT NULL,
  PRIMARY KEY (`iditinerario_escola`),
  INDEX `fk_itinerario_escola_cadastro_motorista1_idx` (`cadastro_motorista_idcadastro_motorista` ASC) VISIBLE,
  CONSTRAINT `fk_itinerario_escola_cadastro_motorista1`
    FOREIGN KEY (`cadastro_motorista_idcadastro_motorista`)
    REFERENCES `carona`.`cadastro_motorista` (`idcadastro_motorista`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `carona`.`escola`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `carona`.`escola` (
  `idescola` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(65) NOT NULL,
  `contato_secretaria` VARCHAR(14) NOT NULL,
  `endereco` VARCHAR(255) NOT NULL,
  `cadastro_motorista_idcadastro_motorista` INT NOT NULL,
  `itinerario_escola_iditinerario_escola` INT NOT NULL,
  PRIMARY KEY (`idescola`),
  INDEX `fk_escola_cadastro_motorista1_idx` (`cadastro_motorista_idcadastro_motorista` ASC) VISIBLE,
  INDEX `fk_escola_itinerario_escola1_idx` (`itinerario_escola_iditinerario_escola` ASC) VISIBLE,
  CONSTRAINT `fk_escola_cadastro_motorista1`
    FOREIGN KEY (`cadastro_motorista_idcadastro_motorista`)
    REFERENCES `carona`.`cadastro_motorista` (`idcadastro_motorista`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_escola_itinerario_escola1`
    FOREIGN KEY (`itinerario_escola_iditinerario_escola`)
    REFERENCES `carona`.`itinerario_escola` (`iditinerario_escola`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `carona`.`itinerario_atividades_extras`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `carona`.`itinerario_atividades_extras` (
  `iditinerario_atividades_extras` INT NOT NULL AUTO_INCREMENT,
  `partida` VARCHAR(45) NOT NULL,
  `saida` VARCHAR(45) NOT NULL,
  `dias_semana` VARCHAR(90) NOT NULL,
  `cadastro_motorista_idcadastro_motorista` INT NOT NULL,
  PRIMARY KEY (`iditinerario_atividades_extras`),
  INDEX `fk_itinerario_atividades_extras_cadastro_motorista1_idx` (`cadastro_motorista_idcadastro_motorista` ASC) VISIBLE,
  CONSTRAINT `fk_itinerario_atividades_extras_cadastro_motorista1`
    FOREIGN KEY (`cadastro_motorista_idcadastro_motorista`)
    REFERENCES `carona`.`cadastro_motorista` (`idcadastro_motorista`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `carona`.`atividades_extras`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `carona`.`atividades_extras` (
  `idatividades_extras` INT NOT NULL AUTO_INCREMENT,
  `tipo` VARCHAR(255) NOT NULL,
  `endereco` VARCHAR(255) NOT NULL,
  `cadastro_motorista_idcadastro_motorista` INT NOT NULL,
  `itinerario_atividades_extras_iditinerario_atividades_extras` INT NOT NULL,
  PRIMARY KEY (`idatividades_extras`),
  INDEX `fk_atividades_extras_cadastro_motorista1_idx` (`cadastro_motorista_idcadastro_motorista` ASC) VISIBLE,
  INDEX `fk_atividades_extras_itinerario_atividades_extras1_idx` (`itinerario_atividades_extras_iditinerario_atividades_extras` ASC) VISIBLE,
  CONSTRAINT `fk_atividades_extras_cadastro_motorista1`
    FOREIGN KEY (`cadastro_motorista_idcadastro_motorista`)
    REFERENCES `carona`.`cadastro_motorista` (`idcadastro_motorista`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_atividades_extras_itinerario_atividades_extras1`
    FOREIGN KEY (`itinerario_atividades_extras_iditinerario_atividades_extras`)
    REFERENCES `carona`.`itinerario_atividades_extras` (`iditinerario_atividades_extras`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `carona`.`filhos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `carona`.`filhos` (
  `idfilhos` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `data_nascimento` DATE NOT NULL,
  `idade` VARCHAR(45) NOT NULL,
  `nome_responsavel` VARCHAR(45) NOT NULL,
  `escola_idescola` INT NOT NULL,
  `atividades_extras_idatividades_extras` INT NOT NULL,
  PRIMARY KEY (`idfilhos`),
  INDEX `fk_filhos_escola1_idx` (`escola_idescola` ASC) VISIBLE,
  INDEX `fk_filhos_atividades_extras1_idx` (`atividades_extras_idatividades_extras` ASC) VISIBLE,
  CONSTRAINT `fk_filhos_escola1`
    FOREIGN KEY (`escola_idescola`)
    REFERENCES `carona`.`escola` (`idescola`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_filhos_atividades_extras1`
    FOREIGN KEY (`atividades_extras_idatividades_extras`)
    REFERENCES `carona`.`atividades_extras` (`idatividades_extras`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `carona`.`residencias_cadastro_motorista`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `carona`.`residencias_cadastro_motorista` (
  `residencias_idresidencias` INT NOT NULL,
  `cadastro_motorista_idcadastro_motorista` INT NOT NULL,
  PRIMARY KEY (`residencias_idresidencias`, `cadastro_motorista_idcadastro_motorista`),
  INDEX `fk_residencias_has_cadastro_motorista_cadastro_motorista1_idx` (`cadastro_motorista_idcadastro_motorista` ASC) VISIBLE,
  INDEX `fk_residencias_has_cadastro_motorista_residencias_idx` (`residencias_idresidencias` ASC) VISIBLE,
  CONSTRAINT `fk_residencias_has_cadastro_motorista_residencias`
    FOREIGN KEY (`residencias_idresidencias`)
    REFERENCES `carona`.`residencias` (`idresidencias`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_residencias_has_cadastro_motorista_cadastro_motorista1`
    FOREIGN KEY (`cadastro_motorista_idcadastro_motorista`)
    REFERENCES `carona`.`cadastro_motorista` (`idcadastro_motorista`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `carona`.`veiculos_cadastro_motorista`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `carona`.`veiculos_cadastro_motorista` (
  `veiculos_idveiculos` INT NOT NULL,
  `cadastro_motorista_idcadastro_motorista` INT NOT NULL,
  PRIMARY KEY (`veiculos_idveiculos`, `cadastro_motorista_idcadastro_motorista`),
  INDEX `fk_veiculos_has_cadastro_motorista_cadastro_motorista1_idx` (`cadastro_motorista_idcadastro_motorista` ASC) VISIBLE,
  INDEX `fk_veiculos_has_cadastro_motorista_veiculos1_idx` (`veiculos_idveiculos` ASC) VISIBLE,
  CONSTRAINT `fk_veiculos_has_cadastro_motorista_veiculos1`
    FOREIGN KEY (`veiculos_idveiculos`)
    REFERENCES `carona`.`veiculos` (`idveiculos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_veiculos_has_cadastro_motorista_cadastro_motorista1`
    FOREIGN KEY (`cadastro_motorista_idcadastro_motorista`)
    REFERENCES `carona`.`cadastro_motorista` (`idcadastro_motorista`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
