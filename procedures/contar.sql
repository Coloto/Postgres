CREATE DEFINER=`root`@`localhost` PROCEDURE `contar`()
BEGIN
    	DECLARE c TINYINT;
   	DECLARE texto VARCHAR(100);
   	SET c=0, texto="";
   	WHILE c<10 DO
      	SET c=c+1;
        	SET texto = concat(texto, c, "  ");
   	END WHILE;
    	SELECT texto;
END