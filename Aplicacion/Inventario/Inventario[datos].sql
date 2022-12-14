USE [Inventario]
GO
/****** Object:  Table [dbo].[Ubicacion]    Script Date: 11/22/2012 11:31:18 ******/
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
INSERT [dbo].[Ubicacion] ([Id_Ubicacion], [Nombre]) VALUES (N'A-8', N'Química')
/****** Object:  Table [dbo].[TipoEquipo]    Script Date: 11/22/2012 11:31:18 ******/
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
/****** Object:  Table [dbo].[Sede]    Script Date: 11/22/2012 11:31:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sede](
	[Id_Sede] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Sede] PRIMARY KEY CLUSTERED 
(
	[Id_Sede] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Sede] ([Id_Sede], [Nombre]) VALUES (1, N'Campus Central')
/****** Object:  Table [dbo].[Pagina]    Script Date: 11/22/2012 11:31:18 ******/
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
SET IDENTITY_INSERT [dbo].[Pagina] ON
INSERT [dbo].[Pagina] ([Id_Pagina], [Nombre], [Estado], [Menu]) VALUES (1, N'Usuarios-Crear', 1, N'<li><a href="CrearUsuarios.aspx">Nuevo</a></li>')
INSERT [dbo].[Pagina] ([Id_Pagina], [Nombre], [Estado], [Menu]) VALUES (2, N'Usuarios-ver/Editar', 1, N'<li><a href="BuscarUsuarios.aspx">Ver\Editar</a></li>')
INSERT [dbo].[Pagina] ([Id_Pagina], [Nombre], [Estado], [Menu]) VALUES (3, N'Roles-Crear', 1, N'<li><a href="CrearRoles.aspx">Nuevo</a></li>')
INSERT [dbo].[Pagina] ([Id_Pagina], [Nombre], [Estado], [Menu]) VALUES (4, N'Roles-Ver/Editar', 1, N'<li><a href="BuscarRoles.aspx">Ver\Editar</a></li>')
INSERT [dbo].[Pagina] ([Id_Pagina], [Nombre], [Estado], [Menu]) VALUES (5, N'Catalogo-Ubicaciones', 1, N'<li><a href="CrearUbicacion.aspx">Ubicación</a></li>')
INSERT [dbo].[Pagina] ([Id_Pagina], [Nombre], [Estado], [Menu]) VALUES (6, N'Catalogo-Familia', 1, N'<li><a href="CrearFamilia.aspx">Familia</a></li>')
INSERT [dbo].[Pagina] ([Id_Pagina], [Nombre], [Estado], [Menu]) VALUES (7, N'Catalogo-Presentacion', 1, N'<li><a href="CrearPresentacion.aspx">Presentación</a></li>')
INSERT [dbo].[Pagina] ([Id_Pagina], [Nombre], [Estado], [Menu]) VALUES (8, N'Catalgo-Proveedores', 1, N'<li><a href="CrearProveedor.aspx">Proveedor</a></li>')
INSERT [dbo].[Pagina] ([Id_Pagina], [Nombre], [Estado], [Menu]) VALUES (9, N'Producto-Nuevo', 1, N'<li><a href="NuevoProducto.aspx">Nuevo</a></li>')
INSERT [dbo].[Pagina] ([Id_Pagina], [Nombre], [Estado], [Menu]) VALUES (10, N'Producto-Ingreso', 1, N'<li><a href="IngresoProducto.aspx">Ingreso</a></li>')
INSERT [dbo].[Pagina] ([Id_Pagina], [Nombre], [Estado], [Menu]) VALUES (11, N'Producto-Egreso', 1, N'<li><a href="EgresoProducto.aspx">Egreso</a></li>')
INSERT [dbo].[Pagina] ([Id_Pagina], [Nombre], [Estado], [Menu]) VALUES (12, N'Producto-Ajustes', 1, N'<li><a href="AjustesProducto.aspx">Ajustes</a></li>')
INSERT [dbo].[Pagina] ([Id_Pagina], [Nombre], [Estado], [Menu]) VALUES (13, N'Equipo-Crear', 0, N'<li><a href="IngresoEquipo.aspx">Nuevo</a></li>')
INSERT [dbo].[Pagina] ([Id_Pagina], [Nombre], [Estado], [Menu]) VALUES (14, N'Equipo-Ver/Editar', 0, N'<li><a href="BuscarEquipo.aspx">Ver\Editar</a></li>')
INSERT [dbo].[Pagina] ([Id_Pagina], [Nombre], [Estado], [Menu]) VALUES (15, N'Equipo-Prestamo', 0, N'<li><a href="PrestamoEquipo.aspx">Prestamo</a></li>')
INSERT [dbo].[Pagina] ([Id_Pagina], [Nombre], [Estado], [Menu]) VALUES (16, N'Herramienta-Crear', 0, N'<li><a href="IngresoHerramienta.aspx">Nuevo</a></li>')
INSERT [dbo].[Pagina] ([Id_Pagina], [Nombre], [Estado], [Menu]) VALUES (17, N'Herramienta-Ver/Editar', 0, N'<li><a href="BuscarHerramienta.aspx">Ver\Editar</a></li>')
INSERT [dbo].[Pagina] ([Id_Pagina], [Nombre], [Estado], [Menu]) VALUES (18, N'Herramienta-Prestamo', 0, N'<li><a href="PrestamoHerramienta.aspx">Prestamo</a></li> ')
INSERT [dbo].[Pagina] ([Id_Pagina], [Nombre], [Estado], [Menu]) VALUES (19, N'Cristaleria-Crear', 0, N'<li><a href="IngresarCristaleria.aspx">Nuevo</a></li> ')
INSERT [dbo].[Pagina] ([Id_Pagina], [Nombre], [Estado], [Menu]) VALUES (20, N'Cristaleria-Ver/Editar', 0, N'<li><a href="BuscarCristaleria.aspx">Ver/Editar</a></li> ')
INSERT [dbo].[Pagina] ([Id_Pagina], [Nombre], [Estado], [Menu]) VALUES (21, N'Reporte-Equipo', 0, N'<li><a href="ReporteEquipo.aspx">Equipo</a></li> ')
INSERT [dbo].[Pagina] ([Id_Pagina], [Nombre], [Estado], [Menu]) VALUES (22, N'Reporte-Producto', 0, N'<li><a href="ReporteProducto.aspx">Producto</a></li> ')
INSERT [dbo].[Pagina] ([Id_Pagina], [Nombre], [Estado], [Menu]) VALUES (23, N'Equipo-Devolucion', 0, N'<li><a href="DevolucionEquipo.aspx">Devolución</a></li>')
SET IDENTITY_INSERT [dbo].[Pagina] OFF
/****** Object:  Table [dbo].[Rol]    Script Date: 11/22/2012 11:31:18 ******/
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
SET IDENTITY_INSERT [dbo].[Rol] ON
INSERT [dbo].[Rol] ([Id_Rol], [Descripcion], [Estado]) VALUES (1, N'Administrador', 1)
INSERT [dbo].[Rol] ([Id_Rol], [Descripcion], [Estado]) VALUES (2, N'Ingresos', 1)
INSERT [dbo].[Rol] ([Id_Rol], [Descripcion], [Estado]) VALUES (3, N'Egresos', 1)
SET IDENTITY_INSERT [dbo].[Rol] OFF
/****** Object:  Table [dbo].[Proveedor]    Script Date: 11/22/2012 11:31:18 ******/
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
INSERT [dbo].[Proveedor] ([Nit], [Nombre], [Direccion], [Telefono 1], [Regimen], [Cotacto], [Correo], [Telefono 2]) VALUES (N'00402340-4', N'ELECTROMA, S.A.', N'-', 23320720, N'Sujeto a pagos trimestrales', N'Gonzalo Fuentes', N'gfuentes@electroma.com.gt', 23320730)
INSERT [dbo].[Proveedor] ([Nit], [Nombre], [Direccion], [Telefono 1], [Regimen], [Cotacto], [Correo], [Telefono 2]) VALUES (N'0247745-9', N'RICZA, S.A.', N'7a av. 10-35 zona 9', 23635816, N'-', N'Helen Legrand ', N'cocinas309@ricsa.com', 58603575)
INSERT [dbo].[Proveedor] ([Nit], [Nombre], [Direccion], [Telefono 1], [Regimen], [Cotacto], [Correo], [Telefono 2]) VALUES (N'116806-1', N'DISTRIBUIDORA SANTA MONICA', N'-', 23318421, N'-', N'Julio Paiz', N'dist.santamonica@gmail.com', 23316784)
INSERT [dbo].[Proveedor] ([Nit], [Nombre], [Direccion], [Telefono 1], [Regimen], [Cotacto], [Correo], [Telefono 2]) VALUES (N'1197799-K', N'METALES INDUSTRIALES DE GUATEMALA, S.A.', N'-', 24736297, N'Pago directamente en las cajas fiscales del 5%', N'Claudia Escobar ', N'ventas@metalesindustriales.com', 24409374)
INSERT [dbo].[Proveedor] ([Nit], [Nombre], [Direccion], [Telefono 1], [Regimen], [Cotacto], [Correo], [Telefono 2]) VALUES (N'1277763-3', N'FERRETERÍA PETAPA, SOCIEDAD ANÓNIMA', N'Av. Petapa. 19-71 Zona 12', 23868119, N'Sujeto a pagos trimestrales', N'Wendy Mejía ', N'televentas01@ferreteriapetapa.com', 23868181)
INSERT [dbo].[Proveedor] ([Nit], [Nombre], [Direccion], [Telefono 1], [Regimen], [Cotacto], [Correo], [Telefono 2]) VALUES (N'132966-9', N'IMEPRE', N'10a calle 2-55 zona 1', 22329701, N'Sujeto a pagos trimestrales', NULL, N'imepre@guate.net.gt', 22329701)
INSERT [dbo].[Proveedor] ([Nit], [Nombre], [Direccion], [Telefono 1], [Regimen], [Cotacto], [Correo], [Telefono 2]) VALUES (N'1494409-K', N'KRON CIENTIFICA E INDUSTRIAL S.A.', N'-', 23641195, N'Sujeto a pagos trimestrales', N'Juan Diego Arocha ', N'info@kron-ca.com', 22653913)
INSERT [dbo].[Proveedor] ([Nit], [Nombre], [Direccion], [Telefono 1], [Regimen], [Cotacto], [Correo], [Telefono 2]) VALUES (N'149937-8', N'VICOSA', N'-', 24722637, N'-', N'Crista', N'vidrieriavicosa@hotmail.com', 0)
INSERT [dbo].[Proveedor] ([Nit], [Nombre], [Direccion], [Telefono 1], [Regimen], [Cotacto], [Correo], [Telefono 2]) VALUES (N'153916-7', N'CELASA INGENIERÌA Y EQUIPOS, S.A.', N'-', 23869800, N'Sujeto a pagos trimestrales', N'Julio Gómez', NULL, 51228880)
INSERT [dbo].[Proveedor] ([Nit], [Nombre], [Direccion], [Telefono 1], [Regimen], [Cotacto], [Correo], [Telefono 2]) VALUES (N'169882-6', N'PRODUCTOS SUPERB ESPECIAS, S.A.', N'17 calle 7-72 zona 1', 24345634, N'Sujeto a pagos trimestrales', NULL, NULL, 0)
INSERT [dbo].[Proveedor] ([Nit], [Nombre], [Direccion], [Telefono 1], [Regimen], [Cotacto], [Correo], [Telefono 2]) VALUES (N'169902-4', N'SIDASA', N'-', 23347149, N'-', N'William Velasquez ', N'ventas@sidasa.net', 23235555)
INSERT [dbo].[Proveedor] ([Nit], [Nombre], [Direccion], [Telefono 1], [Regimen], [Cotacto], [Correo], [Telefono 2]) VALUES (N'1757924-4', N'TOLEDO HENRIQUEZ, KAREN BEATRIZ', N'-', 54602894, N'Pequeño contribuyente del IVA, sujeto al 5% trimestral', NULL, NULL, 0)
INSERT [dbo].[Proveedor] ([Nit], [Nombre], [Direccion], [Telefono 1], [Regimen], [Cotacto], [Correo], [Telefono 2]) VALUES (N'190925-8', N'TECNO-INDUSTRIAL, S.A.', N'-', 24346682, N'Sujeto a pagos trimestrales', NULL, NULL, 24347288)
INSERT [dbo].[Proveedor] ([Nit], [Nombre], [Direccion], [Telefono 1], [Regimen], [Cotacto], [Correo], [Telefono 2]) VALUES (N'1990809-1', N'ROTULOS MOLINA', N'diagonal 6, 17c, Zona 10', 66341091, N'Sujeto a pagos trimestrales', N'Alez Calderón ', N'rotulos@intelenet.com', 59913342)
INSERT [dbo].[Proveedor] ([Nit], [Nombre], [Direccion], [Telefono 1], [Regimen], [Cotacto], [Correo], [Telefono 2]) VALUES (N'200261-2', N'UNIVERSIDAD RAFAEL LANDIVAR', N'-', 24262626, N'-', N'-', N'-', 0)
INSERT [dbo].[Proveedor] ([Nit], [Nombre], [Direccion], [Telefono 1], [Regimen], [Cotacto], [Correo], [Telefono 2]) VALUES (N'2247134-0', N'CESAR ENRIQUE GAMEZ', N'-', 24754116, N'-', NULL, NULL, 0)
INSERT [dbo].[Proveedor] ([Nit], [Nombre], [Direccion], [Telefono 1], [Regimen], [Cotacto], [Correo], [Telefono 2]) VALUES (N'2558484-7', N'UNIVERSIDAD GALILEO', N'-', 24238000, N'Exento', N'Lida. Daniela Cano ', NULL, 23622728)
INSERT [dbo].[Proveedor] ([Nit], [Nombre], [Direccion], [Telefono 1], [Regimen], [Cotacto], [Correo], [Telefono 2]) VALUES (N'2591757-9', N'NOVEX, S.A.', N'-', 24299292, N'Sujeto a pagos trimestrales', N'Nehemías Lopez', N'nlopez@novex.com', 46059856)
INSERT [dbo].[Proveedor] ([Nit], [Nombre], [Direccion], [Telefono 1], [Regimen], [Cotacto], [Correo], [Telefono 2]) VALUES (N'2641158-K', N'CORPORACIÓN QUIRSA, SOCIEDAD ANÓNIMA', N'-', 66305353, N'Sujeto a pagos trimestrales', N'Margoth', N'mpiche@quirsa.com', 66305116)
INSERT [dbo].[Proveedor] ([Nit], [Nombre], [Direccion], [Telefono 1], [Regimen], [Cotacto], [Correo], [Telefono 2]) VALUES (N'2665411-3', N'LABTRONIC, S. A.', N'-', 22462626, N'Sujeto a pagos trimestrales', N'Mynor Rivera Corona', N'mynor.rivera@labtronic.com.gt', 56513427)
INSERT [dbo].[Proveedor] ([Nit], [Nombre], [Direccion], [Telefono 1], [Regimen], [Cotacto], [Correo], [Telefono 2]) VALUES (N'272620-3', N'SERPROMA', N'-', 24407466, N'Sujeto a pagos trimestrales', N'José Alejandro Prem', NULL, 55258116)
INSERT [dbo].[Proveedor] ([Nit], [Nombre], [Direccion], [Telefono 1], [Regimen], [Cotacto], [Correo], [Telefono 2]) VALUES (N'2740770-5', N'OFFICE DEPOT CENTROAMERICA, S.A. DE C.V.', N'-', 24119900, N'Sujeto a pagos trimestrales', N'Anna Lucia Mariqui', N'fclientesgt@officedepot.com.gt', 24119901)
INSERT [dbo].[Proveedor] ([Nit], [Nombre], [Direccion], [Telefono 1], [Regimen], [Cotacto], [Correo], [Telefono 2]) VALUES (N'283911-3', N'TROPIGAS DE GUATEMALA, SOCIEDAD ANÓNIMA', N'-', 24197400, N'Sujeto a pagos trimestrales', N'Izela Mencos', NULL, 24730386)
INSERT [dbo].[Proveedor] ([Nit], [Nombre], [Direccion], [Telefono 1], [Regimen], [Cotacto], [Correo], [Telefono 2]) VALUES (N'2915631-9', N'GRUPO A.P., S.A.', N'-', 23863434, N'Sujeto a pagos trimestrales', N'Luis Sánchez ', N'luis_sanchez@grupoap.com.gt', 55136667)
INSERT [dbo].[Proveedor] ([Nit], [Nombre], [Direccion], [Telefono 1], [Regimen], [Cotacto], [Correo], [Telefono 2]) VALUES (N'2943024-0', N'PREFABRICADOS CIFA, S.A.', N'20 calle 20-40 zona 10. ', 53673741, N'Sujeto a pagos trimestrales', N'Gladys Morales ', N'www.cifa.com.gt', 24122412)
INSERT [dbo].[Proveedor] ([Nit], [Nombre], [Direccion], [Telefono 1], [Regimen], [Cotacto], [Correo], [Telefono 2]) VALUES (N'297631-5', N'DISTINCOMER, S.A.', N'-', 24429200, N'-', NULL, NULL, 24429255)
INSERT [dbo].[Proveedor] ([Nit], [Nombre], [Direccion], [Telefono 1], [Regimen], [Cotacto], [Correo], [Telefono 2]) VALUES (N'3021392-4', N'FERRETERIA ROTTMANN RUIZ DOS, S.A', N'-', 23668949, N'Sujeto a pagos trimestrales', N'Gladis Giron ', N'ferrorottmann@hotmail.com', 23668951)
INSERT [dbo].[Proveedor] ([Nit], [Nombre], [Direccion], [Telefono 1], [Regimen], [Cotacto], [Correo], [Telefono 2]) VALUES (N'304932-9', N'FPK ELECTRONICOS, S.A.', N'-', 23314865, N'Sujeto a pagos trimestrales', N'Carolina Luna', N'ventasz9@fpkelectronicos.com', 46254601)
INSERT [dbo].[Proveedor] ([Nit], [Nombre], [Direccion], [Telefono 1], [Regimen], [Cotacto], [Correo], [Telefono 2]) VALUES (N'32173-7', N'SEGUROS G & T', N'-', 23801111, N'-', N'Mynor Ortiz', NULL, 0)
INSERT [dbo].[Proveedor] ([Nit], [Nombre], [Direccion], [Telefono 1], [Regimen], [Cotacto], [Correo], [Telefono 2]) VALUES (N'32295-4', N'FERRETERIA LEWONSKI, SOCIEDAD ANÓNIMA', N'-', 23343521, N'Sujeto a pagos trimestrales', N'Lic. Giovanni Chew R.', N'gchew@lewonski.com', 23837800)
INSERT [dbo].[Proveedor] ([Nit], [Nombre], [Direccion], [Telefono 1], [Regimen], [Cotacto], [Correo], [Telefono 2]) VALUES (N'3237591-3', N'NUEVOS ALMACENES, S.A.', N'-', 23314018, N'Sujeto a pagos trimestrales', N'América Solís', N'creditos.zona4@cemaco.com', 24214187)
INSERT [dbo].[Proveedor] ([Nit], [Nombre], [Direccion], [Telefono 1], [Regimen], [Cotacto], [Correo], [Telefono 2]) VALUES (N'328712-2', N'DILAB, S.A.', N'10a Calle 5-43, zona 10', 23615540, N'Sujeto a pagos trimestrales', N'Claudia Rodriguez', N'clinica4@dilabsa.com', 52063914)
INSERT [dbo].[Proveedor] ([Nit], [Nombre], [Direccion], [Telefono 1], [Regimen], [Cotacto], [Correo], [Telefono 2]) VALUES (N'3602703-0', N'CDMEDIA', N'-', 23314377, N'Sujeto a pagos trimestrales', N'Marylena Tzay ', N'mtzay@cmedia.com.gt', 56257633)
INSERT [dbo].[Proveedor] ([Nit], [Nombre], [Direccion], [Telefono 1], [Regimen], [Cotacto], [Correo], [Telefono 2]) VALUES (N'402400-1', N'PROINCA', N'3ra ave. 13-61, zona 1', 22323667, N'Sujeto a pagos trimestrales', N'Violeta Pérez', N'ventas@proinca.com', 59998423)
INSERT [dbo].[Proveedor] ([Nit], [Nombre], [Direccion], [Telefono 1], [Regimen], [Cotacto], [Correo], [Telefono 2]) VALUES (N'4627436-7', N'FERROMAYA, S.A.', N'-', 22544738, N'Sujeto a pagos trimestrales', N'Mynor', N'distribuidoraferromaya@hotmail.com', 22544323)
INSERT [dbo].[Proveedor] ([Nit], [Nombre], [Direccion], [Telefono 1], [Regimen], [Cotacto], [Correo], [Telefono 2]) VALUES (N'475288-0', N'ACEROS INDUSTRIALES', N'-', 24795670, N'Sujeto a pagos trimestrales', N'Rosario Diaz ', N'rosariodiaz25@hotmail.com', 55877516)
INSERT [dbo].[Proveedor] ([Nit], [Nombre], [Direccion], [Telefono 1], [Regimen], [Cotacto], [Correo], [Telefono 2]) VALUES (N'480198-9', N'ANALITICA QUIMICA', N'-', 55955360, N'-', N'Mauricio Cordó', N'murocordon@gmail.com', 47705199)
INSERT [dbo].[Proveedor] ([Nit], [Nombre], [Direccion], [Telefono 1], [Regimen], [Cotacto], [Correo], [Telefono 2]) VALUES (N'483373-2', N'CORDÓN ILLESCAS, MARÍA ISABEL', N'-', 66341691, N'Sujeto a pagos trimestrales', NULL, NULL, 0)
INSERT [dbo].[Proveedor] ([Nit], [Nombre], [Direccion], [Telefono 1], [Regimen], [Cotacto], [Correo], [Telefono 2]) VALUES (N'504928-8', N'SOLARSA, S.A.', N'-', 23602035, N'Sujeto a pagos trimestrales', N'Julio Castillo', N'jacastillos@solarsa.com.gt', 23603701)
INSERT [dbo].[Proveedor] ([Nit], [Nombre], [Direccion], [Telefono 1], [Regimen], [Cotacto], [Correo], [Telefono 2]) VALUES (N'562656-0', N'SOLUCIONES ANALITICAS, SOCIEDAD ANÓNIMA', N'-', 24422422, N'Sujeto a pagos trimestrales', N'Henry González', N'ventas@solucionesnaliticas.com', 41506799)
INSERT [dbo].[Proveedor] ([Nit], [Nombre], [Direccion], [Telefono 1], [Regimen], [Cotacto], [Correo], [Telefono 2]) VALUES (N'584444-4', N'TALLERES INDUSTRIALES AREVALO', N'12 ave A. 0-08 Zona 11', 24402805, N'Sujeto a pagos trimestrales', NULL, N'talleresarevalo@hotmail.com', 24402217)
INSERT [dbo].[Proveedor] ([Nit], [Nombre], [Direccion], [Telefono 1], [Regimen], [Cotacto], [Correo], [Telefono 2]) VALUES (N'5884634-4', N'BANQUETES MONTE MARÍA', N'-', 24394481, N'Sujeto a retención definitiva del 5%', N'Aurora Sosa de Morga', NULL, 53076604)
INSERT [dbo].[Proveedor] ([Nit], [Nombre], [Direccion], [Telefono 1], [Regimen], [Cotacto], [Correo], [Telefono 2]) VALUES (N'589543-K', N'QUÍMICA TÉCNICA', N'-', 24737367, N'Sujeto a pagos trimestrales', N'Lorena Díaz', N'quimicatecnica@gmail.com', 24738240)
INSERT [dbo].[Proveedor] ([Nit], [Nombre], [Direccion], [Telefono 1], [Regimen], [Cotacto], [Correo], [Telefono 2]) VALUES (N'5908248', N'ALMACEN JUMBO SOCIEDAD ANONIMA', N'-', 23806000, N'Sujeto a pagos trimestrales', N'Eliazar Obando ', N'ventas@ajumbo.com', 49533737)
INSERT [dbo].[Proveedor] ([Nit], [Nombre], [Direccion], [Telefono 1], [Regimen], [Cotacto], [Correo], [Telefono 2]) VALUES (N'592131-7', N'AGROINCO, SOCIEDAD ANÓNIMA', N'5ta Calle, 0-95 Zona 9.', 23320542, N'Sujeto a pagos trimestrales', N'Carmelo Garcia ', NULL, 40016702)
INSERT [dbo].[Proveedor] ([Nit], [Nombre], [Direccion], [Telefono 1], [Regimen], [Cotacto], [Correo], [Telefono 2]) VALUES (N'603664-3', N'PANADERIA Y PASTELERIA SAN MARTI', N'-', 23333382, N'-', NULL, NULL, 0)
INSERT [dbo].[Proveedor] ([Nit], [Nombre], [Direccion], [Telefono 1], [Regimen], [Cotacto], [Correo], [Telefono 2]) VALUES (N'604075-6', N'DISTRIBUIDORA LA FERRE, S.A.', N'ave Petapa 30-45 Zona 12', 24421803, N'Sujeto a pagos trimestrales', N'Jose Alfredo Dardó', N'dlaferre@gmail.com', 45624181)
INSERT [dbo].[Proveedor] ([Nit], [Nombre], [Direccion], [Telefono 1], [Regimen], [Cotacto], [Correo], [Telefono 2]) VALUES (N'6136100-3', N'ITW DE GUATEMALA Y COMPAÑÍA SCA', N'23 calle 14-54 zona 4 de Mixco Condado el Naranjo, Torre 1 Bodega A-3', 24318857, N'Sujeto a pagos trimestrales', N'Emanuel Castro ', N'servicio.tecnico@hobart.com.gt', 24319707)
INSERT [dbo].[Proveedor] ([Nit], [Nombre], [Direccion], [Telefono 1], [Regimen], [Cotacto], [Correo], [Telefono 2]) VALUES (N'6389482-3', N'COMERCIALIZADORA LA PATRONA, SOCIEDAD ANÓNIMA', N'-', 66440202, N'Sujeto a pagos trimestrales', N'Gladis', NULL, 0)
INSERT [dbo].[Proveedor] ([Nit], [Nombre], [Direccion], [Telefono 1], [Regimen], [Cotacto], [Correo], [Telefono 2]) VALUES (N'66984-9', N'ALMACÉN DE MAQUINARIA TOPKE,S.A.', N'-', 22775777, N'Sujeto a pagos trimestrales', N'Ong. Edgar Bances', NULL, 22775701)
INSERT [dbo].[Proveedor] ([Nit], [Nombre], [Direccion], [Telefono 1], [Regimen], [Cotacto], [Correo], [Telefono 2]) VALUES (N'6699963-4', N'FALMAR DE GUATEMALA, SOCIEDAD ANÓNIMA', N'Km 20 Carretera Al Pacífico, Unisur Delta Bárcenas, Villa nueva', 66306010, N'Sujeto a pagos trimestrales', N'Edgar E. Pinto', N'epinto@falmar.biz', 66306020)
INSERT [dbo].[Proveedor] ([Nit], [Nombre], [Direccion], [Telefono 1], [Regimen], [Cotacto], [Correo], [Telefono 2]) VALUES (N'692588-K', N'REDILAB', N'1ra Calle A 8-60 Condominio los Tanques Carretera a Bárcenas, z. 2 Villa Nueva', 24854228, N'Sujeto a pagos trimestrales', N'Suyapa Aguilera', N'redilab@yahoo.com.mx', 55461987)
INSERT [dbo].[Proveedor] ([Nit], [Nombre], [Direccion], [Telefono 1], [Regimen], [Cotacto], [Correo], [Telefono 2]) VALUES (N'700141-K', N'PLATINO, S.A.', N'-', 24109696, N'Sujeto a pagos trimestrales', N'Ingrid Urrea', N'cuentasclaves@platino.com.gt', 23343013)
INSERT [dbo].[Proveedor] ([Nit], [Nombre], [Direccion], [Telefono 1], [Regimen], [Cotacto], [Correo], [Telefono 2]) VALUES (N'7108-0', N'SEGUROS EL ROBLE, S.A.', N'-', 24203333, N'Sujeto a pagos trimestrales', NULL, NULL, 24298888)
INSERT [dbo].[Proveedor] ([Nit], [Nombre], [Direccion], [Telefono 1], [Regimen], [Cotacto], [Correo], [Telefono 2]) VALUES (N'712717-0', N'DATAFLEX', N'-', 22888327, N'-', N'Berly Canek ', N'bcanek@gmail.com', 41507944)
INSERT [dbo].[Proveedor] ([Nit], [Nombre], [Direccion], [Telefono 1], [Regimen], [Cotacto], [Correo], [Telefono 2]) VALUES (N'7197298-6', N'FODITEK', N'-', 24644444, N'Sujeto a pagos trimestrales', N'Paula Reyes ', N'paula@foditek.com', 24644411)
INSERT [dbo].[Proveedor] ([Nit], [Nombre], [Direccion], [Telefono 1], [Regimen], [Cotacto], [Correo], [Telefono 2]) VALUES (N'722625-K', N'INTEC DE GUATEMALA', N'-', 24339241, N'Sujeto a pagos trimestrales', N'Valesca Iboy ', NULL, 23840180)
INSERT [dbo].[Proveedor] ([Nit], [Nombre], [Direccion], [Telefono 1], [Regimen], [Cotacto], [Correo], [Telefono 2]) VALUES (N'729502-2', N'COMPONENTES INDUSTRIALES, S.A.', N'13 Av. 17-38, Zona 10. ', 23334987, N'Sujeto a pagos trimestrales', NULL, N'compindu@componentes.com.gt', 23333717)
INSERT [dbo].[Proveedor] ([Nit], [Nombre], [Direccion], [Telefono 1], [Regimen], [Cotacto], [Correo], [Telefono 2]) VALUES (N'752235-5', N'SERVICIOS ELECTRÓNICOS Y SISTEMAS AVANZADOS, S.A', N'3ra Ave. 12-37 Zona 9. ', 23272222, N'Sujeto a pagos trimestrales', N'Sergio Arco ', N'ventas@servicioselectronicos.com', 57617671)
INSERT [dbo].[Proveedor] ([Nit], [Nombre], [Direccion], [Telefono 1], [Regimen], [Cotacto], [Correo], [Telefono 2]) VALUES (N'783381-4', N'FERRO NORTE,S.A.', N'-', 22880442, N'Sujeto a pagos trimestrales', N'Ingrid Ramos ', NULL, 22880442)
INSERT [dbo].[Proveedor] ([Nit], [Nombre], [Direccion], [Telefono 1], [Regimen], [Cotacto], [Correo], [Telefono 2]) VALUES (N'819112-3', N'PETROSERVICIOS, S.A.', N'-', 24790389, N'Sujeto a pagos trimestrales', N'Sandra Garciela Mendoza', N'semendoza@petro-group.com', 41497132)
INSERT [dbo].[Proveedor] ([Nit], [Nombre], [Direccion], [Telefono 1], [Regimen], [Cotacto], [Correo], [Telefono 2]) VALUES (N'823074-9', N'BIZMART, S.A.', N'-', 23393292, N'Sujeto a pagos trimestrales', N'Renatha Escobar', N'rlescobarp@gmail.com', 54014291)
INSERT [dbo].[Proveedor] ([Nit], [Nombre], [Direccion], [Telefono 1], [Regimen], [Cotacto], [Correo], [Telefono 2]) VALUES (N'823830-8', N'FERRETERÍA REX', N'-', 22210119, N'Pago directamente en las cajas fiscales del 5%', N'Leticia', N'ferreteria_10@yahoo.com', 22207313)
INSERT [dbo].[Proveedor] ([Nit], [Nombre], [Direccion], [Telefono 1], [Regimen], [Cotacto], [Correo], [Telefono 2]) VALUES (N'945167-6', N'DISTRIBUIDORA S&M', N'-', 52024242, N'Sujeto a pagos trimestrales', N'Don León ', NULL, 0)
INSERT [dbo].[Proveedor] ([Nit], [Nombre], [Direccion], [Telefono 1], [Regimen], [Cotacto], [Correo], [Telefono 2]) VALUES (N'95304-0', N'MERCK DE CENTROAMÉRICA', N'12 ave. 0-33 zona 2 Mixco.', 55922111, N'Sujeto a pagos trimestrales', N'Brenda Paredes', N'brenda.paredes@merckgroup.com', 53089030)
/****** Object:  Table [dbo].[Curso]    Script Date: 11/22/2012 11:31:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Curso](
	[Id_Curso] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Curso] PRIMARY KEY CLUSTERED 
(
	[Id_Curso] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Curso] ([Id_Curso], [Nombre]) VALUES (1, N'Química I')
INSERT [dbo].[Curso] ([Id_Curso], [Nombre]) VALUES (2, N'Química II')
INSERT [dbo].[Curso] ([Id_Curso], [Nombre]) VALUES (3, N'Química Orgánica I')
INSERT [dbo].[Curso] ([Id_Curso], [Nombre]) VALUES (4, N'Química Orgánica II')
INSERT [dbo].[Curso] ([Id_Curso], [Nombre]) VALUES (5, N'Fisicoquímica')
INSERT [dbo].[Curso] ([Id_Curso], [Nombre]) VALUES (6, N'Análisis Químico II')
/****** Object:  Table [dbo].[Ciclo]    Script Date: 11/22/2012 11:31:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ciclo](
	[Id_Ciclo] [int] NOT NULL,
	[Descripcion] [varchar](25) NOT NULL,
	[Estado] [bit] NULL,
 CONSTRAINT [PK_Ciclo] PRIMARY KEY CLUSTERED 
(
	[Id_Ciclo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Ciclo] ([Id_Ciclo], [Descripcion], [Estado]) VALUES (32012, N'2do. Ciclo 2012', 1)
/****** Object:  Table [dbo].[Carrera]    Script Date: 11/22/2012 11:31:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Carrera](
	[Id_Carrera] [int] NOT NULL,
	[Nombre] [varchar](60) NOT NULL,
 CONSTRAINT [PK_Carrera] PRIMARY KEY CLUSTERED 
(
	[Id_Carrera] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Carrera] ([Id_Carrera], [Nombre]) VALUES (1, N'Todas')
INSERT [dbo].[Carrera] ([Id_Carrera], [Nombre]) VALUES (2, N'Todas Exepto Sistemas')
INSERT [dbo].[Carrera] ([Id_Carrera], [Nombre]) VALUES (3, N'Ing. QQ, Ing. QQ Industrial e Ing. en Alimentos')
/****** Object:  Table [dbo].[Familia]    Script Date: 11/22/2012 11:31:18 ******/
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
SET IDENTITY_INSERT [dbo].[Familia] ON
INSERT [dbo].[Familia] ([Id_Familia], [Nombre]) VALUES (1, N'Orgánicos')
INSERT [dbo].[Familia] ([Id_Familia], [Nombre]) VALUES (2, N'Inorgánicos ')
SET IDENTITY_INSERT [dbo].[Familia] OFF
/****** Object:  Table [dbo].[Facultad]    Script Date: 11/22/2012 11:31:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Facultad](
	[Id_Facultad] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Facultad] PRIMARY KEY CLUSTERED 
(
	[Id_Facultad] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Facultad] ([Id_Facultad], [Nombre]) VALUES (1, N'Ingeniería')
/****** Object:  Table [dbo].[Medida]    Script Date: 11/22/2012 11:31:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Medida](
	[Id_Medida] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NULL,
	[Cantidad] [decimal](14, 3) NULL,
 CONSTRAINT [PK_Medida] PRIMARY KEY CLUSTERED 
(
	[Id_Medida] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Medida] ON
INSERT [dbo].[Medida] ([Id_Medida], [Descripcion], [Cantidad]) VALUES (1, N'g', CAST(1.000 AS Decimal(14, 3)))
INSERT [dbo].[Medida] ([Id_Medida], [Descripcion], [Cantidad]) VALUES (2, N'g', CAST(2.500 AS Decimal(14, 3)))
INSERT [dbo].[Medida] ([Id_Medida], [Descripcion], [Cantidad]) VALUES (3, N'g', CAST(5.000 AS Decimal(14, 3)))
INSERT [dbo].[Medida] ([Id_Medida], [Descripcion], [Cantidad]) VALUES (4, N'g', CAST(10.000 AS Decimal(14, 3)))
INSERT [dbo].[Medida] ([Id_Medida], [Descripcion], [Cantidad]) VALUES (5, N'g', CAST(20.000 AS Decimal(14, 3)))
INSERT [dbo].[Medida] ([Id_Medida], [Descripcion], [Cantidad]) VALUES (6, N'g', CAST(25.000 AS Decimal(14, 3)))
INSERT [dbo].[Medida] ([Id_Medida], [Descripcion], [Cantidad]) VALUES (7, N'g', CAST(28.000 AS Decimal(14, 3)))
INSERT [dbo].[Medida] ([Id_Medida], [Descripcion], [Cantidad]) VALUES (8, N'g', CAST(50.000 AS Decimal(14, 3)))
INSERT [dbo].[Medida] ([Id_Medida], [Descripcion], [Cantidad]) VALUES (9, N'g', CAST(100.000 AS Decimal(14, 3)))
INSERT [dbo].[Medida] ([Id_Medida], [Descripcion], [Cantidad]) VALUES (10, N'g', CAST(125.000 AS Decimal(14, 3)))
INSERT [dbo].[Medida] ([Id_Medida], [Descripcion], [Cantidad]) VALUES (11, N'g', CAST(150.000 AS Decimal(14, 3)))
INSERT [dbo].[Medida] ([Id_Medida], [Descripcion], [Cantidad]) VALUES (12, N'g', CAST(200.000 AS Decimal(14, 3)))
INSERT [dbo].[Medida] ([Id_Medida], [Descripcion], [Cantidad]) VALUES (13, N'g', CAST(250.000 AS Decimal(14, 3)))
INSERT [dbo].[Medida] ([Id_Medida], [Descripcion], [Cantidad]) VALUES (14, N'g', CAST(325.000 AS Decimal(14, 3)))
INSERT [dbo].[Medida] ([Id_Medida], [Descripcion], [Cantidad]) VALUES (15, N'g', CAST(454.000 AS Decimal(14, 3)))
INSERT [dbo].[Medida] ([Id_Medida], [Descripcion], [Cantidad]) VALUES (16, N'g', CAST(500.000 AS Decimal(14, 3)))
INSERT [dbo].[Medida] ([Id_Medida], [Descripcion], [Cantidad]) VALUES (17, N'g', CAST(1000.000 AS Decimal(14, 3)))
INSERT [dbo].[Medida] ([Id_Medida], [Descripcion], [Cantidad]) VALUES (18, N'g', CAST(2500.000 AS Decimal(14, 3)))
INSERT [dbo].[Medida] ([Id_Medida], [Descripcion], [Cantidad]) VALUES (19, N'g', CAST(5000.000 AS Decimal(14, 3)))
INSERT [dbo].[Medida] ([Id_Medida], [Descripcion], [Cantidad]) VALUES (20, N'kg', CAST(1.000 AS Decimal(14, 3)))
INSERT [dbo].[Medida] ([Id_Medida], [Descripcion], [Cantidad]) VALUES (21, N'kg', CAST(2.500 AS Decimal(14, 3)))
INSERT [dbo].[Medida] ([Id_Medida], [Descripcion], [Cantidad]) VALUES (22, N'kg', CAST(500.000 AS Decimal(14, 3)))
INSERT [dbo].[Medida] ([Id_Medida], [Descripcion], [Cantidad]) VALUES (23, N'L', CAST(10.000 AS Decimal(14, 3)))
INSERT [dbo].[Medida] ([Id_Medida], [Descripcion], [Cantidad]) VALUES (24, N'L', CAST(2.500 AS Decimal(14, 3)))
INSERT [dbo].[Medida] ([Id_Medida], [Descripcion], [Cantidad]) VALUES (25, N'L', CAST(4.000 AS Decimal(14, 3)))
INSERT [dbo].[Medida] ([Id_Medida], [Descripcion], [Cantidad]) VALUES (26, N'mg', CAST(500.000 AS Decimal(14, 3)))
INSERT [dbo].[Medida] ([Id_Medida], [Descripcion], [Cantidad]) VALUES (27, N'ml', CAST(5.000 AS Decimal(14, 3)))
INSERT [dbo].[Medida] ([Id_Medida], [Descripcion], [Cantidad]) VALUES (28, N'ml', CAST(100.000 AS Decimal(14, 3)))
INSERT [dbo].[Medida] ([Id_Medida], [Descripcion], [Cantidad]) VALUES (29, N'ml', CAST(150.000 AS Decimal(14, 3)))
INSERT [dbo].[Medida] ([Id_Medida], [Descripcion], [Cantidad]) VALUES (30, N'ml', CAST(250.000 AS Decimal(14, 3)))
INSERT [dbo].[Medida] ([Id_Medida], [Descripcion], [Cantidad]) VALUES (31, N'ml', CAST(260.000 AS Decimal(14, 3)))
INSERT [dbo].[Medida] ([Id_Medida], [Descripcion], [Cantidad]) VALUES (32, N'ml', CAST(500.000 AS Decimal(14, 3)))
INSERT [dbo].[Medida] ([Id_Medida], [Descripcion], [Cantidad]) VALUES (33, N'ml', CAST(1000.000 AS Decimal(14, 3)))
INSERT [dbo].[Medida] ([Id_Medida], [Descripcion], [Cantidad]) VALUES (34, N'ml', CAST(2500.000 AS Decimal(14, 3)))
INSERT [dbo].[Medida] ([Id_Medida], [Descripcion], [Cantidad]) VALUES (35, N'ml', CAST(3780.000 AS Decimal(14, 3)))
INSERT [dbo].[Medida] ([Id_Medida], [Descripcion], [Cantidad]) VALUES (36, N'ml', CAST(4000.000 AS Decimal(14, 3)))
INSERT [dbo].[Medida] ([Id_Medida], [Descripcion], [Cantidad]) VALUES (37, N'barras', CAST(25.000 AS Decimal(14, 3)))
SET IDENTITY_INSERT [dbo].[Medida] OFF
/****** Object:  Table [dbo].[RolPagina]    Script Date: 11/22/2012 11:31:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RolPagina](
	[Id_Rol] [int] NOT NULL,
	[Id_Pagina] [int] NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[RolPagina] ([Id_Rol], [Id_Pagina]) VALUES (1, 1)
INSERT [dbo].[RolPagina] ([Id_Rol], [Id_Pagina]) VALUES (1, 2)
INSERT [dbo].[RolPagina] ([Id_Rol], [Id_Pagina]) VALUES (1, 3)
INSERT [dbo].[RolPagina] ([Id_Rol], [Id_Pagina]) VALUES (1, 4)
INSERT [dbo].[RolPagina] ([Id_Rol], [Id_Pagina]) VALUES (1, 5)
INSERT [dbo].[RolPagina] ([Id_Rol], [Id_Pagina]) VALUES (1, 6)
INSERT [dbo].[RolPagina] ([Id_Rol], [Id_Pagina]) VALUES (1, 7)
INSERT [dbo].[RolPagina] ([Id_Rol], [Id_Pagina]) VALUES (1, 8)
INSERT [dbo].[RolPagina] ([Id_Rol], [Id_Pagina]) VALUES (1, 9)
INSERT [dbo].[RolPagina] ([Id_Rol], [Id_Pagina]) VALUES (1, 10)
INSERT [dbo].[RolPagina] ([Id_Rol], [Id_Pagina]) VALUES (1, 11)
INSERT [dbo].[RolPagina] ([Id_Rol], [Id_Pagina]) VALUES (1, 12)
INSERT [dbo].[RolPagina] ([Id_Rol], [Id_Pagina]) VALUES (2, 5)
INSERT [dbo].[RolPagina] ([Id_Rol], [Id_Pagina]) VALUES (2, 6)
INSERT [dbo].[RolPagina] ([Id_Rol], [Id_Pagina]) VALUES (2, 7)
INSERT [dbo].[RolPagina] ([Id_Rol], [Id_Pagina]) VALUES (2, 8)
INSERT [dbo].[RolPagina] ([Id_Rol], [Id_Pagina]) VALUES (2, 9)
INSERT [dbo].[RolPagina] ([Id_Rol], [Id_Pagina]) VALUES (2, 10)
INSERT [dbo].[RolPagina] ([Id_Rol], [Id_Pagina]) VALUES (3, 11)
INSERT [dbo].[RolPagina] ([Id_Rol], [Id_Pagina]) VALUES (3, 12)
/****** Object:  Table [dbo].[Usuario]    Script Date: 11/22/2012 11:31:18 ******/
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
INSERT [dbo].[Usuario] ([Usuario], [Nombre], [Apellido], [Correo], [Contraseña], [Estado], [Id_Rol]) VALUES (N'17766', N'Nidia', N'Medina', N'nlmedina@url.edu.gt', N'nidiainv', 1, 2)
INSERT [dbo].[Usuario] ([Usuario], [Nombre], [Apellido], [Correo], [Contraseña], [Estado], [Id_Rol]) VALUES (N'18971', N'Maria', N'Papa', N'mrpapa@url.edu.gt', N'pappa', 1, 3)
INSERT [dbo].[Usuario] ([Usuario], [Nombre], [Apellido], [Correo], [Contraseña], [Estado], [Id_Rol]) VALUES (N'4449', N'Cesar', N'Gamez', N'cgamez@url.edu.gt', N'samgam', 1, 3)
INSERT [dbo].[Usuario] ([Usuario], [Nombre], [Apellido], [Correo], [Contraseña], [Estado], [Id_Rol]) VALUES (N'admin', N'Carlos', N'Martinez', N'cemartinez@url.edu.gt', N'admin', 1, 1)
/****** Object:  Table [dbo].[Herramienta]    Script Date: 11/22/2012 11:31:18 ******/
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
/****** Object:  StoredProcedure [dbo].[InsertarFamilia]    Script Date: 11/22/2012 11:31:19 ******/
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
/****** Object:  StoredProcedure [dbo].[InsertarPresentacion]    Script Date: 11/22/2012 11:31:19 ******/
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
	@Unidad varchar(50), @cantidad decimal (14,3)
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
/****** Object:  Table [dbo].[DetalleSede]    Script Date: 11/22/2012 11:31:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleSede](
	[Id_Sede] [int] NOT NULL,
	[Id_Facultad] [int] NOT NULL,
	[Id_Carrera] [int] NOT NULL,
	[Id_Curso] [int] NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[DetalleSede] ([Id_Sede], [Id_Facultad], [Id_Carrera], [Id_Curso]) VALUES (1, 1, 1, 1)
INSERT [dbo].[DetalleSede] ([Id_Sede], [Id_Facultad], [Id_Carrera], [Id_Curso]) VALUES (1, 1, 2, 2)
INSERT [dbo].[DetalleSede] ([Id_Sede], [Id_Facultad], [Id_Carrera], [Id_Curso]) VALUES (1, 1, 3, 3)
INSERT [dbo].[DetalleSede] ([Id_Sede], [Id_Facultad], [Id_Carrera], [Id_Curso]) VALUES (1, 1, 3, 4)
INSERT [dbo].[DetalleSede] ([Id_Sede], [Id_Facultad], [Id_Carrera], [Id_Curso]) VALUES (1, 1, 3, 5)
INSERT [dbo].[DetalleSede] ([Id_Sede], [Id_Facultad], [Id_Carrera], [Id_Curso]) VALUES (1, 1, 3, 6)
/****** Object:  Table [dbo].[Equipo]    Script Date: 11/22/2012 11:31:19 ******/
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
/****** Object:  Table [dbo].[Producto]    Script Date: 11/22/2012 11:31:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Producto](
	[Nombre] [varchar](150) NOT NULL,
	[Clasificacion] [varchar](1) NULL,
	[Corrosivo] [varchar](1) NULL,
	[Explosivo] [varchar](1) NULL,
	[Comburente] [varchar](1) NULL,
	[Irritante] [varchar](1) NULL,
	[Nocivo] [varchar](1) NULL,
	[Toxicidad] [varchar](1) NULL,
	[Codigo] [varchar](30) NOT NULL,
	[Id_Familia] [int] NOT NULL,
	[Inflamable] [varchar](1) NULL,
	[Controlado] [bit] NOT NULL,
	[PeligrosoParaAmbiente] [varchar](1) NULL,
 CONSTRAINT [PK_NuevoProducto] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Alumino Granilla', N'C', N'0', N'0', N'0', N'0', N'2', N'2', N'000000001A', 2, N'1', 0, N'2')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Aluminio en polvo ', N'C', N'0', N'0', N'0', N'1', N'0', N'1', N'000000001B', 2, N'1', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Aluminio III, Cloruro anhidrido', N'C', N'4', N'0', N'0', N'3', N'3', N'3', N'000000001C', 2, N'0', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'aluminio, nitrato 9 H2O', N'C', N'0', N'0', N'0', N'2', N'2', N'2', N'000000001D', 2, N'0', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Aluminio, sulfato ', N'C', N'0', N'0', N'0', N'2', N'2', N'2', N'000000001E', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Aluminio, óxido (p/cromatografía)', N'C', N'0', N'0', N'0', N'2', N'3', N'2', N'000000001F', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Aluminio, óxido', N'C', N'0', N'0', N'0', N'2', N'3', N'2', N'000000001G', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Aluminio, iso-óxido neutro', N'C', N'0', N'0', N'0', N'2', N'1', N'1', N'000000001H', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Aluminio y Potasio, Sulfato 12H2O', N'C', N'0', N'0', N'0', N'2', N'2', N'2', N'000000001I', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Aluminio en Banda', N'C', N'0', N'0', N'0', N'1', N'0', N'1', N'000000001J', 2, N'1', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Amoniaco', N'C', N'3', N'1', N'0', N'0', N'0', N'4', N'000000002A', 2, N'0', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Amonio, acetato', N'C', N'0', N'0', N'0', N'0', N'0', N'0', N'000000002B', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Amonio, carbonato', N'C', N'0', N'0', N'0', N'2', N'1', N'2', N'000000002C', 2, N'0', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Amonio, carbamato', N'C', N'0', N'0', N'0', N'2', N'2', N'2', N'000000002D', 2, N'2', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Amonio, cloruro ', N'C', N'0', N'0', N'0', N'2', N'0', N'4', N'000000002E', 2, N'0', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Amonio, hidrogenofosfato industrial', N'C', N'0', N'0', N'0', N'2', N'1', N'2', N'000000002F', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Amonio, fosfato monobásico', N'C', N'0', N'0', N'0', N'1', N'1', N'1', N'000000002G', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Amonio, heptomolibdato 4 hidratos', N'C', N'0', N'0', N'0', N'2', N'1', N'2', N'000000002H', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Amonio, nitrato', N'C', N'0', N'0', N'3', N'1', N'0', N'1', N'000000002I', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Amonio, oxalato', N'C', N'2', N'0', N'0', N'3', N'3', N'3', N'000000002J', 2, N'2', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Amonio, sulfato ', N'C', N'0', N'0', N'0', N'2', N'0', N'2', N'000000002K', 2, N'1', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Amonio, sulfuro', N'C', N'3', N'0', N'0', N'3', N'3', N'3', N'000000002L', 2, N'3', 0, N'2')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Amonio, tiocianato', N'C', N'0', N'0', N'0', N'2', N'2', N'2', N'000000002M', 2, N'0', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Amonio y Hierro III, sulfato 12H2O', N'C', N'0', N'0', N'0', N'1', N'0', N'1', N'000000002N', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Amonio Bromuro', N'C', NULL, NULL, NULL, NULL, NULL, NULL, N'000000002P', 2, NULL, 0, NULL)
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Antimonio III, cloruro', N'C', N'2', N'0', N'0', N'3', N'3', N'3', N'000000003A', 2, N'0', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Antimonio III, óxido', N'C', N'0', N'0', N'0', N'2', N'2', N'2', N'000000003B', 2, N'0', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Antimonio, polvo ', N'C', N'0', N'0', N'0', N'2', N'3', N'2', N'000000003C', 2, N'0', 0, N'2')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Antimonio III, potasio oxidtartrato hemidrato 0,5 H2O', N'C', N'0', N'0', N'0', N'3', N'3', N'3', N'000000003D', 2, N'0', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Arsénio, trióxido sublimado ', N'C', N'0', N'0', N'0', N'3', N'3', N'3', N'000000004A', 2, N'0', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Azufre coloidal en polvo ', N'C', N'0', N'0', N'0', N'3', N'2', N'3', N'000000005A', 2, N'1', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'sulfhidrógeno, para generar HS', N'C', N'0', N'0', N'0', N'3', N'4', N'3', N'000000005B', 2, N'4', 0, N'2')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Azufre sublimado ', N'C', N'0', N'0', N'0', N'3', N'2', N'3', N'000000005C', 2, N'1', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Bario, carbonatado ', N'C', N'0', N'0', N'0', N'2', N'2', N'2', N'000000006A', 2, N'0', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Bario, cloruro  2 hidratos', N'C', N'0', N'0', N'0', N'1', N'3', N'4', N'000000006B', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Bario, hidróxido 8 H2O', N'C', N'4', N'0', N'0', N'2', N'4', N'4', N'000000006C', 2, N'0', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Bario, nitrato', N'C', N'0', N'0', N'2', N'4', N'4', N'4', N'000000006D', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Bario, sulfato (p/patrón de blanco)', N'C', N'0', N'0', N'0', N'1', N'1', N'1', N'000000006E', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Bismuto, cloruro ', N'C', N'3', N'0', N'0', N'3', N'3', N'3', N'000000007A', 2, N'0', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Bismuto, nitrato básico ', N'C', N'0', N'0', N'2', N'2', N'2', N'2', N'000000007B', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Bromo luíquido ', N'C', N'3', N'0', N'0', N'4', N'4', N'4', N'000000008A', 2, N'0', 0, N'2')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Bronce', N'C', N'0', N'0', N'0', N'2', N'0', N'2', N'000000009A', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'ácido alizarón sulfónico ', N'C', N'5', N'0', N'0', N'5', N'5', N'4', N'00000000A2', 1, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Ácido 2-aminobenzónico', N'C', N'4', N'1', N'0', N'4', N'3', N'3', N'00000000A3', 1, N'0', 0, N'3')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Ácido auritricarboxilico ', N'C', N'3', N'0', N'0', N'3', N'2', N'3', N'00000000A4', 1, N'1', 0, N'4')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'ácido barbitúrico ', N'C', N'3', N'0', N'0', N'3', N'3', N'3', N'00000000A5', 1, N'1', 0, N'2')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'ácido benzóico ', N'C', N'0', N'0', N'0', N'2', N'0', N'4', N'00000000A6', 1, N'0', 0, N'2')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'ácido bórico ', N'C', N'3', N'0', N'0', N'3', N'4', N'4', N'00000000A7', 1, N'1', 0, N'2')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'ácido bromhídrico ', N'C', N'5', N'0', N'0', N'4', N'5', N'5', N'00000000A8', 1, N'3', 0, N'2')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'ácido carmínico ', N'C', N'4', N'0', N'0', N'3', N'3', N'3', N'00000000A9', 1, N'1', 0, N'5')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'amarillo de metilo (4-dimetilaminoazobenceno)', N'C', N'1', N'0', N'0', N'1', N'1', N'1', N'00000000I1', 1, N'0', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'azul de bromofenol ', N'C', N'0', N'0', N'0', N'3', N'4', N'4', N'00000000I2', 1, N'1', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'azul de bromotimol ', N'C', N'0', N'0', N'0', N'0', N'0', N'2', N'00000000I3', 1, N'2', 0, N'4')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'azul de timol ', N'C', N'0', N'0', N'0', N'2', N'3', N'3', N'00000000I4', 1, N'1', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'calceina (p/ vmetales)', N'C', N'0', N'0', N'0', N'2', N'3', N'3', N'00000000I5', 1, N'2', 0, N'4')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'calcón (p/ v metales)', N'C', N'1', N'0', N'0', N'2', N'2', N'2', N'00000000I6', 1, N'0', 0, N'5')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'cromoazul (p/v metales)', N'C', N'3', N'0', N'0', N'2', N'2', N'2', N'00000000I7', 1, N'0', 0, N'4')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'1-5 Difenilcarbazida (redox)', N'C', N'2', N'0', N'0', N'2', N'3', N'3', N'00000000I8', 1, N'0', 0, N'5')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Fenolftaleína', N'C', N'0', N'0', N'0', N'1', N'0', N'2', N'00000000I9', 1, N'0', 0, N'3')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Acetaldehido ', N'C', N'0', N'0', N'0', N'1', N'1', N'1', N'00000000O1', 1, N'3', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Acetona', N'C', N'0', N'0', N'0', N'2', N'0', N'4', N'00000000O2', 1, N'3', 0, N'3')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Acetilo, cloruro ', N'C', N'4', N'0', N'0', N'3', N'3', N'3', N'00000000O3', 1, N'3', 0, N'3')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Alcohol n-amílico    n-patilico ', N'C', N'0', N'0', N'0', N'1', N'1', N'1', N'00000000O4', 1, N'3', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'alcohol iso-amílico ', N'C', N'0', N'0', N'0', N'1', N'1', N'2', N'00000000O5', 1, N'3', 0, N'2')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Alcohol Bencilico ', N'C', N'0', N'0', N'0', N'2', N'3', N'5', N'00000000O6', 1, N'3', 0, N'3')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Alcohol I-butílico ', N'C', N'0', N'0', N'0', N'3', N'3', N'3', N'00000000O7', 1, N'3', 0, N'3')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Alcohol 2-butílico ', N'C', N'0', N'0', N'0', N'3', N'3', N'3', N'00000000O8', 1, N'3', 0, N'3')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'alcohol 2-tercbutílico ', N'C', N'0', N'2', N'0', N'3', N'3', N'3', N'00000000O9', 1, N'4', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Amarillo de titanio', N'C', N'0', N'0', N'0', N'0', N'2', N'2', N'00000000R1', 1, N'0', 0, N'5')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Alfa-benzoinoxima', N'C', N'2', N'0', N'0', N'2', N'3', N'3', N'00000000R2', 1, N'0', 0, N'4')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'2,2 - Bipiridina', N'C', N'2', N'0', N'0', N'2', N'4', N'4', N'00000000R3', 1, N'0', 0, N'5')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Cacotelina', N'C', N'4', N'0', N'0', N'3', N'4', N'4', N'00000000R4', 1, N'0', 0, N'5')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Cincón ', N'C', N'0', N'0', N'0', N'2', N'3', N'5', N'00000000R5', 1, N'0', 0, N'5')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Dimetilglioxima', N'C', N'0', N'0', N'0', N'3', N'3', N'4', N'00000000R6', 1, N'0', 0, N'5')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Dipierilamina', N'C', N'0', N'0', N'0', N'1', N'4', N'4', N'00000000R7', 1, N'0', 0, N'4')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Fenilfluorona', N'C', N'3', N'0', N'0', N'1', N'5', N'5', N'00000000R8', 1, N'0', 0, N'5')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Glioxabio-2-Hidroxiamilo', N'C', N'2', N'0', N'0', N'2', N'4', N'4', N'00000000R9', 1, N'0', 0, N'5')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Cadmio, granalla', N'C', N'2', N'0', N'0', N'3', N'3', N'3', N'000000010A', 2, N'1', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Cadmio, cloruro', N'C', N'0', N'0', N'0', N'3', N'3', N'3', N'000000010B', 2, N'0', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Cadmio, nitrato 4 H2O', N'C', N'0', N'0', N'0', N'3', N'3', N'3', N'000000010C', 2, N'0', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Cadmio, Carbonato ', N'C', N'0', N'0', N'0', N'2', N'2', N'2', N'000000010E', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Cadmio, acetato ', N'C', N'0', N'0', N'0', N'2', N'2', N'2', N'000000010F', 2, N'1', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Calcio, acetato secado ', N'C', N'2', N'0', N'0', N'3', N'3', N'3', N'000000011B', 2, N'3', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Calcio, carbonato precipitado ', N'C', N'0', N'0', N'0', N'1', N'0', N'1', N'000000011C', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Calcio, carbonato (p/análisis de silicatos)', N'C', N'0', N'0', N'0', N'1', N'0', N'1', N'000000011D', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Calcio, cloruro anhidrido granulado ', N'C', N'0', N'0', N'0', N'2', N'0', N'2', N'000000011E', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Calcio, cloruro 2 hidratos', N'C', N'0', N'0', N'0', N'2', N'0', N'2', N'000000011F', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Calcio, fluoruro', N'C', N'3', N'0', N'0', N'2', N'2', N'2', N'000000011G', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Calcio, hidróxido ', N'C', N'4', N'0', N'0', N'1', N'2', N'2', N'000000011H', 2, N'0', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Calcio, nitrato 3 hidratos', N'C', N'0', N'0', N'2', N'2', N'2', N'2', N'000000011I', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Calcio, óxido de mármol ', N'C', N'3', N'0', N'0', N'2', N'2', N'2', N'000000011J', 2, N'0', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Calcio, dihidrógeno fosfato monohidratado Ca(H2PO4)*H2O', N'C', NULL, NULL, NULL, NULL, NULL, NULL, N'000000011K', 2, NULL, 0, NULL)
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Carbón activado ', N'C', N'0', N'0', N'0', N'0', N'0', N'1', N'000000012A', 2, N'3', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Cobalto II, cloruro 6H2O', N'C', N'0', N'0', N'0', N'2', N'0', N'2', N'000000013A', 2, N'0', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Cobalto II, nitrato 6H2O', N'C', N'0', N'0', N'0', N'2', N'0', N'2', N'000000013B', 2, N'0', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Cobre, alambre', N'C', N'0', N'0', N'0', N'2', N'1', N'2', N'000000014A', 2, N'1', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Cobre, lámina', N'C', N'0', N'0', N'0', N'2', N'1', N'2', N'000000014B', 2, N'1', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Cobre II, acetato 1H2O', N'C', N'0', N'0', N'0', N'2', N'2', N'2', N'000000014C', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Cobre I, cloruro anhidrido ', N'C', N'0', N'0', N'0', N'3', N'2', N'3', N'000000014D', 2, N'0', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Cobre II, cloruro 2H2O', N'C', N'0', N'0', N'0', N'3', N'1', N'3', N'000000014E', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Cobre, nitrato 3H2O', N'C', N'0', N'0', N'1', N'2', N'1', N'2', N'000000014F', 2, N'0', 0, N'0')
GO
print 'Processed 100 total records'
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Cobre II, óxido ', N'C', N'0', N'0', N'0', N'2', N'1', N'2', N'000000014G', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'CobreII, sulfato anhidrido ', N'C', N'0', N'0', N'0', N'2', N'0', N'2', N'000000014H', 2, N'0', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Cobre, sulfato 5H2O', N'C', N'0', N'0', N'0', N'1', N'0', N'2', N'000000014I', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Cobre II, hidroxicarbonato ', N'C', N'0', N'0', N'0', N'1', N'0', N'1', N'000000014J', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Carbonato cobre básico ', N'C', N'0', N'0', N'0', N'1', N'0', N'1', N'000000014K', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Cromo, alambre', N'C', N'0', N'0', N'0', N'1', N'0', N'1', N'000000015A', 2, N'2', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Cromo III, cloruro anhidrido', N'C', N'0', N'0', N'0', N'2', N'0', N'2', N'000000015B', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Cromo VI, óxido  p.a', N'C', N'0', N'0', N'0', N'2', N'0', N'2', N'000000015C', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Cromo, nitrato ', N'C', N'0', N'0', N'1', N'2', N'0', N'2', N'000000015D', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Estaño, granulado ', N'C', N'0', N'0', N'0', N'1', N'0', N'1', N'000000016A', 2, N'1', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Estaño, hojas de 0.04mm', N'C', N'0', N'0', N'0', N'1', N'0', N'1', N'000000016B', 2, N'1', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Estaño II, cloruro 2H2O', N'C', N'2', N'0', N'0', N'3', N'1', N'2', N'000000016C', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Estroncio, cloruro 6H2O', N'C', N'0', N'0', N'0', N'2', N'1', N'2', N'000000017A', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Estroncio, nitrato ', N'C', N'0', N'0', N'2', N'2', N'1', N'2', N'000000017B', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Fósforo, barritas', N'C', N'0', N'4', N'0', N'1', N'0', N'1', N'000000018A', 2, N'1', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Fosforo amorfo rojo ', N'C', N'0', N'4', N'0', N'1', N'0', N'1', N'000000018B', 2, N'1', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Grafito, polvo porfirizado ', N'C', N'0', N'2', N'0', N'1', N'0', N'1', N'000000019A', 2, N'2', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Hidrógeno-peróxido al 30%', N'C', N'3', N'0', N'3', N'2', N'1', N'3', N'000000020A', 2, N'0', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Hierro, polvo ', N'C', N'0', N'0', N'0', N'1', N'0', N'1', N'000000021A', 2, N'2', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Hierro II, cloruro 4H2O', N'C', N'0', N'0', N'0', N'3', N'0', N'1', N'000000021C', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'hierro III, cloruro 6H2O', N'C', N'1', N'0', N'0', N'2', N'4', N'2', N'000000021D', 2, N'0', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Hierro III, cloruro 4H2O', N'C', N'0', N'0', N'0', N'2', N'0', N'1', N'000000021E', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Hierro, nitrato 9H2O', N'C', N'0', N'0', N'2', N'3', N'0', N'1', N'000000021F', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Hierro, sulfato 7H2O', N'C', N'0', N'0', N'0', N'2', N'0', N'1', N'000000021G', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Litio, cloruro ', N'C', N'0', N'0', N'0', N'2', N'0', N'1', N'000000023A', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Litio, sulfato ', N'C', N'0', N'0', N'0', N'2', N'1', N'1', N'000000023B', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Citrato de tri-litio ', N'C', N'0', N'0', N'0', N'1', N'1', N'1', N'000000023D', 2, N'1', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Magnesio, barritas', N'C', N'0', N'0', N'0', N'1', N'0', N'0', N'000000024A', 2, N'1', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Magnesio, cintas de 3mm', N'C', N'0', N'0', N'0', N'0', N'0', N'0', N'000000024B', 2, N'1', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Magnesio, virutas', N'C', N'0', N'0', N'0', N'0', N'0', N'0', N'000000024C', 2, N'1', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Magnesio, acetato 4H2O', N'C', N'0', N'0', N'0', N'1', N'0', N'1', N'000000024D', 2, N'1', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Magnesio, polvo ', N'C', N'0', N'0', N'0', N'0', N'0', N'0', N'000000024E', 2, N'1', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Magnesio, cloruro 6H2O', N'C', N'0', N'0', N'0', N'0', N'0', N'2', N'000000024F', 2, N'0', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Magnesio, nitrato 6H2O', N'C', N'0', N'0', N'2', N'2', N'0', N'2', N'000000024G', 2, N'1', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Magnesio, sulfato 7H2O', N'C', N'0', N'0', N'0', N'1', N'1', N'1', N'000000024H', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'magnesio, óxido ', N'C', N'0', N'0', N'0', N'1', N'0', N'1', N'000000024I', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Magnesio, bromo ', N'C', N'0', N'0', N'0', N'1', N'0', N'1', N'000000024J', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Magnesio, hidróxido ', N'C', N'0', N'0', N'0', N'1', N'0', N'1', N'000000024K', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Manganeso II, cloruro 4H2O', N'C', N'0', N'0', N'0', N'2', N'0', N'1', N'000000025A', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Manganeso II, nitrato 4H2O', N'C', N'0', N'0', N'0', N'2', N'0', N'1', N'000000025B', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Manganeso IV, óxido ', N'C', N'0', N'0', N'2', N'2', N'4', N'4', N'000000025C', 2, N'0', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Manganeso II, sulfato 1H2O', N'C', N'0', N'0', N'0', N'2', N'2', N'2', N'000000025D', 2, N'0', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Sulfato de Manganeso II 4H2O', N'C', N'0', N'0', N'0', N'2', N'2', N'2', N'000000025E', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Mercurio, líquido P/ polarografía', N'C', N'0', N'0', N'0', N'2', N'2', N'3', N'000000026A', 2, N'0', 0, N'3')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Mercurio I, cloruro ', N'C', N'0', N'0', N'0', N'2', N'4', N'4', N'000000026B', 2, N'0', 0, N'3')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Mercurio II, cloruro sublimado ', N'C', N'0', N'0', N'0', N'2', N'4', N'4', N'000000026C', 2, N'0', 0, N'3')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Mercuirio I, nitrato 2H2O', N'C', N'0', N'0', N'2', N'2', N'3', N'3', N'000000026D', 2, N'0', 0, N'3')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Mercurio II, nitrato 2H2O', N'C', N'0', N'0', N'2', N'2', N'3', N'3', N'000000026E', 2, N'0', 0, N'3')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Mercurio II, óxido amarillo', N'C', N'0', N'0', N'0', N'2', N'4', N'4', N'000000026F', 2, N'0', 0, N'3')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Mercurio II, óxido rojo ', N'C', N'0', N'0', N'0', N'2', N'4', N'4', N'000000026G', 2, N'0', 0, N'3')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Mercurio II, sulfato ', N'C', N'0', N'0', N'2', N'2', N'3', N'3', N'000000026H', 2, N'0', 0, N'3')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Mercurio II, yoduro ', N'C', N'0', N'0', N'2', N'2', N'3', N'3', N'000000026I', 2, N'0', 0, N'3')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Nìquel II, cloruro 6H2O', N'C', N'0', N'0', N'0', N'3', N'0', N'2', N'000000027A', 2, N'0', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Níquel II, nitrato 6H2O', N'C', N'0', N'0', N'2', N'3', N'0', N'2', N'000000027B', 2, N'0', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Níquel II, sulfato 6H2O', N'C', N'0', N'0', N'0', N'3', N'0', N'2', N'000000027C', 2, N'0', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Plata, bromuro ', N'C', N'0', N'0', N'0', N'2', N'0', N'2', N'000000028A', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Plata, cloruro ', N'C', N'0', N'0', N'0', N'2', N'0', N'2', N'000000028B', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Plata, fluoruro ', N'C', N'0', N'1', N'3', N'2', N'1', N'2', N'000000028C', 2, N'0', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Plata, nitrato ', N'C', N'3', N'0', N'2', N'1', N'0', N'2', N'000000028D', 2, N'0', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Plata, sulfato ', N'C', N'0', N'0', N'0', N'3', N'1', N'2', N'000000028E', 2, N'0', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Plata, yoduro ', N'C', N'0', N'0', N'0', N'2', N'0', N'2', N'000000028F', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Plomo, láminas', N'C', N'0', N'0', N'3', N'2', N'3', N'2', N'000000029A', 2, N'0', 0, N'2')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Plomo, gránulos', N'C', N'0', N'0', N'3', N'2', N'3', N'2', N'000000029B', 2, N'0', 0, N'2')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Plomo, acetato ', N'C', N'0', N'0', N'0', N'2', N'1', N'2', N'000000029C', 2, N'1', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Plomo, cloruro ', N'C', N'0', N'0', N'0', N'2', N'0', N'2', N'000000029D', 2, N'0', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Plomo, nitrato ', N'C', N'0', N'0', N'0', N'2', N'4', N'4', N'000000029E', 2, N'0', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Plomo, óxido ', N'C', N'0', N'0', N'0', N'2', N'1', N'1', N'000000029F', 2, N'0', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Plomo, carbonato ', N'C', N'0', N'0', N'0', N'2', N'1', N'2', N'000000029G', 2, N'0', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'sulfato de hierro II y amonio 6 H2O', N'C', N'0', N'0', N'0', N'1', N'0', N'1', N'00000002N1', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Amonio y Sodio monofosfato', N'C', N'0', N'0', N'0', N'2', N'2', N'2', N'00000002NI', 2, N'0', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Potasio, acetato puris', N'C', N'0', N'0', N'0', N'2', N'0', N'1', N'000000030A', 2, N'1', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Potasio, bromuro ', N'C', N'0', N'0', N'0', N'1', N'0', N'1', N'000000030B', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Potasio, hidrogenosulfato (bisulfato)', N'C', N'0', N'0', N'0', N'3', N'1', N'1', N'000000030C', 2, N'0', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Potasio, carbonato', N'C', N'0', N'0', N'0', N'2', N'2', N'2', N'000000030D', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Potasio, cianuro ', N'C', N'0', N'0', N'0', N'3', N'2', N'2', N'000000030E', 2, N'0', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Potasio, clorato ', N'C', N'0', N'0', N'1', N'1', N'4', N'4', N'000000030F', 2, N'0', 0, N'2')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Potasio, cloruro ', N'C', N'0', N'0', N'0', N'0', N'0', N'0', N'000000030G', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Potasio, cromato ', N'C', N'0', N'0', N'0', N'1', N'3', N'2', N'000000030H', 2, N'0', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Potasio, dicromato ', N'C', N'4', N'0', N'2', N'4', N'4', N'4', N'000000030I', 2, N'0', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Potasio, fluoruro ', N'C', N'0', N'0', N'0', N'3', N'1', N'2', N'000000030J', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Potasio, hexacianoferrato II, 3H2O', N'C', N'0', N'0', N'0', N'0', N'2', N'1', N'000000030K', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Potasio, hexacianoferrato III', N'C', N'0', N'0', N'0', N'0', N'2', N'1', N'000000030L', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Potasio, hidróxido ', N'C', N'5', N'0', N'0', N'1', N'3', N'3', N'000000030M', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Potasio, metoperyodato ', N'C', N'0', N'0', N'3', N'2', N'1', N'1', N'000000030N', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Potasio, nitrito ', N'C', N'0', N'0', N'2', N'3', N'2', N'1', N'000000030O', 2, N'0', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Potasio, dioxalato 1H2O', N'C', N'0', N'0', N'0', N'2', N'1', N'1', N'000000030P', 2, N'1', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Potasio, perclorato ', N'C', N'0', N'2', N'2', N'2', N'2', N'3', N'000000030Q', 2, N'0', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Potasio, peroxidisulfato (persulfato)', N'C', N'0', N'0', N'2', N'2', N'1', N'1', N'000000030R', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Potasio, permanganato ', N'C', N'0', N'0', N'2', N'1', N'0', N'4', N'000000030S', 2, N'0', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Potasio, tiocianato ', N'C', N'0', N'0', N'0', N'4', N'4', N'4', N'000000030T', 2, N'0', 0, N'2')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Potasio y sodio, tratrato cristales. ', N'C', N'0', N'0', N'0', N'2', N'1', N'1', N'000000030U', 2, N'1', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Potasio, yodato ', N'C', N'0', N'0', N'2', N'2', N'2', N'2', N'000000030V', 2, N'0', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Potasio, yoduro ', N'C', N'0', N'0', N'0', N'1', N'0', N'1', N'000000030W', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Potasio, sulfato ', N'C', N'0', N'0', N'0', N'3', N'1', N'1', N'000000030X', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Sodio, acetato anhidrido ', N'C', N'0', N'0', N'0', N'0', N'0', N'2', N'000000031B', 2, N'1', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Sodio, benzoato ', N'C', N'0', N'0', N'0', N'2', N'1', N'1', N'000000031C', 2, N'1', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Sodio, bismutato ', N'C', N'0', N'0', N'0', N'2', N'1', N'1', N'000000031D', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Sodio, bromuro ', N'C', N'0', N'0', N'0', N'0', N'0', N'0', N'000000031E', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'sodio, carbonato anhidro ', N'C', N'0', N'0', N'0', N'2', N'0', N'4', N'000000031F', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Sodio, carbonato 10H2', N'C', N'0', N'0', N'0', N'2', N'1', N'1', N'000000031G', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Sodio, carbonato ácido (hidrogenocarbonato)', N'C', N'0', N'0', N'0', N'1', N'0', N'1', N'000000031H', 2, N'0', 0, N'0')
GO
print 'Processed 200 total records'
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Sodio, cianuro ', N'C', N'0', N'0', N'0', N'3', N'3', N'2', N'000000031I', 2, N'0', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Sodio, cloruro ', N'C', N'0', N'0', N'0', N'0', N'0', N'0', N'000000031J', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Sodio, cobaltinitrito', N'C', N'0', N'0', N'1', N'2', N'1', N'1', N'000000031K', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Sodio, cromato anhidro ', N'C', N'0', N'0', N'0', N'3', N'2', N'2', N'000000031L', 2, N'0', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'sodio, dihidrogenado, fosfato 1H2O', N'C', N'0', N'0', N'0', N'1', N'1', N'1', N'000000031M', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'disodio, fosfato monohidrógenado 2H2O', N'C', N'0', N'0', N'0', N'2', N'0', N'0', N'000000031N', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Disodio, hidrógeno arseniato ', N'C', N'1', N'0', N'0', N'3', N'1', N'1', N'000000031O', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'disodio, tetraborato 10H2O', N'C', N'0', N'0', N'0', N'1', N'1', N'1', N'000000031P', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'disodio, oxalato ', N'C', N'0', N'0', N'0', N'2', N'2', N'2', N'000000031Q', 2, N'1', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Sodio, dietiltiocarbamato ', N'C', N'0', N'0', N'0', N'1', N'1', N'1', N'000000031R', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Sodio, ditionito ', N'C', N'0', N'0', N'0', N'2', N'1', N'2', N'000000031S', 2, N'1', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'sodio, fluoruro ', N'C', N'0', N'0', N'0', N'3', N'1', N'2', N'000000031T', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Sodio, hidróxido ', N'C', N'5', N'0', N'0', N'1', N'3', N'3', N'000000031U', 2, N'0', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Sodio, nitrato ', N'C', N'0', N'0', N'3', N'1', N'4', N'4', N'000000031V', 2, N'0', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Sodio, nitrito ', N'C', N'0', N'0', N'1', N'3', N'2', N'2', N'000000031W', 2, N'0', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'sodio, nitroprusiato ', N'C', N'0', N'0', N'0', N'1', N'2', N'2', N'000000031X', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'sodio, radiozonato ', N'C', NULL, NULL, NULL, NULL, NULL, NULL, N'000000031Y', 2, NULL, 0, NULL)
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Sodio, sulfato anhidro ', N'C', N'0', N'0', N'0', N'2', N'0', N'2', N'000000031Z', 2, N'0', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Yodo, cristales (resublimado)', N'C', N'0', N'0', N'0', N'4', N'4', N'4', N'000000032A', 2, N'0', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Zinc, granallas', N'C', N'0', N'0', N'0', N'0', N'0', N'0', N'000000033A', 2, N'1', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Zinc, polvo grueso ', N'C', N'0', N'0', N'0', N'0', N'0', N'0', N'000000033B', 2, N'1', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Zinc, acetato 2H2O', N'C', N'0', N'0', N'0', N'1', N'0', N'1', N'000000033C', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Zinc, cloruro seco (anhidro)', N'C', N'3', N'0', N'0', N'3', N'2', N'2', N'000000033D', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Zinc, nitrato 4H2O', N'C', N'0', N'0', N'3', N'1', N'1', N'1', N'000000033E', 2, N'1', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Zinc, óxido ', N'C', N'0', N'0', N'3', N'1', N'1', N'1', N'000000033F', 2, N'1', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Zinc, sulfato 7H2O', N'C', N'0', N'0', N'0', N'2', N'1', N'1', N'000000033G', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Zinc, virutas', N'C', N'0', N'0', N'0', N'0', N'1', N'0', N'000000033H', 2, N'1', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Uranil, acetato ', N'C', N'0', N'0', N'0', N'3', N'4', N'3', N'000000034A', 2, N'0', 0, N'3')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'glacial', N'C', N'5', N'3', N'0', N'4', N'3', N'3', N'0000000A-1', 1, NULL, 0, NULL)
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'ácido cítrico ', N'C', N'2', N'0', N'0', N'2', N'0', N'0', N'0000000A10', 1, N'1', 0, N'3')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'ácido cromotrópico ', N'C', N'4', N'0', N'0', N'3', N'4', N'4', N'0000000A11', 1, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'ácido cloranílico ', N'C', N'4', N'0', N'0', N'4', N'4', N'5', N'0000000A12', 1, N'0', 0, N'4')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'ácido croranllico, sal de mercurio', N'C', N'4', N'0', N'0', N'4', N'5', N'5', N'0000000A13', 1, N'1', 0, N'5')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'ácido clorhídrico ', N'C', N'3', N'0', N'1', N'0', N'0', N'3', N'0000000A14', 1, N'1', 0, N'5')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'ácido esteárico', N'C', N'2', N'0', N'0', N'0', N'0', N'0', N'0000000A15', 1, N'0', 0, N'4')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'ácido EDTA (tritriplex III)', N'C', N'1', N'0', N'0', N'1', N'0', N'1', N'0000000A16', 1, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'ácido fenilarsénico ', N'C', N'4', N'0', N'0', N'5', N'5', N'5', N'0000000A17', 1, N'0', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'ácido ftálico ', N'C', N'2', N'0', N'0', N'3', N'4', N'4', N'0000000A18', 1, N'3', 0, N'2')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'ácido glutámico ', N'C', N'0', N'0', N'0', N'0', N'0', N'0', N'0000000A19', 1, N'2', 0, N'2')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'ácido ascórbico ', N'C', N'1', N'0', N'0', N'0', N'0', N'0', N'0000000A1A', 1, N'1', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'ácido oléico ', N'C', N'0', N'0', N'0', N'0', N'0', N'1', N'0000000A21', 1, N'1', 0, N'5')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'ácido ortofosfórico ', N'C', N'5', N'0', N'0', N'3', N'3', N'4', N'0000000A22', 1, N'0', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'ácido oxálico ', N'C', N'4', N'0', N'0', N'0', N'0', N'4', N'0000000A23', 1, N'0', 0, N'2')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'ácido peryódico ', N'C', N'5', N'0', N'5', N'5', N'4', N'4', N'0000000A24', 1, N'0', 0, N'3')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'ácido rodiozómico ', N'C', N'3', N'0', N'0', N'2', N'2', N'3', N'0000000A25', 1, N'5', 0, N'2')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'ácido rubentídrico ', N'C', N'2', N'0', N'0', N'3', N'4', N'4', N'0000000A26', 1, N'1', 0, N'2')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'ácido sulfanílico', N'C', N'3', N'0', N'0', N'3', N'3', N'3', N'0000000A27', 1, N'1', 0, N'3')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'ácido 5-sulfosalicílico 2H2O', N'C', N'4', N'0', N'0', N'4', N'4', N'4', N'0000000A28', 1, N'1', 0, N'2')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'ácido tartárico ', N'C', N'3', N'0', N'0', N'4', N'3', N'3', N'0000000A30', 1, N'0', 0, N'4')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'ácido tioglicólico ', N'C', N'5', N'0', N'0', N'5', N'5', N'5', N'0000000A31', 1, N'0', 0, N'2')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'ácido fosfotungsténico', N'C', N'4', N'0', N'0', N'4', N'4', N'4', N'0000000A32', 1, N'1', 0, N'4')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'ácido tricloroacético', N'C', N'5', N'0', N'0', N'5', N'5', N'5', N'0000000A33', 1, N'2', 0, N'3')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'ácido difenil.amino sulfónico ', N'C', N'4', N'0', N'0', N'4', N'5', N'5', N'0000000A34', 1, N'2', 0, N'5')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'ácido 2-4 dicloro. Fenoxiacético', N'C', N'3', N'0', N'0', N'3', N'4', N'5', N'0000000A35', 1, N'2', 0, N'4')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'ácido láctico puro ', N'C', N'0', N'0', N'0', N'0', N'0', N'0', N'0000000A36', 1, N'0', 0, N'4')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'ácido-3-nitroftálico', N'C', N'4', N'0', N'0', N'3', N'4', N'4', N'0000000A37', 1, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'ácido fosfomolibdico ', N'C', N'5', N'0', N'0', N'4', N'5', N'5', N'0000000A40', 1, N'3', 0, N'3')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'1-10 fenantrolino (redox)', N'C', N'2', N'0', N'0', N'3', N'5', N'5', N'0000000I10', 1, N'3', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'azul de metileno ', N'C', N'0', N'0', N'0', N'0', N'0', N'4', N'0000000I11', 1, N'0', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Negro eriocromo T (p/ v metales)', N'C', N'0', N'0', N'0', N'2', N'0', N'2', N'0000000I12', 1, N'2', 0, N'3')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Púrpura de bromocresol ', N'C', N'1', N'0', N'0', N'2', N'2', N'2', N'0000000I13', 1, N'0', 0, N'5')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'púrpura de m-cresol ', N'C', N'3', N'0', N'0', N'2', N'2', N'2', N'0000000I14', 1, N'0', 0, N'5')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'rojo de bromofenol ', N'C', N'0', N'0', N'0', N'2', N'5', N'5', N'0000000I15', 1, N'0', 0, N'4')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'rojo congo ', N'C', N'0', N'0', N'0', N'1', N'5', N'5', N'0000000I16', 1, N'0', 0, N'5')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'rojo de cresol ', N'C', N'0', N'0', N'0', N'2', N'5', N'5', N'0000000I17', 1, N'0', 0, N'5')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'rojo de fenol ', N'C', N'0', N'0', N'0', N'0', N'4', N'4', N'0000000I18', 1, N'0', 0, N'5')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'rojo de metilo ', N'C', N'0', N'0', N'0', N'2', N'0', N'2', N'0000000I19', 1, N'0', 0, N'4')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'timolftaleína', N'C', N'1', N'0', N'0', N'2', N'3', N'3', N'0000000I21', 1, N'0', 0, N'4')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'tornalos puris', N'C', N'2', N'0', N'0', N'3', N'4', N'4', N'0000000I22', 1, N'0', 0, N'5')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Torina (p/ v sulfatos)', N'C', N'0', N'0', N'0', N'2', N'5', N'5', N'0000000I23', 1, N'0', 0, N'4')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Universal líquido ', N'C', N'0', N'0', N'0', N'1', N'4', N'4', N'0000000I24', 1, N'0', 0, N'5')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Verde de bromocresol ', N'C', N'0', N'0', N'0', N'1', N'3', N'3', N'0000000I25', 1, N'0', 0, N'5')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Violeta de pirocatequina ', N'C', N'2', N'0', N'0', N'4', N'4', N'4', N'0000000I26', 1, N'0', 0, N'5')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'rojo neutro ', N'C', N'1', N'0', N'0', N'2', N'2', N'0', N'0000000I29', 1, N'1', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Alcohol etílico ', N'C', N'0', N'3', N'0', N'0', N'0', N'0', N'0000000O10', 1, N'2', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Acetanilida', N'C', N'0', N'0', N'0', N'2', N'2', N'2', N'0000000O11', 1, N'1', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Alcohol isopropílico ', N'C', N'0', N'0', N'0', N'1', N'1', N'1', N'0000000O12', 1, N'3', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'almidón ', N'C', N'0', N'0', N'0', N'0', N'1', N'1', N'0000000O13', 1, N'1', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Anilina', N'C', N'0', N'0', N'0', N'0', N'5', N'5', N'0000000O14', 1, N'1', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Benceno ', N'C', N'0', N'0', N'0', N'2', N'0', N'4', N'0000000O17', 1, N'3', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Benceno, dinitro ', N'C', N'0', N'2', N'0', N'3', N'5', N'5', N'0000000O18', 1, N'2', 0, N'2')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Nitrobenceno ', N'C', N'0', N'4', N'0', N'3', N'0', N'3', N'0000000O19', 1, N'2', 0, N'4')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'anhidrido acético ', N'C', N'4', N'0', N'0', N'3', N'3', N'3', N'0000000O1A', 1, N'3', 0, N'3')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'1,4-Diclorobenceno ', N'C', N'0', N'3', N'0', N'1', N'3', N'3', N'0000000O20', 1, N'3', 0, N'3')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Bencina (éter de petróleo)', N'C', N'0', N'2', N'0', N'3', N'2', N'4', N'0000000O21', 1, N'5', 0, N'3')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Benzofenona', N'C', N'0', N'3', N'0', N'2', N'3', N'3', N'0000000O22', 1, N'2', 0, N'3')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Bifenilo ', N'C', N'0', N'0', N'0', N'1', N'0', N'2', N'0000000O23', 1, N'1', 0, N'3')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Carburo de calcio ', N'C', N'0', N'2', N'0', N'2', N'3', N'3', N'0000000O24', 1, N'3', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Ciclohexano', N'C', N'0', N'2', N'0', N'1', N'3', N'3', N'0000000O25', 1, N'3', 0, N'3')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Ciclohexeno', N'C', N'0', N'3', N'0', N'2', N'4', N'4', N'0000000O26', 1, N'2', 0, N'3')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Ciclopentanona', N'C', N'0', N'2', N'0', N'2', N'3', N'3', N'0000000O27', 1, N'4', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Cisteina', N'C', N'0', N'0', N'0', N'2', N'4', N'4', N'0000000O28', 1, N'3', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Acetona Industrial', N'C', N'0', N'0', N'0', N'3', N'0', N'4', N'0000000O2A', 1, N'3', 0, N'4')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'dietilamina', N'C', N'1', N'0', N'0', N'0', N'4', N'4', N'0000000O30', 1, N'5', 0, N'4')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Difenilamina ', N'C', N'0', N'0', N'0', N'3', N'5', N'5', N'0000000O31', 1, N'4', 0, N'3')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'2,5 dimetilamina', N'C', N'4', N'2', N'0', N'4', N'5', N'3', N'0000000O32', 1, N'4', 0, N'5')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'n-n Dimetil, 1, 4-fenilendiamonio dicloruro ', N'C', N'0', N'2', N'0', N'3', N'5', N'5', N'0000000O33', 1, N'4', 0, N'4')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'2,4.dinitrofenilhidracina', N'C', N'0', N'0', N'0', N'2', N'3', N'3', N'0000000O34', 1, N'2', 0, N'5')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'1,5-difeniltiocarbazona ', N'C', N'0', N'0', N'0', N'2', N'4', N'4', N'0000000O35', 1, N'4', 0, N'3')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'acetato de etilo ', N'C', N'0', N'2', N'0', N'3', N'4', N'4', N'0000000O37', 1, N'5', 0, N'3')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'etil-metilcetona', N'C', N'0', N'3', N'0', N'3', N'4', N'4', N'0000000O38', 1, N'0', 0, N'1')
GO
print 'Processed 300 total records'
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Extrán alcalino ', N'C', N'4', N'0', N'0', N'4', N'4', N'3', N'0000000O39', 1, N'0', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Agar-Agar', N'C', N'1', N'0', N'0', N'1', N'1', N'1', N'0000000O3A', 1, N'1', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'fenilamina', N'C', N'0', N'0', N'0', N'3', N'4', N'4', N'0000000O40', 1, N'1', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'fenilhidracina', N'C', N'0', N'0', N'0', N'4', N'5', N'5', N'0000000O41', 1, N'1', 0, N'5')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'fenol ', N'C', N'4', N'0', N'0', N'4', N'5', N'5', N'0000000O42', 1, N'1', 0, N'5')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'fluoresceina', N'C', N'0', N'0', N'0', N'1', N'2', N'2', N'0000000O43', 1, N'1', 0, N'5')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Formaldehido ', N'C', N'0', N'3', N'0', N'3', N'4', N'4', N'0000000O44', 1, N'0', 0, N'3')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'fructosa ', N'C', N'0', N'0', N'0', N'0', N'0', N'0', N'0000000O45', 1, N'2', 0, N'5')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Fucsina', N'C', N'0', N'3', N'0', N'3', N'5', N'4', N'0000000O46', 1, N'2', 0, N'2')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Glicerina', N'C', N'0', N'0', N'0', N'1', N'0', N'1', N'0000000O47', 1, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Glicina', N'C', N'0', N'0', N'0', N'0', N'1', N'0', N'0000000O48', 1, N'1', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Glucosa (D+) anhidra', N'C', N'0', N'0', N'0', N'0', N'0', N'0', N'0000000O49', 1, N'0', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Alcohol alilico', N'C', N'0', N'2', N'0', N'3', N'0', N'3', N'0000000O4A', 1, N'3', 0, N'3')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'8-hidroxiquinolina', N'C', N'0', N'0', N'0', N'2', N'4', N'4', N'0000000O51', 1, N'2', 0, N'5')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'n-hexano puro ', N'C', N'0', N'2', N'0', N'1', N'1', N'1', N'0000000O52', 1, N'5', 0, N'3')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'I-hexano ', N'C', N'0', N'4', N'0', N'2', N'4', N'4', N'0000000O53', 1, N'5', 0, N'2')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'lactosa', N'C', N'0', N'0', N'0', N'0', N'0', N'0', N'0000000O54', 1, N'5', 0, N'5')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'maltosa', N'C', N'0', N'0', N'0', N'0', N'0', N'0', N'0000000O55', 1, NULL, 0, NULL)
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'alcanfor', N'C', N'0', N'2', N'3', N'2', N'2', N'2', N'0000000O56', 1, N'1', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'naftaleno (naftalina)', N'C', N'0', N'0', N'0', N'2', N'0', N'4', N'0000000O57', 1, N'3', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'2-naftol', N'C', N'0', N'0', N'0', N'2', N'0', N'2', N'0000000O58', 1, N'2', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'ninhidrina', N'C', N'0', N'0', N'0', N'3', N'4', N'4', N'0000000O59', 1, N'1', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'alcohol tet-amilico (2 metil, 2 butamol)', N'C', N'0', N'0', N'0', N'2', N'2', N'2', N'0000000O5A', 1, N'3', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'1-nitroso, 2-naftol ', N'C', N'0', N'3', N'0', N'1', N'2', N'3', N'0000000O60', 1, N'1', 0, N'3')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'parafina sólida ', N'C', N'0', N'4', N'0', N'0', N'0', N'4', N'0000000O61', 1, N'5', 0, N'5')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'pirogalol ', N'C', N'0', N'2', N'0', N'4', N'5', N'5', N'0000000O62', 1, N'4', 0, N'3')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'resoncinol ', N'C', N'0', N'2', N'0', N'3', N'5', N'5', N'0000000O63', 1, N'1', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'rodamina', N'C', N'0', N'2', N'0', N'3', N'5', N'5', N'0000000O64', 1, N'2', 0, N'5')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'sacarosa', N'C', N'0', N'0', N'0', N'0', N'0', N'0', N'0000000O65', 1, N'2', 0, N'5')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'silicagel (p/cromatografía)', N'C', N'0', N'2', N'0', N'0', N'1', N'1', N'0000000O66', 1, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'1,(2 teonidil) 3-3-3 trifluoroacetona', N'C', N'0', N'2', N'0', N'3', N'4', N'4', N'0000000O68', 1, N'4', 0, N'3')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Tierra de diatomea silicea ', N'C', N'0', N'2', N'0', N'0', N'1', N'1', N'0000000O69', 1, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'timol, cristalino ', N'C', N'4', N'1', N'0', N'4', N'5', N'5', N'0000000O70', 1, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'tioacetamida', N'C', N'0', N'3', N'0', N'3', N'5', N'4', N'0000000O71', 1, N'1', 0, N'5')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'tiourea', N'C', N'0', N'2', N'0', N'2', N'4', N'4', N'0000000O72', 1, N'3', 0, N'4')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'tolueno ', N'C', N'0', N'3', N'0', N'3', N'4', N'5', N'0000000O73', 1, N'1', 0, N'5')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'schifs, reactivo ', N'C', N'0', N'0', N'0', N'1', N'3', N'2', N'0000000O75', 1, NULL, 0, NULL)
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Urea', N'C', N'0', N'0', N'0', N'1', N'0', N'1', N'0000000O76', 1, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'verde de malaquita para microscopia', N'C', N'4', N'3', N'0', N'4', N'5', N'4', N'0000000O77', 1, N'1', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'xilol', N'C', N'0', N'1', N'0', N'2', N'4', N'4', N'0000000O78', 1, N'1', 0, N'3')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'l-tirosina', N'C', N'0', N'0', N'0', N'1', N'0', N'0', N'0000000O79', 1, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'mioinosita', N'C', N'0', N'0', N'0', N'1', N'1', N'1', N'0000000O81', 1, N'1', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'tiaminio-dicloruro ', N'C', N'0', N'0', N'0', N'1', N'1', N'0', N'0000000O82', 1, N'0', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'pantotenato de calcio concentrado ', N'C', N'0', N'0', N'0', N'0', N'1', N'0', N'0000000O84', 1, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'triclorofluoroatetano', N'C', N'0', N'1', N'0', N'1', N'4', N'4', N'0000000O85', 1, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'iso-butanol', N'C', N'0', N'2', N'0', N'1', N'1', N'2', N'0000000O8B', 1, N'3', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'2-mercaptobentiazol ', N'C', NULL, NULL, NULL, NULL, NULL, NULL, N'0000000R10', 1, N'0', 0, N'5')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Morina', N'C', NULL, NULL, NULL, NULL, NULL, NULL, N'0000000R11', 1, NULL, 0, NULL)
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Nitrón', N'C', NULL, NULL, NULL, NULL, NULL, NULL, N'0000000R12', 1, NULL, 0, NULL)
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Quinaldínico, ácido ', N'C', NULL, NULL, NULL, NULL, NULL, NULL, N'0000000R13', 1, NULL, 0, NULL)
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'salicilaldoxima', N'C', NULL, NULL, NULL, NULL, NULL, NULL, N'0000000R14', 1, NULL, 0, NULL)
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Sulfonazo III', N'C', NULL, NULL, NULL, NULL, NULL, NULL, N'0000000R15', 1, NULL, 0, NULL)
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Tionalida', N'C', NULL, NULL, NULL, NULL, NULL, NULL, N'0000000R16', 1, NULL, 0, NULL)
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'3,4 - Toluenoditiol', N'C', NULL, NULL, NULL, NULL, NULL, NULL, N'0000000R17', 1, NULL, 0, NULL)
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Vanadoz', N'C', NULL, NULL, NULL, NULL, NULL, NULL, N'0000000R18', 1, NULL, 0, NULL)
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'alcohol n-propílico (I-popanol)', N'C', N'0', N'0', N'0', N'3', N'3', N'3', N'000000-111', 1, N'3', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'alcohol isobutílico ', N'C', N'0', N'0', N'0', N'1', N'1', N'1', N'000000-11A', 1, N'3', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Bromobenzol ', N'C', N'0', N'0', N'0', N'2', N'4', N'4', N'000000-23B', 1, N'2', 0, N'3')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Amonio, cerico nitrato', N'C', N'0', N'0', N'0', N'2', N'1', N'2', N'0000002D-1', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Amonio, peroxidisulfato', N'C', N'0', N'0', N'3', N'2', N'4', N'3', N'0000002I-1', 2, N'0', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Potasio, nitrato ', N'C', N'0', N'0', N'3', N'1', N'2', N'1', N'00000030NI', 2, N'0', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Disodio, fosfato monohidrógenado 12H2O', N'C', N'0', N'0', N'0', N'2', N'0', N'0', N'00000031NI', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'etilo ceto-acetato, sal sódica', N'C', N'0', N'0', N'0', N'4', N'4', N'4', N'000000-37A', 1, N'4', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'D(+) Galactosa, anhidra', N'C', N'0', N'0', N'0', N'0', N'0', N'0', N'000000-46A', 1, N'3', 0, N'5')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Bario, acetato', N'C', N'0', N'0', N'0', N'2', N'0', N'2', N'0000006A-1', 2, N'1', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'ácido adípico ', N'C', N'1', N'1', N'0', N'3', N'4', N'4', N'000000A-11', 1, N'4', 0, N'2')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'ácido EDTA (tritriplex II)', N'C', N'1', N'0', N'0', N'1', N'0', N'1', N'000000A161', 1, N'0', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'ácido fórmico ', N'C', N'3', N'0', N'0', N'5', N'4', N'4', N'000000A17A', 1, N'1', 0, N'5')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'ácido nítrico ', N'C', N'5', N'0', N'0', N'4', N'0', N'4', N'000000A-20', 1, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'ácido picrico ', N'C', N'3', N'1', N'0', N'3', N'4', N'4', N'000000A241', 1, N'2', 0, N'3')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'ácido sulfúrico ', N'C', N'5', N'0', N'0', N'0', N'0', N'3', N'000000A-29', 1, N'2', 0, N'4')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'ácido tannicc', N'C', N'3', N'0', N'0', N'3', N'4', N'4', N'000000A291', 1, N'0', 0, N'5')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'ácido m-tóluico (3 metiloenzoico)', N'C', N'3', N'0', N'0', N'3', N'4', N'4', N'000000A-38', 1, NULL, 0, NULL)
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'ácido amido-sulfónico', N'C', N'3', N'0', N'0', N'3', N'4', N'4', N'000000A-39', 1, N'1', 0, N'3')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'ácido maleico', N'C', N'0', N'0', N'0', N'0', N'0', N'0', N'000000A-41', 1, N'3', 0, N'4')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'ácido clorosulfonico', N'C', N'5', N'0', N'0', N'5', N'5', N'5', N'000000A-42', 1, N'0', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'ácido laurico ', N'C', N'1', N'0', N'0', N'3', N'0', N'1', N'000000A-43', 1, N'2', 0, N'5')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'ácido benzílico ', N'C', N'2', N'0', N'0', N'2', N'3', N'3', N'000000A-5A', 1, N'1', 0, N'2')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'ácido butrico ', N'C', N'5', N'3', N'0', N'4', N'4', N'3', N'000000A-7A', 1, N'0', 0, N'3')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'mixto 5 (p/ v amoniáco)', N'C', N'2', N'0', N'0', N'2', N'3', N'4', N'000000I101', 1, N'1', 0, N'5')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Naranja de metilo ', N'C', N'0', N'0', N'0', N'0', N'0', N'2', N'000000I111', 1, N'2', 0, N'3')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Negro Azulado de eriocromo ', N'C', N'3', N'0', N'0', N'3', N'4', N'4', N'000000I121', 1, N'1', 0, N'2')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'tetrationato cristal violeta. P. Micro. ', N'C', N'0', N'0', N'0', N'1', N'2', N'2', N'000000I201', 1, N'0', 0, N'3')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'alcohol etiílico 70%', N'C', N'0', N'2', N'0', N'1', N'2', N'2', N'000000O101', 1, N'4', 0, N'3')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Alcohol absoluto anhidro ', N'C', N'0', N'0', N'0', N'0', N'2', N'2', N'000000O10A', 1, N'3', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'alcohol metílico ', N'C', N'0', N'0', N'0', N'0', N'0', N'3', N'000000O-11', 1, N'2', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Acetaminofen ', N'C', N'0', N'0', N'0', N'0', N'1', N'1', N'000000O111', 1, N'1', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'azucar glass', N'C', N'0', N'0', N'0', N'0', N'0', N'0', N'000000O-15', 1, N'1', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'acetofenona', N'C', NULL, NULL, NULL, NULL, NULL, NULL, N'000000O211', 1, NULL, 0, NULL)
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Bromobenceno ', N'C', N'0', N'2', N'0', N'3', N'4', N'5', N'000000O23A', 1, N'5', 0, N'3')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'cloroformo ', N'C', N'0', N'0', N'0', N'2', N'4', N'4', N'000000O-29', 1, N'1', 0, N'4')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'P-dioxano (1-4 Dioxano) ', N'C', N'0', N'3', N'0', N'3', N'4', N'4', N'000000O30A', 1, N'3', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'eter etílico ', N'C', N'0', N'3', N'0', N'3', N'4', N'3', N'000000O-36', 1, N'4', 0, N'4')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'extrán neutro ', N'C', N'0', N'0', N'0', N'3', N'4', N'3', N'000000O39A', 1, N'1', 0, N'2')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'formalina', N'C', N'4', N'0', N'0', N'5', N'5', N'5', N'000000O44A', 1, N'4', 0, N'2')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'D(+)- Glucosa (monohidratada)', N'C', N'0', N'0', N'0', N'0', N'0', N'0', N'000000O49A', 1, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'n-heptano', N'C', N'0', N'3', N'0', N'3', N'4', N'4', N'000000O51A', 1, N'0', 0, N'2')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'1-naftol ', N'C', N'3', N'0', N'0', N'2', N'0', N'4', N'000000O58A', 1, N'1', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'octanol (1) puro ', N'C', N'0', N'2', N'0', N'3', N'4', N'4', N'000000O60B', 1, N'3', 0, N'4')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Parafina líquida', N'C', N'0', N'4', N'0', N'0', N'0', N'4', N'000000O61A', 1, N'3', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'piridina', N'C', N'0', N'3', N'0', N'3', N'4', N'4', N'000000O61B', 1, N'1', 0, N'3')
GO
print 'Processed 400 total records'
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'silicagel con indicador de humedad ', N'C', N'0', N'2', N'0', N'0', N'1', N'1', N'000000O66A', 1, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'CCL4', N'C', N'0', N'1', N'0', N'3', N'5', N'5', N'000000O-67', 1, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'violeta de metilo para microscopia', N'C', N'0', N'1', N'0', N'3', N'3', N'3', N'000000O771', 1, N'3', 0, N'5')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'clorhidrato de piridoxina', N'C', N'0', N'1', N'0', N'0', N'0', N'0', N'000000O-80', 1, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'dicloro etano ', N'C', N'0', N'3', N'0', N'2', N'4', N'4', N'000000O-86', 1, N'1', 0, N'5')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'caolín ', N'C', N'0', N'0', N'0', N'0', N'0', N'0', N'000000O-87', 1, N'5', 0, N'3')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'n-pentano ', N'C', N'0', N'3', N'0', N'0', N'4', N'4', N'000000O-88', 1, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'sulfidógeno ', N'C', N'0', N'0', N'0', N'3', N'4', N'4', N'000000O-89', 1, N'4', 0, N'3')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Cafeina', N'C', N'0', N'0', N'0', N'0', N'0', N'0', N'000000O-90', 1, N'1', 0, N'3')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'yodoetano ', N'C', N'0', N'2', N'0', N'3', N'4', N'3', N'000000O-91', 1, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'1-bromonaftaleno ', N'C', N'0', N'0', N'0', N'3', N'2', N'2', N'000000O-94', 1, N'3', 0, N'3')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'cera de abejas', N'C', N'0', N'1', N'0', N'1', N'4', N'4', N'000000O-96', 1, N'2', 0, N'3')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'sodio, lauril salfate, Base de champoo', N'C', N'0', N'0', N'0', N'0', N'0', N'0', N'000000O-97', 1, N'1', 0, N'4')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'lanolina', N'C', N'0', N'1', N'0', N'3', N'3', N'3', N'000000O-98', 1, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'2-octanol ', N'C', N'0', N'0', N'0', N'0', N'0', N'0', N'000000O-99', 1, N'1', 0, N'2')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Cobre, polfo fino', N'C', N'0', N'0', N'0', N'2', N'1', N'2', N'0000014B-1', 2, N'1', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Cobre, nitrato 2.5H2O', N'C', N'0', N'0', N'1', N'2', N'1', N'2', N'0000014F-1', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Hierro III, cloruro sublimado ', N'C', N'0', N'0', N'0', N'2', N'0', N'1', N'0000021D-1', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'1-Bromo-4-Notrobenzoeno', N'C', N'0', N'0', N'0', N'3', N'4', N'4', N'00000-23A1', 1, N'2', 0, N'3')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Litio ', N'C', N'0', N'5', N'0', N'3', N'3', N'3', N'0000023A-1', 2, N'4', 0, N'2')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Litio, nitrato ', N'C', N'0', N'0', N'2', N'2', N'1', N'1', N'0000023B-1', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Magnesio, carbonato ', N'C', N'0', N'0', N'0', N'1', N'0', N'1', N'0000024E-1', 2, N'1', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Magnesio, sulfato polvo anhidrido ', N'C', N'0', N'0', N'0', N'2', N'1', N'2', N'0000024H-1', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'clorobenceno ', N'C', N'0', N'2', N'0', N'3', N'4', N'4', N'00000-2811', 1, N'4', 0, N'3')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Bisulfato de potasio ', N'C', N'0', N'0', N'0', N'3', N'2', N'1', N'0000030B-1', 2, N'0', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Potasio, bromito ', N'C', N'0', N'0', N'2', N'1', N'2', N'1', N'0000030B-2', 2, N'0', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Potasio, hidrogenocarbonato ', N'C', N'0', N'0', N'0', N'2', N'2', N'2', N'0000030D-1', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'disulfato de potasio ', N'C', N'0', N'0', N'0', N'3', N'1', N'2', N'0000030I-1', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Fosfato de tripotasio 7H2O', N'C', N'0', N'0', N'0', N'2', N'0', N'1', N'0000030J-1', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Potasio, hidrogenoftalato ', N'C', N'0', N'0', N'0', N'1', N'1', N'1', N'0000030L-1', 2, N'1', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Potasio, hidrogenofosfato ', N'C', N'0', N'0', N'0', N'1', N'1', N'1', N'0000030L-2', 2, N'1', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Potasio hidrogenotartrato', N'C', N'0', N'0', N'0', N'1', N'1', N'1', N'0000030L-3', 2, N'1', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'sodio, sulfato 10H2O', N'C', N'0', N'0', N'0', N'2', N'0', N'2', N'0000031A-1', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Sodio, acetato trihidratado ', N'C', N'0', N'0', N'0', N'1', N'0', N'1', N'0000031B-1', 2, N'1', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Sodio, sulfitoandhidro ', N'C', N'0', N'0', N'0', N'2', N'2', N'2', N'0000031C-1', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Sodio, brohidruro ', N'C', N'0', N'0', N'0', N'3', N'2', N'2', N'0000031D-1', 2, N'4', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Sodio, sulfuro 9 H2O', N'C', N'0', N'0', N'0', N'3', N'1', N'1', N'0000031E-1', 2, N'1', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Sodio, tetrafenilborato', N'C', N'0', N'0', N'0', N'2', N'2', N'2', N'0000031F-1', 2, N'1', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Glutamato Monosodico', N'C', NULL, NULL, NULL, NULL, NULL, NULL, N'0000031G-1', 2, NULL, 0, NULL)
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Sodio, carbonato ácido (grado industrial)', N'C', N'0', N'0', N'0', N'1', N'0', N'1', N'0000031H-1', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Sodio, Tricitrato 2H2O', N'C', N'0', N'0', N'0', N'1', N'1', N'1', N'0000031I-1', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Sodio, yoduro ', N'C', N'0', N'0', N'0', N'2', N'1', N'1', N'0000031J-1', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Sodio, cromato 4H2O', N'C', N'0', N'0', N'0', N'3', N'2', N'2', N'0000031L-1', 2, N'0', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Sodio, dicromato 2H2O', N'C', N'0', N'0', N'2', N'3', N'2', N'2', N'0000031L-2', 2, N'0', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'sodio fosfato tribásico ', N'C', N'0', N'0', N'0', N'2', N'1', N'1', N'0000031M-1', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Sodio, hipoclorito ', N'C', N'0', N'0', N'0', N'1', N'1', N'1', N'0000031U-1', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'sodio, molibdato anhidro', N'C', N'0', N'0', N'0', N'3', N'2', N'1', N'0000031V-1', 2, N'0', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Zinc IV, cloruro ', N'C', N'3', N'0', N'0', N'3', N'2', N'2', N'0000033D-1', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'vaselina líquida', N'C', N'0', N'1', N'0', N'0', N'1', N'1', N'00000-76A1', 1, N'1', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'acido 4-nitrobenzoico', N'C', NULL, NULL, NULL, NULL, NULL, NULL, N'00000A-371', 1, N'0', 0, N'3')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'ácido 2-benzoilbenzoico ', N'C', N'0', N'1', N'0', N'3', N'3', N'3', N'00000A-6-A', 1, N'0', 0, N'3')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Naranja II para microscopia', N'C', N'4', N'0', N'0', N'3', N'3', N'3', N'00000I-111', 1, N'1', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'verde de metilo ', N'C', N'5', N'0', N'0', N'5', N'5', N'5', N'00000I-251', 1, N'0', 0, N'3')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Eosin B', N'C', N'0', N'0', N'0', N'1', N'3', N'2', N'00000I-8-A', 1, N'0', 0, N'4')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'propilenglicol ', N'C', N'0', N'3', N'0', N'2', N'4', N'4', N'00000O-100', 1, N'1', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'dextrina', N'C', N'0', N'0', N'0', N'0', N'0', N'1', N'00000O-101', 1, N'3', 0, N'2')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'amida de coco o dietanolomida', N'C', N'0', N'0', N'0', N'2', N'2', N'2', N'00000O-102', 1, N'1', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'carbopol', N'C', N'0', N'0', N'0', N'2', N'2', N'2', N'00000O-103', 1, N'0', 0, N'2')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'vainillina', N'C', N'0', N'0', N'0', N'2', N'3', N'3', N'00000O-104', 1, N'0', 0, N'2')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'aceite mineral ', N'C', N'0', N'0', N'0', N'2', N'2', N'2', N'00000O-105', 1, N'0', 0, N'2')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Sulfanilamida', N'C', N'0', N'1', N'0', N'0', N'0', N'0', N'00000O-106', 1, N'1', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Ibuprofen Sodium Salt', N'C', NULL, NULL, NULL, NULL, NULL, NULL, N'00000O-107', 1, N'1', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Eugenol', N'C', NULL, NULL, NULL, NULL, NULL, NULL, N'00000O-108', 1, NULL, 0, NULL)
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Saliciato de metilo', N'C', NULL, NULL, NULL, NULL, NULL, NULL, N'00000O-109', 1, NULL, 0, NULL)
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Aspirina, polvo ', N'C', N'0', N'0', N'0', N'1', N'3', N'5', N'00000O-14A', 1, N'2', 0, N'3')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Benzoilo peroxido ', N'C', N'0', N'0', N'0', N'2', N'2', N'2', N'00000O-20A', 1, N'4', 0, N'3')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Benzaldehido', N'C', N'0', N'3', N'0', N'3', N'4', N'3', N'00000O-21A', 1, N'2', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Benzonitrilo', N'C', N'0', N'3', N'0', N'3', N'5', N'5', N'00000O-22A', 1, N'2', 0, N'3')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Ciclohexanol ', N'C', N'0', N'2', N'0', N'1', N'2', N'2', N'00000O-25A', 1, N'3', 0, N'3')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'2-clorobutano ', N'C', N'0', N'2', N'0', N'2', N'3', N'3', N'00000O28-2', 1, N'5', 0, N'3')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'diclorometano ', N'C', N'0', N'0', N'0', N'3', N'5', N'5', N'00000O-29A', 1, N'4', 0, N'5')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Difenilcarbonhidrozina', N'C', N'0', N'3', N'0', N'3', N'5', N'5', N'00000O-311', 1, N'2', 0, N'5')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'disulfuro de carbono ', N'C', N'0', N'3', N'0', N'4', N'5', N'5', N'00000O-35A', 1, N'0', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'etilenglicol ', N'C', N'0', N'0', N'0', N'1', N'4', N'3', N'00000O-381', 1, N'5', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'anhidrido ftálico ', N'C', N'5', N'3', N'0', N'5', N'5', N'4', N'00000O-45A', 1, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Heptanol ', N'C', N'0', N'2', N'0', N'2', N'4', N'4', N'00000O-51B', 1, N'5', 0, N'5')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'1-Hexeno ', N'C', N'1', N'3', N'0', N'2', N'3', N'3', N'00000O-52A', 1, N'3', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'1-hexino ', N'C', N'0', N'3', N'0', N'2', N'3', N'3', N'00000O-52B', 1, N'3', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'iso-butanol ', N'C', N'4', N'4', N'0', N'4', N'5', N'4', N'00000O-52C', 1, N'5', 0, N'5')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Lecitina de soya', N'C', NULL, NULL, NULL, NULL, NULL, NULL, N'00000O54-1', 1, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'metilparabeno ', N'C', N'0', N'0', N'0', N'1', N'2', N'2', N'00000O-55A', 1, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Azo violet ', N'C', N'0', N'0', N'0', N'3', N'4', N'4', N'00000O-59A', 1, N'1', 0, N'3')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'cupferron ', N'C', N'0', N'0', N'0', N'3', N'5', N'5', N'00000O-601', 1, N'3', 0, N'2')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'p-cresol', N'C', N'5', N'3', N'0', N'4', N'5', N'5', N'00000O-60A', 1, N'1', 0, N'5')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Phenacetin', N'C', N'0', N'1', N'0', N'2', N'2', N'2', N'00000O-611', 1, N'3', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'pirocatecol ', N'C', N'0', N'3', N'0', N'3', N'5', N'5', N'00000O-61C', 1, N'4', 0, N'3')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'pirocatequina', N'C', N'0', N'2', N'0', N'3', N'4', N'5', N'00000O-62A', 1, N'2', 0, N'4')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Tetrahidrofurano ', N'C', N'0', N'3', N'0', N'3', N'4', N'5', N'00000O-67A', 1, N'1', 0, N'5')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'tierra silica G (p/ cromatografía en capa fina)', N'C', N'0', N'2', N'0', N'0', N'1', N'1', N'00000O-68A', 1, N'2', 0, N'5')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Salicilamida', N'C', NULL, NULL, NULL, NULL, NULL, NULL, N'00000O-74A', 1, N'1', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Stycol ', N'C', N'2', N'1', N'0', N'1', N'2', N'2', N'00000O-75A', 1, N'0', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'D(+)-Xilosa', N'C', N'0', N'0', N'0', N'0', N'1', N'0', N'00000O-78A', 1, N'1', 0, N'4')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Sodio, sulfato áciodo 1H2O', N'C', N'2', N'0', N'0', N'1', N'1', N'1', N'000031B-11', 2, N'0', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Sodio, sulfito ácido (bisulfito)', N'C', N'0', N'0', N'0', N'4', N'4', N'4', N'000031D-11', 2, N'0', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Bisulfato de sodio', N'C', N'2', N'0', N'0', N'1', N'1', N'1', N'000031D-12', 2, N'0', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Sodio, tiosulfato ', N'C', N'0', N'0', N'0', N'2', N'0', N'2', N'000031G-11', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Trisodio, fosfato 12H2O', N'C', N'2', N'0', N'0', N'2', N'1', N'1', N'000031H-11', 2, N'0', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Sodio y amonio, monofosfato 4H2O', N'C', N'0', N'0', N'0', N'2', N'0', N'1', N'000031I-11', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Tugstato de sodio 2H2O', N'C', N'0', N'0', N'0', N'2', N'0', N'1', N'000031L-11', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'fosfato de sodio dibasico ', N'C', N'0', N'0', N'0', N'2', N'0', N'0', N'000031NI-1', 2, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'ácido miristico ', N'C', N'1', N'0', N'0', N'0', N'0', N'0', N'0000A-19-A', 1, N'0', 0, N'0')
GO
print 'Processed 500 total records'
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'ácido mandelico ', N'C', N'4', N'0', N'0', N'4', N'5', N'5', N'0000A-20-A', 1, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'ácido perclorico ', N'C', N'4', N'0', N'0', N'3', N'3', N'2', N'0000A-2411', 1, N'5', 0, N'3')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'ácido salicílico ', N'C', N'5', N'0', N'0', N'3', N'3', N'3', N'0000A-26-A', 1, N'1', 0, N'3')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'ácido succinico ', N'C', N'4', N'0', N'0', N'3', N'3', N'3', N'0000A-27-A', 1, N'2', 0, N'3')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'2-bromobutano ', N'C', N'0', N'0', N'0', N'2', N'2', N'2', N'0000O-17-A', 1, N'4', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Bromuro de Bencilo ', N'C', N'0', N'0', N'0', N'2', N'1', N'2', N'0000O-18-B', 1, N'3', 0, N'3')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Alcohol 4-nitrobencilico ', N'C', N'0', N'0', N'0', N'2', N'2', N'3', N'0000O-19-A', 1, N'3', 0, N'4')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'2-Butanona', N'C', N'0', N'2', N'0', N'3', N'3', N'4', N'0000O-2311', 1, N'4', 0, N'3')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Ciclohexanona', N'C', N'0', N'2', N'0', N'2', N'3', N'4', N'0000O-26-A', 1, N'4', 0, N'4')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'1-clorobutano ', N'C', N'0', N'2', N'0', N'2', N'2', N'3', N'0000O-28-1', 1, N'1', 0, N'1')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'dicloroetano', N'C', N'0', N'2', N'0', N'3', N'5', N'5', N'0000O-29-B', 1, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'dioxano ', N'C', N'0', N'2', N'0', N'3', N'4', N'4', N'0000O-34-A', 1, N'3', 0, N'2')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Hidrocloruro de hidroxilamina', N'C', N'4', N'2', N'0', N'4', N'5', N'4', N'0000O-50-A', 1, N'0', 0, N'0')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'N-octano ', N'C', N'0', N'3', N'0', N'3', N'5', N'4', N'0000O-60B1', 1, N'2', 0, N'2')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'propilparabeno ', N'C', N'0', N'0', N'0', N'2', N'2', N'2', N'0000O-62A1', 1, N'3', 0, N'4')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'trietanolamina', N'C', N'0', N'0', N'0', N'2', N'0', N'2', N'0000O-73-A', 1, N'4', 0, N'4')
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Vaselina solida', N'C', N'0', N'1', N'0', N'0', N'1', N'1', N'0000O-76-A', 1, N'1', 0, N'1')
/****** Object:  StoredProcedure [dbo].[InsertarUbicacion]    Script Date: 11/22/2012 11:31:19 ******/
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
/****** Object:  StoredProcedure [dbo].[InsertarRol]    Script Date: 11/22/2012 11:31:19 ******/
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
/****** Object:  StoredProcedure [dbo].[InsertarProveedor]    Script Date: 11/22/2012 11:31:19 ******/
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
/****** Object:  Table [dbo].[Practica]    Script Date: 11/22/2012 11:31:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Practica](
	[Id_Practica] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](80) NOT NULL,
	[Id_Curso] [int] NOT NULL,
 CONSTRAINT [PK_Practica] PRIMARY KEY CLUSTERED 
(
	[Id_Practica] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Practica] ON
INSERT [dbo].[Practica] ([Id_Practica], [Nombre], [Id_Curso]) VALUES (1, N'Práctica 1', 1)
INSERT [dbo].[Practica] ([Id_Practica], [Nombre], [Id_Curso]) VALUES (2, N'Práctica 2', 1)
INSERT [dbo].[Practica] ([Id_Practica], [Nombre], [Id_Curso]) VALUES (3, N'Práctica 3', 1)
INSERT [dbo].[Practica] ([Id_Practica], [Nombre], [Id_Curso]) VALUES (4, N'Práctica 4', 1)
INSERT [dbo].[Practica] ([Id_Practica], [Nombre], [Id_Curso]) VALUES (5, N'Práctica 5', 1)
INSERT [dbo].[Practica] ([Id_Practica], [Nombre], [Id_Curso]) VALUES (6, N'Práctica 6', 1)
INSERT [dbo].[Practica] ([Id_Practica], [Nombre], [Id_Curso]) VALUES (7, N'Práctica 7', 1)
INSERT [dbo].[Practica] ([Id_Practica], [Nombre], [Id_Curso]) VALUES (8, N'Práctica 8', 1)
INSERT [dbo].[Practica] ([Id_Practica], [Nombre], [Id_Curso]) VALUES (9, N'Práctica 9', 1)
INSERT [dbo].[Practica] ([Id_Practica], [Nombre], [Id_Curso]) VALUES (10, N'Práctica 1', 2)
INSERT [dbo].[Practica] ([Id_Practica], [Nombre], [Id_Curso]) VALUES (11, N'Práctica 2', 2)
INSERT [dbo].[Practica] ([Id_Practica], [Nombre], [Id_Curso]) VALUES (12, N'Práctica 3', 2)
INSERT [dbo].[Practica] ([Id_Practica], [Nombre], [Id_Curso]) VALUES (13, N'Práctica 4', 2)
INSERT [dbo].[Practica] ([Id_Practica], [Nombre], [Id_Curso]) VALUES (14, N'Práctica 5', 2)
INSERT [dbo].[Practica] ([Id_Practica], [Nombre], [Id_Curso]) VALUES (15, N'Práctica 6', 2)
INSERT [dbo].[Practica] ([Id_Practica], [Nombre], [Id_Curso]) VALUES (16, N'Práctica 7', 2)
INSERT [dbo].[Practica] ([Id_Practica], [Nombre], [Id_Curso]) VALUES (17, N'Práctica 8', 2)
INSERT [dbo].[Practica] ([Id_Practica], [Nombre], [Id_Curso]) VALUES (18, N'Práctica 9', 2)
INSERT [dbo].[Practica] ([Id_Practica], [Nombre], [Id_Curso]) VALUES (19, N'Práctica 1', 3)
INSERT [dbo].[Practica] ([Id_Practica], [Nombre], [Id_Curso]) VALUES (20, N'Práctica 2', 3)
INSERT [dbo].[Practica] ([Id_Practica], [Nombre], [Id_Curso]) VALUES (21, N'Práctica 3', 3)
INSERT [dbo].[Practica] ([Id_Practica], [Nombre], [Id_Curso]) VALUES (22, N'Práctica 4', 3)
INSERT [dbo].[Practica] ([Id_Practica], [Nombre], [Id_Curso]) VALUES (23, N'Práctica 5', 3)
INSERT [dbo].[Practica] ([Id_Practica], [Nombre], [Id_Curso]) VALUES (24, N'Práctica 6', 3)
INSERT [dbo].[Practica] ([Id_Practica], [Nombre], [Id_Curso]) VALUES (25, N'Práctica 7', 3)
INSERT [dbo].[Practica] ([Id_Practica], [Nombre], [Id_Curso]) VALUES (26, N'Práctica 8', 3)
INSERT [dbo].[Practica] ([Id_Practica], [Nombre], [Id_Curso]) VALUES (27, N'Práctica 9', 3)
INSERT [dbo].[Practica] ([Id_Practica], [Nombre], [Id_Curso]) VALUES (28, N'Práctica 1', 4)
INSERT [dbo].[Practica] ([Id_Practica], [Nombre], [Id_Curso]) VALUES (29, N'Práctica 2', 4)
INSERT [dbo].[Practica] ([Id_Practica], [Nombre], [Id_Curso]) VALUES (30, N'Práctica 3', 4)
INSERT [dbo].[Practica] ([Id_Practica], [Nombre], [Id_Curso]) VALUES (31, N'Práctica 4', 4)
INSERT [dbo].[Practica] ([Id_Practica], [Nombre], [Id_Curso]) VALUES (32, N'Práctica 5', 4)
INSERT [dbo].[Practica] ([Id_Practica], [Nombre], [Id_Curso]) VALUES (33, N'Práctica 6', 4)
INSERT [dbo].[Practica] ([Id_Practica], [Nombre], [Id_Curso]) VALUES (34, N'Práctica 7', 4)
INSERT [dbo].[Practica] ([Id_Practica], [Nombre], [Id_Curso]) VALUES (35, N'Práctica 8', 4)
INSERT [dbo].[Practica] ([Id_Practica], [Nombre], [Id_Curso]) VALUES (36, N'Práctica 9', 4)
INSERT [dbo].[Practica] ([Id_Practica], [Nombre], [Id_Curso]) VALUES (37, N'Práctica 1', 5)
INSERT [dbo].[Practica] ([Id_Practica], [Nombre], [Id_Curso]) VALUES (38, N'Práctica 2', 5)
INSERT [dbo].[Practica] ([Id_Practica], [Nombre], [Id_Curso]) VALUES (39, N'Práctica 3', 5)
INSERT [dbo].[Practica] ([Id_Practica], [Nombre], [Id_Curso]) VALUES (40, N'Práctica 4', 5)
INSERT [dbo].[Practica] ([Id_Practica], [Nombre], [Id_Curso]) VALUES (41, N'Práctica 5', 5)
INSERT [dbo].[Practica] ([Id_Practica], [Nombre], [Id_Curso]) VALUES (42, N'Práctica 6', 5)
INSERT [dbo].[Practica] ([Id_Practica], [Nombre], [Id_Curso]) VALUES (43, N'Práctica 7', 5)
INSERT [dbo].[Practica] ([Id_Practica], [Nombre], [Id_Curso]) VALUES (44, N'Práctica 8', 5)
INSERT [dbo].[Practica] ([Id_Practica], [Nombre], [Id_Curso]) VALUES (45, N'Práctica 9', 5)
INSERT [dbo].[Practica] ([Id_Practica], [Nombre], [Id_Curso]) VALUES (46, N'Práctica 10', 5)
INSERT [dbo].[Practica] ([Id_Practica], [Nombre], [Id_Curso]) VALUES (47, N'Práctica 1', 6)
INSERT [dbo].[Practica] ([Id_Practica], [Nombre], [Id_Curso]) VALUES (48, N'Práctica 2', 6)
INSERT [dbo].[Practica] ([Id_Practica], [Nombre], [Id_Curso]) VALUES (49, N'Práctica 3', 6)
INSERT [dbo].[Practica] ([Id_Practica], [Nombre], [Id_Curso]) VALUES (50, N'Práctica 4', 6)
INSERT [dbo].[Practica] ([Id_Practica], [Nombre], [Id_Curso]) VALUES (51, N'Práctica 5', 6)
INSERT [dbo].[Practica] ([Id_Practica], [Nombre], [Id_Curso]) VALUES (52, N'Práctica 6', 6)
INSERT [dbo].[Practica] ([Id_Practica], [Nombre], [Id_Curso]) VALUES (54, N'Práctica 7', 6)
INSERT [dbo].[Practica] ([Id_Practica], [Nombre], [Id_Curso]) VALUES (55, N'Práctica 8', 6)
INSERT [dbo].[Practica] ([Id_Practica], [Nombre], [Id_Curso]) VALUES (56, N'Práctica 9', 6)
INSERT [dbo].[Practica] ([Id_Practica], [Nombre], [Id_Curso]) VALUES (57, N'Práctica 10', 6)
INSERT [dbo].[Practica] ([Id_Practica], [Nombre], [Id_Curso]) VALUES (58, N'Práctica 11', 6)
INSERT [dbo].[Practica] ([Id_Practica], [Nombre], [Id_Curso]) VALUES (59, N'Práctica 12', 6)
SET IDENTITY_INSERT [dbo].[Practica] OFF
/****** Object:  StoredProcedure [dbo].[ModificarUsuario]    Script Date: 11/22/2012 11:31:19 ******/
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
/****** Object:  StoredProcedure [dbo].[ModificarPermisos]    Script Date: 11/22/2012 11:31:19 ******/
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
/****** Object:  StoredProcedure [dbo].[ModificarHerramienta]    Script Date: 11/22/2012 11:31:19 ******/
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
/****** Object:  StoredProcedure [dbo].[ModificarEquipo]    Script Date: 11/22/2012 11:31:19 ******/
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
/****** Object:  StoredProcedure [dbo].[ModificarContraseña]    Script Date: 11/22/2012 11:31:19 ******/
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
/****** Object:  Table [dbo].[PerdidaProducto]    Script Date: 11/22/2012 11:31:19 ******/
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
	[Costo] [decimal](14, 3) NULL,
 CONSTRAINT [PK_AjustesProducto] PRIMARY KEY CLUSTERED 
(
	[Id_Perdida] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[InsertarProducto]    Script Date: 11/22/2012 11:31:19 ******/
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
/****** Object:  StoredProcedure [dbo].[BuscarUsuarios]    Script Date: 11/22/2012 11:31:19 ******/
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
/****** Object:  StoredProcedure [dbo].[BuscarCurso]    Script Date: 11/22/2012 11:31:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
Create PROCEDURE [dbo].[BuscarCurso]
	-- Parametros
	@Sede varchar (50),@Facultad varchar(50),@Carrera varchar(60)
AS

BEGIN TRY
	BEGIN TRAN
	Declare @IdSede int
	Declare @IdFacultad int
	Declare @IdCarrera int
	
	set @IdSede = (Select Id_Sede from Sede where Nombre = @Sede)
	set @IdFacultad = (SELECT Id_Facultad from Facultad where Nombre = @Facultad)
	set @IdCarrera = (SELECT Id_Carrera from Carrera where Nombre = @Carrera)
	
	Select Distinct Curso.Nombre, Curso.Id_Curso from Curso,DetalleSede 
	where DetalleSede.Id_Sede = @IdSede and Curso.Id_Curso = DetalleSede.Id_Curso 
	and DetalleSede.Id_Facultad = @IdFacultad and DetalleSede.Id_Carrera = @IdCarrera
	order by Curso.Id_Curso
	
COMMIT TRAN
END TRY
BEGIN CATCH
	IF @@TRANCOUNT > 0 ROLLBACK TRAN
	SELECT ERROR_MESSAGE()
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[BuscarContraseña]    Script Date: 11/22/2012 11:31:19 ******/
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
/****** Object:  StoredProcedure [dbo].[BuscarCarrera]    Script Date: 11/22/2012 11:31:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[BuscarCarrera]
	-- Parametros
	@Sede varchar (50),@Facultad varchar(50)
AS

BEGIN TRY
	BEGIN TRAN
	Declare @IdSede int
	Declare @IdFacultad int
	
	set @IdSede = (Select Id_Sede from Sede where Nombre = @Sede)
	set @IdFacultad = (SELECT Id_Facultad from Facultad where Nombre = @Facultad)
	
	Select Distinct Carrera.Nombre, Carrera.Id_Carrera from Carrera,DetalleSede 
	where DetalleSede.Id_Sede = @IdSede and Carrera.Id_Carrera = DetalleSede.Id_Carrera and DetalleSede.Id_Facultad = @IdFacultad
	order by Carrera.Id_Carrera
	
COMMIT TRAN
END TRY
BEGIN CATCH
	IF @@TRANCOUNT > 0 ROLLBACK TRAN
	SELECT ERROR_MESSAGE()
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[BuscarEquipoMod]    Script Date: 11/22/2012 11:31:19 ******/
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
/****** Object:  StoredProcedure [dbo].[BuscarEquipoDisponible]    Script Date: 11/22/2012 11:31:19 ******/
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
/****** Object:  StoredProcedure [dbo].[BuscarEquipo]    Script Date: 11/22/2012 11:31:19 ******/
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
/****** Object:  Table [dbo].[EntradaProducto]    Script Date: 11/22/2012 11:31:19 ******/
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
	[PrecioUnitario] [decimal](14, 3) NOT NULL,
	[Id_Usuario] [varchar](50) NOT NULL,
	[FechaCompra] [varchar](10) NOT NULL,
	[CantidadActual] [decimal](14, 3) NULL,
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
/****** Object:  StoredProcedure [dbo].[BuscarProducto]    Script Date: 11/22/2012 11:31:19 ******/
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
/****** Object:  StoredProcedure [dbo].[BuscarPractica]    Script Date: 11/22/2012 11:31:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[BuscarPractica]
	-- Parametros
	@Curso varchar (100)
AS

BEGIN TRY
	BEGIN TRAN
	Declare @IdCurso int
	
	set @IdCurso = (Select Id_Curso from Curso where Nombre = @Curso)
	
	Select Practica.Nombre, Practica.Id_Practica from Practica,Curso where Practica.Id_Curso = Curso.Id_Curso 
	and Curso.Id_Curso = @IdCurso
	order by Practica.Id_Practica
	
	
COMMIT TRAN
END TRY
BEGIN CATCH
	IF @@TRANCOUNT > 0 ROLLBACK TRAN
	SELECT ERROR_MESSAGE()
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[BuscarPermisos]    Script Date: 11/22/2012 11:31:19 ******/
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
/****** Object:  StoredProcedure [dbo].[BuscarHerramientaId]    Script Date: 11/22/2012 11:31:19 ******/
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
/****** Object:  StoredProcedure [dbo].[BuscarHerramienta]    Script Date: 11/22/2012 11:31:19 ******/
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
/****** Object:  StoredProcedure [dbo].[BuscarFacultad]    Script Date: 11/22/2012 11:31:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[BuscarFacultad]
	-- Parametros
	@Sede varchar (50)
AS

BEGIN TRY
	BEGIN TRAN
	Declare @IdSede int
	
	set @IdSede = (Select Id_Sede from Sede where Nombre = @Sede)
	
	Select Distinct Facultad.Nombre, Facultad.Id_Facultad from Facultad,DetalleSede where DetalleSede.Id_Sede = @IdSede 
	and Facultad.Id_Facultad = DetalleSede.Id_Facultad
	order by Facultad.Id_Facultad
	
COMMIT TRAN
END TRY
BEGIN CATCH
	IF @@TRANCOUNT > 0 ROLLBACK TRAN
	SELECT ERROR_MESSAGE()
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[InsertarUsuario]    Script Date: 11/22/2012 11:31:19 ******/
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
/****** Object:  StoredProcedure [dbo].[InsertarPermisos]    Script Date: 11/22/2012 11:31:19 ******/
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
/****** Object:  StoredProcedure [dbo].[InsertarHerramienta]    Script Date: 11/22/2012 11:31:19 ******/
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
/****** Object:  StoredProcedure [dbo].[InsertarEquipo]    Script Date: 11/22/2012 11:31:19 ******/
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
/****** Object:  Table [dbo].[UsuarioUbicacion]    Script Date: 11/22/2012 11:31:19 ******/
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
INSERT [dbo].[UsuarioUbicacion] ([Id_Usuario], [Id_Ubicacion]) VALUES (N'4449', N'A-8')
INSERT [dbo].[UsuarioUbicacion] ([Id_Usuario], [Id_Ubicacion]) VALUES (N'17766', N'A-8')
INSERT [dbo].[UsuarioUbicacion] ([Id_Usuario], [Id_Ubicacion]) VALUES (N'18971', N'A-8')
INSERT [dbo].[UsuarioUbicacion] ([Id_Usuario], [Id_Ubicacion]) VALUES (N'admin', N'A-8')
/****** Object:  Table [dbo].[PrestamoHerramienta]    Script Date: 11/22/2012 11:31:19 ******/
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
/****** Object:  Table [dbo].[PrestamoEquipo]    Script Date: 11/22/2012 11:31:19 ******/
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
/****** Object:  StoredProcedure [dbo].[Vencimiento]    Script Date: 11/22/2012 11:31:19 ******/
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
	CONVERT(date, FechaVencimiento,103) as FechaVencimiento ,CantidadActual as Unidades,Convert(varchar, Convert(decimal(14,3),CantidadActual*Medida.Cantidad)) + ' ' + Medida.Descripcion as Existencia, Ubicacion.Nombre as Ubicación
		from EntradaProducto,Producto,Medida,Ubicacion,UsuarioUbicacion where EntradaProducto.Presentacion = Medida.Id_Medida and Producto.Codigo = EntradaProducto.Id_Producto	and EntradaProducto.Id_Ubicacion = Ubicacion.Id_Ubicacion and CantidadActual > 0
		and UsuarioUbicacion.Id_Usuario = @Usuario and UsuarioUbicacion.Id_Ubicacion = Ubicacion.Id_Ubicacion 
	order by  FechaVencimiento 
		
	COMMIT TRAN
END TRY
BEGIN CATCH
	IF @@TRANCOUNT > 0 ROLLBACK TRAN
	SELECT ERROR_MESSAGE()
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[InsertarEntradaProducto]    Script Date: 11/22/2012 11:31:19 ******/
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
	@PrecioUnitario decimal (14,3),@IdUsuario varchar(50),@FechaCompra varchar(10), @Marca varchar(50), @Observaciones varchar(150),@IdProveedor varchar(15)
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
/****** Object:  StoredProcedure [dbo].[EquipoPrestado]    Script Date: 11/22/2012 11:31:19 ******/
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
/****** Object:  StoredProcedure [dbo].[BuscarEquipoPrestado]    Script Date: 11/22/2012 11:31:19 ******/
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
/****** Object:  StoredProcedure [dbo].[DevolucionEquipo]    Script Date: 11/22/2012 11:31:19 ******/
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
/****** Object:  StoredProcedure [dbo].[BuscarEntradaProducto]    Script Date: 11/22/2012 11:31:19 ******/
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
	Convert(varchar,Medida.Cantidad) +' ' + Medida.Descripcion as Presentación ,Convert(date,FechaVencimiento,103) as FechaVencimiento ,CantidadActual as Existencia
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
/****** Object:  Table [dbo].[SalidaProducto]    Script Date: 11/22/2012 11:31:19 ******/
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
	[Costo] [decimal](14, 3) NOT NULL,
	[Cantidad] [decimal](14, 3) NOT NULL,
	[CodCatedratico] [varchar](15) NULL,
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
/****** Object:  StoredProcedure [dbo].[PrestamosEquipo]    Script Date: 11/22/2012 11:31:19 ******/
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
/****** Object:  StoredProcedure [dbo].[InsertarSalidaProducto]    Script Date: 11/22/2012 11:31:19 ******/
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
	declare @contenido decimal (14,3)
	declare @costo decimal (14,3)
	declare @medida varchar(50)
	
	set @contenido = (select Medida.Cantidad from Medida,EntradaProducto where EntradaProducto.Presentacion = Medida.Id_Medida and EntradaProducto.Id_Entrada = @IdEntrada)
	set @costo = (select PrecioUnitario  from EntradaProducto where Id_Entrada = @IdEntrada)
	
	if(@tipo = 0)
	begin
		set @costo = round(@costo * @Cantidad,2,0)
		Update EntradaProducto set CantidadActual = CantidadActual - @Cantidad where Id_Entrada = @IdEntrada
		insert into SalidaProducto values (@Sede,@Facultad,@Curso,@Carrera,@Practica,@Alumnos,@costo,@Cantidad*@contenido,@CodCatedratico,@Ciclo,@IdUsuario,@Fecha,@IdEntrada,@Observaciones,@IdProducto)
	end
	else
	Begin
		set @costo = round((@Cantidad*@costo)/@contenido,2,0)
		update EntradaProducto set CantidadActual = ROUND(CantidadActual - (@Cantidad / @contenido),2,0) where Id_Entrada = @IdEntrada
		insert into SalidaProducto values (@Sede,@Facultad,@Curso,@Carrera,@Practica,@Alumnos,@costo,@Cantidad,@CodCatedratico,@Ciclo,@IdUsuario,@Fecha,@IdEntrada,@Observaciones,@IdProducto)
	end

	COMMIT TRAN
END TRY
BEGIN CATCH
	IF @@TRANCOUNT > 0 ROLLBACK TRAN
	SELECT ERROR_MESSAGE()
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[BuscarSalidaProducto]    Script Date: 11/22/2012 11:31:19 ******/
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
	
	Select Id_Salida, SalidaProducto.Id_Producto,Producto.Nombre, Practica,FechaEgreso,Convert(varchar,SalidaProducto.Cantidad) + ' ' + Medida.Descripcion as Cantidad,CONVERT(varchar,Convert(decimal(14,3),EntradaProducto.CantidadActual*Medida.Cantidad)) + ' ' +Medida.Descripcion as Disponible
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
/****** Object:  StoredProcedure [dbo].[AjustesProducto]    Script Date: 11/22/2012 11:31:19 ******/
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
@IdProducto varchar(30),@IdReferencia int, @IdUsuario varchar(50), @Cantidad decimal (14,3),@Opcion int ,@Tipo int
AS

BEGIN TRY
	BEGIN TRAN
	declare @contenido decimal (14,3)
	declare @costo decimal (14,3)
	declare @medida varchar(50)
	declare @IdEntrada int
	
	if(@Tipo = 0)
	begin
	set @contenido = (select Medida.Cantidad from Medida,EntradaProducto where EntradaProducto.Id_Entrada = @IdReferencia and EntradaProducto.Presentacion = Medida.Id_Medida)
	set @medida = (select Medida.Descripcion from Medida,EntradaProducto where EntradaProducto.Id_Entrada = @IdReferencia and EntradaProducto.Presentacion = Medida.Id_Medida)
	set @costo = (select PrecioUnitario  from EntradaProducto where Id_Entrada = @IdReferencia)
			if(@Opcion = 0)
			begin
				set @costo = round(@costo * @Cantidad,2,0)
				Update EntradaProducto set CantidadActual = CantidadActual - @Cantidad where Id_Entrada = @IdReferencia
				insert into PerdidaProducto values (@IdProducto,@IdReferencia,@IdUsuario,GETDATE(),CONVERT(varchar(50),Convert(decimal(14,3),@Cantidad*@contenido)) + ' ' + @medida,@costo)
			end
			else
			Begin
				set @costo = round((@Cantidad*@costo)/@contenido,2,0)
				update EntradaProducto set CantidadActual = ROUND(CantidadActual - (@Cantidad / @contenido),2,0) where Id_Entrada = @IdReferencia
				insert into PerdidaProducto values (@IdProducto,@IdReferencia,@IdUsuario,GETDATE(),CONVERT(varchar(50),Convert(decimal(14,3),@Cantidad)) + ' ' + @medida,@costo)
			end
	end
	else
	begin
	
	set @IdEntrada = (select Id_Entrada from SalidaProducto where Id_Salida = @IdReferencia)
	set @contenido = (select Medida.Cantidad from Medida,EntradaProducto where EntradaProducto.Id_Entrada = @IdEntrada and EntradaProducto.Presentacion = Medida.Id_Medida)
	set @medida = (select Medida.Descripcion from Medida,EntradaProducto where EntradaProducto.Id_Entrada = @IdEntrada and EntradaProducto.Presentacion = Medida.Id_Medida)
	set @costo = (select PrecioUnitario  from EntradaProducto where Id_Entrada = @IdEntrada)
	set @costo = round((@Cantidad*@costo)/@contenido,2,0) 
	
		if(@Tipo = 1)
		begin
			update EntradaProducto set CantidadActual = ROUND(CantidadActual + (@Cantidad / @contenido),2,0) where Id_Entrada = @IdEntrada
			update SalidaProducto set Costo = round(Costo - @costo,2,0), Cantidad = Cantidad - @Cantidad where Id_Salida = @IdReferencia    
		end
		else
		begin
			update EntradaProducto set CantidadActual = ROUND(CantidadActual - (@Cantidad / @contenido),2,0) where Id_Entrada = @IdEntrada
			update SalidaProducto set Costo = round(Costo + @costo,2,0), Cantidad = Cantidad + @Cantidad where Id_Salida = @IdReferencia
		end
	end

	COMMIT TRAN
END TRY
BEGIN CATCH
	IF @@TRANCOUNT > 0 ROLLBACK TRAN
	SELECT ERROR_MESSAGE()
END CATCH
GO
/****** Object:  ForeignKey [Id_Pagina]    Script Date: 11/22/2012 11:31:18 ******/
ALTER TABLE [dbo].[RolPagina]  WITH CHECK ADD  CONSTRAINT [Id_Pagina] FOREIGN KEY([Id_Pagina])
REFERENCES [dbo].[Pagina] ([Id_Pagina])
GO
ALTER TABLE [dbo].[RolPagina] CHECK CONSTRAINT [Id_Pagina]
GO
/****** Object:  ForeignKey [Id_Rol]    Script Date: 11/22/2012 11:31:18 ******/
ALTER TABLE [dbo].[RolPagina]  WITH CHECK ADD  CONSTRAINT [Id_Rol] FOREIGN KEY([Id_Rol])
REFERENCES [dbo].[Rol] ([Id_Rol])
GO
ALTER TABLE [dbo].[RolPagina] CHECK CONSTRAINT [Id_Rol]
GO
/****** Object:  ForeignKey [FK_Usuario_Rol]    Script Date: 11/22/2012 11:31:18 ******/
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Rol] FOREIGN KEY([Id_Rol])
REFERENCES [dbo].[Rol] ([Id_Rol])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_Rol]
GO
/****** Object:  ForeignKey [FK_Herramienta_Ubicacion]    Script Date: 11/22/2012 11:31:18 ******/
ALTER TABLE [dbo].[Herramienta]  WITH CHECK ADD  CONSTRAINT [FK_Herramienta_Ubicacion] FOREIGN KEY([id_ubicacion])
REFERENCES [dbo].[Ubicacion] ([Id_Ubicacion])
GO
ALTER TABLE [dbo].[Herramienta] CHECK CONSTRAINT [FK_Herramienta_Ubicacion]
GO
/****** Object:  ForeignKey [FK_DetalleSede_Carrera]    Script Date: 11/22/2012 11:31:19 ******/
ALTER TABLE [dbo].[DetalleSede]  WITH CHECK ADD  CONSTRAINT [FK_DetalleSede_Carrera] FOREIGN KEY([Id_Carrera])
REFERENCES [dbo].[Carrera] ([Id_Carrera])
GO
ALTER TABLE [dbo].[DetalleSede] CHECK CONSTRAINT [FK_DetalleSede_Carrera]
GO
/****** Object:  ForeignKey [FK_DetalleSede_Curso]    Script Date: 11/22/2012 11:31:19 ******/
ALTER TABLE [dbo].[DetalleSede]  WITH CHECK ADD  CONSTRAINT [FK_DetalleSede_Curso] FOREIGN KEY([Id_Curso])
REFERENCES [dbo].[Curso] ([Id_Curso])
GO
ALTER TABLE [dbo].[DetalleSede] CHECK CONSTRAINT [FK_DetalleSede_Curso]
GO
/****** Object:  ForeignKey [FK_DetalleSede_Facultad]    Script Date: 11/22/2012 11:31:19 ******/
ALTER TABLE [dbo].[DetalleSede]  WITH CHECK ADD  CONSTRAINT [FK_DetalleSede_Facultad] FOREIGN KEY([Id_Facultad])
REFERENCES [dbo].[Facultad] ([Id_Facultad])
GO
ALTER TABLE [dbo].[DetalleSede] CHECK CONSTRAINT [FK_DetalleSede_Facultad]
GO
/****** Object:  ForeignKey [FK_DetalleSede_Sede]    Script Date: 11/22/2012 11:31:19 ******/
ALTER TABLE [dbo].[DetalleSede]  WITH CHECK ADD  CONSTRAINT [FK_DetalleSede_Sede] FOREIGN KEY([Id_Sede])
REFERENCES [dbo].[Sede] ([Id_Sede])
GO
ALTER TABLE [dbo].[DetalleSede] CHECK CONSTRAINT [FK_DetalleSede_Sede]
GO
/****** Object:  ForeignKey [FK_Equipo_TipoEquipo]    Script Date: 11/22/2012 11:31:19 ******/
ALTER TABLE [dbo].[Equipo]  WITH CHECK ADD  CONSTRAINT [FK_Equipo_TipoEquipo] FOREIGN KEY([id_tipo])
REFERENCES [dbo].[TipoEquipo] ([id_tipo])
GO
ALTER TABLE [dbo].[Equipo] CHECK CONSTRAINT [FK_Equipo_TipoEquipo]
GO
/****** Object:  ForeignKey [FK_Equipo_Ubicacion]    Script Date: 11/22/2012 11:31:19 ******/
ALTER TABLE [dbo].[Equipo]  WITH CHECK ADD  CONSTRAINT [FK_Equipo_Ubicacion] FOREIGN KEY([id_ubicacion])
REFERENCES [dbo].[Ubicacion] ([Id_Ubicacion])
GO
ALTER TABLE [dbo].[Equipo] CHECK CONSTRAINT [FK_Equipo_Ubicacion]
GO
/****** Object:  ForeignKey [FK_Producto_Familia]    Script Date: 11/22/2012 11:31:19 ******/
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD  CONSTRAINT [FK_Producto_Familia] FOREIGN KEY([Id_Familia])
REFERENCES [dbo].[Familia] ([Id_Familia])
GO
ALTER TABLE [dbo].[Producto] CHECK CONSTRAINT [FK_Producto_Familia]
GO
/****** Object:  ForeignKey [FK_Practica_Curso]    Script Date: 11/22/2012 11:31:19 ******/
ALTER TABLE [dbo].[Practica]  WITH CHECK ADD  CONSTRAINT [FK_Practica_Curso] FOREIGN KEY([Id_Curso])
REFERENCES [dbo].[Curso] ([Id_Curso])
GO
ALTER TABLE [dbo].[Practica] CHECK CONSTRAINT [FK_Practica_Curso]
GO
/****** Object:  ForeignKey [FK_PerdidaProducto_Producto]    Script Date: 11/22/2012 11:31:19 ******/
ALTER TABLE [dbo].[PerdidaProducto]  WITH CHECK ADD  CONSTRAINT [FK_PerdidaProducto_Producto] FOREIGN KEY([Id_Producto])
REFERENCES [dbo].[Producto] ([Codigo])
GO
ALTER TABLE [dbo].[PerdidaProducto] CHECK CONSTRAINT [FK_PerdidaProducto_Producto]
GO
/****** Object:  ForeignKey [FK_EntradaProducto_Medida]    Script Date: 11/22/2012 11:31:19 ******/
ALTER TABLE [dbo].[EntradaProducto]  WITH CHECK ADD  CONSTRAINT [FK_EntradaProducto_Medida] FOREIGN KEY([Presentacion])
REFERENCES [dbo].[Medida] ([Id_Medida])
GO
ALTER TABLE [dbo].[EntradaProducto] CHECK CONSTRAINT [FK_EntradaProducto_Medida]
GO
/****** Object:  ForeignKey [FK_EntradaProducto_Producto]    Script Date: 11/22/2012 11:31:19 ******/
ALTER TABLE [dbo].[EntradaProducto]  WITH CHECK ADD  CONSTRAINT [FK_EntradaProducto_Producto] FOREIGN KEY([Id_Producto])
REFERENCES [dbo].[Producto] ([Codigo])
GO
ALTER TABLE [dbo].[EntradaProducto] CHECK CONSTRAINT [FK_EntradaProducto_Producto]
GO
/****** Object:  ForeignKey [FK_EntradaProducto_Proveedor]    Script Date: 11/22/2012 11:31:19 ******/
ALTER TABLE [dbo].[EntradaProducto]  WITH CHECK ADD  CONSTRAINT [FK_EntradaProducto_Proveedor] FOREIGN KEY([Id_Proveedor])
REFERENCES [dbo].[Proveedor] ([Nit])
GO
ALTER TABLE [dbo].[EntradaProducto] CHECK CONSTRAINT [FK_EntradaProducto_Proveedor]
GO
/****** Object:  ForeignKey [FK_EntradaProducto_Ubicacion]    Script Date: 11/22/2012 11:31:19 ******/
ALTER TABLE [dbo].[EntradaProducto]  WITH CHECK ADD  CONSTRAINT [FK_EntradaProducto_Ubicacion] FOREIGN KEY([Id_Ubicacion])
REFERENCES [dbo].[Ubicacion] ([Id_Ubicacion])
GO
ALTER TABLE [dbo].[EntradaProducto] CHECK CONSTRAINT [FK_EntradaProducto_Ubicacion]
GO
/****** Object:  ForeignKey [FK_UsuarioUbicacion_Ubicacion]    Script Date: 11/22/2012 11:31:19 ******/
ALTER TABLE [dbo].[UsuarioUbicacion]  WITH CHECK ADD  CONSTRAINT [FK_UsuarioUbicacion_Ubicacion] FOREIGN KEY([Id_Ubicacion])
REFERENCES [dbo].[Ubicacion] ([Id_Ubicacion])
GO
ALTER TABLE [dbo].[UsuarioUbicacion] CHECK CONSTRAINT [FK_UsuarioUbicacion_Ubicacion]
GO
/****** Object:  ForeignKey [FK_UsuarioUbicacion_Usuario]    Script Date: 11/22/2012 11:31:19 ******/
ALTER TABLE [dbo].[UsuarioUbicacion]  WITH CHECK ADD  CONSTRAINT [FK_UsuarioUbicacion_Usuario] FOREIGN KEY([Id_Usuario])
REFERENCES [dbo].[Usuario] ([Usuario])
GO
ALTER TABLE [dbo].[UsuarioUbicacion] CHECK CONSTRAINT [FK_UsuarioUbicacion_Usuario]
GO
/****** Object:  ForeignKey [FK_PrestamoHerramienta_Herramienta]    Script Date: 11/22/2012 11:31:19 ******/
ALTER TABLE [dbo].[PrestamoHerramienta]  WITH CHECK ADD  CONSTRAINT [FK_PrestamoHerramienta_Herramienta] FOREIGN KEY([Id_Herramienta])
REFERENCES [dbo].[Herramienta] ([id_herramienta])
GO
ALTER TABLE [dbo].[PrestamoHerramienta] CHECK CONSTRAINT [FK_PrestamoHerramienta_Herramienta]
GO
/****** Object:  ForeignKey [FK_PrestamoEquipo_Equipo]    Script Date: 11/22/2012 11:31:19 ******/
ALTER TABLE [dbo].[PrestamoEquipo]  WITH CHECK ADD  CONSTRAINT [FK_PrestamoEquipo_Equipo] FOREIGN KEY([Id_Equipo])
REFERENCES [dbo].[Equipo] ([Id_Equipo])
GO
ALTER TABLE [dbo].[PrestamoEquipo] CHECK CONSTRAINT [FK_PrestamoEquipo_Equipo]
GO
/****** Object:  ForeignKey [FK_SalidaProducto_EntradaProducto]    Script Date: 11/22/2012 11:31:19 ******/
ALTER TABLE [dbo].[SalidaProducto]  WITH CHECK ADD  CONSTRAINT [FK_SalidaProducto_EntradaProducto] FOREIGN KEY([Id_Entrada])
REFERENCES [dbo].[EntradaProducto] ([Id_Entrada])
GO
ALTER TABLE [dbo].[SalidaProducto] CHECK CONSTRAINT [FK_SalidaProducto_EntradaProducto]
GO
