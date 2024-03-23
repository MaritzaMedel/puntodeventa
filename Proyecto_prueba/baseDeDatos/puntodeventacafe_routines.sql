-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: puntodeventacafe
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping events for database 'puntodeventacafe'
--

--
-- Dumping routines for database 'puntodeventacafe'
--
/*!50003 DROP PROCEDURE IF EXISTS `deleteProducto_sp` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteProducto_sp`(IN IN_IdProducto VARCHAR(10))
BEGIN
	DECLARE sql_error tinyint DEFAULT FALSE; -- Bandera para manejar errores
    DECLARE CONTINUE HANDLER FOR sqlexception SET sql_error = TRUE; -- manejador para una excepcion MySQL
	
		START TRANSACTION;
	IF EXISTS(SELECT idProducto FROM tblProducto WHERE idProducto = IN_IdProducto)THEN
		BEGIN
			DELETE FROM 
				tblProducto
			WHERE 
				idProducto = IN_IdProducto;
			END;
	ELSE
	BEGIN 
			SELECT 0; -- error
	END;
	END IF;
    IF sql_error = FALSE THEN
		COMMIT; -- Aceptar 
        SELECT '1'; -- exit
	ELSE
		ROLLBACK; -- Regresa todo a su estado inicial
        SELECT '2';
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `deleteVenta_sp` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteVenta_sp`(IN IN_IdVenta VARCHAR(10))
BEGIN
	DECLARE sql_error tinyint DEFAULT FALSE; -- Bandera para manejar errores
    DECLARE CONTINUE HANDLER FOR sqlexception SET sql_error = TRUE; -- manejador para una excepcion MySQL
	
		START TRANSACTION;
	IF EXISTS(SELECT idVenta FROM tblVenta WHERE idVenta = IN_IdVenta)THEN
		BEGIN
			DELETE FROM 
				tblVenta
			WHERE 
				idVenta = IN_IdVenta;
			END;
	ELSE
	BEGIN 
			SELECT 0; -- error
	END;
	END IF;
    IF sql_error = FALSE THEN
		COMMIT; -- Aceptar 
        SELECT '1'; -- exit
	ELSE
		ROLLBACK; -- Regresa todo a su estado inicial
        SELECT '2';
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `eliminarProducto_sp` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminarProducto_sp`(IN IN_IdProducto VARCHAR(10))
BEGIN
	DECLARE sql_error tinyint DEFAULT FALSE; -- Bandera para manejar errores
    DECLARE CONTINUE HANDLER FOR sqlexception SET sql_error = TRUE; -- manejador para una excepcion MySQL
	
		START TRANSACTION;
	IF EXISTS(SELECT idProducto FROM tblProducto WHERE idProducto = IN_IdProducto)THEN
		BEGIN
			DELETE FROM 
				tblProducto
			WHERE 
				idProducto = IN_IdProducto;
			END;
	ELSE
	BEGIN 
			SELECT 0; -- error
	END;
	END IF;
    IF sql_error = FALSE THEN
		COMMIT; -- Aceptar 
        SELECT '1'; -- exit
	ELSE
		ROLLBACK; -- Regresa todo a su estado inicial
        SELECT '2';
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getProducto_sp` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getProducto_sp`(IN IN_IdProducto VARCHAR(10))
BEGIN
		SELECT
			*
		FROM 
					tblProducto
		WHERE (
				CASE 
					WHEN  IN_IdProducto != 0 THEN
                    idProducto= IN_IdProducto
				ELSE true
                    END
		);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getVenta_sp` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getVenta_sp`(IN IN_IdVenta VARCHAR(10))
BEGIN
		SELECT
			*
		FROM 
					tblVentas
		WHERE (
				CASE 
					WHEN  IN_IdVenta != 0 THEN
                    idVenta = IN_IdVenta
				ELSE true
                    END
		);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertProducto_sp` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertProducto_sp`(IN IN_IdProducto VARCHAR (10),IN IN_Nombre VARCHAR(15),IN IN_Descripcion VARCHAR(100),IN IN_Precio INT,IN IN_Existencias INT,IN IN_TipoMolienda VARCHAR(10))
BEGIN 
 IF NOT EXISTS(SELECT idProducto FROM tblProducto WHERE idProducto = IN_IdProducto)THEN
    BEGIN
				 INSERT INTO 
							tblProducto
							(
							 idProducto,
							 nombre,
                             descripcion,
                             precio,
                             existencias,
                             tipoMolienda
							 ) 
				 VALUES (
							IN_IdProducto,
                            IN_Nombre,
                            IN_Descripcion,
                            IN_Precio,
                            IN_Existencias,
                            IN_TipoMolienda
						);
		    SELECT 1; -- EXITO
END;
ELSE
BEGIN 
		SELECT 0; -- error
END;
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertVenta_sp` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertVenta_sp`(IN IN_IdVenta VARCHAR (10),IN IN_Fecha DATE,IN IN_Hora TIME,IN IN_Cantidad INT,IN IN_Total INT,IN IN_IdProducto VARCHAR(10))
BEGIN 
 IF NOT EXISTS(SELECT idVenta FROM tblVentas WHERE idVenta = IN_IdVenta)THEN
    BEGIN
				 INSERT INTO 
							tblVentas
							(
							 idVenta,
							 fecha,
                             hora,
                             cantidad,
                             total,
                             idProducto
							 ) 
				 VALUES (
							IN_IdVenta,
                            IN_Fecha,
                            IN_Hora,
                            IN_Cantidad,
                            IN_Total,
                            IN_IdProducto
						);
		    SELECT 1; -- EXITO
END;
ELSE
BEGIN 
		SELECT 0; -- error
END;
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateProducto_sp` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateProducto_sp`(IN IN_IdProducto VARCHAR(10),IN IN_Nombre VARCHAR(15), IN  IN_Descripcion VARCHAR(100), IN IN_Precio INT,IN IN_Existencias INT,IN IN_TipoMolienda VARCHAR(10))
BEGIN
	DECLARE sql_error tinyint DEFAULT FALSE; -- Bandera para manejar errores
    DECLARE CONTINUE HANDLER FOR sqlexception SET sql_error = TRUE; -- manejador para una excepcion MySQL
	
		START TRANSACTION;
		IF EXISTS(SELECT idProducto FROM tblProducto WHERE idProducto = IN_IdProducto)THEN
			BEGIN
				UPDATE 
					tblProducto
					SET 
						nombre	=	IN_Nombre,
						descripcion = IN_Descripcion,
                        precio= IN_Precio,
                        existencias = IN_Existencias,
                        tipoMolienda = IN_TipoMolienda
					WHERE 
						idProducto = IN_IdProducto;
			END;
	ELSE
	BEGIN 
			SELECT 0; -- error
	END;
	END IF;
    IF sql_error = FALSE THEN
		COMMIT; -- Aceptar 
        SELECT '1'; -- exit
	ELSE
		ROLLBACK; -- Regresa todo a su estado inicial
        SELECT '2';
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateVenta_sp` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateVenta_sp`(IN IN_IdVenta VARCHAR(10),IN IN_Fecha DATE, IN  IN_Hora TIME, IN IN_Cantidad INT,IN IN_Total INT,IN IN_IdProducto VARCHAR(10))
BEGIN
	DECLARE sql_error tinyint DEFAULT FALSE; -- Bandera para manejar errores
    DECLARE CONTINUE HANDLER FOR sqlexception SET sql_error = TRUE; -- manejador para una excepcion MySQL
	
		START TRANSACTION;
		IF EXISTS(SELECT idVenta FROM tblVenta WHERE idVenta = IN_IdVenta)THEN
			BEGIN
				UPDATE 
					tblVenta
					SET 
						fecha = IN_Fecha,
                        hora= IN_Hora,
                        cantidad = IN_Cantidad,
                        total = IN_Total,
                        idProducto = IN_IdProducto
					WHERE 
						idVenta = IN_IdVenta;
			END;
	ELSE
	BEGIN 
			SELECT 0; -- error
	END;
	END IF;
    IF sql_error = FALSE THEN
		COMMIT; -- Aceptar 
        SELECT '1'; -- exit
	ELSE
		ROLLBACK; -- Regresa todo a su estado inicial
        SELECT '2';
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-22 18:01:10
