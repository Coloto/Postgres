CREATE DEFINER=`root`@`localhost` PROCEDURE `saludar`(nombre CHAR(25), edad INT)
BEGIN
DECLARE salida varchar(150);
	SET salida=concat(nombre, ' tiene ', edad, ' años');
	IF edad<13 THEN
		SET salida=concat(salida, ' es infantíl');
	ELSEIF edad<18 THEN
		SET salida=concat(salida, ' es adolescente');
	ELSEIF edad<26 THEN
		SET salida=concat(salida, ' es joven mayor de edad');  
	ELSEIF edad<40 THEN
		SET salida=concat(salida, ' es adulto mayor de edad'); 
	ELSEIF edad<=65 THEN
		SET salida=concat(salida, ' es mayorcito no jubilado'); 
	ELSE 
		SET salida=concat(salida, ' es jubilado'); 
	END IF;
    select salida;
END