create database serviciosAndroidPHP;

use serviciosAndroidPHP;

create table alumnos(
codAlu char(5) Primary key,
nombreAlu varchar(30) not null, 
Distrito varchar(50) not null,
EstadoCivil varchar(30) not null,
pasUsu varchar(20) not null);

insert into alumnos values('A0001','Jose Perez Diaz','Callao','Soltero','123456');
insert into alumnos values('A0002','Maria Ruiz Ruiz','Lima','Casado','112233');
insert into alumnos values('A0003','Ana Lopez Paez','Miraflores','Casado','333333');
insert into alumnos values('A0004','Esther Cano Torres','Lince','Soltero','555555');

create table ciclo(
Ciclo int primary key,
Descripcion varchar(30) not null);

insert into ciclo values(1,'Primero');
insert into ciclo values(2,'Segundo');
insert into ciclo values(3,'Tercero');
insert into ciclo values(4,'Cuarto');
insert into ciclo values(5,'Quinto');
insert into ciclo values(6,'Sexto');

create table cursos(
CodCurso char(6) primary key,
Descripcion varchar(30) not null);

insert into cursos values('C00001','Programacion I');
insert into cursos values('C00002','Intriduccion a la Informatica');
insert into cursos values('C00003','Algoritmos');
insert into cursos values('C00004','Estructura de Datos');
insert into cursos values('C00005','Base de Datos I');
insert into cursos values('C00006','Base de Datos II');
insert into cursos values('C00007','Analisis y Dise�o I');
insert into cursos values('C00008','POO I');
insert into cursos values('C00009','Desarrollo Movil');
insert into cursos values('C00010','Desarrollo Web');
insert into cursos values('C00011','Historia');
insert into cursos values('C00012','Base de Datos III');
insert into cursos values('C00013','Analisis y Dise�o II');
insert into cursos values('C00014','POO II');
insert into cursos values('C00015','Desarrollo Movil Avanzado');
insert into cursos values('C00016','Desarrollo Web con BootsTrap');

create table registro(
codAlu char(5) not null,
CodCurso char(6) not null,
Ciclo int not null,
Promedio int not null,
foreign key(codAlu) references alumnos(codAlu),
foreign key(codCurso) references cursos(codCurso),
foreign key(Ciclo) references ciclo(Ciclo),
primary key(codAlu,codCurso,Ciclo));

insert into registro values('A0001','C00001',1,14);
insert into registro values('A0001','C00002',1,9);
insert into registro values('A0001','C00003',1,14);
insert into registro values('A0001','C00004',1,16);
insert into registro values('A0001','C00005',1,17);
insert into registro values('A0001','C00006',2,14);
insert into registro values('A0001','C00007',2,9);
insert into registro values('A0001','C00008',2,14);
insert into registro values('A0001','C00009',2,16);
insert into registro values('A0001','C00010',2,17);
insert into registro values('A0001','C00012',2,17);
insert into registro values('A0001','C00013',3,14);
insert into registro values('A0001','C00014',3,9);
insert into registro values('A0001','C00015',3,14);
insert into registro values('A0001','C00016',3,16);


insert into registro values('A0002','C00001',1,19);
insert into registro values('A0002','C00002',1,5);
insert into registro values('A0002','C00003',1,8);
insert into registro values('A0002','C00004',1,12);
insert into registro values('A0002','C00005',1,5);
insert into registro values('A0002','C00006',1,8);
insert into registro values('A0002','C00007',2,12);
insert into registro values('A0002','C00008',2,5);
insert into registro values('A0002','C00009',2,8);
insert into registro values('A0002','C00010',2,12);

insert into registro values('A0003','C00001',1,13);
insert into registro values('A0003','C00002',1,14);
insert into registro values('A0003','C00003',1,13);
insert into registro values('A0003','C00004',1,14);
insert into registro values('A0003','C00005',1,13);
insert into registro values('A0003','C00006',2,14);
insert into registro values('A0003','C00007',2,13);
insert into registro values('A0003','C00008',2,14);

insert into registro values('A0004','C00001',1,9);
insert into registro values('A0004','C00002',1,14);
insert into registro values('A0004','C00003',1,16);
insert into registro values('A0004','C00004',1,18);
insert into registro values('A0004','C00005',1,9);
insert into registro values('A0004','C00006',1,14);
insert into registro values('A0004','C00007',2,16);
insert into registro values('A0004','C00008',2,18);
insert into registro values('A0004','C00009',2,9);
insert into registro values('A0004','C00010',2,14);
insert into registro values('A0004','C00011',3,16);
insert into registro values('A0004','C00012',3,18);


