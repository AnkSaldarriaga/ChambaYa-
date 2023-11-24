USE CY_DB
GO

------------------actualizar sector--------------------

CREATE PROCEDURE ActualizarSector  
@id int, 
@description varchar(200) 
AS  
update Sectores  
set descripcion = @description 
Where id_sector = @id 
GO 

EXECUTE ActualizarSector 1, 'Incluye actividades relacionadas con la extracción directa de recursos naturales de la tierra o del mar. Este sector está vinculado principalmente a la producción de materias primas.' 

------------actualizar tipo trabajo---------------------------

CREATE PROCEDURE ActualizarTipoTrabajo 
@id int, 
@description varchar(200) 
AS  
update tipo_trabajo 
set descripcion = @description 
Where id_tipo_trabajo = @id 
GO 

execute ActualizarTipoTrabajo 1, 'Forma parte del equipo dedicado a la ejecución exitosa de proyectos de construcción.'

------------------funcion hallas empresa con más reclutadores------

create function empresaconmasreclutadores() RETURNS VARCHAR(20)
AS
BEGIN
DECLARE @MAXIMO VARCHAR(20)
	select top 1 @MAXIMO = count(B.id_reclutador)
	from empresas A
	left join reclutadores B
	on A.id_empresa = B.id_empresa
	GROUP BY nombre_comercial
	ORDER BY count(B.id_reclutador) DESC
RETURN @MAXIMO
END

print dbo.empresaconmasreclutadores()

---------------------precedimiento hallar empresas entre rangos de número de reclutadores-------------------

create procedure nroreclutadoresxempresa
@min int,
@max int
as
select A.nombre_comercial, count(*) 
from empresas A
left join reclutadores B
on A.id_empresa = B.id_empresa
group by nombre_comercial
having count(*) between @min and @max

execute nroreclutadoresxempresa 2, 3

------------------------------cvs con el número de idiomas que requerimos-----------------------------------

create procedure idiomasencvs
@numcvs int
as
select id_cv, count(id_idioma) as CantidadIdiomas
from idiomas_cvs 
group by id_cv
having @numcvs <= count(id_idioma)

execute idiomasencvs 4

---------------------------Conoce el estado de tu cv-------------------------------

create procedure Conoceelestadodetucv
@nombre varchar(20)
as
select A.nombre, B.estado 
from aspirantes A
left join estados B
ON A.id_estado = B.id_estado
where nombre = @nombre

execute Conoceelestadodetucv Alfonse

------------------------------filtrar cargos deacuerdo al salario mínimo que deseo--------------

create procedure cargoxsalario
@salariomin int
as
select cargo, salario
from cargos
where salario >= @salariomin

execute cargoxsalario 4000


------------------------------------filtrar ofertas por salario-----------------------------

create procedure ofertaxsalario
@salariomin int
as
select A.id_oferta, B.salario
from ofertas_empleo A
left join cargos B
ON A.id_cargo = B.id_cargo
where B.salario >= @salariomin

execute ofertaxsalario 4000

----------------------------------numero de empresas en cada sector--------------------------

create function numerodeempresarxsector(@nombresector varchar(20)) returns int
as 
begin
declare @c int
select @c = count(B.id_empresa)
from sectores A
left join empresas B 
ON A.id_sector=B.sectores_id_sector
group by A.sector
return @c
end

print dbo.numerodeempresarxsector('primario')


------------------------------------ver la descripcion del sector de la empresa----------------

create function descripcionxsector(@nombresector varchar(10)) returns varchar(200)
as 
begin
declare @c varchar(200)
select @c = descripcion
from sectores Ar
where sector = @nombresector
return @c
end

print dbo.descripcionxsector('primario')