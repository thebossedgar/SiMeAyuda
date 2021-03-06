USE [MesaDeAyuda]
GO
/****** Object:  Table [dbo].[SubCategorias]    Script Date: 01/24/2013 15:42:53 ******/
SET IDENTITY_INSERT [dbo].[SubCategorias] ON
INSERT [dbo].[SubCategorias] ([ID], [CategoriaID], [Nombre]) VALUES (1, 1, N'Aplicaciones de la institucion')
INSERT [dbo].[SubCategorias] ([ID], [CategoriaID], [Nombre]) VALUES (2, 1, N'Herramientas(Ofimatica, Acrobat, entre otras)')
INSERT [dbo].[SubCategorias] ([ID], [CategoriaID], [Nombre]) VALUES (3, 1, N'Antivirus')
INSERT [dbo].[SubCategorias] ([ID], [CategoriaID], [Nombre]) VALUES (5, 2, N'Instalacion')
INSERT [dbo].[SubCategorias] ([ID], [CategoriaID], [Nombre]) VALUES (6, 2, N'Reparacion')
INSERT [dbo].[SubCategorias] ([ID], [CategoriaID], [Nombre]) VALUES (7, 3, N'Problemas de conexion')
INSERT [dbo].[SubCategorias] ([ID], [CategoriaID], [Nombre]) VALUES (8, 4, N'Gestionar impresora')
INSERT [dbo].[SubCategorias] ([ID], [CategoriaID], [Nombre]) VALUES (9, 5, N'Creacion de usuarios')
INSERT [dbo].[SubCategorias] ([ID], [CategoriaID], [Nombre]) VALUES (10, 5, N'Creacion de correo electronico')
INSERT [dbo].[SubCategorias] ([ID], [CategoriaID], [Nombre]) VALUES (11, 6, N'Otros')
SET IDENTITY_INSERT [dbo].[SubCategorias] OFF
/****** Object:  Table [dbo].[Satisfacciones]    Script Date: 01/24/2013 15:42:53 ******/
INSERT [dbo].[Satisfacciones] ([ID], [Satisfaccion]) VALUES (1, N'Muy Insatisfecho')
INSERT [dbo].[Satisfacciones] ([ID], [Satisfaccion]) VALUES (2, N'Insatisfecho')
INSERT [dbo].[Satisfacciones] ([ID], [Satisfaccion]) VALUES (3, N'Indiferente')
INSERT [dbo].[Satisfacciones] ([ID], [Satisfaccion]) VALUES (4, N'Satisfecho')
INSERT [dbo].[Satisfacciones] ([ID], [Satisfaccion]) VALUES (5, N'Muy Satisfecho')
/****** Object:  Table [dbo].[Roles]    Script Date: 01/24/2013 15:42:53 ******/
SET IDENTITY_INSERT [dbo].[Roles] ON
INSERT [dbo].[Roles] ([ID], [Nombre]) VALUES (1, N'Solicitante')
INSERT [dbo].[Roles] ([ID], [Nombre]) VALUES (2, N'Tecnico')
INSERT [dbo].[Roles] ([ID], [Nombre]) VALUES (3, N'Supervisor')
SET IDENTITY_INSERT [dbo].[Roles] OFF
/****** Object:  Table [dbo].[Estados]    Script Date: 01/24/2013 15:42:53 ******/
SET IDENTITY_INSERT [dbo].[Estados] ON
INSERT [dbo].[Estados] ([ID], [Nombre]) VALUES (1, N'Ingresado')
INSERT [dbo].[Estados] ([ID], [Nombre]) VALUES (2, N'Asignado')
INSERT [dbo].[Estados] ([ID], [Nombre]) VALUES (3, N'En desarrollo')
INSERT [dbo].[Estados] ([ID], [Nombre]) VALUES (4, N'Resuelto')
INSERT [dbo].[Estados] ([ID], [Nombre]) VALUES (5, N'Validado')
INSERT [dbo].[Estados] ([ID], [Nombre]) VALUES (6, N'Pospuesto')
INSERT [dbo].[Estados] ([ID], [Nombre]) VALUES (8, N'No valido')
INSERT [dbo].[Estados] ([ID], [Nombre]) VALUES (9, N'Re-ingresado')
INSERT [dbo].[Estados] ([ID], [Nombre]) VALUES (10, N'Duplicado')
INSERT [dbo].[Estados] ([ID], [Nombre]) VALUES (11, N'Cerrado')
SET IDENTITY_INSERT [dbo].[Estados] OFF
/****** Object:  Table [dbo].[EstadoRol]    Script Date: 01/24/2013 15:42:53 ******/
SET IDENTITY_INSERT [dbo].[EstadoRol] ON
INSERT [dbo].[EstadoRol] ([ID], [RolID], [EstadoID]) VALUES (1, 1, 1)
INSERT [dbo].[EstadoRol] ([ID], [RolID], [EstadoID]) VALUES (2, 2, 1)
INSERT [dbo].[EstadoRol] ([ID], [RolID], [EstadoID]) VALUES (3, 3, 1)
INSERT [dbo].[EstadoRol] ([ID], [RolID], [EstadoID]) VALUES (4, 3, 2)
INSERT [dbo].[EstadoRol] ([ID], [RolID], [EstadoID]) VALUES (5, 2, 3)
INSERT [dbo].[EstadoRol] ([ID], [RolID], [EstadoID]) VALUES (6, 3, 3)
INSERT [dbo].[EstadoRol] ([ID], [RolID], [EstadoID]) VALUES (7, 2, 4)
INSERT [dbo].[EstadoRol] ([ID], [RolID], [EstadoID]) VALUES (8, 3, 4)
INSERT [dbo].[EstadoRol] ([ID], [RolID], [EstadoID]) VALUES (9, 1, 5)
INSERT [dbo].[EstadoRol] ([ID], [RolID], [EstadoID]) VALUES (10, 3, 5)
INSERT [dbo].[EstadoRol] ([ID], [RolID], [EstadoID]) VALUES (11, 2, 6)
INSERT [dbo].[EstadoRol] ([ID], [RolID], [EstadoID]) VALUES (12, 3, 6)
INSERT [dbo].[EstadoRol] ([ID], [RolID], [EstadoID]) VALUES (13, 1, 8)
INSERT [dbo].[EstadoRol] ([ID], [RolID], [EstadoID]) VALUES (14, 3, 9)
INSERT [dbo].[EstadoRol] ([ID], [RolID], [EstadoID]) VALUES (15, 2, 10)
INSERT [dbo].[EstadoRol] ([ID], [RolID], [EstadoID]) VALUES (16, 3, 10)
INSERT [dbo].[EstadoRol] ([ID], [RolID], [EstadoID]) VALUES (17, 3, 11)
SET IDENTITY_INSERT [dbo].[EstadoRol] OFF
/****** Object:  Table [dbo].[EstadoOrigen]    Script Date: 01/24/2013 15:42:53 ******/
SET IDENTITY_INSERT [dbo].[EstadoOrigen] ON
INSERT [dbo].[EstadoOrigen] ([ID], [EstadoID], [EstadoOrigen]) VALUES (4, 1, NULL)
INSERT [dbo].[EstadoOrigen] ([ID], [EstadoID], [EstadoOrigen]) VALUES (5, 2, 1)
INSERT [dbo].[EstadoOrigen] ([ID], [EstadoID], [EstadoOrigen]) VALUES (6, 3, 2)
INSERT [dbo].[EstadoOrigen] ([ID], [EstadoID], [EstadoOrigen]) VALUES (7, 4, 3)
INSERT [dbo].[EstadoOrigen] ([ID], [EstadoID], [EstadoOrigen]) VALUES (8, 5, 4)
INSERT [dbo].[EstadoOrigen] ([ID], [EstadoID], [EstadoOrigen]) VALUES (9, 6, 1)
INSERT [dbo].[EstadoOrigen] ([ID], [EstadoID], [EstadoOrigen]) VALUES (10, 6, 2)
INSERT [dbo].[EstadoOrigen] ([ID], [EstadoID], [EstadoOrigen]) VALUES (11, 6, 3)
INSERT [dbo].[EstadoOrigen] ([ID], [EstadoID], [EstadoOrigen]) VALUES (12, 8, 4)
INSERT [dbo].[EstadoOrigen] ([ID], [EstadoID], [EstadoOrigen]) VALUES (13, 9, 8)
INSERT [dbo].[EstadoOrigen] ([ID], [EstadoID], [EstadoOrigen]) VALUES (14, 10, 1)
INSERT [dbo].[EstadoOrigen] ([ID], [EstadoID], [EstadoOrigen]) VALUES (15, 3, 6)
INSERT [dbo].[EstadoOrigen] ([ID], [EstadoID], [EstadoOrigen]) VALUES (17, 3, 9)
INSERT [dbo].[EstadoOrigen] ([ID], [EstadoID], [EstadoOrigen]) VALUES (18, 11, 5)
INSERT [dbo].[EstadoOrigen] ([ID], [EstadoID], [EstadoOrigen]) VALUES (19, 11, 10)
SET IDENTITY_INSERT [dbo].[EstadoOrigen] OFF
/****** Object:  Table [dbo].[Categorias]    Script Date: 01/24/2013 15:42:53 ******/
SET IDENTITY_INSERT [dbo].[Categorias] ON
INSERT [dbo].[Categorias] ([ID], [Nombre]) VALUES (1, N'Software')
INSERT [dbo].[Categorias] ([ID], [Nombre]) VALUES (2, N'Hardware')
INSERT [dbo].[Categorias] ([ID], [Nombre]) VALUES (3, N'Red')
INSERT [dbo].[Categorias] ([ID], [Nombre]) VALUES (4, N'Impresora')
INSERT [dbo].[Categorias] ([ID], [Nombre]) VALUES (5, N'Usuarios')
INSERT [dbo].[Categorias] ([ID], [Nombre]) VALUES (6, N'Otros')
SET IDENTITY_INSERT [dbo].[Categorias] OFF
