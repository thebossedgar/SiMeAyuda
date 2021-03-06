USE [MesaDeAyuda]
GO
/****** Object:  Table [dbo].[NivelSatisfaccion]    Script Date: 01/29/2013 14:39:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NivelSatisfaccion](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SolicitudId] [int] NOT NULL,
	[Nivel] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HistorialSolicitud]    Script Date: 01/29/2013 14:39:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HistorialSolicitud](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SolicitudID] [int] NOT NULL,
	[FechaTiempo] [datetime] NOT NULL,
	[UsuarioID] [int] NOT NULL,
	[EstadoID] [int] NULL,
	[Descripcion] [varchar](max) NULL,
	[Solucion] [varchar](max) NULL,
	[Prioridad] [varchar](10) NULL,
	[UsuarioAsignadoId] [int] NULL,
 CONSTRAINT [PK_HistorialSolicitud] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Estados]    Script Date: 01/29/2013 14:39:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Estados](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Estados] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EstadoRol]    Script Date: 01/29/2013 14:39:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstadoRol](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RolID] [int] NOT NULL,
	[EstadoID] [int] NOT NULL,
 CONSTRAINT [PK_EstadoRol] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EstadoOrigen]    Script Date: 01/29/2013 14:39:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstadoOrigen](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EstadoID] [int] NOT NULL,
	[EstadoOrigen] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departamentos]    Script Date: 01/29/2013 14:39:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Departamentos](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Departamentos] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Comentarios]    Script Date: 01/29/2013 14:39:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Comentarios](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Texto] [varchar](250) NOT NULL,
	[SolicitudID] [int] NOT NULL,
	[UsuarioID] [int] NOT NULL,
	[Tiempo] [datetime] NOT NULL,
 CONSTRAINT [PK_Comentarios] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Categorias]    Script Date: 01/29/2013 14:39:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Categorias](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Categorias] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Adjuntos]    Script Date: 01/29/2013 14:39:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Adjuntos](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Archivo] [varchar](250) NOT NULL,
	[UsuarioId] [int] NOT NULL,
	[SolicitudId] [int] NOT NULL,
	[FechaTiempo] [datetime] NULL,
 CONSTRAINT [PK_Adjuntos] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UsuariosTecnicosSubCategorias]    Script Date: 01/29/2013 14:39:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsuariosTecnicosSubCategorias](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UsuarioID] [int] NOT NULL,
	[SubCategoriaID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 01/29/2013 14:39:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuarios](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[DepartamentoID] [int] NOT NULL,
	[NombreUsuario] [varchar](50) NOT NULL,
	[CorreoElectronico] [varchar](50) NULL,
	[Extension] [varchar](20) NULL,
	[RolID] [int] NOT NULL,
	[UltimoAcceso] [datetime] NOT NULL,
	[FechaRegistro] [datetime] NOT NULL,
 CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SubCategorias]    Script Date: 01/29/2013 14:39:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SubCategorias](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CategoriaID] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Solicitudes]    Script Date: 01/29/2013 14:39:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Solicitudes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UsuarioCreadorID] [int] NOT NULL,
	[UsuarioTecnicoID] [int] NULL,
	[CategoriaID] [int] NOT NULL,
	[Descripcion] [varchar](max) NOT NULL,
	[Solucion] [varchar](max) NULL,
	[Prioridad] [varchar](10) NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[UltimaModificacion] [datetime] NOT NULL,
	[EstadoID] [int] NOT NULL,
	[SubCategoriaID] [int] NULL,
 CONSTRAINT [PK_Solicitudes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Satisfacciones]    Script Date: 01/29/2013 14:39:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Satisfacciones](
	[ID] [int] NOT NULL,
	[Satisfaccion] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 01/29/2013 14:39:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Roles](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[ProcNuevoUsuario]    Script Date: 01/29/2013 14:39:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ProcNuevoUsuario]
	-- Add the parameters for the stored procedure here
	@nombre as varchar(50),
	@nombreusuario as varchar(50),
	@correo as varchar(50),
	@departamento as varchar(50),
	@rol as int
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	if not exists(select * from Departamentos where Nombre = @departamento)
	begin
		insert into Departamentos(Nombre) values (@departamento)
	end
	declare @departamento_id as int = (select ID from Departamentos where Nombre = @departamento)
	if not exists(select * from Usuarios where NombreUsuario = @nombreusuario)
	begin
		insert into Usuarios(Nombre, NombreUsuario, DepartamentoID, CorreoElectronico, RolID, UltimoAcceso, FechaRegistro)
		values(@nombre, @nombreusuario, @departamento_id, @correo, @rol, GETDATE(), GETDATE())
	end
	select u.ID as 'UsuarioID', u.NombreUsuario as 'NombreUsuario', u.Nombre as 'Nombre', u.CorreoElectronico as 'Correo', u.RolID as 'RolID', r.Nombre as 'Rol', u.DepartamentoID as 'DepartamentoID', d.Nombre as 'Departamento'
	from Usuarios u, Departamentos d, Roles r
	where u.DepartamentoID = d.ID AND u.RolID = r.ID and u.NombreUsuario = @nombreusuario
	
END
GO
/****** Object:  StoredProcedure [dbo].[ProcNuevaSolicitud]    Script Date: 01/29/2013 14:39:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ProcNuevaSolicitud] 
	-- Add the parameters for the stored procedure here
	@Usuario as varchar(50),
	@categoriaID as int,
	@descripcion as varchar(MAX),
	@prioridad as varchar(10),
	@subcategoriaID as int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    declare @usuarioID as int = (select ID from Usuarios where NombreUsuario = @Usuario)
	insert into Solicitudes(UsuarioCreadorID, CategoriaID, Descripcion, Prioridad, EstadoID, FechaCreacion, UltimaModificacion, SubCategoriaID)
	VALUES(@usuarioID, @categoriaID, @descripcion, @prioridad, '1', GETDATE(), GETDATE(), @subcategoriaID)
	declare @solicitudID as int = (select TOP 1 ID from Solicitudes order by FechaCreacion desc) 
	
	insert into HistorialSolicitud(SolicitudID, FechaTiempo, UsuarioID, EstadoID, Descripcion, Prioridad)
	values(@solicitudID, GETDATE(), @usuarioID, '1', @descripcion, @prioridad)
	
	select TOP 1 s.ID as 'SolicitudID', s.UsuarioCreadorID as 'CreadorID', s.FechaCreacion as 'FechaCreacion', s.UltimaModificacion as 'UltimaModificacion', s.Prioridad as 'Prioridad', s.EstadoID as 'EstadoID', e.Nombre as 'Estado', s.Descripcion as 'Descripcion', s.CategoriaID as 'CategoriaID', c.Nombre as 'Categoria', subc.CategoriaID as 'SubCategoriaID', subc.Nombre as 'SubCategoria'
	from Solicitudes s, Usuarios u, Categorias c, Estados e, SubCategorias subc
	where s.UsuarioCreadorID = @usuarioID AND s.CategoriaID = @categoriaID AND s.Prioridad = @prioridad and s.SubCategoriaID = subc.ID
	order by s.FechaCreacion DESC
END
GO
/****** Object:  StoredProcedure [dbo].[ProcModificarSolicitud]    Script Date: 01/29/2013 14:39:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ProcModificarSolicitud] 
	-- Add the parameters for the stored procedure here
	@solicitudID as int,
	@prioridad as varchar(50) = null,
	@estado as int = null,
	@descripcion as varchar(MAX) = null,
	@solucion as varchar(MAX) = null,
	@usuario as varchar(50),
	@usuarioAsignado as int = null,
	@satisfaccion as int = null
AS
	select * from Solicitudes
	where
	(@prioridad is null) or (@solucion is null) or (@descripcion is null) or (@estado is null) or (@usuarioAsignado is null)
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    declare @usuarioid as int = (select ID from Usuarios where NombreUsuario=@usuario)
    insert into HistorialSolicitud(SolicitudID, UsuarioID, EstadoID, Descripcion, Solucion, Prioridad, FechaTiempo, UsuarioAsignadoId)
    values(@solicitudID, @usuarioid, @estado, @descripcion, @solucion, @prioridad, GETDATE(), @usuarioAsignado)
	--Valores actuales de solicitud
	declare @descripcionActual as varchar(MAX) = (select Descripcion From Solicitudes where ID=@solicitudID)
	if @descripcionActual <> @descripcion or @descripcionActual is null
	begin
		update Solicitudes set Descripcion = @descripcion where ID=@solicitudID
	end
	declare @solucionActual as varchar(MAX) = (select Solucion From Solicitudes where ID=@solicitudID)
	if @solucionActual <> @solucion or @solucionActual is null
	begin
		update Solicitudes set Solucion = @solucion where ID=@solicitudID
	end
	declare @estadoActual as varchar(MAX) = (select EstadoID From Solicitudes where ID=@solicitudID)
	if @estadoActual <> @estado
	begin
		update Solicitudes set EstadoID = @estado where ID=@solicitudID
	end
	declare @prioridadActual as varchar(MAX) = (select Prioridad From Solicitudes where ID=@solicitudID)
	if @prioridadActual <> @prioridad
	begin
		update Solicitudes set Prioridad = @prioridad where ID=@solicitudID
	end
	declare @usuarioAsignadoActual as int = (select UsuarioTecnicoID From Solicitudes where ID=@solicitudID)
	if @usuarioAsignadoActual <> @usuarioAsignado or @usuarioAsignadoActual is null
	begin
		update Solicitudes set UsuarioTecnicoID = @usuarioAsignado where ID=@solicitudID
	end
	update Solicitudes set UltimaModificacion = GETDATE() where ID=@solicitudID
	
	if (select Nombre from Estados where ID = @estado) = 'Validado'
	begin
		insert into NivelSatisfaccion(SolicitudId, Nivel)
		Values(@solicitudID, @satisfaccion)
	end
	
	select '1'
END
GO
/****** Object:  StoredProcedure [dbo].[ProcLoginUsuario]    Script Date: 01/29/2013 14:39:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ProcLoginUsuario]
	-- Add the parameters for the stored procedure here
	@nombreusuario as varchar(50)
	AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	if exists (select * from Usuarios where NombreUsuario = @nombreusuario)
	begin
		select u.ID as 'UsuarioID', u.NombreUsuario as 'NombreUsuario', u.Nombre as 'Nombre', u.CorreoElectronico as 'Correo', u.RolID as 'RolID', r.Nombre as 'Rol', u.DepartamentoID as 'DepartamentoID', d.Nombre as 'Departamento'
		from Usuarios u, Departamentos d, Roles r
		where u.DepartamentoID = d.ID AND u.RolID = r.ID and u.NombreUsuario = @nombreusuario
	end
END
GO
/****** Object:  StoredProcedure [dbo].[ProcGuardarComentario]    Script Date: 01/29/2013 14:39:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ProcGuardarComentario]
	-- Add the parameters for the stored procedure here
	@texto as varchar(250),
	@solicitudid as int,
	@usuarioid as int
	AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert into Comentarios(Texto, SolicitudID, UsuarioID, Tiempo)
	Values(@texto, @solicitudid, @usuarioid, GETDATE())
	select top 1 ID from Comentarios where SolicitudID = @solicitudid and UsuarioID = @usuarioid order by ID desc
END
GO
/****** Object:  StoredProcedure [dbo].[ProcGuardarArchivos]    Script Date: 01/29/2013 14:39:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ProcGuardarArchivos]
	-- Add the parameters for the stored procedure here
		@usuarioid as varchar(50),
		@solicitudid as int,
		@Archivo as varchar(250)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    declare @usuario as int = (select ID from Usuarios where NombreUsuario=@usuarioid)
	insert into Adjuntos(Archivo, UsuarioId, SolicitudId, FechaTiempo)
	values(@Archivo,@usuario,@solicitudid,GETDATE());
END
GO
/****** Object:  StoredProcedure [dbo].[ProcGetSolicitudesNoAsignadas]    Script Date: 01/29/2013 14:39:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ProcGetSolicitudesNoAsignadas] 
	-- Add the parameters for the stored procedure here
		
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select s.ID as 'ID', s.Prioridad as 'Prioridad', s.FechaCreacion as 'FechaCreacion', c.Nombre as 'Categoria', u.Nombre as 'UsuarioCreador'
	from Solicitudes s, Usuarios u, Categorias c
	where s.UsuarioCreadorID = u.ID and s.CategoriaID = c.ID and s.UsuarioTecnicoID is NULL and s.EstadoID = (select ID from Estados where Nombre='Ingresado')
END
GO
/****** Object:  StoredProcedure [dbo].[ProcGetSolicitudesByCreador]    Script Date: 01/29/2013 14:39:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ProcGetSolicitudesByCreador]
	-- Add the parameters for the stored procedure here
	@nombreusuario as varchar(50)	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select s.ID as 'ID', s.Prioridad as 'Prioridad', s.FechaCreacion as 'FechaCreacion', s.UltimaModificacion as 'UltimaModificacion', c.Nombre as 'Categoria', u.Nombre as 'Usuario'
	from Solicitudes s, Usuarios u, Categorias c
	where s.UsuarioCreadorID = (select ID from Usuarios where NombreUsuario=@nombreusuario) and s.CategoriaID = c.ID and s.UsuarioCreadorID = u.ID
	order by s.FechaCreacion DESC
END
GO
/****** Object:  StoredProcedure [dbo].[ProcGetSolicitudesByAsignado]    Script Date: 01/29/2013 14:39:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ProcGetSolicitudesByAsignado] 
	-- Add the parameters for the stored procedure here
	@nombreusuario as varchar(50)	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select s.ID as 'ID', s.Prioridad as 'Prioridad', s.FechaCreacion as 'FechaCreacion', s.UltimaModificacion as 'UltimaModificacion', c.Nombre as 'Categoria', u.Nombre as 'Usuario'
	from Solicitudes s, Usuarios u, Categorias c
	where s.UsuarioTecnicoID = (select ID from Usuarios where NombreUsuario=@nombreusuario) and s.CategoriaID = c.ID and s.UsuarioCreadorID = u.ID and s.EstadoID <> (select ID from Estados where Nombre = 'Cerrado')
	order by s.FechaCreacion DESC
END
GO
/****** Object:  StoredProcedure [dbo].[ProcGetSolicitudesAbiertas]    Script Date: 01/29/2013 14:39:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ProcGetSolicitudesAbiertas]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select s.ID, s.UsuarioCreadorID, s.UsuarioTecnicoID, s.FechaCreacion, s.UltimaModificacion, s.EstadoID, e.Nombre, u.CorreoElectronico, (select CorreoElectronico from Usuarios where ID=s.UsuarioTecnicoID) as 'CorreoElectronicoTecnico'
	from Solicitudes s, Estados e, Usuarios u
	where s.EstadoID <> (select ID from Estados where Nombre='Cerrado') and s.UltimaModificacion < GETDATE()-0.125 and s.EstadoID = e.ID and u.ID = s.UsuarioCreadorID

END
GO
/****** Object:  StoredProcedure [dbo].[ProcGetSolicitudById]    Script Date: 01/29/2013 14:39:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ProcGetSolicitudById] 
	-- Add the parameters for the stored procedure here
	@id as int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    declare @usuariotecnico as varchar(50) = (select NombreUsuario from Usuarios where ID= (select UsuarioTecnicoID from Solicitudes where ID=@id))
	select s.ID as 'SolicitudID', s.UsuarioCreadorID as 'CreadorID', s.FechaCreacion as 'FechaCreacion', s.UltimaModificacion as 'UltimaModificacion', s.Prioridad as 'Prioridad', s.EstadoID as 'EstadoID', e.Nombre as 'Estado', s.Descripcion as 'Descripcion', s.CategoriaID as 'CategoriaID', c.Nombre as 'Categoria', u.NombreUsuario as 'NombreUsuario', s.Solucion as 'Solucion', @usuariotecnico as 'UsuarioTecnico', subc.CategoriaID as 'SubCategoriaID', subc.Nombre as 'SubCategoria'
	from Solicitudes s, Usuarios u, Categorias c, Estados e, SubCategorias subc
	where s.ID = @id AND s.UsuarioCreadorID = u.ID AND s.CategoriaID = c.ID AND s.EstadoID = e.ID and s.SubCategoriaID = subc.ID
END
GO
/****** Object:  StoredProcedure [dbo].[ProcGetHistorialSolicitud]    Script Date: 01/29/2013 14:39:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ProcGetHistorialSolicitud] 
	-- Add the parameters for the stored procedure here
	@solicitudid as int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    --declare @tecnico as varchar(50) = (select Nombre from Usuarios where ID = (select UsuarioAsignadoId from HistorialSolicitud where SolicitudID = @solicitudid))
	select h.FechaTiempo as 'FechaTiempo', u.Nombre as 'Usuario', (select Nombre from Estados where ID = h.EstadoID) as 'Estado', h.Descripcion as 'Descripcion', h.Solucion as 'Solucion', h.Prioridad as 'Prioridad', (select Nombre from Usuarios where ID = (select UsuarioAsignadoId from HistorialSolicitud where ID = h.ID)) as 'Tecnico'
	from HistorialSolicitud h, Usuarios u
	where h.UsuarioID = u.ID and h.SolicitudID = @solicitudid
END
GO
/****** Object:  StoredProcedure [dbo].[ProcGetEstadosByOrigen]    Script Date: 01/29/2013 14:39:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ProcGetEstadosByOrigen]
	-- Add the parameters for the stored procedure here
	@id as int,
	@nombreusuario as varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select e.Nombre as 'Nombre', e.ID as 'ID'
	from Estados e, EstadoOrigen eo, EstadoRol er
	where e.ID = eo.EstadoID AND eo.EstadoOrigen = @id AND er.RolID = (select RolID from Usuarios where NombreUsuario=@nombreusuario) and er.EstadoID = e.ID
END
GO
/****** Object:  StoredProcedure [dbo].[ProcGetComentariosBySolicitudId]    Script Date: 01/29/2013 14:39:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ProcGetComentariosBySolicitudId] 
	-- Add the parameters for the stored procedure here
	@solicitudid as int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select c.Texto as 'Texto', c.Tiempo as 'Tiempo', u.NombreUsuario as 'NombreUsuario'
	from Comentarios c, Usuarios u
	where c.SolicitudID = @solicitudid and c.UsuarioID = u.ID
	
END
GO
/****** Object:  StoredProcedure [dbo].[ProcGetAllTecnicosBySubCategoria]    Script Date: 01/29/2013 14:39:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ProcGetAllTecnicosBySubCategoria]
	-- Add the parameters for the stored procedure here
	@solicitudid as int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    declare @subcat as int = (select SubCategoriaID from Solicitudes where ID = @solicitudid)
	select u.NombreUsuario 
	from Usuarios u, UsuariosTecnicosSubCategorias utsc
	where u.RolID = (select ID from Roles where Nombre='Tecnico') and utsc.SubCategoriaID = @subcat and utsc.UsuarioID = u.ID
END
GO
/****** Object:  StoredProcedure [dbo].[ProcGetAllTecnicos]    Script Date: 01/29/2013 14:39:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ProcGetAllTecnicos] 
	-- Add the parameters for the stored procedure here
	AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select * from Usuarios where RolID = (select ID from Roles where Nombre='Tecnico')
END
GO
/****** Object:  StoredProcedure [dbo].[ProcGetAdjuntosBySolicitud]    Script Date: 01/29/2013 14:39:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ProcGetAdjuntosBySolicitud]
	-- Add the parameters for the stored procedure here
	@id as int	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select a.ID as 'ID', a.Archivo as 'Archivo', u.NombreUsuario as 'NombreUsuario', a.FechaTiempo as 'FechaTiempo'
	from Adjuntos a, Usuarios u
	where a.SolicitudId = @id and a.UsuarioId = u.ID
END
GO
/****** Object:  StoredProcedure [dbo].[ProcConsulta]    Script Date: 01/29/2013 14:39:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ProcConsulta] 
	-- Add the parameters for the stored procedure here
	@categoria as int = null,
	@prioridad as varchar(10) = null,
	@estado as int  = null,
	@departamento as int  = null,
	@creador as varchar(50) = null,
	@tecnico as varchar(50) = null,
	@fechaDesde as varchar(20) = null,
	@fechaHasta as varchar(20) = null,
	@fechaModificacionDesde as varchar(20) = null,
	@fechaModificacionHasta as varchar(20) = null,
	@pagina as int = null
AS
	select *
	from Solicitudes
	where (@categoria is null) or (@prioridad is null) or (@estado is null) or (@departamento is null) or (@creador is null) or (@tecnico is null) or (@fechaDesde is null) or (@fechaHasta is null)
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	--Creacion de tabla temporal
	declare @tablaTemporal table(
	ID int,
	UsuarioCreadorID int,
	UsuarioTecnicoID int,
	CategoriaID int,
	Prioridad varchar(10),
	FechaCreacion datetime,
	UltimaModificacion datetime,
	EstadoID int
	)
	declare @tablaTemporal2 table(
	ID int,
	UsuarioCreadorID int,
	UsuarioTecnicoID int,
	CategoriaID int,
	Prioridad varchar(10),
	FechaCreacion datetime,
	UltimaModificacion datetime,
	EstadoID int
	)
	--Insercion de datos en tabla temporal
	insert into @tablaTemporal(ID, UsuarioCreadorID, UsuarioTecnicoID, CategoriaID, Prioridad, FechaCreacion, UltimaModificacion, EstadoID)
	select ID, UsuarioCreadorID, UsuarioTecnicoID, CategoriaID, Prioridad, FechaCreacion, UltimaModificacion, EstadoID
	from Solicitudes
	--Filtrado por categoria
	if @categoria is not null
	begin
	insert into @tablaTemporal2(ID, UsuarioCreadorID, UsuarioTecnicoID, CategoriaID, Prioridad, FechaCreacion, UltimaModificacion, EstadoID)
	select ID, UsuarioCreadorID, UsuarioTecnicoID, CategoriaID, Prioridad, FechaCreacion, UltimaModificacion, EstadoID
	from @tablaTemporal
	where CategoriaID = @categoria
	delete from @tablaTemporal
	insert into @tablaTemporal(ID, UsuarioCreadorID, UsuarioTecnicoID, CategoriaID, Prioridad, FechaCreacion, UltimaModificacion, EstadoID)
	select ID, UsuarioCreadorID, UsuarioTecnicoID, CategoriaID, Prioridad, FechaCreacion, UltimaModificacion, EstadoID
	from @tablaTemporal2
	end
	--Filtrado por prioridad
	if @prioridad is not null
	begin
	delete from @tablaTemporal2
	insert into @tablaTemporal2(ID, UsuarioCreadorID, UsuarioTecnicoID, CategoriaID, Prioridad, FechaCreacion, UltimaModificacion, EstadoID)
	select ID, UsuarioCreadorID, UsuarioTecnicoID, CategoriaID, Prioridad, FechaCreacion, UltimaModificacion, EstadoID
	from @tablaTemporal
	where Prioridad = @prioridad
	delete from @tablaTemporal
	insert into @tablaTemporal(ID, UsuarioCreadorID, UsuarioTecnicoID, CategoriaID, Prioridad, FechaCreacion, UltimaModificacion, EstadoID)
	select ID, UsuarioCreadorID, UsuarioTecnicoID, CategoriaID, Prioridad, FechaCreacion, UltimaModificacion, EstadoID
	from @tablaTemporal2
	end
	--Filtrado por estado
	if @estado is not null
	begin
	delete from @tablaTemporal2
	insert into @tablaTemporal2(ID, UsuarioCreadorID, UsuarioTecnicoID, CategoriaID, Prioridad, FechaCreacion, UltimaModificacion, EstadoID)
	select ID, UsuarioCreadorID, UsuarioTecnicoID, CategoriaID, Prioridad, FechaCreacion, UltimaModificacion, EstadoID
	from @tablaTemporal
	where EstadoID = @estado
	delete from @tablaTemporal
	insert into @tablaTemporal(ID, UsuarioCreadorID, UsuarioTecnicoID, CategoriaID, Prioridad, FechaCreacion, UltimaModificacion, EstadoID)
	select ID, UsuarioCreadorID, UsuarioTecnicoID, CategoriaID, Prioridad, FechaCreacion, UltimaModificacion, EstadoID
	from @tablaTemporal2
	end
	--Filtrado por Usuario Creador
	if @creador is not null
	begin
	delete from @tablaTemporal2
	insert into @tablaTemporal2(ID, UsuarioCreadorID, UsuarioTecnicoID, CategoriaID, Prioridad, FechaCreacion, UltimaModificacion, EstadoID)
	select ID, UsuarioCreadorID, UsuarioTecnicoID, CategoriaID, Prioridad, FechaCreacion, UltimaModificacion, EstadoID
	from @tablaTemporal
	where UsuarioCreadorID = (select ID from Usuarios where NombreUsuario = @creador)
	delete from @tablaTemporal
	insert into @tablaTemporal(ID, UsuarioCreadorID, UsuarioTecnicoID, CategoriaID, Prioridad, FechaCreacion, UltimaModificacion, EstadoID)
	select ID, UsuarioCreadorID, UsuarioTecnicoID, CategoriaID, Prioridad, FechaCreacion, UltimaModificacion, EstadoID
	from @tablaTemporal2
	end
	--Filtrado por Usuario Tecnico
	if @tecnico is not null
	begin
	delete from @tablaTemporal2
	insert into @tablaTemporal2(ID, UsuarioCreadorID, UsuarioTecnicoID, CategoriaID, Prioridad, FechaCreacion, UltimaModificacion, EstadoID)
	select ID, UsuarioCreadorID, UsuarioTecnicoID, CategoriaID, Prioridad, FechaCreacion, UltimaModificacion, EstadoID
	from @tablaTemporal
	where UsuarioTecnicoID = (select ID from Usuarios where NombreUsuario = @tecnico)
	delete from @tablaTemporal
	insert into @tablaTemporal(ID, UsuarioCreadorID, UsuarioTecnicoID, CategoriaID, Prioridad, FechaCreacion, UltimaModificacion, EstadoID)
	select ID, UsuarioCreadorID, UsuarioTecnicoID, CategoriaID, Prioridad, FechaCreacion, UltimaModificacion, EstadoID
	from @tablaTemporal2
	end
	--Filtrado por Fecha de Creacion Desde
	if @fechaDesde is not null
	begin
	delete from @tablaTemporal2
	insert into @tablaTemporal2(ID, UsuarioCreadorID, UsuarioTecnicoID, CategoriaID, Prioridad, FechaCreacion, UltimaModificacion, EstadoID)
	select ID, UsuarioCreadorID, UsuarioTecnicoID, CategoriaID, Prioridad, FechaCreacion, UltimaModificacion, EstadoID
	from @tablaTemporal
	where FechaCreacion > @fechaDesde
	delete from @tablaTemporal
	insert into @tablaTemporal(ID, UsuarioCreadorID, UsuarioTecnicoID, CategoriaID, Prioridad, FechaCreacion, UltimaModificacion, EstadoID)
	select ID, UsuarioCreadorID, UsuarioTecnicoID, CategoriaID, Prioridad, FechaCreacion, UltimaModificacion, EstadoID
	from @tablaTemporal2
	end
	--Filtrado por Fecha de Creacion Hasta
	if @fechaHasta is not null
	begin
	delete from @tablaTemporal2
	insert into @tablaTemporal2(ID, UsuarioCreadorID, UsuarioTecnicoID, CategoriaID, Prioridad, FechaCreacion, UltimaModificacion, EstadoID)
	select ID, UsuarioCreadorID, UsuarioTecnicoID, CategoriaID, Prioridad, FechaCreacion, UltimaModificacion, EstadoID
	from @tablaTemporal
	where FechaCreacion < @fechaHasta
	delete from @tablaTemporal
	insert into @tablaTemporal(ID, UsuarioCreadorID, UsuarioTecnicoID, CategoriaID, Prioridad, FechaCreacion, UltimaModificacion, EstadoID)
	select ID, UsuarioCreadorID, UsuarioTecnicoID, CategoriaID, Prioridad, FechaCreacion, UltimaModificacion, EstadoID
	from @tablaTemporal2
	end
	--Filtrado por Ultima Modificacion Desde
	if @fechaModificacionDesde is not null
	begin
	delete from @tablaTemporal2
	insert into @tablaTemporal2(ID, UsuarioCreadorID, UsuarioTecnicoID, CategoriaID, Prioridad, FechaCreacion, UltimaModificacion, EstadoID)
	select ID, UsuarioCreadorID, UsuarioTecnicoID, CategoriaID, Prioridad, FechaCreacion, UltimaModificacion, EstadoID
	from @tablaTemporal
	where UltimaModificacion > @fechaModificacionDesde
	delete from @tablaTemporal
	insert into @tablaTemporal(ID, UsuarioCreadorID, UsuarioTecnicoID, CategoriaID, Prioridad, FechaCreacion, UltimaModificacion, EstadoID)
	select ID, UsuarioCreadorID, UsuarioTecnicoID, CategoriaID, Prioridad, FechaCreacion, UltimaModificacion, EstadoID
	from @tablaTemporal2
	end
	--Filtrado por Ultima Modificacion Hasta
	if @fechaModificacionHasta is not null
	begin
	delete from @tablaTemporal2
	insert into @tablaTemporal2(ID, UsuarioCreadorID, UsuarioTecnicoID, CategoriaID, Prioridad, FechaCreacion, UltimaModificacion, EstadoID)
	select ID, UsuarioCreadorID, UsuarioTecnicoID, CategoriaID, Prioridad, FechaCreacion, UltimaModificacion, EstadoID
	from @tablaTemporal
	where UltimaModificacion < @fechaModificacionHasta
	delete from @tablaTemporal
	insert into @tablaTemporal(ID, UsuarioCreadorID, UsuarioTecnicoID, CategoriaID, Prioridad, FechaCreacion, UltimaModificacion, EstadoID)
	select ID, UsuarioCreadorID, UsuarioTecnicoID, CategoriaID, Prioridad, FechaCreacion, UltimaModificacion, EstadoID
	from @tablaTemporal2
	end
	--Filtrado por Departamento
	if @departamento is not null
	begin
	delete from @tablaTemporal2
	insert into @tablaTemporal2(ID, UsuarioCreadorID, UsuarioTecnicoID, CategoriaID, Prioridad, FechaCreacion, UltimaModificacion, EstadoID)
	select t.ID, t.UsuarioCreadorID, t.UsuarioTecnicoID, t.CategoriaID, t.Prioridad, t.FechaCreacion, t.UltimaModificacion, t.EstadoID
	from @tablaTemporal t, Usuarios u
	where t.UsuarioCreadorID = u.ID and u.DepartamentoID = @departamento
	delete from @tablaTemporal
	insert into @tablaTemporal(ID, UsuarioCreadorID, UsuarioTecnicoID, CategoriaID, Prioridad, FechaCreacion, UltimaModificacion, EstadoID)
	select ID, UsuarioCreadorID, UsuarioTecnicoID, CategoriaID, Prioridad, FechaCreacion, UltimaModificacion, EstadoID
	from @tablaTemporal2
	end
	
	--Devuelta de resultado filtrado :)
	--select ID 
	--from @tablaTemporal
	SELECT  ID
	FROM    ( SELECT    ROW_NUMBER() OVER ( ORDER BY ID ) AS RowNum, *
			  FROM      @tablaTemporal
			) AS RowConstrainedResult
	WHERE   RowNum >= (10 * @pagina) - 9
		AND RowNum <= (10 * @pagina)
	ORDER BY ID
	--Devolver paginas de 10 registros
	declare @a as int = (select COUNT(*) from @tablaTemporal)
	if @a%10 = 0
	begin
	select @a/10 as 'Paginas'
	end
	else
	begin
	select (@a/10)+1 as 'Paginas'
	end
	
	
	-- Insert statements for procedure here
	
END
GO
/****** Object:  StoredProcedure [dbo].[ProcAsignarTecnico]    Script Date: 01/29/2013 14:39:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ProcAsignarTecnico] 
	-- Add the parameters for the stored procedure here
	@solicitudID as int,
	@tecnico as int,
	@supervisor as varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update Solicitudes set UsuarioTecnicoID = @tecnico, UltimaModificacion = GETDATE(), EstadoID ='2' where ID = @solicitudID
	declare @supervisorid as int = (select ID from Usuarios where NombreUsuario=@supervisor)
	insert into HistorialSolicitud(SolicitudID, FechaTiempo, EstadoID, UsuarioID) 
	VALUES(@solicitudID, GETDATE(), '2', @supervisorid)
END
GO
