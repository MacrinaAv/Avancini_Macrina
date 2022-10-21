INSERT INTO trabajo04_ej1.alumno (Cod_Matricula,Nombre,DNI,FechaNacimiento,email) VALUES ("Macrina","39226793","1996-01-26","avanciniluz@gmail.com");
INSERT INTO trabajo04_ej1.alumno (Cod_Matricula,Nombre,DNI,FechaNacimiento,email) VALUES ("Luz","39226888","1999-11-25","Luz@gmail.com");
INSERT INTO trabajo04_ej1.alumno (Cod_Matricula,Nombre,DNI,FechaNacimiento,email) VALUES ("Victoria","38879793","1995-08-16","victoria@gmail.com");

INSERT INTO trabajo04_ej1.profesor(Nombre,Especialidad,email) VALUES ("Mirta","matematicas","mirta@gmail.com");
INSERT INTO trabajo04_ej1.profesor(Nombre,Especialidad,email) VALUES ("Juan","quimica irganica","juan@gmail.com");
INSERT INTO trabajo04_ej1.profesor(Nombre,Especialidad,email) VALUES ("Ana","economia","ana@gmail.com");

INSERT INTO trabajo04_ej1.alumno (Cod_curso,Nombre) VALUES ("005","matemarica");
INSERT INTO trabajo04_ej1.alumno (Cod_curso,Nombre) VALUES ("011","estadistica");
INSERT INTO trabajo04_ej1.alumno (Cod_curso,Nombre) VALUES ("007","quimica");

INSERT INTO trabajo04_ej1.alumnos_has_curso (alumno,curso) VALUES ("1","1");
INSERT INTO trabajo04_ej1.alumnos_has_curso (alumno,curso) VALUES ("1","2");
INSERT INTO trabajo04_ej1.alumnos_has_curso (alumno,curso) VALUES ("1","3");
INSERT INTO trabajo04_ej1.alumnos_has_curso (alumno,curso) VALUES ("2","1");
INSERT INTO trabajo04_ej1.alumnos_has_curso (alumno,curso) VALUES ("2","2");
INSERT INTO trabajo04_ej1.alumnos_has_curso (alumno,curso) VALUES ("3","1");

INSERT INTO trabajo04_ej1.profesor_has_curso (profesor,curso) VALUES ("2","3");
INSERT INTO trabajo04_ej1.profesor_has_curso (profesor,curso) VALUES ("1","1");
INSERT INTO trabajo04_ej1.profesor_has_curso (profesor,curso) VALUES ("1","2");
INSERT INTO trabajo04_ej1.profesor_has_curso (profesor,curso) VALUES ("3","2");
INSERT INTO trabajo04_ej1.profesor_has_curso (profesor,curso) VALUES ("3","1");