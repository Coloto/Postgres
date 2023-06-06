CREATE DEFINER=`root`@`localhost` PROCEDURE `contar2`()
BEGIN
DECLARE c TINYINT;
DECLARE texto VARCHAR(100);
SET c=0, texto="";
REPEAT 
SET c=c+1;
SET texto = concat(texto, c, "  ");
UNTIL c=10
END REPEAT;
SELECT texto;
END