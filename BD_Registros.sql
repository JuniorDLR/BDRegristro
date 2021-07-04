create database BDRegistros
go

use BDRegistros
go





create table ciudad (

   idCiudad int 
 , nombre nvarchar (60) not null
 , activo int default 1

)
go



create table Cliente (

   id nvarchar(16) not null
  , nombre nvarchar(30) not null
  , apellido nvarchar (30) not null
  , ciudad int
  , direccion nvarchar (100) not null
  , numCel nvarchar (60) not null
  , fechaNac datetime
  , activo int default 1
)
go

insert into ciudad (idciudad , nombre) values (1,'Granada')
insert into ciudad (idciudad , nombre) values (2,'Masaya')
insert into ciudad (idciudad , nombre) values (3,'Nindiri')
insert into ciudad (idciudad , nombre) values (4,'Managua')
insert into ciudad (idciudad , nombre) values (5,'Ciudad Sandino')
insert into ciudad (idciudad , nombre) values (6,'El doral')
insert into ciudad (idciudad , nombre) values (7,'Mateare')
insert into ciudad (idciudad , nombre) values (8,'Nagarote')
insert into ciudad (idciudad , nombre) values (9,'La paz centro')
insert into ciudad (idciudad , nombre) values (10,'Leon')


insert into Cliente (id,nombre,apellido,ciudad,direccion,numCel,fechaNac) values (1,'junior','De la rocha',1,'Barrio Maldito','89972365','2001-09-06')
insert into Cliente (id,nombre,apellido,ciudad,direccion,numCel,fechaNac) values (2,'Alicia','ortega',1,'dario','19854286','2004-02-07')
insert into Cliente (id,nombre,apellido,ciudad,direccion,numCel,fechaNac) values (3,'juan','colomer',4,'sandino','89763227','1992-09-03')
insert into Cliente (id,nombre,apellido,ciudad,direccion,numCel,fechaNac) values (4,'katherine','sequeira',1,'calle nueva','56743981','1999-03-02')
insert into Cliente (id,nombre,apellido,ciudad,direccion,numCel,fechaNac) values (5,'reychel','gongora',8,'Hermita','78209165','2005-03-08')
insert into Cliente (id,nombre,apellido,ciudad,direccion,numCel,fechaNac) values (6,'edwar','perez',10,' la asuncion','834992174','1993-03-03')
insert into Cliente (id,nombre,apellido,ciudad,direccion,numCel,fechaNac) values (7,'carolina','marcenaro',3,'La cascada','89566329','1994-02-11')
insert into Cliente (id,nombre,apellido,ciudad,direccion,numCel,fechaNac) values (8,'justo','De la rocha',6,'kawiwi','58223091','1956-05-08')
insert into Cliente (id,nombre,apellido,ciudad,direccion,numCel,fechaNac) values (9,'stefaniaa','De la rocha',1,'Barrio Maldito','72994175','1998-10-09')
insert into Cliente (id,nombre,apellido,ciudad,direccion,numCel,fechaNac) values (10,'toby','aleman',2,'monimbo','88276439','1994-10-08')
insert into Cliente (id,nombre,apellido,ciudad,direccion,numCel,fechaNac) values (11,'jorge','gongora',5,'entorno142','78199344','1956-09-04')
insert into Cliente (id,nombre,apellido,ciudad,direccion,numCel,fechaNac) values (12,'marcela','aleman',8,'catlen','7012754','1996-10-06')
insert into Cliente (id,nombre,apellido,ciudad,direccion,numCel,fechaNac) values (13,'xilonem','picado',2,'monimbo','84153133','2006-05-03')
insert into Cliente (id,nombre,apellido,ciudad,direccion,numCel,fechaNac) values (14,'norma','lopez',1,'villa','72299541','1998-09-04')
insert into Cliente (id,nombre,apellido,ciudad,direccion,numCel,fechaNac) values (15,'romel','gomez',9,'el calmen','89237881','1993-09-04')
insert into Cliente (id,nombre,apellido,ciudad,direccion,numCel,fechaNac) values (16,'eleazer','vilchez',6,'setren','82547719','1992-12-03')
insert into Cliente (id,nombre,apellido,ciudad,direccion,numCel,fechaNac) values (17,'esmeralda','quijano',10,'carretera vieja 123','85678912','2009-06-08')
insert into Cliente (id,nombre,apellido,ciudad,direccion,numCel,fechaNac) values (18,'julio','treminio',4,'PDH','76892134','1995-12-04')
insert into Cliente (id,nombre,apellido,ciudad,direccion,numCel,fechaNac) values (19,'jairo','jessuan',7,'kawila','82391739','1995-09-02')
insert into Cliente (id,nombre,apellido,ciudad,direccion,numCel,fechaNac) values (20,'alexandra','mora',1,'jockey','89944222','2000-08-06')



update ciudad set nombre ='yali'
  where idCiudad = 2

update ciudad set nombre = 'ocotal'
where idCiudad = 10

update ciudad set nombre = 'Rio blanco'
where idCiudad = 9

update ciudad set nombre = 'siuna'
where idCiudad = 8

update ciudad set nombre = 'jalapa'
where idCiudad = 4



delete Cliente where id = 1
delete Cliente where id = 2
delete Cliente where id = 11
delete Cliente where id = 12
delete Cliente where id = 6



SELECT        Cliente.nombre AS Nombre, Cliente.apellido AS Apellido, ciudad.nombre AS Ciudad
FROM            Cliente INNER JOIN
                         ciudad ON Cliente.ciudad = ciudad.idCiudad

select nombre as 'Cliente',(year(getdate())-year (fechaNac)) as 'edad' from Cliente where (year(getdate())-year (fechaNac)) >30

select nombre from Cliente where year (fechaNac) between 2000 and 2005


select Cliente.nombre as Nombre,Cliente.apellido as apellido ,(year(getdate()) -year (fechaNac)) as  'edad', ciudad.nombre as ciudad FROM     Cliente INNER JOIN
                         ciudad ON Cliente.ciudad = ciudad.idCiudad

select nombre,apellido,fechaNac from Cliente



select  a.nombre,  count(b.ciudad)  from Ciudad a inner join Cliente b on a.idCiudad =  b.ciudad group by a.idCiudad ,a.nombre,b.ciudad order by max(b.ciudad)
