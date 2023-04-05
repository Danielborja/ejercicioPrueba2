#DROP DATABASE ejercicioPrueba1;

    CREATE DATABASE ejercicioPrueba1;
    USE ejercicioPrueba1;
    
	CREATE TABLE empresas (
    id INT AUTO_INCREMENT,
    
    nombreEmpresa VARCHAR(100),
    personaContacto VARCHAR(100),
    email VARCHAR(100),
    telefono INT,
    direccion VARCHAR(100),
    
    PRIMARY KEY (id)
    );
    
	CREATE TABLE practicas (
    id INT AUTO_INCREMENT,
    
    tipoDePractica VARCHAR(100),
	tiempoCompleto VARCHAR(100),
    tiempoParcialMañana VARCHAR(100),
    tiempoParcialTarde VARCHAR(100),
    fk_id_empresas INT,
    
    PRIMARY KEY (id),
    FOREIGN KEY(fk_id_empresas) REFERENCES empresas(id)
    );
    
	CREATE TABLE alumnos (
    
    nombre VARCHAR(100),
    apellido VARCHAR(100),
	dni VARCHAR(100),
    tipoPracticas INT,
    empresaAsignada INT,
    
    FOREIGN KEY(tipoPracticas) REFERENCES practicas(id),
    FOREIGN KEY(empresaAsignada) REFERENCES empresas(id)
    );
    
INSERT INTO empresas VALUES(NULL,"talleres ignacio","ignacio", "ignacio@gmail.com", 658893423, "calle los patos");
INSERT INTO practicas VALUES(NULL,"mecanico",NULL, NULL, "de 15:00 a 21:00", 2);
INSERT INTO alumnos VALUES("pedro","fernandez", "75810636A", 2, 2);
    
