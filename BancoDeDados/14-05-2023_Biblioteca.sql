-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema biblioteca_14-05-2023
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema biblioteca_14-05-2023
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `biblioteca_14-05-2023` DEFAULT CHARACTER SET utf8 ;
USE `biblioteca_14-05-2023` ;

-- -----------------------------------------------------
-- Table `biblioteca_14-05-2023`.`categorias`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `biblioteca_14-05-2023`.`categorias` (
  `idcategorias` INT NOT NULL AUTO_INCREMENT,
  `codigo` DECIMAL NOT NULL,
  `descricao` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`idcategorias`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `biblioteca_14-05-2023`.`livros`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `biblioteca_14-05-2023`.`livros` (
  `idlivros` INT NOT NULL AUTO_INCREMENT,
  `isbn` VARCHAR(13) NOT NULL,
  `titulo` VARCHAR(60) NOT NULL,
  `ano` DATE NOT NULL,
  `editora` VARCHAR(45) NOT NULL,
  `categorias_idcategorias` INT NOT NULL,
  PRIMARY KEY (`idlivros`),
  INDEX `fk_livros_categorias1_idx` (`categorias_idcategorias` ASC) VISIBLE,
  CONSTRAINT `fk_livros_categorias1`
    FOREIGN KEY (`categorias_idcategorias`)
    REFERENCES `biblioteca_14-05-2023`.`categorias` (`idcategorias`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `biblioteca_14-05-2023`.`autores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `biblioteca_14-05-2023`.`autores` (
  `idautores` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(60) NOT NULL,
  `nacionalidade` VARCHAR(60) NOT NULL,
  PRIMARY KEY (`idautores`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `biblioteca_14-05-2023`.`autores_livros`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `biblioteca_14-05-2023`.`autores_livros` (
  `autores_idautores` INT NOT NULL,
  `livros_idlivros` INT NOT NULL,
  PRIMARY KEY (`autores_idautores`, `livros_idlivros`),
  INDEX `fk_autores_has_livros_livros1_idx` (`livros_idlivros` ASC) VISIBLE,
  INDEX `fk_autores_has_livros_autores_idx` (`autores_idautores` ASC) VISIBLE,
  CONSTRAINT `fk_autores_has_livros_autores`
    FOREIGN KEY (`autores_idautores`)
    REFERENCES `biblioteca_14-05-2023`.`autores` (`idautores`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_autores_has_livros_livros1`
    FOREIGN KEY (`livros_idlivros`)
    REFERENCES `biblioteca_14-05-2023`.`livros` (`idlivros`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
