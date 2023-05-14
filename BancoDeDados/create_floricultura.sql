-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema floriculturadb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema floriculturadb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `floriculturadb` DEFAULT CHARACTER SET utf8 ;
USE `floriculturadb` ;

-- -----------------------------------------------------
-- Table `floriculturadb`.`categorias`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `floriculturadb`.`categorias` (
  `idcategorias` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idcategorias`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `floriculturadb`.`produtos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `floriculturadb`.`produtos` (
  `idprodutos` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NULL,
  `preco` DECIMAL(5,2) NOT NULL,
  `categorias_idcategorias` INT NOT NULL,
  PRIMARY KEY (`idprodutos`, `categorias_idcategorias`),
  INDEX `fk_produtos_categorias_idx` (`categorias_idcategorias` ASC) VISIBLE,
  CONSTRAINT `fk_produtos_categorias`
    FOREIGN KEY (`categorias_idcategorias`)
    REFERENCES `floriculturadb`.`categorias` (`idcategorias`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `floriculturadb`.`clientes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `floriculturadb`.`clientes` (
  `idclientes` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NULL,
  PRIMARY KEY (`idclientes`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `floriculturadb`.`pedidos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `floriculturadb`.`pedidos` (
  `idpedidos` INT NOT NULL AUTO_INCREMENT,
  `data_pedido` DATE NULL,
  `status` VARCHAR(10) NULL,
  `clientes_idclientes` INT NOT NULL,
  PRIMARY KEY (`idpedidos`, `clientes_idclientes`),
  INDEX `fk_pedidos_clientes1_idx` (`clientes_idclientes` ASC) VISIBLE,
  CONSTRAINT `fk_pedidos_clientes1`
    FOREIGN KEY (`clientes_idclientes`)
    REFERENCES `floriculturadb`.`clientes` (`idclientes`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `floriculturadb`.`itens_pedido`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `floriculturadb`.`itens_pedido` (
  `iditens_pedido` INT NOT NULL AUTO_INCREMENT,
  `subtotal` DECIMAL(6,2) NULL,
  `pedidos_idpedidos` INT NOT NULL,
  `produtos_idprodutos` INT NOT NULL,
  PRIMARY KEY (`iditens_pedido`, `pedidos_idpedidos`, `produtos_idprodutos`),
  INDEX `fk_itens_pedido_pedidos1_idx` (`pedidos_idpedidos` ASC) VISIBLE,
  INDEX `fk_itens_pedido_produtos1_idx` (`produtos_idprodutos` ASC) VISIBLE,
  CONSTRAINT `fk_itens_pedido_pedidos1`
    FOREIGN KEY (`pedidos_idpedidos`)
    REFERENCES `floriculturadb`.`pedidos` (`idpedidos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_itens_pedido_produtos1`
    FOREIGN KEY (`produtos_idprodutos`)
    REFERENCES `floriculturadb`.`produtos` (`idprodutos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
