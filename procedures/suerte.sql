CREATE DEFINER=`root`@`localhost` PROCEDURE `suerte`()
BEGIN
	DECLARE n TINYINT;
	DECLARE texto CHAR(200);
	SET n=FLOOR(RAND()*5+1);
	CASE n
		WHEN 1 THEN
			SET texto='Hoy va a ser un gran día';
		WHEN 2 THEN
			SET texto='Hoy te va a tocar la lotería';
		WHEN 3 THEN
			SET texto='Hoy va a caer una gran nevada';
		WHEN 4 THEN
			SET texto='Hoy te vas a encontrar con alguien muy plasta';
		ELSE
			SET texto='Hoy vas a encontrar a alguien especial';
	END CASE;
	SELECT texto;
END