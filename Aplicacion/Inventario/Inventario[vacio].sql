USE [Inventario]
GO
/****** Object:  Table [dbo].[Familia]    Script Date: 10/05/2012 14:35:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Familia](
	[Id_Familia] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Familia] PRIMARY KEY CLUSTERED 
(
	[Id_Familia] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Facultad]    Script Date: 10/05/2012 14:35:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Facultad](
	[Id_Facultad] [int] NOT NULL,
	[Nombre] [varchar](25) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Curso]    Script Date: 10/05/2012 14:35:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Curso](
	[Id_Curso] [int] NOT NULL,
	[Nombre] [varchar](75) NOT NULL,
 CONSTRAINT [PK_Curso] PRIMARY KEY CLUSTERED 
(
	[Id_Curso] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ciclo]    Script Date: 10/05/2012 14:35:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ciclo](
	[Id_Ciclo] [int] NOT NULL,
	[Descripcion] [varchar](25) NOT NULL,
 CONSTRAINT [PK_Ciclo] PRIMARY KEY CLUSTERED 
(
	[Id_Ciclo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Medida]    Script Date: 10/05/2012 14:35:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Medida](
	[Id_Medida] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NULL,
	[Cantidad] [float] NULL,
 CONSTRAINT [PK_Medida] PRIMARY KEY CLUSTERED 
(
	[Id_Medida] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PerdidaProducto]    Script Date: 10/05/2012 14:35:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PerdidaProducto](
	[Id_Perdida] [int] IDENTITY(1,1) NOT NULL,
	[Id_Producto] [varchar](30) NOT NULL,
	[Id_Referencia] [int] NOT NULL,
	[Id_Usuario] [varchar](50) NOT NULL,
	[FechaTransac] [date] NOT NULL,
	[Cantidad] [varchar](15) NOT NULL,
	[Costo] [float] NULL,
 CONSTRAINT [PK_AjustesProducto] PRIMARY KEY CLUSTERED 
(
	[Id_Perdida] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Pagina]    Script Date: 10/05/2012 14:35:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Pagina](
	[Id_Pagina] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Estado] [bit] NOT NULL,
	[Menu] [nvarchar](max) NULL,
 CONSTRAINT [PK_Pagina] PRIMARY KEY CLUSTERED 
(
	[Id_Pagina] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PrestamoEquipo]    Script Date: 10/05/2012 14:35:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PrestamoEquipo](
	[Id_Prestamo] [int] IDENTITY(1,1) NOT NULL,
	[Id_Equipo] [int] NOT NULL,
	[OperadorEntrega] [varchar](50) NOT NULL,
	[Solicitante] [varchar](50) NOT NULL,
	[Estado] [bit] NOT NULL,
	[FechaPrestamo] [varchar](10) NOT NULL,
	[Observaciones] [varchar](150) NULL,
	[FechaDevolucion] [varchar](10) NULL,
	[CodigoSolicitante] [varchar](50) NOT NULL,
	[OperadorRecibe] [varchar](50) NULL,
 CONSTRAINT [PK_PrestamoEquipo] PRIMARY KEY CLUSTERED 
(
	[Id_Prestamo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ubicacion]    Script Date: 10/05/2012 14:35:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ubicacion](
	[Id_Ubicacion] [varchar](10) NOT NULL,
	[Nombre] [varchar](100) NULL,
 CONSTRAINT [PK_Ubicacion] PRIMARY KEY CLUSTERED 
(
	[Id_Ubicacion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TipoEquipo]    Script Date: 10/05/2012 14:35:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoEquipo](
	[id_tipo] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TipoEquipo] PRIMARY KEY CLUSTERED 
(
	[id_tipo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sede]    Script Date: 10/05/2012 14:35:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sede](
	[Id_Sede] [int] NOT NULL,
	[Nombre] [varchar](25) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rol]    Script Date: 10/05/2012 14:35:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rol](
	[Id_Rol] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_Rol] PRIMARY KEY CLUSTERED 
(
	[Id_Rol] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Proveedor]    Script Date: 10/05/2012 14:35:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Proveedor](
	[Nit] [varchar](15) NOT NULL,
	[Nombre] [varchar](150) NOT NULL,
	[Direccion] [varchar](110) NOT NULL,
	[Telefono 1] [int] NOT NULL,
	[Regimen] [varchar](75) NULL,
	[Cotacto] [varchar](60) NULL,
	[Correo] [varchar](80) NULL,
	[Telefono 2] [int] NULL,
 CONSTRAINT [PK_Proveedor] PRIMARY KEY CLUSTERED 
(
	[Nit] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 10/05/2012 14:35:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuario](
	[Usuario] [varchar](50) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Apellido] [varchar](50) NOT NULL,
	[Correo] [varchar](50) NOT NULL,
	[Contraseña] [varchar](50) NOT NULL,
	[Estado] [bit] NOT NULL,
	[Id_Rol] [int] NOT NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[Usuario] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RolPagina]    Script Date: 10/05/2012 14:35:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RolPagina](
	[Id_Rol] [int] NOT NULL,
	[Id_Pagina] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 10/05/2012 14:35:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Producto](
	[Nombre] [varchar](150) NOT NULL,
	[Clasificacion] [varchar](1) NOT NULL,
	[Corrosivo] [int] NOT NULL,
	[Explosivo] [int] NOT NULL,
	[Comburente] [int] NOT NULL,
	[Irritante] [int] NOT NULL,
	[Nocivo] [int] NOT NULL,
	[Toxicidad] [int] NOT NULL,
	[Codigo] [varchar](30) NOT NULL,
	[Id_Familia] [int] NOT NULL,
	[Inflamable] [int] NOT NULL,
	[Controlado] [bit] NOT NULL,
	[PeligrosoParaAmbiente] [int] NOT NULL,
 CONSTRAINT [PK_NuevoProducto] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Practica]    Script Date: 10/05/2012 14:35:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Practica](
	[Id_Practica] [int] NOT NULL,
	[Nombre] [varchar](30) NOT NULL,
	[Id_Curso] [int] NOT NULL,
 CONSTRAINT [PK_Practica] PRIMARY KEY CLUSTERED 
(
	[Id_Practica] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[InsertarUbicacion]    Script Date: 10/05/2012 14:35:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Carlos Martinez
-- Create date: 12/11/2010
-- Description:	Insertar Ubicación
-- =============================================
CREATE PROCEDURE [dbo].[InsertarUbicacion] 
	-- Parametros
	@id varchar(10), @descripcion varchar(100)
AS

BEGIN TRY
	
		insert into Ubicacion values(@id,@descripcion)
   
	COMMIT TRAN
END TRY
BEGIN CATCH
	IF @@TRANCOUNT > 0 ROLLBACK TRAN
	SELECT ERROR_MESSAGE()
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[InsertarRol]    Script Date: 10/05/2012 14:35:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[InsertarRol] 
	-- Parametros
	@Descripcion varchar (50)
AS

BEGIN TRY
	BEGIN TRAN
	
	Insert into Rol values (@Descripcion,'1')
   
	COMMIT TRAN
END TRY
BEGIN CATCH
	IF @@TRANCOUNT > 0 ROLLBACK TRAN
	SELECT ERROR_MESSAGE()
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[InsertarProveedor]    Script Date: 10/05/2012 14:35:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Carlos Martinez
-- Create date: 12/11/2010
-- Description:	Insertar Proveedor
-- =============================================
CREATE PROCEDURE [dbo].[InsertarProveedor]
	-- Parametros
	@Nit varchar(15), @Nombre varchar(80),
	@Direccion varchar(80),@Telefono1 int,
	@Regimen varchar(30),@Contacto varchar(60),@Correo varchar(25),@Telefono2 int
AS

BEGIN TRY
	BEGIN TRAN
	
	INSERT INTO Proveedor values (@Nit,@Nombre,@Direccion,@Telefono1,@Regimen,@Contacto,@Correo,@Telefono2)

	COMMIT TRAN
END TRY
BEGIN CATCH
	IF @@TRANCOUNT > 0 ROLLBACK TRAN
	SELECT ERROR_MESSAGE()
END CATCH
GO
/****** Object:  Table [dbo].[Herramienta]    Script Date: 10/05/2012 14:35:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Herramienta](
	[id_herramienta] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](150) NOT NULL,
	[id_ubicacion] [varchar](10) NOT NULL,
	[cantidad] [int] NOT NULL,
	[Marca] [varchar](20) NULL,
 CONSTRAINT [PK_Herramienta] PRIMARY KEY CLUSTERED 
(
	[id_herramienta] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[InsertarFamilia]    Script Date: 10/05/2012 14:35:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Carlos Martinez
-- Create date: 12/11/2010
-- Description:	Insertar Familia
-- =============================================
Create PROCEDURE [dbo].[InsertarFamilia] 
	-- Parametros
	@Nombre varchar(50)
AS

BEGIN TRY
	
		insert into Familia values(@Nombre)
   
	COMMIT TRAN
END TRY
BEGIN CATCH
	IF @@TRANCOUNT > 0 ROLLBACK TRAN
	SELECT ERROR_MESSAGE()
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[InsertarPresentacion]    Script Date: 10/05/2012 14:35:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Carlos Martinez
-- Create date: 12/11/2010
-- Description:	Insertar Presentacion
-- =============================================
Create PROCEDURE [dbo].[InsertarPresentacion] 
	-- Parametros
	@Unidad varchar(50), @cantidad float
AS

BEGIN TRY
	
		insert into Medida values(@Unidad,@cantidad)
   
	COMMIT TRAN
END TRY
BEGIN CATCH
	IF @@TRANCOUNT > 0 ROLLBACK TRAN
	SELECT ERROR_MESSAGE()
END CATCH
GO
/****** Object:  Table [dbo].[Equipo]    Script Date: 10/05/2012 14:35:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Equipo](
	[Codigo] [varchar](50) NOT NULL,
	[No. de Serie] [varchar](50) NOT NULL,
	[Marca] [varchar](50) NOT NULL,
	[id_ubicacion] [varchar](10) NOT NULL,
	[id_tipo] [int] NOT NULL,
	[descripcion] [varchar](150) NULL,
	[Id_Equipo] [int] IDENTITY(1,1) NOT NULL,
	[Activo] [bit] NULL,
	[Prestado] [bit] NULL,
 CONSTRAINT [PK_Equipo_1] PRIMARY KEY CLUSTERED 
(
	[Id_Equipo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EntradaProducto]    Script Date: 10/05/2012 14:35:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EntradaProducto](
	[Id_Entrada] [int] IDENTITY(1,1) NOT NULL,
	[Id_Producto] [varchar](30) NOT NULL,
	[Id_Ubicacion] [varchar](10) NOT NULL,
	[OrdenDeCompra] [varchar](50) NOT NULL,
	[NoFactura] [varchar](50) NOT NULL,
	[Presentacion] [int] NOT NULL,
	[Cantidad] [int] NOT NULL,
	[FechaVencimiento] [varchar](10) NOT NULL,
	[PrecioUnitario] [float] NOT NULL,
	[Id_Usuario] [varchar](50) NOT NULL,
	[FechaCompra] [varchar](10) NOT NULL,
	[CantidadActual] [float] NULL,
	[Marca] [varchar](50) NULL,
	[Observaciones] [varchar](150) NULL,
	[Id_Proveedor] [varchar](15) NULL,
 CONSTRAINT [PK_EntradaProducto] PRIMARY KEY CLUSTERED 
(
	[Id_Entrada] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[DevolucionEquipo]    Script Date: 10/05/2012 14:35:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DevolucionEquipo]
	@Codigo int , @Usuario varchar(50)
AS

BEGIN TRY
	BEGIN TRAN
	declare @IdEquipo int
	
		update PrestamoEquipo set OperadorRecibe = @Usuario, 
		FechaDevolucion = CONVERT(varchar, DATEPART(DD,GETDATE()))+ '/' + CONVERT(varchar,DATEPART(MM,GETDATE())) + '/' + CONVERT(varchar,DATEPART(YYYY,GETDATE()))					  ,
		Estado = 0
		where Id_Prestamo = @Codigo
		
		set @IdEquipo = (select Id_Equipo from PrestamoEquipo where Id_Prestamo = @Codigo)
		
		update Equipo set Prestado = 0 where Id_Equipo = @IdEquipo

	COMMIT TRAN
END TRY
BEGIN CATCH
	IF @@TRANCOUNT > 0 ROLLBACK TRAN
	SELECT ERROR_MESSAGE()
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[BuscarEquipoMod]    Script Date: 10/05/2012 14:35:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[BuscarEquipoMod]
	-- Parametros
	@codigo varchar (50),@serie varchar(50)
AS

BEGIN TRY
	BEGIN TRAN
	select TipoEquipo.Descripcion as Tipo, Codigo,[No. de Serie],Marca,Equipo.id_ubicacion +' '+Ubicacion.Nombre, Equipo.descripcion,Equipo.Activo 
	from Equipo,TipoEquipo,Ubicacion 
	where Equipo.id_tipo = TipoEquipo.id_tipo and Ubicacion.Id_Ubicacion = Equipo.id_ubicacion and 
	      Codigo  = @codigo and [No. de Serie] = @serie and Activo = '1'
	
COMMIT TRAN
END TRY
BEGIN CATCH
	IF @@TRANCOUNT > 0 ROLLBACK TRAN
	SELECT ERROR_MESSAGE()
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[BuscarEquipoDisponible]    Script Date: 10/05/2012 14:35:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[BuscarEquipoDisponible]
	-- Parametros
	@Codigo varchar (50),@Tipo varchar(50), @IdUbicacion varchar(10)
AS

BEGIN TRY
	BEGIN TRAN
	
	Declare @IdTipo int
	
	set @IdTipo = (select id_tipo from TipoEquipo where Descripcion = @Tipo)
	
	select Codigo,Marca,[No. de Serie], @Tipo as Descripcion
	from Equipo,Ubicacion 
	where Equipo.id_tipo = @IdTipo and Equipo.id_ubicacion = @IdUbicacion and 
	      Codigo LIKE '%'+@codigo+'%'  and Activo = '1' and Prestado = '0' and Equipo.id_ubicacion = Ubicacion.Id_Ubicacion
	
COMMIT TRAN
END TRY
BEGIN CATCH
	IF @@TRANCOUNT > 0 ROLLBACK TRAN
	SELECT ERROR_MESSAGE()
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[BuscarEquipo]    Script Date: 10/05/2012 14:35:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[BuscarEquipo]
	-- Parametros
	@codigo varchar (50),@serie varchar(50)
AS

BEGIN TRY
	BEGIN TRAN
	select Codigo,Marca,[No. de Serie], TipoEquipo.Descripcion,Ubicacion.Nombre,Equipo.Prestado 
	from Equipo,TipoEquipo,Ubicacion 
	where Equipo.id_tipo = TipoEquipo.id_tipo and Ubicacion.Id_Ubicacion = Equipo.id_ubicacion and 
	      (Codigo = @codigo or [No. de Serie] = @serie) and Activo = '1'
	
COMMIT TRAN
END TRY
BEGIN CATCH
	IF @@TRANCOUNT > 0 ROLLBACK TRAN
	SELECT ERROR_MESSAGE()
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[BuscarEntradaProducto]    Script Date: 10/05/2012 14:35:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Carlos Martinez
-- Create date: 12/11/2010
-- Description:	Buscar Producto
-- =============================================
CREATE PROCEDURE [dbo].[BuscarEntradaProducto]
	-- Parametros
	@codigo varchar (30), @IdUbicacion varchar(10)
AS

BEGIN TRY
	BEGIN TRAN
	
	select Id_Entrada as Entrada,EntradaProducto.Id_Producto as Producto, Producto.Nombre, 
	Convert(varchar,Medida.Cantidad) +' ' + Medida.Descripcion as Presentación ,FechaVencimiento ,CantidadActual as Existencia
		from EntradaProducto,Producto,Medida
	where EntradaProducto.Id_Producto LIKE '%'+@codigo+'%' and CantidadActual > 0 and EntradaProducto.Presentacion = Medida.Id_Medida and Producto.Codigo = EntradaProducto.Id_Producto	and EntradaProducto.Id_Ubicacion = @IdUbicacion	
	order by FechaVencimiento
		
	COMMIT TRAN
END TRY
BEGIN CATCH
	IF @@TRANCOUNT > 0 ROLLBACK TRAN
	SELECT ERROR_MESSAGE()
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[BuscarContraseña]    Script Date: 10/05/2012 14:35:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
Create PROCEDURE [dbo].[BuscarContraseña]
	-- Parametros
	@Usuario varchar (50)
AS

BEGIN TRY
	BEGIN TRAN
	SELECT Contraseña from Usuario where Usuario = @Usuario
	
COMMIT TRAN
END TRY
BEGIN CATCH
	IF @@TRANCOUNT > 0 ROLLBACK TRAN
	SELECT ERROR_MESSAGE()
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[BuscarProducto]    Script Date: 10/05/2012 14:35:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Carlos Martinez
-- Create date: 12/11/2010
-- Description:	Buscar Producto
-- =============================================
CREATE PROCEDURE [dbo].[BuscarProducto]
	-- Parametros
	@codigo varchar(30) 
AS

BEGIN TRY
	BEGIN TRAN
	
	select Producto.Codigo as Código,Producto.Nombre 
	from Producto
	where  Producto.Codigo LIKE '%'+@codigo+'%'		
		
	COMMIT TRAN
END TRY
BEGIN CATCH
	IF @@TRANCOUNT > 0 ROLLBACK TRAN
	SELECT ERROR_MESSAGE()
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[BuscarPermisos]    Script Date: 10/05/2012 14:35:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[BuscarPermisos] 
	-- Parametros
	@Rol varchar (50)
AS

BEGIN TRY
	BEGIN TRAN
	Declare @id_rol int
	
	Set @id_rol = (Select Rol.Id_Rol from Rol where Rol.Descripcion = @Rol)
	
	select Nombre, permiso  from (select Nombre from Pagina where Estado = 1) as a  left outer join (select  Nombre as permiso from Pagina as p ,RolPagina as r 
where p.Id_Pagina = r.Id_Pagina and r.Id_Rol = @id_rol) as b on a.Nombre = b.permiso
    
COMMIT TRAN
END TRY
BEGIN CATCH
	IF @@TRANCOUNT > 0 ROLLBACK TRAN
	SELECT ERROR_MESSAGE()
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[BuscarHerramientaId]    Script Date: 10/05/2012 14:35:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[BuscarHerramientaId] 
	-- Parametros
	@id varchar (150)
AS

BEGIN TRY
	BEGIN TRAN
	
	SELECT Herramienta.descripcion,Ubicacion.Id_Ubicacion + ' ' + Ubicacion.Nombre,Herramienta.cantidad,Marca
	FROM Herramienta,Ubicacion
	WHERE Herramienta.id_ubicacion = Ubicacion.Id_Ubicacion and Herramienta.id_herramienta = @id 
    
COMMIT TRAN
END TRY
BEGIN CATCH
	IF @@TRANCOUNT > 0 ROLLBACK TRAN
	SELECT ERROR_MESSAGE()
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[BuscarHerramienta]    Script Date: 10/05/2012 14:35:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[BuscarHerramienta] 
	-- Parametros
	@descripcion varchar (150)
AS

BEGIN TRY
	BEGIN TRAN
	
	SELECT Herramienta.id_herramienta,Herramienta.descripcion,Ubicacion.Nombre,Herramienta.cantidad
	FROM Herramienta,Ubicacion
	WHERE Herramienta.id_ubicacion = Ubicacion.Id_Ubicacion  and Herramienta.descripcion LIKE '%'+@descripcion+'%' 
    
COMMIT TRAN
END TRY
BEGIN CATCH
	IF @@TRANCOUNT > 0 ROLLBACK TRAN
	SELECT ERROR_MESSAGE()
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[BuscarUsuarios]    Script Date: 10/05/2012 14:35:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[BuscarUsuarios]
	-- Parametros
	@Usuario varchar (50)
AS

BEGIN TRY
	BEGIN TRAN

	SELECT Usuario.Usuario,Usuario.Nombre,Usuario.Apellido,Usuario.Correo,Rol.Descripcion as Rol, Usuario.Estado 
	from Usuario,Rol
	where Usuario.Usuario LIKE '%'+@Usuario+'%' and Rol.Id_Rol = Usuario.Id_Rol and Usuario.Estado = '1'
	
COMMIT TRAN
END TRY
BEGIN CATCH
	IF @@TRANCOUNT > 0 ROLLBACK TRAN
	SELECT ERROR_MESSAGE()
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[InsertarUsuario]    Script Date: 10/05/2012 14:35:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Carlos Martinez
-- Create date: 12/11/2010
-- Description:	Insertar Usuario
-- =============================================
CREATE PROCEDURE [dbo].[InsertarUsuario]
	-- Parametros
	@Usuario varchar(50), @Nombre varchar(50),
	@Apellido varchar(50),@Correo varchar(50),
	@Contraseña varchar(50),@Estado bit,
	@Rol varchar(50)
	
AS

BEGIN TRY
	BEGIN TRAN
	
	Declare @id int
	set @id =(select id_rol from Rol where Descripcion = @Rol)
	
	INSERT INTO Usuario values (@Usuario,@Nombre,@Apellido,@Correo,@Contraseña,@Estado,@Id)

	COMMIT TRAN
END TRY
BEGIN CATCH
	IF @@TRANCOUNT > 0 ROLLBACK TRAN
	SELECT ERROR_MESSAGE()
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[InsertarPermisos]    Script Date: 10/05/2012 14:35:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Carlos Martinez
-- Create date: 12/11/2010
-- Description:	Insertar Usuario
-- =============================================
CREATE PROCEDURE [dbo].[InsertarPermisos] 
	-- Parametros
	@Rol varchar(50), @Pagina varchar(50)
AS

BEGIN TRY
	BEGIN TRAN
	
	Declare @id_rol int
	Declare @id_pagina int
	
	Set @id_pagina = (SELECT Id_Pagina from Pagina where Nombre = @Pagina)
	
	Set @id_rol = (SELECT Id_Rol from Rol where Descripcion = @Rol)
	
	Insert into RolPagina (Id_Rol,Id_Pagina)
	values (@id_rol,@id_pagina)
   
	COMMIT TRAN
END TRY
BEGIN CATCH
	IF @@TRANCOUNT > 0 ROLLBACK TRAN
	SELECT ERROR_MESSAGE()
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[InsertarHerramienta]    Script Date: 10/05/2012 14:35:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Carlos Martinez
-- Create date: 12/11/2010
-- Description:	Insertar Herramienta
-- =============================================
CREATE PROCEDURE [dbo].[InsertarHerramienta]
	-- Parametros
	@descripcion varchar(150),@id_Ubicacion varchar(10),
	@Cantidad int,@Marca varchar(20)
AS

BEGIN TRY
	BEGIN TRAN
	
	INSERT INTO Herramienta values (@descripcion,@id_Ubicacion,@Cantidad,@Marca)

	COMMIT TRAN
END TRY
BEGIN CATCH
	IF @@TRANCOUNT > 0 ROLLBACK TRAN
	SELECT ERROR_MESSAGE()
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[InsertarEquipo]    Script Date: 10/05/2012 14:35:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Carlos Martinez
-- Create date: 12/11/2010
-- Description:	Insertar Equipo
-- =============================================
CREATE PROCEDURE [dbo].[InsertarEquipo]
	-- Parametros
	@codigo varchar(50), @serie varchar(50),
	@marca varchar(50),@id_Ubicacion varchar(10),
	@tipo varchar(50),@descripcion varchar(150), @Activo bit, @Prestado bit
AS

BEGIN TRY
	BEGIN TRAN
	
	Declare @idtipo int
	
	set @idtipo =(select id_tipo from TipoEquipo where Descripcion = @tipo)
	
	INSERT INTO Equipo values (@codigo,@serie,@marca,@id_Ubicacion,@idtipo,@descripcion,@Activo,@Prestado)

	COMMIT TRAN
END TRY
BEGIN CATCH
	IF @@TRANCOUNT > 0 ROLLBACK TRAN
	SELECT ERROR_MESSAGE()
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[InsertarEntradaProducto]    Script Date: 10/05/2012 14:35:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Carlos Martinez
-- Create date: 12/11/2010
-- Description:	Insertar Producto
-- =============================================
CREATE PROCEDURE [dbo].[InsertarEntradaProducto]
	-- Parametros
	@IdProducto varchar (30), @IdUbicacion varchar(10),
	@NoOrden varchar(50),@NoFactura varchar(50),
	@Presentacion int,@Cantidad int,@Vencimiento varchar(10),
	@PrecioUnitario float,@IdUsuario varchar(50),@FechaCompra varchar(10), @Marca varchar(50), @Observaciones varchar(150),@IdProveedor varchar(15)
AS

BEGIN TRY
	BEGIN TRAN
	
	INSERT INTO EntradaProducto values (@IdProducto,@IdUbicacion,@NoOrden,@NoFactura,@Presentacion,@Cantidad,@Vencimiento,@PrecioUnitario,@IdUsuario,@FechaCompra,@Cantidad,@Marca,@Observaciones,@IdProveedor)

	COMMIT TRAN
END TRY
BEGIN CATCH
	IF @@TRANCOUNT > 0 ROLLBACK TRAN
	SELECT ERROR_MESSAGE()
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[ModificarUsuario]    Script Date: 10/05/2012 14:35:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		
-- Create date: 
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[ModificarUsuario]
	-- Parametros
	@Usuario varchar (50),@Nombre varchar(50),
	@Apellido varchar (50),@Correo varchar(50),
	@Rol varchar(50), @Estado bit
AS

BEGIN TRY
	BEGIN TRAN
	
	Declare @id int
	set @id = (select Id_Rol from Rol where Descripcion=@Rol)
	UPDATE Usuario set Usuario.Nombre = @Nombre, Usuario.Apellido = @Apellido,
					   Usuario.Correo = @Correo, Usuario.Id_Rol= @id,
					   Usuario.Estado = @Estado
	where Usuario.Usuario = @Usuario

	COMMIT TRAN
END TRY
BEGIN CATCH
	IF @@TRANCOUNT > 0 ROLLBACK TRAN
	SELECT ERROR_MESSAGE()
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[ModificarPermisos]    Script Date: 10/05/2012 14:35:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ModificarPermisos]
	-- Parametros
	@Rol varchar(50), @Pagina varchar(50)

AS

BEGIN TRY
	BEGIN TRAN

	Declare @id_rol int
	Declare @id_pagina int
	
	Set @id_pagina = (SELECT Id_Pagina from Pagina where Nombre = @Pagina)
	
	Set @id_rol = (SELECT Id_Rol from Rol where Descripcion = @Rol)
	
	insert RolPagina values (@id_rol,@id_pagina)
						  
	COMMIT TRAN
END TRY
BEGIN CATCH
	IF @@TRANCOUNT > 0 ROLLBACK TRAN
	SELECT ERROR_MESSAGE()
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[ModificarHerramienta]    Script Date: 10/05/2012 14:35:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Carlos Martinez
-- Create date: 12/11/2010
-- Description:	Modificar Herramienta
-- =============================================
CREATE PROCEDURE [dbo].[ModificarHerramienta]
	-- Parametros
	@id int ,@descripcion varchar(150),@id_Ubicacion varchar(10),
	@Cantidad int,@Marca varchar(20)
AS

BEGIN TRY
	BEGIN TRAN
	
	update Herramienta 
	set descripcion = @descripcion,id_ubicacion = @id_Ubicacion,cantidad = @Cantidad,Marca = @Marca
	where id_herramienta = @id
	

	COMMIT TRAN
END TRY
BEGIN CATCH
	IF @@TRANCOUNT > 0 ROLLBACK TRAN
	SELECT ERROR_MESSAGE()
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[ModificarEquipo]    Script Date: 10/05/2012 14:35:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Carlos Martinez
-- Create date: 12/11/2010
-- Description:	Insertar Equipo
-- =============================================
CREATE PROCEDURE [dbo].[ModificarEquipo]
	-- Parametros
	@codigo varchar(50), @serie varchar(50),
	@marca varchar(50),@id_Ubicacion varchar(10),
	@tipo varchar(50),@descripcion varchar(150),@Activo bit
AS

BEGIN TRY
	BEGIN TRAN
	
	Declare @idtipo int
	
	set @idtipo =(select id_tipo from TipoEquipo where Descripcion = @tipo)
	
	Update Equipo set Marca = @marca,id_ubicacion = @id_Ubicacion, id_tipo = @idtipo, 
	descripcion = @descripcion, Activo = @Activo
	where  @codigo = Codigo and @serie = [No. de Serie]

	COMMIT TRAN
END TRY
BEGIN CATCH
	IF @@TRANCOUNT > 0 ROLLBACK TRAN
	SELECT ERROR_MESSAGE()
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[ModificarContraseña]    Script Date: 10/05/2012 14:35:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
Create PROCEDURE [dbo].[ModificarContraseña]
	-- Parametros
	@Usuario varchar (50),@Contraseña varchar(10)
AS

BEGIN TRY
	BEGIN TRAN
	update Usuario set Contraseña = @Contraseña where Usuario = @Usuario 
	
COMMIT TRAN
END TRY
BEGIN CATCH
	IF @@TRANCOUNT > 0 ROLLBACK TRAN
	SELECT ERROR_MESSAGE()
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[InsertarProducto]    Script Date: 10/05/2012 14:35:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Carlos Martinez
-- Create date: 12/11/2010
-- Description:	Insertar Producto
-- =============================================
CREATE PROCEDURE [dbo].[InsertarProducto]
	-- Parametros
	@Codigo varchar(30), @Nombre varchar(150),@IdFamilia int,
	@Clasificacion varchar(1),@Corrosivo int,@Explosivo int,
	@Comburente int,@Inflamable int,@Irritante int, @Nocivo int, @Toxicidad int,
	@Controlado bit, @Peligroso int
AS

BEGIN TRY
	BEGIN TRAN
	
	INSERT INTO Producto values (@Nombre,@Clasificacion,@Corrosivo,@Explosivo,@Comburente,@Irritante,@Nocivo,@Toxicidad,@Codigo,@IdFamilia,@Inflamable,@Controlado,@Peligroso)

	COMMIT TRAN
END TRY
BEGIN CATCH
	IF @@TRANCOUNT > 0 ROLLBACK TRAN
	SELECT ERROR_MESSAGE()
END CATCH
GO
/****** Object:  Table [dbo].[SalidaProducto]    Script Date: 10/05/2012 14:35:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SalidaProducto](
	[Id_Salida] [bigint] IDENTITY(1,1) NOT NULL,
	[Sede] [varchar](50) NOT NULL,
	[Facultad] [varchar](50) NOT NULL,
	[Curso] [varchar](75) NOT NULL,
	[Carrera] [varchar](50) NOT NULL,
	[Practica] [varchar](50) NOT NULL,
	[Alumnos] [int] NOT NULL,
	[Costo] [float] NOT NULL,
	[Cantidad] [float] NOT NULL,
	[CodCatedratico] [varchar](15) NOT NULL,
	[Ciclo] [varchar](25) NOT NULL,
	[Id_Usuario] [varchar](50) NOT NULL,
	[FechaEgreso] [varchar](10) NOT NULL,
	[Id_Entrada] [int] NOT NULL,
	[Observaciones] [varchar](150) NULL,
	[Id_Producto] [varchar](30) NOT NULL,
 CONSTRAINT [PK_SalidaProducto_1] PRIMARY KEY CLUSTERED 
(
	[Id_Salida] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[PrestamosEquipo]    Script Date: 10/05/2012 14:35:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Carlos Martinez
-- Create date: 12/11/2011
-- Description:	Prestamo Equipo
-- =============================================
CREATE PROCEDURE [dbo].[PrestamosEquipo]
	-- Parametros
	@Operador varchar(50), @Solicitante varchar(50),@CodSolicitante varchar(50),
	@Observaciones varchar(150), @CodEquipo varchar(50), @NoSerie varchar(50)
AS

BEGIN TRY
	BEGIN TRAN
	
	Declare @idEquipo int
	declare @Fecha varchar(10)
	set @idEquipo = (select Id_Equipo from Equipo where Codigo = @CodEquipo and [No. de Serie] = @NoSerie)
    set @Fecha = CONVERT(varchar, DATEPART(DD,GETDATE()))+ '/' + CONVERT(varchar,DATEPART(MM,GETDATE())) + '/' + CONVERT(varchar,DATEPART(YYYY,GETDATE()))
	insert into PrestamoEquipo values (@idEquipo,@Operador,@Solicitante,1,@Fecha,@Observaciones,null,@CodSolicitante,null)
	
	update Equipo set Prestado = 1 where Id_Equipo = @idEquipo
	
	COMMIT TRAN
END TRY
BEGIN CATCH
	IF @@TRANCOUNT > 0 ROLLBACK TRAN
	SELECT ERROR_MESSAGE()
END CATCH
GO
/****** Object:  Table [dbo].[PrestamoHerramienta]    Script Date: 10/05/2012 14:35:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PrestamoHerramienta](
	[Id_Prestamo] [int] NOT NULL,
	[Id_Herramienta] [int] NOT NULL,
	[OperadorEntrega] [varchar](50) NOT NULL,
	[Soliciante] [varchar](50) NOT NULL,
	[OperadorRecibe] [varchar](50) NOT NULL,
	[Estado] [bit] NOT NULL,
	[CodigoSolicitante] [varchar](50) NULL,
	[FechaPrestamo] [date] NULL,
	[FechaDevolucion] [date] NULL,
	[Observaciones] [varchar](150) NULL,
 CONSTRAINT [PK_PrestamoHerramienta] PRIMARY KEY CLUSTERED 
(
	[Id_Prestamo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UsuarioUbicacion]    Script Date: 10/05/2012 14:35:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UsuarioUbicacion](
	[Id_Usuario] [varchar](50) NULL,
	[Id_Ubicacion] [varchar](10) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[Vencimiento]    Script Date: 10/05/2012 14:35:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Carlos Martinez
-- Create date: 12/11/2010
-- Description:	Vencimiento Producto
-- =============================================
CREATE PROCEDURE [dbo].[Vencimiento]
	@Usuario varchar(50)
AS

BEGIN TRY
	BEGIN TRAN
	select top 10 EntradaProducto.Id_Producto as Producto, Producto.Nombre,Convert(varchar,Medida.Cantidad) +' ' + Medida.Descripcion as Presentación ,
	FechaVencimiento ,CantidadActual as Existencia, Convert(varchar,CantidadActual*Medida.Cantidad) + ' ' + Medida.Descripcion as Total, Ubicacion.Nombre as Ubicación
		from EntradaProducto,Producto,Medida,Ubicacion,UsuarioUbicacion where EntradaProducto.Presentacion = Medida.Id_Medida and Producto.Codigo = EntradaProducto.Id_Producto	and EntradaProducto.Id_Ubicacion = Ubicacion.Id_Ubicacion and CantidadActual > 0
		and UsuarioUbicacion.Id_Usuario = @Usuario and UsuarioUbicacion.Id_Ubicacion = Ubicacion.Id_Ubicacion 
	order by FechaVencimiento 
		
	COMMIT TRAN
END TRY
BEGIN CATCH
	IF @@TRANCOUNT > 0 ROLLBACK TRAN
	SELECT ERROR_MESSAGE()
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[InsertarSalidaProducto]    Script Date: 10/05/2012 14:35:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Carlos Martinez
-- Create date: 12/11/2010
-- Description:	Insertar Producto
-- =============================================
CREATE PROCEDURE [dbo].[InsertarSalidaProducto]
	-- Parametros
@Sede varchar(50), @Facultad varchar(50), @Curso varchar(75), @Carrera varchar(50), 
@Practica varchar(50), @Alumnos varchar(50),@IdProducto varchar (30), @Cantidad varchar(15), 
@CodCatedratico varchar(15),@Ciclo varchar(25),@IdUsuario varchar(50), @Fecha varchar(10), @IdEntrada int ,
@Observaciones varchar(150),@Tipo int
AS

BEGIN TRY
	BEGIN TRAN
	declare @contenido float
	declare @costo float
	declare @medida varchar(50)
	
	set @contenido = (select Medida.Cantidad from Medida,EntradaProducto where EntradaProducto.Presentacion = Medida.Id_Medida and EntradaProducto.Id_Entrada = @IdEntrada)
	set @costo = (select PrecioUnitario  from EntradaProducto where Id_Entrada = @IdEntrada)
	
	if(@tipo = 0)
	begin
		set @costo = round(@costo * @Cantidad,2)
		Update EntradaProducto set CantidadActual = CantidadActual - @Cantidad where Id_Entrada = @IdEntrada
		insert into SalidaProducto values (@Sede,@Facultad,@Curso,@Carrera,@Practica,@Alumnos,@costo,@Cantidad*@contenido,@CodCatedratico,@Ciclo,@IdUsuario,@Fecha,@IdEntrada,@Observaciones,@IdProducto)
	end
	else
	Begin
		set @costo = round((@Cantidad*@costo)/@contenido,2)
		update EntradaProducto set CantidadActual = ROUND(CantidadActual - (@Cantidad / @contenido),2) where Id_Entrada = @IdEntrada
		insert into SalidaProducto values (@Sede,@Facultad,@Curso,@Carrera,@Practica,@Alumnos,@costo,@Cantidad,@CodCatedratico,@Ciclo,@IdUsuario,@Fecha,@IdEntrada,@Observaciones,@IdProducto)
	end

	COMMIT TRAN
END TRY
BEGIN CATCH
	IF @@TRANCOUNT > 0 ROLLBACK TRAN
	SELECT ERROR_MESSAGE()
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[EquipoPrestado]    Script Date: 10/05/2012 14:35:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EquipoPrestado]
	@Usuario varchar(50)
AS

BEGIN TRY
	BEGIN TRAN
	select top 10 PrestamoEquipo.CodigoSolicitante as Carnet, Equipo.Codigo as Código, Equipo.[No. de Serie] as Serie, TipoEquipo.Descripcion as Descripción,
	PrestamoEquipo.FechaPrestamo as Fecha, Ubicacion.Nombre as Ubicación from PrestamoEquipo,TipoEquipo,Equipo,Ubicacion,UsuarioUbicacion
	where PrestamoEquipo.Id_Equipo = Equipo.Id_Equipo and Equipo.id_tipo = TipoEquipo.id_tipo and  UsuarioUbicacion.Id_Usuario = @Usuario
	and Equipo.id_ubicacion = Ubicacion.Id_Ubicacion and UsuarioUbicacion.Id_Ubicacion = Ubicacion.Id_Ubicacion and Equipo.Prestado = 1
	order by Fecha
		
	COMMIT TRAN
END TRY
BEGIN CATCH
	IF @@TRANCOUNT > 0 ROLLBACK TRAN
	SELECT ERROR_MESSAGE()
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[BuscarSalidaProducto]    Script Date: 10/05/2012 14:35:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Carlos Martinez
-- Create date: 12/11/2010
-- Description:	Buscar Salida Producto
-- =============================================
CREATE PROCEDURE [dbo].[BuscarSalidaProducto]
	-- Parametros
	@codigo varchar(30)
AS

BEGIN TRY
	BEGIN TRAN
	
	Select Id_Salida, SalidaProducto.Id_Producto,Producto.Nombre, Practica,FechaEgreso,Convert(varchar,SalidaProducto.Cantidad) + ' ' + Medida.Descripcion as Cantidad,CONVERT(varchar,EntradaProducto.CantidadActual*Medida.Cantidad) + ' ' +Medida.Descripcion as Disponible
	from SalidaProducto,Producto,Medida,EntradaProducto 
	where SalidaProducto.Id_Producto LIKE '%'+@codigo+'%' and
	Producto.Codigo = SalidaProducto.Id_Producto and EntradaProducto.Id_Entrada = SalidaProducto.Id_Entrada and EntradaProducto.Presentacion = Medida.Id_Medida
	order by FechaEgreso		
		
	COMMIT TRAN
END TRY
BEGIN CATCH
	IF @@TRANCOUNT > 0 ROLLBACK TRAN
	SELECT ERROR_MESSAGE()
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[BuscarEquipoPrestado]    Script Date: 10/05/2012 14:35:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BuscarEquipoPrestado]
	@Usuario varchar(50), @Carnet varchar(50)
AS

BEGIN TRY
	BEGIN TRAN
	select top 10 PrestamoEquipo.Id_Prestamo as 'No.' ,PrestamoEquipo.CodigoSolicitante as Carnet, Equipo.Codigo as Código, Equipo.[No. de Serie] as Serie, TipoEquipo.Descripcion as Descripción,
	PrestamoEquipo.FechaPrestamo as Fecha, Ubicacion.Nombre as Ubicación from PrestamoEquipo,TipoEquipo,Equipo,Ubicacion,UsuarioUbicacion
	where PrestamoEquipo.Id_Equipo = Equipo.Id_Equipo and Equipo.id_tipo = TipoEquipo.id_tipo and  UsuarioUbicacion.Id_Usuario = @Usuario
	and Equipo.id_ubicacion = Ubicacion.Id_Ubicacion and UsuarioUbicacion.Id_Ubicacion = Ubicacion.Id_Ubicacion and Equipo.Prestado = 1
	and PrestamoEquipo.CodigoSolicitante = @Carnet and PrestamoEquipo.Estado = 1
	order by Fecha
	
		
	COMMIT TRAN
END TRY
BEGIN CATCH
	IF @@TRANCOUNT > 0 ROLLBACK TRAN
	SELECT ERROR_MESSAGE()
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[AjustesProducto]    Script Date: 10/05/2012 14:35:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Carlos Martinez
-- Description:	Ajustes Producto
-- =============================================
CREATE PROCEDURE [dbo].[AjustesProducto]
	-- Parametros
@IdProducto varchar(30),@IdReferencia int, @IdUsuario varchar(50), @Cantidad float,@Opcion int ,@Tipo int
AS

BEGIN TRY
	BEGIN TRAN
	declare @contenido float
	declare @costo float
	declare @medida varchar(50)
	declare @IdEntrada int
	
	if(@Tipo = 0)
	begin
	set @contenido = (select Medida.Cantidad from Medida,EntradaProducto where EntradaProducto.Id_Entrada = @IdReferencia and EntradaProducto.Presentacion = Medida.Id_Medida)
	set @medida = (select Medida.Descripcion from Medida,EntradaProducto where EntradaProducto.Id_Entrada = @IdReferencia and EntradaProducto.Presentacion = Medida.Id_Medida)
	set @costo = (select PrecioUnitario  from EntradaProducto where Id_Entrada = @IdReferencia)
			if(@Opcion = 0)
			begin
				set @costo = round(@costo * @Cantidad,2)
				Update EntradaProducto set CantidadActual = CantidadActual - @Cantidad where Id_Entrada = @IdReferencia
				insert into PerdidaProducto values (@IdProducto,@IdReferencia,@IdUsuario,GETDATE(),CONVERT(varchar(50),@Cantidad*@contenido) + ' ' + @medida,@costo)
			end
			else
			Begin
				set @costo = round((@Cantidad*@costo)/@contenido,2)
				update EntradaProducto set CantidadActual = ROUND(CantidadActual - (@Cantidad / @contenido),2) where Id_Entrada = @IdReferencia
				insert into PerdidaProducto values (@IdProducto,@IdReferencia,@IdUsuario,GETDATE(),CONVERT(varchar(50),@Cantidad) + ' ' + @medida,@costo)
			end
	end
	else
	begin
	
	set @IdEntrada = (select Id_Entrada from SalidaProducto where Id_Salida = @IdReferencia)
	set @contenido = (select Medida.Cantidad from Medida,EntradaProducto where EntradaProducto.Id_Entrada = @IdEntrada and EntradaProducto.Presentacion = Medida.Id_Medida)
	set @medida = (select Medida.Descripcion from Medida,EntradaProducto where EntradaProducto.Id_Entrada = @IdEntrada and EntradaProducto.Presentacion = Medida.Id_Medida)
	set @costo = (select PrecioUnitario  from EntradaProducto where Id_Entrada = @IdEntrada)
	set @costo = round((@Cantidad*@costo)/@contenido,2) 
	
		if(@Tipo = 1)
		begin
			update EntradaProducto set CantidadActual = ROUND(CantidadActual + (@Cantidad / @contenido),2) where Id_Entrada = @IdEntrada
			update SalidaProducto set Costo = round(Costo - @costo,2), Cantidad = Cantidad - @Cantidad where Id_Salida = @IdReferencia    
		end
		else
		begin
			update EntradaProducto set CantidadActual = ROUND(CantidadActual - (@Cantidad / @contenido),2) where Id_Entrada = @IdEntrada
			update SalidaProducto set Costo = round(Costo + @costo,2), Cantidad = Cantidad + @Cantidad where Id_Salida = @IdReferencia
		end
	end

	COMMIT TRAN
END TRY
BEGIN CATCH
	IF @@TRANCOUNT > 0 ROLLBACK TRAN
	SELECT ERROR_MESSAGE()
END CATCH
GO
/****** Object:  ForeignKey [FK_EntradaProducto_Medida1]    Script Date: 10/05/2012 14:35:58 ******/
ALTER TABLE [dbo].[EntradaProducto]  WITH CHECK ADD  CONSTRAINT [FK_EntradaProducto_Medida1] FOREIGN KEY([Presentacion])
REFERENCES [dbo].[Medida] ([Id_Medida])
GO
ALTER TABLE [dbo].[EntradaProducto] CHECK CONSTRAINT [FK_EntradaProducto_Medida1]
GO
/****** Object:  ForeignKey [FK_EntradaProducto_Proveedor]    Script Date: 10/05/2012 14:35:58 ******/
ALTER TABLE [dbo].[EntradaProducto]  WITH CHECK ADD  CONSTRAINT [FK_EntradaProducto_Proveedor] FOREIGN KEY([Id_Proveedor])
REFERENCES [dbo].[Proveedor] ([Nit])
GO
ALTER TABLE [dbo].[EntradaProducto] CHECK CONSTRAINT [FK_EntradaProducto_Proveedor]
GO
/****** Object:  ForeignKey [FK_EntradaProducto_Ubicacion]    Script Date: 10/05/2012 14:35:58 ******/
ALTER TABLE [dbo].[EntradaProducto]  WITH CHECK ADD  CONSTRAINT [FK_EntradaProducto_Ubicacion] FOREIGN KEY([Id_Ubicacion])
REFERENCES [dbo].[Ubicacion] ([Id_Ubicacion])
GO
ALTER TABLE [dbo].[EntradaProducto] CHECK CONSTRAINT [FK_EntradaProducto_Ubicacion]
GO
/****** Object:  ForeignKey [FK_Equipo_TipoEquipo]    Script Date: 10/05/2012 14:35:58 ******/
ALTER TABLE [dbo].[Equipo]  WITH CHECK ADD  CONSTRAINT [FK_Equipo_TipoEquipo] FOREIGN KEY([id_tipo])
REFERENCES [dbo].[TipoEquipo] ([id_tipo])
GO
ALTER TABLE [dbo].[Equipo] CHECK CONSTRAINT [FK_Equipo_TipoEquipo]
GO
/****** Object:  ForeignKey [FK_Equipo_Ubicacion]    Script Date: 10/05/2012 14:35:58 ******/
ALTER TABLE [dbo].[Equipo]  WITH CHECK ADD  CONSTRAINT [FK_Equipo_Ubicacion] FOREIGN KEY([id_ubicacion])
REFERENCES [dbo].[Ubicacion] ([Id_Ubicacion])
GO
ALTER TABLE [dbo].[Equipo] CHECK CONSTRAINT [FK_Equipo_Ubicacion]
GO
/****** Object:  ForeignKey [FK_Herramienta_Ubicacion]    Script Date: 10/05/2012 14:35:58 ******/
ALTER TABLE [dbo].[Herramienta]  WITH CHECK ADD  CONSTRAINT [FK_Herramienta_Ubicacion] FOREIGN KEY([id_ubicacion])
REFERENCES [dbo].[Ubicacion] ([Id_Ubicacion])
GO
ALTER TABLE [dbo].[Herramienta] CHECK CONSTRAINT [FK_Herramienta_Ubicacion]
GO
/****** Object:  ForeignKey [FK_Practica_Curso]    Script Date: 10/05/2012 14:35:58 ******/
ALTER TABLE [dbo].[Practica]  WITH CHECK ADD  CONSTRAINT [FK_Practica_Curso] FOREIGN KEY([Id_Curso])
REFERENCES [dbo].[Curso] ([Id_Curso])
GO
ALTER TABLE [dbo].[Practica] CHECK CONSTRAINT [FK_Practica_Curso]
GO
/****** Object:  ForeignKey [FK_PrestamoHerramienta_Herramienta]    Script Date: 10/05/2012 14:35:58 ******/
ALTER TABLE [dbo].[PrestamoHerramienta]  WITH CHECK ADD  CONSTRAINT [FK_PrestamoHerramienta_Herramienta] FOREIGN KEY([Id_Herramienta])
REFERENCES [dbo].[Herramienta] ([id_herramienta])
GO
ALTER TABLE [dbo].[PrestamoHerramienta] CHECK CONSTRAINT [FK_PrestamoHerramienta_Herramienta]
GO
/****** Object:  ForeignKey [FK_Producto_Familia]    Script Date: 10/05/2012 14:35:58 ******/
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD  CONSTRAINT [FK_Producto_Familia] FOREIGN KEY([Id_Familia])
REFERENCES [dbo].[Familia] ([Id_Familia])
GO
ALTER TABLE [dbo].[Producto] CHECK CONSTRAINT [FK_Producto_Familia]
GO
/****** Object:  ForeignKey [Id_Pagina]    Script Date: 10/05/2012 14:35:58 ******/
ALTER TABLE [dbo].[RolPagina]  WITH CHECK ADD  CONSTRAINT [Id_Pagina] FOREIGN KEY([Id_Pagina])
REFERENCES [dbo].[Pagina] ([Id_Pagina])
GO
ALTER TABLE [dbo].[RolPagina] CHECK CONSTRAINT [Id_Pagina]
GO
/****** Object:  ForeignKey [Id_Rol]    Script Date: 10/05/2012 14:35:58 ******/
ALTER TABLE [dbo].[RolPagina]  WITH CHECK ADD  CONSTRAINT [Id_Rol] FOREIGN KEY([Id_Rol])
REFERENCES [dbo].[Rol] ([Id_Rol])
GO
ALTER TABLE [dbo].[RolPagina] CHECK CONSTRAINT [Id_Rol]
GO
/****** Object:  ForeignKey [FK_SalidaProducto_EntradaProducto]    Script Date: 10/05/2012 14:35:58 ******/
ALTER TABLE [dbo].[SalidaProducto]  WITH CHECK ADD  CONSTRAINT [FK_SalidaProducto_EntradaProducto] FOREIGN KEY([Id_Entrada])
REFERENCES [dbo].[EntradaProducto] ([Id_Entrada])
GO
ALTER TABLE [dbo].[SalidaProducto] CHECK CONSTRAINT [FK_SalidaProducto_EntradaProducto]
GO
/****** Object:  ForeignKey [FK_Usuario_Rol]    Script Date: 10/05/2012 14:35:58 ******/
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Rol] FOREIGN KEY([Id_Rol])
REFERENCES [dbo].[Rol] ([Id_Rol])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_Rol]
GO
/****** Object:  ForeignKey [FK_UsuarioUbicacion_Ubicacion]    Script Date: 10/05/2012 14:35:58 ******/
ALTER TABLE [dbo].[UsuarioUbicacion]  WITH CHECK ADD  CONSTRAINT [FK_UsuarioUbicacion_Ubicacion] FOREIGN KEY([Id_Ubicacion])
REFERENCES [dbo].[Ubicacion] ([Id_Ubicacion])
GO
ALTER TABLE [dbo].[UsuarioUbicacion] CHECK CONSTRAINT [FK_UsuarioUbicacion_Ubicacion]
GO
/****** Object:  ForeignKey [FK_UsuarioUbicacion_Usuario]    Script Date: 10/05/2012 14:35:58 ******/
ALTER TABLE [dbo].[UsuarioUbicacion]  WITH CHECK ADD  CONSTRAINT [FK_UsuarioUbicacion_Usuario] FOREIGN KEY([Id_Usuario])
REFERENCES [dbo].[Usuario] ([Usuario])
GO
ALTER TABLE [dbo].[UsuarioUbicacion] CHECK CONSTRAINT [FK_UsuarioUbicacion_Usuario]
GO
