USE [Inventario]
GO
/****** Object:  Table [dbo].[Ubicacion]    Script Date: 01/25/2013 09:46:03 ******/
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
/****** Object:  Table [dbo].[TipoEquipo]    Script Date: 01/25/2013 09:46:03 ******/
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
/****** Object:  Table [dbo].[Sede]    Script Date: 01/25/2013 09:46:03 ******/
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
/****** Object:  Table [dbo].[Pagina]    Script Date: 01/25/2013 09:46:03 ******/
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
INSERT [dbo].[Pagina] ([Id_Pagina], [Nombre], [Estado], [Menu]) VALUES (21, N'Reportes', 1, N'<li><a href="ReporteEquipo.aspx">Equipo</a></li> ')
SET IDENTITY_INSERT [dbo].[Pagina] OFF
/****** Object:  Table [dbo].[Rol]    Script Date: 01/25/2013 09:46:03 ******/
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
/****** Object:  Table [dbo].[Proveedor]    Script Date: 01/25/2013 09:46:03 ******/
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
/****** Object:  Table [dbo].[Medida]    Script Date: 01/25/2013 09:46:03 ******/
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
/****** Object:  Table [dbo].[Familia]    Script Date: 01/25/2013 09:46:03 ******/
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
/****** Object:  Table [dbo].[Facultad]    Script Date: 01/25/2013 09:46:03 ******/
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
/****** Object:  Table [dbo].[Curso]    Script Date: 01/25/2013 09:46:03 ******/
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
/****** Object:  Table [dbo].[Ciclo]    Script Date: 01/25/2013 09:46:03 ******/
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
/****** Object:  Table [dbo].[Carrera]    Script Date: 01/25/2013 09:46:03 ******/
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
/****** Object:  Table [dbo].[Equipo]    Script Date: 01/25/2013 09:46:03 ******/
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
/****** Object:  Table [dbo].[DetalleSede]    Script Date: 01/25/2013 09:46:03 ******/
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
/****** Object:  Table [dbo].[Herramienta]    Script Date: 01/25/2013 09:46:03 ******/
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
/****** Object:  StoredProcedure [dbo].[InsertarFamilia]    Script Date: 01/25/2013 09:46:05 ******/
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
/****** Object:  StoredProcedure [dbo].[InsertarPresentacion]    Script Date: 01/25/2013 09:46:05 ******/
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
/****** Object:  Table [dbo].[Producto]    Script Date: 01/25/2013 09:46:05 ******/
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
INSERT [dbo].[Producto] ([Nombre], [Clasificacion], [Corrosivo], [Explosivo], [Comburente], [Irritante], [Nocivo], [Toxicidad], [Codigo], [Id_Familia], [Inflamable], [Controlado], [PeligrosoParaAmbiente]) VALUES (N'Alumino Granilla', N'C', N'0', N'0', N'0', N'0', N'2', N'2', N'000000001A', 2, N'1', 1, N'2')
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
/****** Object:  StoredProcedure [dbo].[InsertarUbicacion]    Script Date: 01/25/2013 09:46:05 ******/
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
/****** Object:  StoredProcedure [dbo].[InsertarRol]    Script Date: 01/25/2013 09:46:05 ******/
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
/****** Object:  StoredProcedure [dbo].[InsertarProveedor]    Script Date: 01/25/2013 09:46:05 ******/
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
/****** Object:  Table [dbo].[Practica]    Script Date: 01/25/2013 09:46:05 ******/
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
/****** Object:  Table [dbo].[RolPagina]    Script Date: 01/25/2013 09:46:05 ******/
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
INSERT [dbo].[RolPagina] ([Id_Rol], [Id_Pagina]) VALUES (1, 21)
/****** Object:  Table [dbo].[Usuario]    Script Date: 01/25/2013 09:46:05 ******/
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
/****** Object:  Table [dbo].[UsuarioUbicacion]    Script Date: 01/25/2013 09:46:05 ******/
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
/****** Object:  Table [dbo].[PrestamoHerramienta]    Script Date: 01/25/2013 09:46:05 ******/
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
/****** Object:  Table [dbo].[PrestamoEquipo]    Script Date: 01/25/2013 09:46:05 ******/
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
/****** Object:  StoredProcedure [dbo].[ModificarUsuario]    Script Date: 01/25/2013 09:46:05 ******/
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
	set @id = (select Id_Rol 
	           from Rol 
	           where Descripcion=@Rol)
	           
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
/****** Object:  StoredProcedure [dbo].[ModificarPermisos]    Script Date: 01/25/2013 09:46:05 ******/
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
	
	Set @id_pagina = (SELECT Id_Pagina 
	                  from Pagina 
	                  where Nombre = @Pagina)
	
	Set @id_rol = (SELECT Id_Rol 
	               from Rol 
	               where Descripcion = @Rol)
	
	insert RolPagina values (@id_rol,@id_pagina)
						  
	COMMIT TRAN
END TRY
BEGIN CATCH
	IF @@TRANCOUNT > 0 ROLLBACK TRAN
	SELECT ERROR_MESSAGE()
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[ModificarHerramienta]    Script Date: 01/25/2013 09:46:05 ******/
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
	set descripcion = @descripcion,
	    id_ubicacion = @id_Ubicacion,
	    cantidad = @Cantidad,Marca = @Marca
	where id_herramienta = @id
	

	COMMIT TRAN
END TRY
BEGIN CATCH
	IF @@TRANCOUNT > 0 ROLLBACK TRAN
	SELECT ERROR_MESSAGE()
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[ModificarEquipo]    Script Date: 01/25/2013 09:46:05 ******/
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
	
	set @idtipo =(select id_tipo 
	              from TipoEquipo 
	              where Descripcion = @tipo)
	
	Update Equipo 
	set Marca = @marca,id_ubicacion = @id_Ubicacion, 
	    id_tipo = @idtipo, 
	    descripcion = @descripcion, 
	    Activo = @Activo
	where  @codigo = Codigo and 
	       @serie = [No. de Serie]

	COMMIT TRAN
END TRY
BEGIN CATCH
	IF @@TRANCOUNT > 0 ROLLBACK TRAN
	SELECT ERROR_MESSAGE()
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[ModificarContraseña]    Script Date: 01/25/2013 09:46:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ModificarContraseña]
	-- Parametros
	@Usuario varchar (50),@Contraseña varchar(10)
AS

BEGIN TRY
	BEGIN TRAN
	update Usuario 
	set Contraseña = @Contraseña 
	where Usuario = @Usuario 
	
COMMIT TRAN
END TRY
BEGIN CATCH
	IF @@TRANCOUNT > 0 ROLLBACK TRAN
	SELECT ERROR_MESSAGE()
END CATCH
GO
/****** Object:  Table [dbo].[PerdidaProducto]    Script Date: 01/25/2013 09:46:05 ******/
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
/****** Object:  StoredProcedure [dbo].[InsertarProducto]    Script Date: 01/25/2013 09:46:05 ******/
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
/****** Object:  StoredProcedure [dbo].[InsertarUsuario]    Script Date: 01/25/2013 09:46:05 ******/
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
/****** Object:  StoredProcedure [dbo].[InsertarPermisos]    Script Date: 01/25/2013 09:46:05 ******/
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
/****** Object:  StoredProcedure [dbo].[InsertarHerramienta]    Script Date: 01/25/2013 09:46:05 ******/
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
/****** Object:  StoredProcedure [dbo].[InsertarEquipo]    Script Date: 01/25/2013 09:46:05 ******/
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
/****** Object:  StoredProcedure [dbo].[BuscarUsuarios]    Script Date: 01/25/2013 09:46:05 ******/
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

	SELECT Usuario.Usuario,
	       Usuario.Nombre,
	       Usuario.Apellido,
	       Usuario.Correo,
	       Rol.Descripcion as Rol, 
	       Usuario.Estado 
	       
	from Usuario,Rol
	
	where Usuario.Usuario LIKE '%'+@Usuario+'%' and 
	      Rol.Id_Rol = Usuario.Id_Rol and 
	      Usuario.Estado = '1'
	
COMMIT TRAN
END TRY
BEGIN CATCH
	IF @@TRANCOUNT > 0 ROLLBACK TRAN
	SELECT ERROR_MESSAGE()
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[BuscarProducto]    Script Date: 01/25/2013 09:46:05 ******/
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
/****** Object:  StoredProcedure [dbo].[BuscarPractica]    Script Date: 01/25/2013 09:46:05 ******/
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
	
	Select Practica.Nombre, 
	       Practica.Id_Practica 
	       
	from Practica,
	     Curso 
	
	where Practica.Id_Curso = Curso.Id_Curso and 
	      Curso.Id_Curso = @IdCurso
	      
	order by Practica.Id_Practica
	
	
COMMIT TRAN
END TRY
BEGIN CATCH
	IF @@TRANCOUNT > 0 ROLLBACK TRAN
	SELECT ERROR_MESSAGE()
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[BuscarPermisos]    Script Date: 01/25/2013 09:46:05 ******/
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
	
	select Nombre, 
	       permiso  
	from (select Nombre from Pagina where Estado = 1) as a  
	     left outer join (
				select  Nombre as permiso 
				from Pagina as p ,
				     RolPagina as r      
				where p.Id_Pagina = r.Id_Pagina and 
				      r.Id_Rol = @id_rol) as b on a.Nombre = b.permiso
    
COMMIT TRAN
END TRY
BEGIN CATCH
	IF @@TRANCOUNT > 0 ROLLBACK TRAN
	SELECT ERROR_MESSAGE()
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[BuscarHerramientaId]    Script Date: 01/25/2013 09:46:05 ******/
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
	
	SELECT Herramienta.descripcion,
	       Ubicacion.Id_Ubicacion + ' ' + Ubicacion.Nombre,
	       Herramienta.cantidad,Marca
	       
	FROM Herramienta,
	     Ubicacion
	     
	WHERE Herramienta.id_ubicacion = Ubicacion.Id_Ubicacion and 
	      Herramienta.id_herramienta = @id 
    
COMMIT TRAN
END TRY
BEGIN CATCH
	IF @@TRANCOUNT > 0 ROLLBACK TRAN
	SELECT ERROR_MESSAGE()
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[BuscarHerramienta]    Script Date: 01/25/2013 09:46:05 ******/
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
	
	SELECT Herramienta.id_herramienta,
	       Herramienta.descripcion,Ubicacion.Nombre,
	       Herramienta.cantidad
	       
	FROM Herramienta,
	     Ubicacion
	     
	WHERE Herramienta.id_ubicacion = Ubicacion.Id_Ubicacion and 
	Herramienta.descripcion LIKE '%'+@descripcion+'%' 
    
COMMIT TRAN
END TRY
BEGIN CATCH
	IF @@TRANCOUNT > 0 ROLLBACK TRAN
	SELECT ERROR_MESSAGE()
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[BuscarFacultad]    Script Date: 01/25/2013 09:46:05 ******/
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
	
	Select Distinct Facultad.Nombre, 
	       Facultad.Id_Facultad 
	       
	from Facultad,
	     DetalleSede 
	     
	where DetalleSede.Id_Sede = @IdSede	and 
	Facultad.Id_Facultad = DetalleSede.Id_Facultad
	
	order by Facultad.Id_Facultad
	
COMMIT TRAN
END TRY
BEGIN CATCH
	IF @@TRANCOUNT > 0 ROLLBACK TRAN
	SELECT ERROR_MESSAGE()
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[BuscarCurso]    Script Date: 01/25/2013 09:46:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[BuscarCurso]
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
	
	Select Distinct Curso.Nombre, 
	       Curso.Id_Curso 
	
	from Curso,DetalleSede 
	
	where DetalleSede.Id_Sede = @IdSede and 
	      Curso.Id_Curso = DetalleSede.Id_Curso	and 
	      DetalleSede.Id_Facultad = @IdFacultad and 
	      DetalleSede.Id_Carrera = @IdCarrera
	      
	order by Curso.Id_Curso
	
COMMIT TRAN
END TRY
BEGIN CATCH
	IF @@TRANCOUNT > 0 ROLLBACK TRAN
	SELECT ERROR_MESSAGE()
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[BuscarContraseña]    Script Date: 01/25/2013 09:46:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[BuscarContraseña]
	-- Parametros
	@Usuario varchar (50)
AS

BEGIN TRY
	BEGIN TRAN
	
	SELECT Contraseña 
	from Usuario 
	where Usuario = @Usuario
	
COMMIT TRAN
END TRY
BEGIN CATCH
	IF @@TRANCOUNT > 0 ROLLBACK TRAN
	SELECT ERROR_MESSAGE()
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[BuscarCarrera]    Script Date: 01/25/2013 09:46:05 ******/
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
	
	Select Distinct Carrera.Nombre, 
		   Carrera.Id_Carrera
		    
	from Carrera,DetalleSede 
	
	where DetalleSede.Id_Sede = @IdSede and 
	      Carrera.Id_Carrera = DetalleSede.Id_Carrera and 
	      DetalleSede.Id_Facultad = @IdFacultad
	      
	order by Carrera.Id_Carrera
	
COMMIT TRAN
END TRY
BEGIN CATCH
	IF @@TRANCOUNT > 0 ROLLBACK TRAN
	SELECT ERROR_MESSAGE()
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[BuscarEquipoMod]    Script Date: 01/25/2013 09:46:05 ******/
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
	
	select TipoEquipo.Descripcion as Tipo, 
	       Codigo,[No. de Serie],
	       Marca,
	       Equipo.id_ubicacion +' '+Ubicacion.Nombre, 
	       Equipo.descripcion,
	       Equipo.Activo 
	
	from Equipo,
	     TipoEquipo,
	     Ubicacion 
	     
	where Equipo.id_tipo = TipoEquipo.id_tipo and
	      Ubicacion.Id_Ubicacion = Equipo.id_ubicacion and 
	      Codigo  = @codigo and 
	      [No. de Serie] = @serie and 
	      Activo = '1'
	
COMMIT TRAN
END TRY
BEGIN CATCH
	IF @@TRANCOUNT > 0 ROLLBACK TRAN
	SELECT ERROR_MESSAGE()
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[BuscarEquipoDisponible]    Script Date: 01/25/2013 09:46:05 ******/
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
	
	select Codigo,Marca,[No. de Serie], 
	       @Tipo as Descripcion
	
	from Equipo,
	     Ubicacion 
	     
	where Equipo.id_tipo = @IdTipo and 
	      Equipo.id_ubicacion = @IdUbicacion and 
	      Codigo LIKE '%'+@codigo+'%'  and 
	      Activo = '1' and 
	      Prestado = '0' and 
	      Equipo.id_ubicacion = Ubicacion.Id_Ubicacion
	
COMMIT TRAN
END TRY
BEGIN CATCH
	IF @@TRANCOUNT > 0 ROLLBACK TRAN
	SELECT ERROR_MESSAGE()
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[BuscarEquipo]    Script Date: 01/25/2013 09:46:05 ******/
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
	
	select Codigo,Marca,[No. de Serie], 
	       TipoEquipo.Descripcion,
	       Ubicacion.Nombre,Equipo.Prestado 
	       
	from Equipo,
	     TipoEquipo,
	     Ubicacion 
	     
	where Equipo.id_tipo = TipoEquipo.id_tipo and 
	      Ubicacion.Id_Ubicacion = Equipo.id_ubicacion and 
	      (Codigo = @codigo or [No. de Serie] = @serie) and 
	      Activo = '1'
	
COMMIT TRAN
END TRY
BEGIN CATCH
	IF @@TRANCOUNT > 0 ROLLBACK TRAN
	SELECT ERROR_MESSAGE()
END CATCH
GO
/****** Object:  Table [dbo].[EntradaProducto]    Script Date: 01/25/2013 09:46:05 ******/
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
SET IDENTITY_INSERT [dbo].[EntradaProducto] ON
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (1, N'000000001A', N'A-8', N'0', N'0', 13, 3, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(2.068 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (2, N'000000001B', N'A-8', N'0', N'0', 14, 5, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(4.018 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (3, N'000000001C', N'A-8', N'0', N'0', 16, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.918 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (4, N'000000001D', N'A-8', N'0', N'0', 16, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.494 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (5, N'000000001E', N'A-8', N'0', N'0', 17, 7, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(6.502 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (6, N'000000001F', N'A-8', N'0', N'0', 17, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.800 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (7, N'000000001G', N'A-8', N'0', N'0', 17, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.750 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (8, N'000000001H', N'A-8', N'0', N'0', 17, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.600 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (9, N'000000001I', N'A-8', N'0', N'0', 17, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.836 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (10, N'000000001J', N'A-8', N'0', N'0', 17, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.792 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (11, N'000000002A', N'A-8', N'0', N'0', 36, 3, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(2.272 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (12, N'000000002B', N'A-8', N'0', N'0', 16, 3, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(2.002 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (13, N'000000002C', N'A-8', N'0', N'0', 16, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.654 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (14, N'000000002D', N'A-8', N'0', N'0', 16, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.000 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (15, N'0000002D-1', N'A-8', N'0', N'0', 16, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.000 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (16, N'000000002E', N'A-8', N'0', N'0', 16, 3, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(2.270 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (17, N'000000002F', N'A-8', N'0', N'0', 16, 7, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(6.594 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (18, N'000000002G', N'A-8', N'0', N'0', 16, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.780 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (19, N'000000002H', N'A-8', N'0', N'0', 17, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.355 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (20, N'000000002I', N'A-8', N'0', N'0', 17, 3, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(2.416 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (21, N'0000002I-1', N'A-8', N'0', N'0', 17, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.336 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (22, N'000000002J', N'A-8', N'0', N'0', 16, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.770 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (23, N'000000002K', N'A-8', N'0', N'0', 17, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.303 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (24, N'000000002L', N'A-8', N'0', N'0', 34, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.418 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (25, N'000000002M', N'A-8', N'0', N'0', 17, 3, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(2.658 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (26, N'000000002N', N'A-8', N'0', N'0', 16, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.780 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (27, N'00000002N1', N'A-8', N'0', N'0', 16, 4, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(3.548 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (28, N'00000002NI', N'A-8', N'0', N'0', 9, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.000 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (29, N'000000002P', N'A-8', N'0', N'0', 17, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.000 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (30, N'000000003A', N'A-8', N'0', N'0', 9, 14, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(13.250 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (31, N'000000003B', N'A-8', N'0', N'0', 9, 11, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(11.000 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (32, N'000000003C', N'A-8', N'0', N'0', 6, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.160 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (33, N'000000003D', N'A-8', N'0', N'0', 13, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.800 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (34, N'000000004A', N'A-8', N'0', N'0', 16, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.738 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (35, N'000000005A', N'A-8', N'0', N'0', 17, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.750 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (36, N'000000005B', N'A-8', N'0', N'0', 16, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.980 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (37, N'000000005C', N'A-8', N'0', N'0', 18, 3, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(2.865 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (38, N'000000006A', N'A-8', N'0', N'0', 17, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.750 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (39, N'0000006A-1', N'A-8', N'0', N'0', 16, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.000 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (40, N'000000006B', N'A-8', N'0', N'0', 16, 5, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(4.908 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (41, N'000000006C', N'A-8', N'0', N'0', 16, 3, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(2.712 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (42, N'000000006D', N'A-8', N'0', N'0', 17, 4, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(3.732 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (43, N'000000006E', N'A-8', N'0', N'0', 13, 9, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(9.000 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (44, N'000000007A', N'A-8', N'0', N'0', 9, 3, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(3.000 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (45, N'000000007B', N'A-8', N'0', N'0', 16, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.500 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (46, N'000000008A', N'A-8', N'0', N'0', 29, 3, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(2.960 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (47, N'000000009A', N'A-8', N'0', N'0', 8, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.820 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (48, N'000000010A', N'A-8', N'0', N'0', 13, 3, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(2.760 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (49, N'000000010B', N'A-8', N'0', N'0', 9, 15, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(14.690 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (50, N'000000010C', N'A-8', N'0', N'0', 13, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.440 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (51, N'000000010E', N'A-8', N'0', N'0', 16, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.000 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (52, N'000000010F', N'A-8', N'0', N'0', 16, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.000 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (53, N'000000011B', N'A-8', N'0', N'0', 16, 5, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(4.580 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (54, N'000000011C', N'A-8', N'0', N'0', 16, 9, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(8.214 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (55, N'000000011D', N'A-8', N'0', N'0', 16, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.150 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (56, N'000000011E', N'A-8', N'0', N'0', 16, 4, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(3.660 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (57, N'000000011F', N'A-8', N'0', N'0', 17, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.171 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (58, N'000000011G', N'A-8', N'0', N'0', 17, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.610 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (59, N'000000011H', N'A-8', N'0', N'0', 16, 3, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(2.666 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (60, N'000000011I', N'A-8', N'0', N'0', 18, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.828 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (61, N'000000011J', N'A-8', N'0', N'0', 17, 3, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(2.403 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (62, N'000000011K', N'A-8', N'0', N'0', 16, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.000 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (63, N'000000012A', N'A-8', N'0', N'0', 16, 6, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(5.186 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (64, N'000000013A', N'A-8', N'0', N'0', 13, 6, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(5.220 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (65, N'000000013B', N'A-8', N'0', N'0', 16, 3, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(2.186 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (66, N'000000014A', N'A-8', N'0', N'0', 13, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.000 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (67, N'000000014B', N'A-8', N'0', N'0', 13, 5, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(4.296 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (68, N'0000014B-1', N'A-8', N'0', N'0', 16, 4, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(3.248 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (69, N'000000014C', N'A-8', N'0', N'0', 13, 5, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(5.000 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (70, N'000000014D', N'A-8', N'0', N'0', 9, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.820 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (71, N'000000014E', N'A-8', N'0', N'0', 13, 4, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(3.480 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (72, N'000000014F', N'A-8', N'0', N'0', 16, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.400 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (73, N'0000014F-1', N'A-8', N'0', N'0', 16, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.128 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (74, N'000000014G', N'A-8', N'0', N'0', 13, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.860 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (75, N'000000014H', N'A-8', N'0', N'0', 17, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.229 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (76, N'000000014I', N'A-8', N'0', N'0', 16, 17, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(16.068 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (77, N'000000014J', N'A-8', N'0', N'0', 17, 3, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(3.000 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (78, N'000000014K', N'A-8', N'0', N'0', 16, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(2.000 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (79, N'000000015A', N'A-8', N'0', N'0', 16, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.540 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (80, N'000000015B', N'A-8', N'0', N'0', 13, 5, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(4.200 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (81, N'000000015D', N'A-8', N'0', N'0', 16, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.940 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (82, N'000000016A', N'A-8', N'0', N'0', 17, 3, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(2.600 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (83, N'000000016B', N'A-8', N'0', N'0', 4, 3, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(2.500 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (84, N'000000016C', N'A-8', N'0', N'0', 9, 14, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(13.860 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (85, N'000000017A', N'A-8', N'0', N'0', 13, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.072 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (86, N'000000017B', N'A-8', N'0', N'0', 13, 6, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(6.000 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (87, N'000000018A', N'A-8', N'0', N'0', 9, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.500 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (88, N'000000018B', N'A-8', N'0', N'0', 16, 3, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(3.000 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (89, N'000000019A', N'A-8', N'0', N'0', 13, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.400 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (90, N'000000020A', N'A-8', N'0', N'0', 33, 4, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(3.943 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (91, N'000000021A', N'A-8', N'0', N'0', 16, 8, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(7.514 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (92, N'000000021C', N'A-8', N'0', N'0', 16, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.130 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (93, N'000000021D', N'A-8', N'0', N'0', 13, 8, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(7.904 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (94, N'0000021D-1', N'A-8', N'0', N'0', 17, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.953 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (95, N'000000021E', N'A-8', N'0', N'0', 16, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.926 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (96, N'000000021F', N'A-8', N'0', N'0', 17, 4, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(3.119 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (97, N'000000021G', N'A-8', N'0', N'0', 17, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.537 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (98, N'000000023A', N'A-8', N'0', N'0', 16, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.000 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (99, N'0000023A-1', N'A-8', N'0', N'0', 8, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(2.000 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (100, N'000000023B', N'A-8', N'0', N'0', 13, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.780 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
GO
print 'Processed 100 total records'
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (101, N'0000023B-1', N'A-8', N'0', N'0', 9, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.500 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (102, N'000000023D', N'A-8', N'0', N'0', 17, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.000 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (103, N'000000024A', N'A-8', N'0', N'0', 37, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.400 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (104, N'000000024B', N'A-8', N'0', N'0', 7, 26, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(25.142 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (105, N'000000024C', N'A-8', N'0', N'0', 13, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.940 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (106, N'000000024D', N'A-8', N'0', N'0', 17, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.600 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (107, N'000000024E', N'A-8', N'0', N'0', 16, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.390 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (108, N'0000024E-1', N'A-8', N'0', N'0', 16, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.970 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (109, N'000000024F', N'A-8', N'0', N'0', 16, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.072 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (110, N'000000024G', N'A-8', N'0', N'0', 16, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.960 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (111, N'000000024H', N'A-8', N'0', N'0', 16, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.850 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (112, N'0000024H-1', N'A-8', N'0', N'0', 16, 3, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(2.252 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (113, N'000000024I', N'A-8', N'0', N'0', 17, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.995 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (114, N'000000024J', N'A-8', N'0', N'0', 17, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.050 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (115, N'000000024K', N'A-8', N'0', N'0', 17, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.925 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (116, N'000000025A', N'A-8', N'0', N'0', 17, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.966 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (117, N'000000025B', N'A-8', N'0', N'0', 16, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.224 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (118, N'000000025C', N'A-8', N'0', N'0', 16, 8, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(7.068 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (119, N'000000025D', N'A-8', N'0', N'0', 17, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.308 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (120, N'000000025E', N'A-8', N'0', N'0', 17, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.850 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (121, N'000000026A', N'A-8', N'0', N'0', 15, 3, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(2.808 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (122, N'000000026B', N'A-8', N'0', N'0', 13, 4, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(3.800 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (123, N'000000026C', N'A-8', N'0', N'0', 13, 9, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(8.572 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (124, N'000000026D', N'A-8', N'0', N'0', 17, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.778 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (125, N'000000026E', N'A-8', N'0', N'0', 13, 4, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(3.552 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (126, N'000000026F', N'A-8', N'0', N'0', 13, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.400 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (127, N'000000026G', N'A-8', N'0', N'0', 17, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.046 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (128, N'000000026H', N'A-8', N'0', N'0', 16, 5, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(4.590 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (129, N'000000026I', N'A-8', N'0', N'0', 13, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.120 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (130, N'000000027A', N'A-8', N'0', N'0', 13, 3, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(2.836 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (131, N'000000027B', N'A-8', N'0', N'0', 13, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.408 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (132, N'000000027C', N'A-8', N'0', N'0', 9, 9, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(8.260 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (133, N'000000028A', N'A-8', N'0', N'0', 9, 5, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(4.350 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (134, N'000000028B', N'A-8', N'0', N'0', 9, 3, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(2.030 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (135, N'000000028D', N'A-8', N'0', N'0', 9, 14, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(13.980 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (136, N'000000028E', N'A-8', N'0', N'0', 9, 3, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(2.460 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (137, N'000000028F', N'A-8', N'0', N'0', 6, 13, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(12.600 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (138, N'000000029A', N'A-8', N'0', N'0', 16, 3, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(2.400 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (139, N'000000029B', N'A-8', N'0', N'0', 13, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.600 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (140, N'000000029C', N'A-8', N'0', N'0', 16, 4, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(3.986 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (141, N'000000029D', N'A-8', N'0', N'0', 16, 11, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(10.950 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (142, N'000000029E', N'A-8', N'0', N'0', 16, 3, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(2.996 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (143, N'000000029F', N'A-8', N'0', N'0', 17, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.180 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (144, N'000000029G', N'A-8', N'0', N'0', 17, 3, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(3.000 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (145, N'000000030A', N'A-8', N'0', N'0', 17, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.336 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (146, N'000000030B', N'A-8', N'0', N'0', 16, 4, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(3.134 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (147, N'0000030B-1', N'A-8', N'0', N'0', 16, 5, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(4.880 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (148, N'0000030B-2', N'A-8', N'0', N'0', 17, 3, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(2.853 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (149, N'000000030C', N'A-8', N'0', N'0', 16, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.720 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (150, N'000000030D', N'A-8', N'0', N'0', 16, 3, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(2.246 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (151, N'0000030D-1', N'A-8', N'0', N'0', 17, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.903 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (152, N'000000030E', N'A-8', N'0', N'0', 11, 13, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(12.046 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (153, N'000000030F', N'A-8', N'0', N'0', 16, 4, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(3.508 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (154, N'000000030G', N'A-8', N'0', N'0', 19, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.505 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (155, N'000000030H', N'A-8', N'0', N'0', 16, 3, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(2.364 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (156, N'000000030I', N'A-8', N'0', N'0', 17, 11, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(10.616 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (157, N'0000030I-1', N'A-8', N'0', N'0', 17, 6, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(5.995 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (158, N'000000030J', N'A-8', N'0', N'0', 17, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.815 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (159, N'0000030J-1', N'A-8', N'0', N'0', 13, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.512 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (160, N'000000030K', N'A-8', N'0', N'0', 16, 3, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(2.838 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (161, N'000000030L', N'A-8', N'0', N'0', 13, 11, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(10.912 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (162, N'0000030L-1', N'A-8', N'0', N'0', 13, 5, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(4.204 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (163, N'0000030L-2', N'A-8', N'0', N'0', 16, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.746 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (164, N'0000030L-3', N'A-8', N'0', N'0', 17, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.800 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (165, N'000000030M', N'A-8', N'0', N'0', 17, 15, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(14.127 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (166, N'000000030N', N'A-8', N'0', N'0', 13, 4, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(3.624 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (167, N'00000030NI', N'A-8', N'0', N'0', 16, 3, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(2.244 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (168, N'000000030O', N'A-8', N'0', N'0', 16, 3, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(2.696 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (169, N'000000030P', N'A-8', N'0', N'0', 13, 5, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(4.800 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (170, N'000000030Q', N'A-8', N'0', N'0', 17, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.800 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (171, N'000000030R', N'A-8', N'0', N'0', 13, 12, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(11.844 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (172, N'000000030S', N'A-8', N'0', N'0', 16, 6, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(5.458 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (173, N'000000030T', N'A-8', N'0', N'0', 16, 4, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(3.144 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (174, N'000000030U', N'A-8', N'0', N'0', 17, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.302 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (175, N'000000030V', N'A-8', N'0', N'0', 16, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.858 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (176, N'000000030W', N'A-8', N'0', N'0', 13, 10, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(9.520 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (177, N'000000030X', N'A-8', N'0', N'0', 17, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.604 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (178, N'000000031B', N'A-8', N'0', N'0', 17, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.621 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (179, N'0000031B-1', N'A-8', N'0', N'0', 16, 5, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(4.322 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (180, N'000000031C', N'A-8', N'0', N'0', 17, 4, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(3.785 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (181, N'000000031D', N'A-8', N'0', N'0', 13, 3, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(2.316 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (182, N'0000031D-1', N'A-8', N'0', N'0', 9, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.570 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (183, N'000000031E', N'A-8', N'0', N'0', 17, 6, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(5.664 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (184, N'000000031F', N'A-8', N'0', N'0', 16, 7, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(6.992 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (185, N'000000031G', N'A-8', N'0', N'0', 17, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.888 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (186, N'0000031G-1', N'A-8', N'0', N'0', 16, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.812 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (187, N'000000031H', N'A-8', N'0', N'0', 17, 6, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(5.759 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (188, N'0000031H-1', N'A-8', N'0', N'0', 17, 11, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(10.678 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (189, N'000000031I', N'A-8', N'0', N'0', 13, 6, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(5.060 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (190, N'0000031I-1', N'A-8', N'0', N'0', 16, 3, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(2.876 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (191, N'000000031J', N'A-8', N'0', N'0', 17, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.135 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (192, N'000000031K', N'A-8', N'0', N'0', 9, 3, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(2.720 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (193, N'000000031L', N'A-8', N'0', N'0', 16, 4, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(3.042 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (194, N'0000031L-1', N'A-8', N'0', N'0', 17, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.500 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (195, N'0000031L-2', N'A-8', N'0', N'0', 16, 6, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(6.000 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (196, N'000000031M', N'A-8', N'0', N'0', 16, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.780 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (197, N'0000031M-1', N'A-8', N'0', N'0', 16, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.802 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (198, N'000000031N', N'A-8', N'0', N'0', 16, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.928 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (199, N'00000031NI', N'A-8', N'0', N'0', 16, 10, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(9.544 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (200, N'000031NI-1', N'A-8', N'0', N'0', 16, 6, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(6.000 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (201, N'000000031O', N'A-8', N'0', N'0', 17, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.800 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
GO
print 'Processed 200 total records'
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (202, N'000000031P', N'A-8', N'0', N'0', 17, 3, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(2.598 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (203, N'000000031Q', N'A-8', N'0', N'0', 17, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.038 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (204, N'000000031R', N'A-8', N'0', N'0', 9, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.300 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (205, N'000000031S', N'A-8', N'0', N'0', 16, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.720 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (206, N'000000031T', N'A-8', N'0', N'0', 17, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.863 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (207, N'000000031U', N'A-8', N'0', N'0', 17, 22, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(21.936 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (208, N'000000031V', N'A-8', N'0', N'0', 17, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.910 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (209, N'000000031W', N'A-8', N'0', N'0', 16, 6, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(5.336 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (210, N'000000031X', N'A-8', N'0', N'0', 10, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.296 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (211, N'000000031Y', N'A-8', N'0', N'0', 3, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.500 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (212, N'000000031Z', N'A-8', N'0', N'0', 17, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.318 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (213, N'0000031A-1', N'A-8', N'0', N'0', 16, 17, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(16.090 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (214, N'000031B-11', N'A-8', N'0', N'0', 16, 5, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(4.414 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (215, N'0000031C-1', N'A-8', N'0', N'0', 16, 5, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(4.036 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (216, N'000031D-11', N'A-8', N'0', N'0', 16, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.488 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (217, N'000031D-12', N'A-8', N'0', N'0', 16, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.214 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (218, N'0000031E-1', N'A-8', N'0', N'0', 17, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.573 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (219, N'000031G-11', N'A-8', N'0', N'0', 17, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.013 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (220, N'000031H-11', N'A-8', N'0', N'0', 17, 3, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(2.682 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (221, N'000031I-11', N'A-8', N'0', N'0', 13, 6, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(5.220 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (222, N'0000031J-1', N'A-8', N'0', N'0', 16, 5, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(4.804 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (223, N'000031L-11', N'A-8', N'0', N'0', 16, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.900 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (224, N'000000032A', N'A-8', N'0', N'0', 16, 3, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(2.672 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (225, N'000000033A', N'A-8', N'0', N'0', 16, 4, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(3.376 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (226, N'000000033B', N'A-8', N'0', N'0', 16, 7, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(6.172 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (227, N'000000033C', N'A-8', N'0', N'0', 13, 4, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(3.020 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (228, N'000000033D', N'A-8', N'0', N'0', 13, 9, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(8.176 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (229, N'0000033D-1', N'A-8', N'0', N'0', 30, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.000 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (230, N'000000033E', N'A-8', N'0', N'0', 17, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.751 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (231, N'000000033F', N'A-8', N'0', N'0', 16, 4, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(3.744 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (232, N'000000033G', N'A-8', N'0', N'0', 17, 3, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(2.887 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (233, N'000000034A', N'A-8', N'0', N'0', 9, 3, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(2.160 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (234, N'00000000O1', N'A-8', N'0', N'0', 33, 6, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(5.150 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (235, N'0000000O11', N'A-8', N'0', N'0', 16, 5, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(4.286 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (236, N'000000O111', N'A-8', N'0', N'0', 2, 68, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(68.000 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (237, N'0000000O1A', N'A-8', N'0', N'0', 33, 4, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(3.640 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (238, N'00000000O2', N'A-8', N'0', N'0', 35, 4, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(3.161 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (239, N'0000000O2A', N'A-8', N'0', N'0', 35, 11, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(10.191 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (240, N'000000O211', N'A-8', N'0', N'0', 35, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.280 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (241, N'00000000O3', N'A-8', N'0', N'0', 33, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.295 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (242, N'0000000O3A', N'A-8', N'0', N'0', 9, 17, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(16.250 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (243, N'00000000O4', N'A-8', N'0', N'0', 33, 3, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(2.100 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (244, N'0000000O4A', N'A-8', N'0', N'0', 33, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.100 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (245, N'00000000O5', N'A-8', N'0', N'0', 33, 4, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(3.270 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (246, N'0000000O5A', N'A-8', N'0', N'0', 33, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.625 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (247, N'00000000O6', N'A-8', N'0', N'0', 33, 3, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(2.500 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (248, N'00000000O7', N'A-8', N'0', N'0', 36, 3, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(2.715 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (249, N'00000000O8', N'A-8', N'0', N'0', 33, 3, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(2.700 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (250, N'0000000O8B', N'A-8', N'0', N'0', 36, 4, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(3.762 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (251, N'00000000O9', N'A-8', N'0', N'0', 32, 10, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(9.780 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (252, N'0000000O10', N'A-8', N'0', N'0', 34, 10, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(9.866 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (253, N'000000O10A', N'A-8', N'0', N'0', 34, 7, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(6.040 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (254, N'000000O-11', N'A-8', N'0', N'0', 36, 7, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(6.437 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (255, N'000000-11A', N'A-8', N'0', N'0', 36, 3, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(3.000 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (256, N'000000-111', N'A-8', N'0', N'0', 36, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.756 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (257, N'0000000O12', N'A-8', N'0', N'0', 36, 6, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(5.436 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (258, N'0000000O13', N'A-8', N'0', N'0', 16, 3, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(2.730 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (259, N'0000000O14', N'A-8', N'0', N'0', 33, 5, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(4.870 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (260, N'00000O-14A', N'A-8', N'0', N'0', 16, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.972 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (261, N'000000O-15', N'A-8', N'0', N'0', 9, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.000 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (262, N'0000000O17', N'A-8', N'0', N'0', 36, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.292 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (263, N'0000O-17-A', N'A-8', N'0', N'0', 33, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.000 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (264, N'0000000O18', N'A-8', N'0', N'0', 17, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.498 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (265, N'0000O-18-B', N'A-8', N'0', N'0', 30, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.520 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (266, N'0000000O19', N'A-8', N'0', N'0', 34, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.450 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (267, N'0000O-19-A', N'A-8', N'0', N'0', 9, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.800 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (268, N'0000000O20', N'A-8', N'0', N'0', 17, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.137 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (269, N'00000O-20A', N'A-8', N'0', N'0', 13, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.760 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (270, N'0000000O21', N'A-8', N'0', N'0', 36, 3, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(2.849 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (271, N'00000O-21A', N'A-8', N'0', N'0', 36, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.598 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (272, N'0000000O22', N'A-8', N'0', N'0', 17, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.547 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (273, N'00000O-22A', N'A-8', N'0', N'0', 32, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(2.000 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (274, N'0000000O23', N'A-8', N'0', N'0', 17, 4, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(3.040 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (275, N'000000O23A', N'A-8', N'0', N'0', 31, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.346 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (276, N'00000-23A1', N'A-8', N'0', N'0', 9, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.700 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (277, N'000000-23B', N'A-8', N'0', N'0', 32, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.500 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (278, N'0000000O24', N'A-8', N'0', N'0', 17, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.550 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (279, N'0000000O25', N'A-8', N'0', N'0', 32, 14, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(13.750 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (280, N'00000O-25A', N'A-8', N'0', N'0', 33, 4, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(3.440 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (281, N'0000000O26', N'A-8', N'0', N'0', 33, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.967 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (282, N'0000O-26-A', N'A-8', N'0', N'0', 32, 6, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(5.800 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (283, N'0000000O27', N'A-8', N'0', N'0', 33, 6, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(5.745 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (284, N'0000000O28', N'A-8', N'0', N'0', 6, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.840 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (285, N'0000O-28-1', N'A-8', N'0', N'0', 33, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.187 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (286, N'00000O28-2', N'A-8', N'0', N'0', 33, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.937 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (287, N'00000-2811', N'A-8', N'0', N'0', 33, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.000 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (288, N'00000O-29A', N'A-8', N'0', N'0', 36, 3, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(3.000 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (289, N'000000O-29', N'A-8', N'0', N'0', 33, 34, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(33.740 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (290, N'0000O-29-B', N'A-8', N'0', N'0', 33, 3, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(2.180 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (291, N'0000000O30', N'A-8', N'0', N'0', 33, 3, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(2.615 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (292, N'000000O30A', N'A-8', N'0', N'0', 33, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.110 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (293, N'0000000O31', N'A-8', N'0', N'0', 9, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.930 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (294, N'00000O-311', N'A-8', N'0', N'0', 6, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.000 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (295, N'0000000O32', N'A-8', N'0', N'0', 33, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.700 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (296, N'0000000O33', N'A-8', N'0', N'0', 6, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.000 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (297, N'0000000O34', N'A-8', N'0', N'0', 16, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.748 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (298, N'0000000O35', N'A-8', N'0', N'0', 6, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.000 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (299, N'00000O-35A', N'A-8', N'0', N'0', 33, 6, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(5.075 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (300, N'000000O-36', N'A-8', N'0', N'0', 33, 18, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(17.820 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (301, N'0000000O37', N'A-8', N'0', N'0', 33, 29, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(28.545 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (302, N'000000-37A', N'A-8', N'0', N'0', 16, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.850 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
GO
print 'Processed 300 total records'
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (303, N'0000000O38', N'A-8', N'0', N'0', 33, 3, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(2.575 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (304, N'00000O-381', N'A-8', N'0', N'0', 33, 22, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(21.730 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (305, N'0000000O39', N'A-8', N'0', N'0', 33, 3, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(2.212 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (306, N'0000000O40', N'A-8', N'0', N'0', 6, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.200 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (307, N'0000000O41', N'A-8', N'0', N'0', 33, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.260 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (308, N'0000000O42', N'A-8', N'0', N'0', 17, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.248 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (309, N'0000000O43', N'A-8', N'0', N'0', 17, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.100 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (310, N'0000000O44', N'A-8', N'0', N'0', 33, 4, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(3.361 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (311, N'000000O44A', N'A-8', N'0', N'0', 9, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.000 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (312, N'0000000O45', N'A-8', N'0', N'0', 17, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.359 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (313, N'00000O-45A', N'A-8', N'0', N'0', 17, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.568 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (314, N'0000000O46', N'A-8', N'0', N'0', 9, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.580 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (315, N'000000-46A', N'A-8', N'0', N'0', 17, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.490 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (316, N'0000000O47', N'A-8', N'0', N'0', 33, 23, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(22.075 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (317, N'0000000O48', N'A-8', N'0', N'0', 9, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(2.000 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (318, N'0000000O49', N'A-8', N'0', N'0', 17, 3, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(2.313 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (319, N'000000O49A', N'A-8', N'0', N'0', 9, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.790 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (320, N'0000O-50-A', N'A-8', N'0', N'0', 17, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.585 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (321, N'0000000O51', N'A-8', N'0', N'0', 9, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.400 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (322, N'000000O51A', N'A-8', N'0', N'0', 33, 6, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(5.275 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (323, N'00000O-51B', N'A-8', N'0', N'0', 33, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.850 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (324, N'00000O-52A', N'A-8', N'0', N'0', 33, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.400 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (325, N'0000000O52', N'A-8', N'0', N'0', 33, 21, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(20.255 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (326, N'00000O-52B', N'A-8', N'0', N'0', 30, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.480 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (327, N'00000O-52C', N'A-8', N'0', N'0', 33, 8, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(8.000 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (328, N'0000000O53', N'A-8', N'0', N'0', 33, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.870 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (329, N'0000000O54', N'A-8', N'0', N'0', 13, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.960 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (330, N'00000O54-1', N'A-8', N'0', N'0', 13, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.560 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (331, N'0000000O55', N'A-8', N'0', N'0', 13, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.468 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (332, N'00000O-55A', N'A-8', N'0', N'0', 16, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.966 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (333, N'0000000O56', N'A-8', N'0', N'0', 17, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.600 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (334, N'0000000O57', N'A-8', N'0', N'0', 17, 3, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(2.222 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (335, N'0000000O58', N'A-8', N'0', N'0', 17, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.875 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (336, N'000000O58A', N'A-8', N'0', N'0', 17, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.514 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (337, N'0000000O59', N'A-8', N'0', N'0', 9, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.500 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (338, N'0000000O60', N'A-8', N'0', N'0', 9, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.250 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (339, N'00000O-601', N'A-8', N'0', N'0', 9, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.100 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (340, N'00000O-60A', N'A-8', N'0', N'0', 16, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.900 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (341, N'000000O60B', N'A-8', N'0', N'0', 33, 5, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(4.750 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (342, N'0000O-60B1', N'A-8', N'0', N'0', 33, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(2.000 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (343, N'0000000O61', N'A-8', N'0', N'0', 17, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.050 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (344, N'000000O61A', N'A-8', N'0', N'0', 33, 3, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(2.060 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (345, N'00000O-611', N'A-8', N'0', N'0', 17, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.456 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (346, N'000000O61B', N'A-8', N'0', N'0', 33, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.500 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (347, N'00000O-61C', N'A-8', N'0', N'0', 17, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.500 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (348, N'0000000O62', N'A-8', N'0', N'0', 9, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.280 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (349, N'00000O-62A', N'A-8', N'0', N'0', 17, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.000 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (350, N'0000O-62A1', N'A-8', N'0', N'0', 17, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.429 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (351, N'0000000O63', N'A-8', N'0', N'0', 17, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.259 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (352, N'0000000O64', N'A-8', N'0', N'0', 9, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.090 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (353, N'0000000O65', N'A-8', N'0', N'0', 17, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.570 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (354, N'0000000O66', N'A-8', N'0', N'0', 17, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.180 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (355, N'000000O66A', N'A-8', N'0', N'0', 17, 10, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(9.318 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (356, N'000000O-67', N'A-8', N'0', N'0', 33, 9, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(8.140 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (357, N'00000O-67A', N'A-8', N'0', N'0', 28, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.500 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (358, N'0000000O68', N'A-8', N'0', N'0', 9, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.050 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (359, N'00000O-68A', N'A-8', N'0', N'0', 17, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.500 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (360, N'0000000O69', N'A-8', N'0', N'0', 17, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.220 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (361, N'0000000O70', N'A-8', N'0', N'0', 17, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.400 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (362, N'0000000O71', N'A-8', N'0', N'0', 17, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.462 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (363, N'0000000O72', N'A-8', N'0', N'0', 17, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.260 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (364, N'0000000O73', N'A-8', N'0', N'0', 33, 24, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(23.800 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (365, N'0000O-73-A', N'A-8', N'0', N'0', 33, 3, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(2.872 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (366, N'00000O-74A', N'A-8', N'0', N'0', 9, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.790 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (367, N'0000000O75', N'A-8', N'0', N'0', 33, 3, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(2.045 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (368, N'00000O-75A', N'A-8', N'0', N'0', 17, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.855 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (369, N'0000000O76', N'A-8', N'0', N'0', 17, 3, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(2.546 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (370, N'00000-76A1', N'A-8', N'0', N'0', 33, 8, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(7.270 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (371, N'0000O-76-A', N'A-8', N'0', N'0', 17, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.330 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (372, N'0000000O77', N'A-8', N'0', N'0', 5, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.950 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (373, N'000000O771', N'A-8', N'0', N'0', 9, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.850 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (374, N'0000000O78', N'A-8', N'0', N'0', 33, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.440 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (375, N'00000O-78A', N'A-8', N'0', N'0', 9, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.000 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (376, N'000000O-86', N'A-8', N'0', N'0', 33, 4, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(3.975 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (377, N'000000O-87', N'A-8', N'0', N'0', 17, 3, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(2.500 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (378, N'000000O-88', N'A-8', N'0', N'0', 33, 7, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(6.850 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (379, N'000000O-89', N'A-8', N'0', N'0', 17, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.500 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (380, N'000000O-90', N'A-8', N'0', N'0', 17, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.311 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (381, N'000000O-91', N'A-8', N'0', N'0', 28, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.400 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (382, N'000000O-94', N'A-8', N'0', N'0', 33, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.285 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (383, N'000000O-99', N'A-8', N'0', N'0', 33, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.000 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (384, N'00000O-100', N'A-8', N'0', N'0', 33, 6, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(5.105 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (385, N'00000O-101', N'A-8', N'0', N'0', 17, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.000 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (386, N'00000O-104', N'A-8', N'0', N'0', 17, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.047 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (387, N'00000O-105', N'A-8', N'0', N'0', 33, 5, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(4.500 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (388, N'00000O-106', N'A-8', N'0', N'0', 9, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.820 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (389, N'00000O-107', N'A-8', N'0', N'0', 9, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.840 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (390, N'00000O-109', N'A-8', N'0', N'0', 33, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.750 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (391, N'0000000A-1', N'A-8', N'0', N'0', 33, 12, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(11.853 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (392, N'000000A-11', N'A-8', N'0', N'0', 17, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.760 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (393, N'0000000A1A', N'A-8', N'0', N'0', 17, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.350 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (394, N'00000000A2', N'A-8', N'0', N'0', 9, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.470 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (395, N'00000000A4', N'A-8', N'0', N'0', 9, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.720 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (396, N'000000A-5A', N'A-8', N'0', N'0', 17, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.000 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (397, N'00000000A6', N'A-8', N'0', N'0', 17, 3, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(2.050 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (398, N'00000A-6-A', N'A-8', N'0', N'0', 17, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.250 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (399, N'00000000A7', N'A-8', N'0', N'0', 17, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.520 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (400, N'000000A-7A', N'A-8', N'0', N'0', 33, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.875 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (401, N'00000000A8', N'A-8', N'0', N'0', 33, 4, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(3.120 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (402, N'0000000A10', N'A-8', N'0', N'0', 17, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.100 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (403, N'0000000A11', N'A-8', N'0', N'0', 9, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.250 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
GO
print 'Processed 400 total records'
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (404, N'0000000A12', N'A-8', N'0', N'0', 9, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.250 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (405, N'0000000A13', N'A-8', N'0', N'0', 9, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.100 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (406, N'0000000A14', N'A-8', N'0', N'0', 33, 23, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(22.625 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (407, N'0000000A15', N'A-8', N'0', N'0', 13, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.920 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (408, N'0000000A16', N'A-8', N'0', N'0', 17, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.777 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (409, N'000000A161', N'A-8', N'0', N'0', 16, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.600 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (410, N'0000000A17', N'A-8', N'0', N'0', 9, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.500 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (411, N'000000A17A', N'A-8', N'0', N'0', 33, 3, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(2.720 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (412, N'0000000A18', N'A-8', N'0', N'0', 16, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.960 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (413, N'0000A-19-A', N'A-8', N'0', N'0', 17, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.900 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (414, N'000000A-20', N'A-8', N'0', N'0', 33, 19, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(18.334 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (415, N'0000A-20-A', N'A-8', N'0', N'0', 17, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.000 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (416, N'0000000A21', N'A-8', N'0', N'0', 33, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.520 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (417, N'0000000A22', N'A-8', N'0', N'0', 33, 5, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(4.125 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (418, N'0000000A23', N'A-8', N'0', N'0', 17, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.865 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (419, N'0000000A24', N'A-8', N'0', N'0', 9, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.000 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (420, N'000000A241', N'A-8', N'0', N'0', 17, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.555 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (421, N'0000A-2411', N'A-8', N'0', N'0', 33, 3, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(2.030 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (422, N'0000000A25', N'A-8', N'0', N'0', 4, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.500 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (423, N'0000000A26', N'A-8', N'0', N'0', 4, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.000 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (424, N'0000A-26-A', N'A-8', N'0', N'0', 17, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.602 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (425, N'0000000A27', N'A-8', N'0', N'0', 17, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.110 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (426, N'0000A-27-A', N'A-8', N'0', N'0', 17, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.191 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (427, N'0000000A28', N'A-8', N'0', N'0', 17, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.468 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (428, N'000000A-29', N'A-8', N'0', N'0', 33, 19, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(18.415 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (429, N'000000A291', N'A-8', N'0', N'0', 9, 3, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(2.400 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (430, N'0000000A30', N'A-8', N'0', N'0', 9, 3, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(2.050 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (431, N'0000000A31', N'A-8', N'0', N'0', 28, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.000 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (432, N'0000000A32', N'A-8', N'0', N'0', 11, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.000 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (433, N'0000000A33', N'A-8', N'0', N'0', 12, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.950 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (434, N'0000000A34', N'A-8', N'0', N'0', 4, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.400 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (435, N'0000000A36', N'A-8', N'0', N'0', 33, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.000 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (436, N'0000000A37', N'A-8', N'0', N'0', 17, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.502 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (437, N'00000A-371', N'A-8', N'0', N'0', 17, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.220 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (438, N'000000A-38', N'A-8', N'0', N'0', 17, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.750 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (439, N'000000A-39', N'A-8', N'0', N'0', 9, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.000 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (440, N'0000000A40', N'A-8', N'0', N'0', 4, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.400 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (441, N'000000A-41', N'A-8', N'0', N'0', 17, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.500 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (442, N'000000A-42', N'A-8', N'0', N'0', 17, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.115 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (443, N'000000A-43', N'A-8', N'0', N'0', 17, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.500 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (444, N'00000000I1', N'A-8', N'0', N'0', 9, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.340 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (445, N'0000000I11', N'A-8', N'0', N'0', 9, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.600 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (446, N'00000000I2', N'A-8', N'0', N'0', 9, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.220 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (447, N'00000000I3', N'A-8', N'0', N'0', 9, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.250 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (448, N'00000000I4', N'A-8', N'0', N'0', 9, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.220 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (449, N'00000000I5', N'A-8', N'0', N'0', 9, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.140 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (450, N'00000000I6', N'A-8', N'0', N'0', 9, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.770 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (451, N'00000000I7', N'A-8', N'0', N'0', 9, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.250 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (452, N'00000000I8', N'A-8', N'0', N'0', 9, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.100 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (453, N'00000I-8-A', N'A-8', N'0', N'0', 9, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.250 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (454, N'00000000I9', N'A-8', N'0', N'0', 16, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.646 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (455, N'0000000I10', N'A-8', N'0', N'0', 9, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.170 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (456, N'000000I101', N'A-8', N'0', N'0', 33, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.500 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (457, N'000000I111', N'A-8', N'0', N'0', 9, 2, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.310 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (458, N'00000I-111', N'A-8', N'0', N'0', 17, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.275 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (459, N'0000000I12', N'A-8', N'0', N'0', 9, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.760 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (460, N'000000I121', N'A-8', N'0', N'0', 6, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.200 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (461, N'0000000I13', N'A-8', N'0', N'0', 4, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.000 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (462, N'0000000I14', N'A-8', N'0', N'0', 9, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.115 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (463, N'0000000I15', N'A-8', N'0', N'0', 1, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.000 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (464, N'0000000I16', N'A-8', N'0', N'0', 6, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.000 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (465, N'0000000I17', N'A-8', N'0', N'0', 9, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.410 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (466, N'0000000I18', N'A-8', N'0', N'0', 17, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.007 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (467, N'0000000I19', N'A-8', N'0', N'0', 9, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.420 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (468, N'0000000I29', N'A-8', N'0', N'0', 9, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.460 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (469, N'000000I201', N'A-8', N'0', N'0', 16, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.700 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (470, N'0000000I21', N'A-8', N'0', N'0', 4, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.800 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (471, N'0000000I22', N'A-8', N'0', N'0', 6, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.760 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (472, N'0000000I23', N'A-8', N'0', N'0', 4, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.500 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (473, N'0000000I24', N'A-8', N'0', N'0', 33, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.600 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (474, N'0000000I25', N'A-8', N'0', N'0', 6, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.760 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (475, N'00000I-251', N'A-8', N'0', N'0', 6, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.000 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (476, N'0000000I26', N'A-8', N'0', N'0', 4, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.800 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (477, N'00000000R1', N'A-8', N'0', N'0', 9, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.400 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (478, N'00000000R2', N'A-8', N'0', N'0', 6, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.520 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (479, N'00000000R3', N'A-8', N'0', N'0', 6, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.640 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (480, N'00000000R4', N'A-8', N'0', N'0', 4, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.500 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (481, N'00000000R5', N'A-8', N'0', N'0', 1, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.000 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (482, N'00000000R6', N'A-8', N'0', N'0', 17, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.682 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (483, N'00000000R7', N'A-8', N'0', N'0', 4, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.800 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (484, N'00000000R8', N'A-8', N'0', N'0', 3, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.400 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (485, N'00000000R9', N'A-8', N'0', N'0', 6, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.800 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (486, N'0000000R10', N'A-8', N'0', N'0', 6, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.000 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (487, N'0000000R11', N'A-8', N'0', N'0', 4, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.400 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (488, N'0000000R12', N'A-8', N'0', N'0', 4, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(0.500 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (489, N'0000000R13', N'A-8', N'0', N'0', 3, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.000 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (490, N'0000000R14', N'A-8', N'0', N'0', 5, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.000 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (491, N'0000000R15', N'A-8', N'0', N'0', 3, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.000 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (492, N'0000000R16', N'A-8', N'0', N'0', 4, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.000 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (493, N'0000000R17', N'A-8', N'0', N'0', 27, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.000 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (494, N'0000000R18', N'A-8', N'0', N'0', 5, 1, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.000 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
INSERT [dbo].[EntradaProducto] ([Id_Entrada], [Id_Producto], [Id_Ubicacion], [OrdenDeCompra], [NoFactura], [Presentacion], [Cantidad], [FechaVencimiento], [PrecioUnitario], [Id_Usuario], [FechaCompra], [CantidadActual], [Marca], [Observaciones], [Id_Proveedor]) VALUES (495, N'000000001A', N'A-8', N'0', N'0', 16, 5, N'12/12/2013', CAST(0.000 AS Decimal(14, 3)), N'admin', N'22/11/2012', CAST(1.000 AS Decimal(14, 3)), NULL, NULL, N'200261-2')
SET IDENTITY_INSERT [dbo].[EntradaProducto] OFF
/****** Object:  StoredProcedure [dbo].[DevolucionEquipo]    Script Date: 01/25/2013 09:46:05 ******/
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
/****** Object:  StoredProcedure [dbo].[BuscarEntradaProducto]    Script Date: 01/25/2013 09:46:05 ******/
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
	
	select Id_Entrada as Entrada,
	       EntradaProducto.Id_Producto as Producto, 
	       Producto.Nombre, 
	       Convert(varchar,Medida.Cantidad) +' ' + Medida.Descripcion as Presentación ,
	       Convert(date,FechaVencimiento,103) as FechaVencimiento ,
	       CantidadActual as Existencia
	       
		from EntradaProducto,
		     Producto,
		     Medida
		     
	where EntradaProducto.Id_Producto LIKE '%'+@codigo+'%' and 
	      CantidadActual > 0 and 
	      EntradaProducto.Presentacion = Medida.Id_Medida and 
	      Producto.Codigo = EntradaProducto.Id_Producto	and 
	      EntradaProducto.Id_Ubicacion = @IdUbicacion	
	      
	order by FechaVencimiento
		
	COMMIT TRAN
END TRY
BEGIN CATCH
	IF @@TRANCOUNT > 0 ROLLBACK TRAN
	SELECT ERROR_MESSAGE()
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[BuscarEquipoPrestado]    Script Date: 01/25/2013 09:46:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BuscarEquipoPrestado]
	@Usuario varchar(50), @Carnet varchar(50)
AS

BEGIN TRY
	BEGIN TRAN
	select top 10 PrestamoEquipo.Id_Prestamo as 'No.' ,
	       PrestamoEquipo.CodigoSolicitante as Carnet, 
	       Equipo.Codigo as Código, 
	       Equipo.[No. de Serie] as Serie, 
	       TipoEquipo.Descripcion as Descripción,
           PrestamoEquipo.FechaPrestamo as Fecha, 
           Ubicacion.Nombre as Ubicación 
           
    from PrestamoEquipo,
         TipoEquipo,
         Equipo,
         Ubicacion,
         UsuarioUbicacion
         
	where PrestamoEquipo.Id_Equipo = Equipo.Id_Equipo and 
	      Equipo.id_tipo = TipoEquipo.id_tipo and  
	      UsuarioUbicacion.Id_Usuario = @Usuario and 
	      Equipo.id_ubicacion = Ubicacion.Id_Ubicacion and 
	      UsuarioUbicacion.Id_Ubicacion = Ubicacion.Id_Ubicacion and 
	      Equipo.Prestado = 1 and 
	      PrestamoEquipo.CodigoSolicitante = @Carnet and 
	      PrestamoEquipo.Estado = 1
	      
	order by Fecha
	
		
	COMMIT TRAN
END TRY
BEGIN CATCH
	IF @@TRANCOUNT > 0 ROLLBACK TRAN
	SELECT ERROR_MESSAGE()
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[InsertarEntradaProducto]    Script Date: 01/25/2013 09:46:05 ******/
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
/****** Object:  StoredProcedure [dbo].[EquipoPrestado]    Script Date: 01/25/2013 09:46:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EquipoPrestado]
	@Usuario varchar(50)
AS

BEGIN TRY
	BEGIN TRAN
	select top 10 PrestamoEquipo.CodigoSolicitante as Carnet, 
	       Equipo.Codigo as Código, 
	       Equipo.[No. de Serie] as Serie, 
	       TipoEquipo.Descripcion as Descripción,
	       PrestamoEquipo.FechaPrestamo as Fecha, 
	       Ubicacion.Nombre as Ubicación 
	
	from PrestamoEquipo,
	     TipoEquipo,
	     Equipo,
	     Ubicacion,
	     UsuarioUbicacion
	     
	where PrestamoEquipo.Id_Equipo = Equipo.Id_Equipo and 
	      Equipo.id_tipo = TipoEquipo.id_tipo and  
	      UsuarioUbicacion.Id_Usuario = @Usuario and 
	      Equipo.id_ubicacion = Ubicacion.Id_Ubicacion and 
	      UsuarioUbicacion.Id_Ubicacion = Ubicacion.Id_Ubicacion and 
	      Equipo.Prestado = 1
	      
	order by Fecha
		
	COMMIT TRAN
END TRY
BEGIN CATCH
	IF @@TRANCOUNT > 0 ROLLBACK TRAN
	SELECT ERROR_MESSAGE()
END CATCH
GO
/****** Object:  Table [dbo].[SalidaProducto]    Script Date: 01/25/2013 09:46:05 ******/
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
SET IDENTITY_INSERT [dbo].[SalidaProducto] ON
INSERT [dbo].[SalidaProducto] ([Id_Salida], [Sede], [Facultad], [Curso], [Carrera], [Practica], [Alumnos], [Costo], [Cantidad], [CodCatedratico], [Ciclo], [Id_Usuario], [FechaEgreso], [Id_Entrada], [Observaciones], [Id_Producto]) VALUES (1, N'Campus Central', N'Ingeniería', N'Química I', N'Todas', N'Práctica 1', 20, CAST(25.000 AS Decimal(14, 3)), CAST(500.000 AS Decimal(14, 3)), N'1251508', N'2do. Ciclo 2012', N'admin', N'22/01/2013', 495, N'', N'000000001A')
INSERT [dbo].[SalidaProducto] ([Id_Salida], [Sede], [Facultad], [Curso], [Carrera], [Practica], [Alumnos], [Costo], [Cantidad], [CodCatedratico], [Ciclo], [Id_Usuario], [FechaEgreso], [Id_Entrada], [Observaciones], [Id_Producto]) VALUES (2, N'Campus Central', N'Ingeniería', N'Química I', N'Todas', N'Práctica 1', 25, CAST(35.000 AS Decimal(14, 3)), CAST(500.000 AS Decimal(14, 3)), N'', N'2do. Ciclo 2012', N'admin', N'22/01/2013', 495, N'', N'000000001A')
INSERT [dbo].[SalidaProducto] ([Id_Salida], [Sede], [Facultad], [Curso], [Carrera], [Practica], [Alumnos], [Costo], [Cantidad], [CodCatedratico], [Ciclo], [Id_Usuario], [FechaEgreso], [Id_Entrada], [Observaciones], [Id_Producto]) VALUES (3, N'Campus Central', N'Ingeniería', N'Química II', N'Todas Exepto Sistemas', N'Práctica 2', 14, CAST(0.000 AS Decimal(14, 3)), CAST(500.000 AS Decimal(14, 3)), N'', N'2do. Ciclo 2012', N'admin', N'22/01/2013', 495, N'', N'000000001A')
INSERT [dbo].[SalidaProducto] ([Id_Salida], [Sede], [Facultad], [Curso], [Carrera], [Practica], [Alumnos], [Costo], [Cantidad], [CodCatedratico], [Ciclo], [Id_Usuario], [FechaEgreso], [Id_Entrada], [Observaciones], [Id_Producto]) VALUES (4, N'Campus Central', N'Ingeniería', N'Química II', N'Todas Exepto Sistemas', N'Práctica 1', 16, CAST(0.000 AS Decimal(14, 3)), CAST(500.000 AS Decimal(14, 3)), N'', N'2do. Ciclo 2012', N'admin', N'22/01/2013', 495, N'', N'000000001A')
SET IDENTITY_INSERT [dbo].[SalidaProducto] OFF
/****** Object:  StoredProcedure [dbo].[ProductosTerminados]    Script Date: 01/25/2013 09:46:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ProductosTerminados]	
AS

BEGIN TRY
	BEGIN TRAN
	
select p.Codigo,
	   p.Nombre,
	   SUM(Convert(decimal(14,3),e.CantidadActual * m.Cantidad)) Total,
	   m.Descripcion
	    
from Producto p,
	 EntradaProducto e,
	 Medida m
	 
where p.Codigo = e.Id_Producto and
	  m.Id_Medida = e.Presentacion 

group by p.Codigo,
	     p.Nombre,
	     m.Descripcion

having SUM(Convert(decimal(14,3),e.CantidadActual * m.Cantidad)) < 1
	
		
	COMMIT TRAN
END TRY
BEGIN CATCH
	IF @@TRANCOUNT > 0 ROLLBACK TRAN
	SELECT ERROR_MESSAGE()
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[ProductosControlados]    Script Date: 01/25/2013 09:46:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ProductosControlados]	
AS

BEGIN TRY
	BEGIN TRAN
	
	select p.Codigo,
		   p.Nombre,
	       SUM(Convert(decimal(14,3),e.CantidadActual * m.Cantidad)) Total,
	       m.Descripcion
	    
	from Producto p,
	     EntradaProducto e,
	     Medida m
	 
	where p.Codigo = e.Id_Producto and
	      m.Id_Medida = e.Presentacion and
	      p.Controlado = '1'
	  
	group by p.Codigo,
	         p.Nombre,
	         m.Descripcion
		
	COMMIT TRAN
END TRY
BEGIN CATCH
	IF @@TRANCOUNT > 0 ROLLBACK TRAN
	SELECT ERROR_MESSAGE()
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[PrestamosEquipo]    Script Date: 01/25/2013 09:46:05 ******/
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
	set @idEquipo = (select Id_Equipo 
	                 from Equipo 
	                 where Codigo = @CodEquipo and 
	                 [No. de Serie] = @NoSerie)
	                 
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
/****** Object:  StoredProcedure [dbo].[Vencimiento]    Script Date: 01/25/2013 09:46:05 ******/
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
	select top 10 EntradaProducto.Id_Producto as Producto, 
				  Producto.Nombre,Convert(varchar,Medida.Cantidad) +' ' + Medida.Descripcion as Presentación ,
				  CONVERT(date, FechaVencimiento,103) as FechaVencimiento ,
				  CantidadActual as Unidades,Convert(varchar, Convert(decimal(14,3),
				  CantidadActual*Medida.Cantidad)) + ' ' + Medida.Descripcion as Existencia, 
				  Ubicacion.Nombre as Ubicación
				  
	from EntradaProducto,
		 Producto,
		 Medida,
		 Ubicacion,
		 UsuarioUbicacion 
		 
	where EntradaProducto.Presentacion = Medida.Id_Medida and 
	Producto.Codigo = EntradaProducto.Id_Producto and 
	EntradaProducto.Id_Ubicacion = Ubicacion.Id_Ubicacion and 
	CantidadActual > 0 and 
	UsuarioUbicacion.Id_Usuario = @Usuario and 
	UsuarioUbicacion.Id_Ubicacion = Ubicacion.Id_Ubicacion 
	
	order by  FechaVencimiento 
		
	COMMIT TRAN
END TRY
BEGIN CATCH
	IF @@TRANCOUNT > 0 ROLLBACK TRAN
	SELECT ERROR_MESSAGE()
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[PracticasControladas]    Script Date: 01/25/2013 09:46:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PracticasControladas]	
@Ciclo varchar(25)
AS

BEGIN TRY
	BEGIN TRAN
	
Select DISTINCT s.Sede,
	   s.Facultad,
	   s.Carrera,
	   s.Curso,
	   s.Practica,
	   p.Codigo,
	   p.Nombre

from SalidaProducto s,
     Producto p

Where s.Id_Producto = p.Codigo and
      p.Controlado = '1' and
      s.Ciclo = @Ciclo
		
	COMMIT TRAN
END TRY
BEGIN CATCH
	IF @@TRANCOUNT > 0 ROLLBACK TRAN
	SELECT ERROR_MESSAGE()
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[InsertarSalidaProducto]    Script Date: 01/25/2013 09:46:05 ******/
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
/****** Object:  StoredProcedure [dbo].[CostoPracticas]    Script Date: 01/25/2013 09:46:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CostoPracticas]	

 @Ciclo varchar(25)
 
 AS

BEGIN TRY
	BEGIN TRAN
	
Select s.Sede,
	   s.Facultad,
	   s.Carrera,
	   s.Curso,
	   s.Practica,
	   SUM(s.Alumnos) [Alumnos],
       SUM(s.Costo) Costo

from SalidaProducto s
	 
where s.Ciclo = @Ciclo

group by s.Sede,
	     s.Facultad,
	     s.Carrera,
	     s.Curso,
	     s.Practica
		
	COMMIT TRAN
END TRY
BEGIN CATCH
	IF @@TRANCOUNT > 0 ROLLBACK TRAN
	SELECT ERROR_MESSAGE()
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[BuscarSalidaProducto]    Script Date: 01/25/2013 09:46:05 ******/
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
	
	Select Id_Salida, 
	       SalidaProducto.Id_Producto,
	       Producto.Nombre, 
	       Practica,
	       FechaEgreso,
	       Convert(varchar,SalidaProducto.Cantidad) + ' ' + Medida.Descripcion as Cantidad,
	       CONVERT(varchar,Convert(decimal(14,3),EntradaProducto.CantidadActual*Medida.Cantidad)) + ' ' +Medida.Descripcion as Disponible
	
	from SalidaProducto,
	     Producto,
	     Medida,
	     EntradaProducto 
	     
	where SalidaProducto.Id_Producto LIKE '%'+@codigo+'%' and
	      Producto.Codigo = SalidaProducto.Id_Producto and
	      EntradaProducto.Id_Entrada = SalidaProducto.Id_Entrada and 
	      EntradaProducto.Presentacion = Medida.Id_Medida
	      
	order by FechaEgreso		
		
	COMMIT TRAN
END TRY
BEGIN CATCH
	IF @@TRANCOUNT > 0 ROLLBACK TRAN
	SELECT ERROR_MESSAGE()
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[AjustesProducto]    Script Date: 01/25/2013 09:46:05 ******/
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
				
				Update EntradaProducto 
				set CantidadActual = CantidadActual - @Cantidad 
				where Id_Entrada = @IdReferencia
					
				insert into PerdidaProducto values (@IdProducto,@IdReferencia,@IdUsuario,GETDATE(),CONVERT(varchar(50),Convert(decimal(14,3),@Cantidad*@contenido)) + ' ' + @medida,@costo)
				
			end
			else
			Begin
				set @costo = round((@Cantidad*@costo)/@contenido,2,0)
				
				update EntradaProducto 
				set CantidadActual = ROUND(CantidadActual - (@Cantidad / @contenido),2,0) 
				where Id_Entrada = @IdReferencia
				
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
			
			update EntradaProducto 
			set CantidadActual = ROUND(CantidadActual + (@Cantidad / @contenido),2,0) 
			where Id_Entrada = @IdEntrada
			
			update SalidaProducto 
			set Costo = round(Costo - @costo,2,0), Cantidad = Cantidad - @Cantidad 
			where Id_Salida = @IdReferencia    
			
		end
		else
		begin
			
			update EntradaProducto 
			set CantidadActual = ROUND(CantidadActual - (@Cantidad / @contenido),2,0) 
			where Id_Entrada = @IdEntrada
			
			update SalidaProducto 
			set Costo = round(Costo + @costo,2,0), Cantidad = Cantidad + @Cantidad 
			where Id_Salida = @IdReferencia
			
		end
	end

	COMMIT TRAN
END TRY
BEGIN CATCH
	IF @@TRANCOUNT > 0 ROLLBACK TRAN
	SELECT ERROR_MESSAGE()
END CATCH
GO
/****** Object:  ForeignKey [FK_Equipo_TipoEquipo]    Script Date: 01/25/2013 09:46:03 ******/
ALTER TABLE [dbo].[Equipo]  WITH CHECK ADD  CONSTRAINT [FK_Equipo_TipoEquipo] FOREIGN KEY([id_tipo])
REFERENCES [dbo].[TipoEquipo] ([id_tipo])
GO
ALTER TABLE [dbo].[Equipo] CHECK CONSTRAINT [FK_Equipo_TipoEquipo]
GO
/****** Object:  ForeignKey [FK_Equipo_Ubicacion]    Script Date: 01/25/2013 09:46:03 ******/
ALTER TABLE [dbo].[Equipo]  WITH CHECK ADD  CONSTRAINT [FK_Equipo_Ubicacion] FOREIGN KEY([id_ubicacion])
REFERENCES [dbo].[Ubicacion] ([Id_Ubicacion])
GO
ALTER TABLE [dbo].[Equipo] CHECK CONSTRAINT [FK_Equipo_Ubicacion]
GO
/****** Object:  ForeignKey [FK_DetalleSede_Carrera]    Script Date: 01/25/2013 09:46:03 ******/
ALTER TABLE [dbo].[DetalleSede]  WITH CHECK ADD  CONSTRAINT [FK_DetalleSede_Carrera] FOREIGN KEY([Id_Carrera])
REFERENCES [dbo].[Carrera] ([Id_Carrera])
GO
ALTER TABLE [dbo].[DetalleSede] CHECK CONSTRAINT [FK_DetalleSede_Carrera]
GO
/****** Object:  ForeignKey [FK_DetalleSede_Curso]    Script Date: 01/25/2013 09:46:03 ******/
ALTER TABLE [dbo].[DetalleSede]  WITH CHECK ADD  CONSTRAINT [FK_DetalleSede_Curso] FOREIGN KEY([Id_Curso])
REFERENCES [dbo].[Curso] ([Id_Curso])
GO
ALTER TABLE [dbo].[DetalleSede] CHECK CONSTRAINT [FK_DetalleSede_Curso]
GO
/****** Object:  ForeignKey [FK_DetalleSede_Facultad]    Script Date: 01/25/2013 09:46:03 ******/
ALTER TABLE [dbo].[DetalleSede]  WITH CHECK ADD  CONSTRAINT [FK_DetalleSede_Facultad] FOREIGN KEY([Id_Facultad])
REFERENCES [dbo].[Facultad] ([Id_Facultad])
GO
ALTER TABLE [dbo].[DetalleSede] CHECK CONSTRAINT [FK_DetalleSede_Facultad]
GO
/****** Object:  ForeignKey [FK_DetalleSede_Sede]    Script Date: 01/25/2013 09:46:03 ******/
ALTER TABLE [dbo].[DetalleSede]  WITH CHECK ADD  CONSTRAINT [FK_DetalleSede_Sede] FOREIGN KEY([Id_Sede])
REFERENCES [dbo].[Sede] ([Id_Sede])
GO
ALTER TABLE [dbo].[DetalleSede] CHECK CONSTRAINT [FK_DetalleSede_Sede]
GO
/****** Object:  ForeignKey [FK_Herramienta_Ubicacion]    Script Date: 01/25/2013 09:46:03 ******/
ALTER TABLE [dbo].[Herramienta]  WITH CHECK ADD  CONSTRAINT [FK_Herramienta_Ubicacion] FOREIGN KEY([id_ubicacion])
REFERENCES [dbo].[Ubicacion] ([Id_Ubicacion])
GO
ALTER TABLE [dbo].[Herramienta] CHECK CONSTRAINT [FK_Herramienta_Ubicacion]
GO
/****** Object:  ForeignKey [FK_Producto_Familia]    Script Date: 01/25/2013 09:46:05 ******/
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD  CONSTRAINT [FK_Producto_Familia] FOREIGN KEY([Id_Familia])
REFERENCES [dbo].[Familia] ([Id_Familia])
GO
ALTER TABLE [dbo].[Producto] CHECK CONSTRAINT [FK_Producto_Familia]
GO
/****** Object:  ForeignKey [FK_Practica_Curso]    Script Date: 01/25/2013 09:46:05 ******/
ALTER TABLE [dbo].[Practica]  WITH CHECK ADD  CONSTRAINT [FK_Practica_Curso] FOREIGN KEY([Id_Curso])
REFERENCES [dbo].[Curso] ([Id_Curso])
GO
ALTER TABLE [dbo].[Practica] CHECK CONSTRAINT [FK_Practica_Curso]
GO
/****** Object:  ForeignKey [Id_Pagina]    Script Date: 01/25/2013 09:46:05 ******/
ALTER TABLE [dbo].[RolPagina]  WITH CHECK ADD  CONSTRAINT [Id_Pagina] FOREIGN KEY([Id_Pagina])
REFERENCES [dbo].[Pagina] ([Id_Pagina])
GO
ALTER TABLE [dbo].[RolPagina] CHECK CONSTRAINT [Id_Pagina]
GO
/****** Object:  ForeignKey [Id_Rol]    Script Date: 01/25/2013 09:46:05 ******/
ALTER TABLE [dbo].[RolPagina]  WITH CHECK ADD  CONSTRAINT [Id_Rol] FOREIGN KEY([Id_Rol])
REFERENCES [dbo].[Rol] ([Id_Rol])
GO
ALTER TABLE [dbo].[RolPagina] CHECK CONSTRAINT [Id_Rol]
GO
/****** Object:  ForeignKey [FK_Usuario_Rol]    Script Date: 01/25/2013 09:46:05 ******/
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Rol] FOREIGN KEY([Id_Rol])
REFERENCES [dbo].[Rol] ([Id_Rol])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_Rol]
GO
/****** Object:  ForeignKey [FK_UsuarioUbicacion_Ubicacion]    Script Date: 01/25/2013 09:46:05 ******/
ALTER TABLE [dbo].[UsuarioUbicacion]  WITH CHECK ADD  CONSTRAINT [FK_UsuarioUbicacion_Ubicacion] FOREIGN KEY([Id_Ubicacion])
REFERENCES [dbo].[Ubicacion] ([Id_Ubicacion])
GO
ALTER TABLE [dbo].[UsuarioUbicacion] CHECK CONSTRAINT [FK_UsuarioUbicacion_Ubicacion]
GO
/****** Object:  ForeignKey [FK_UsuarioUbicacion_Usuario]    Script Date: 01/25/2013 09:46:05 ******/
ALTER TABLE [dbo].[UsuarioUbicacion]  WITH CHECK ADD  CONSTRAINT [FK_UsuarioUbicacion_Usuario] FOREIGN KEY([Id_Usuario])
REFERENCES [dbo].[Usuario] ([Usuario])
GO
ALTER TABLE [dbo].[UsuarioUbicacion] CHECK CONSTRAINT [FK_UsuarioUbicacion_Usuario]
GO
/****** Object:  ForeignKey [FK_PrestamoHerramienta_Herramienta]    Script Date: 01/25/2013 09:46:05 ******/
ALTER TABLE [dbo].[PrestamoHerramienta]  WITH CHECK ADD  CONSTRAINT [FK_PrestamoHerramienta_Herramienta] FOREIGN KEY([Id_Herramienta])
REFERENCES [dbo].[Herramienta] ([id_herramienta])
GO
ALTER TABLE [dbo].[PrestamoHerramienta] CHECK CONSTRAINT [FK_PrestamoHerramienta_Herramienta]
GO
/****** Object:  ForeignKey [FK_PrestamoEquipo_Equipo]    Script Date: 01/25/2013 09:46:05 ******/
ALTER TABLE [dbo].[PrestamoEquipo]  WITH CHECK ADD  CONSTRAINT [FK_PrestamoEquipo_Equipo] FOREIGN KEY([Id_Equipo])
REFERENCES [dbo].[Equipo] ([Id_Equipo])
GO
ALTER TABLE [dbo].[PrestamoEquipo] CHECK CONSTRAINT [FK_PrestamoEquipo_Equipo]
GO
/****** Object:  ForeignKey [FK_PerdidaProducto_Producto]    Script Date: 01/25/2013 09:46:05 ******/
ALTER TABLE [dbo].[PerdidaProducto]  WITH CHECK ADD  CONSTRAINT [FK_PerdidaProducto_Producto] FOREIGN KEY([Id_Producto])
REFERENCES [dbo].[Producto] ([Codigo])
GO
ALTER TABLE [dbo].[PerdidaProducto] CHECK CONSTRAINT [FK_PerdidaProducto_Producto]
GO
/****** Object:  ForeignKey [FK_EntradaProducto_Medida]    Script Date: 01/25/2013 09:46:05 ******/
ALTER TABLE [dbo].[EntradaProducto]  WITH CHECK ADD  CONSTRAINT [FK_EntradaProducto_Medida] FOREIGN KEY([Presentacion])
REFERENCES [dbo].[Medida] ([Id_Medida])
GO
ALTER TABLE [dbo].[EntradaProducto] CHECK CONSTRAINT [FK_EntradaProducto_Medida]
GO
/****** Object:  ForeignKey [FK_EntradaProducto_Producto]    Script Date: 01/25/2013 09:46:05 ******/
ALTER TABLE [dbo].[EntradaProducto]  WITH CHECK ADD  CONSTRAINT [FK_EntradaProducto_Producto] FOREIGN KEY([Id_Producto])
REFERENCES [dbo].[Producto] ([Codigo])
GO
ALTER TABLE [dbo].[EntradaProducto] CHECK CONSTRAINT [FK_EntradaProducto_Producto]
GO
/****** Object:  ForeignKey [FK_EntradaProducto_Proveedor]    Script Date: 01/25/2013 09:46:05 ******/
ALTER TABLE [dbo].[EntradaProducto]  WITH CHECK ADD  CONSTRAINT [FK_EntradaProducto_Proveedor] FOREIGN KEY([Id_Proveedor])
REFERENCES [dbo].[Proveedor] ([Nit])
GO
ALTER TABLE [dbo].[EntradaProducto] CHECK CONSTRAINT [FK_EntradaProducto_Proveedor]
GO
/****** Object:  ForeignKey [FK_EntradaProducto_Ubicacion]    Script Date: 01/25/2013 09:46:05 ******/
ALTER TABLE [dbo].[EntradaProducto]  WITH CHECK ADD  CONSTRAINT [FK_EntradaProducto_Ubicacion] FOREIGN KEY([Id_Ubicacion])
REFERENCES [dbo].[Ubicacion] ([Id_Ubicacion])
GO
ALTER TABLE [dbo].[EntradaProducto] CHECK CONSTRAINT [FK_EntradaProducto_Ubicacion]
GO
/****** Object:  ForeignKey [FK_SalidaProducto_EntradaProducto]    Script Date: 01/25/2013 09:46:05 ******/
ALTER TABLE [dbo].[SalidaProducto]  WITH CHECK ADD  CONSTRAINT [FK_SalidaProducto_EntradaProducto] FOREIGN KEY([Id_Entrada])
REFERENCES [dbo].[EntradaProducto] ([Id_Entrada])
GO
ALTER TABLE [dbo].[SalidaProducto] CHECK CONSTRAINT [FK_SalidaProducto_EntradaProducto]
GO
