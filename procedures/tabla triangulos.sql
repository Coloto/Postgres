CREATE DEFINER=`root`@`localhost` PROCEDURE `crearTriangulos`()
BEGIN
	DECLARE c tinyint;
	DROP TABLE IF EXISTS TRIANGULO;
    create table triangulo(
	id int PRIMARY KEY,
    lado1 int,
    lado2 int,
    lado3 int
);

	SET c=0;
	WHILE c<30 DO
		SET c=c+1;
		-- añadir un triangulo
        INSERT INTO TRIANGULO VALUES(
        c, 
        FLOOR(rand()*10+1),
        FLOOR(rand()*10+1),
        FLOOR(rand()*10+1)
        );
        
    END WHILE;
	COMMIT;
END