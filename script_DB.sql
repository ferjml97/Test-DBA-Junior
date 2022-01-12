-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema test_dba_junior
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema test_dba_junior
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `test_dba_junior` DEFAULT CHARACTER SET utf8 ;
USE `test_dba_junior` ;

-- -----------------------------------------------------
-- Table `test_dba_junior`.`Clientes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `test_dba_junior`.`Clientes` (
  `idCliente` INT NOT NULL AUTO_INCREMENT,
  `nombreCliente` VARCHAR(45) NOT NULL,
  `emailCliente` VARCHAR(45) NOT NULL,
  `direccionCliente` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idCliente`),
  UNIQUE INDEX `idClientes_UNIQUE` (`idCliente` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `test_dba_junior`.`Productos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `test_dba_junior`.`Productos` (
  `idProducto` INT NOT NULL AUTO_INCREMENT,
  `codigoProducto` INT NOT NULL,
  `nombreProducto` VARCHAR(45) NOT NULL,
  `descripcionProducto` VARCHAR(255) NOT NULL,
  `precioProducto` FLOAT NOT NULL,
  `impuestoProducto` FLOAT NOT NULL,
  PRIMARY KEY (`codigoProducto`),
  UNIQUE INDEX `idProductos_UNIQUE` (`idProducto` ASC) VISIBLE,
  UNIQUE INDEX `codigoProductos_UNIQUE` (`codigoProducto` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `test_dba_junior`.`Facturas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `test_dba_junior`.`Facturas` (
  `idFactura` INT NOT NULL AUTO_INCREMENT,
  `codigoProductoFK` INT NOT NULL,
  `idClienteFK` INT NOT NULL,
  `fechaFactura` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idFactura`),
  UNIQUE INDEX `idFacturas_UNIQUE` (`idFactura` ASC) VISIBLE,
  INDEX `codigoProductos_idx` (`codigoProductoFK` ASC) VISIBLE,
  CONSTRAINT `codigoProductos`
    FOREIGN KEY (`codigoProductoFK`)
    REFERENCES `test_dba_junior`.`Productos` (`codigoProducto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `idClientes`
    FOREIGN KEY (`idClienteFK`)
    REFERENCES `test_dba_junior`.`Clientes` (`idCliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
