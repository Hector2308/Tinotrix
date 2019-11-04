USE [master]
GO
/****** Object:  Database [TinotrixCliente]    Script Date: 25/06/2019 14:20:54 ******/
IF  EXISTS (SELECT * FROM sysdatabases WHERE (name = 'TinotrixCliente')) 
BEGIN
	DROP DATABASE TinotrixCliente;
END
go
CREATE DATABASE [TinotrixCliente]
GO
USE [TinotrixCliente]
GO
/****** Object:  Table [dbo].[_Empresa]    Script Date: 25/06/2019 14:20:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_Empresa](
	[UidEmpresa] [uniqueidentifier] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[_IPServidor]    Script Date: 08/08/2019 14:47:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_IPServidor](
	[VchIpServidor] [varchar](150) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[_Licencia]    Script Date: 08/08/2019 14:47:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_Licencia](
	[UidLicencia] [uniqueidentifier] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[_Puerto]    Script Date: 08/08/2019 14:47:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_Puerto](
	[VchPuerto] [varchar](150) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[_Usuario]    Script Date: 08/08/2019 14:47:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_Usuario](
	[UidUsuario] [uniqueidentifier] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AliasUnidadMedida]    Script Date: 08/08/2019 14:47:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AliasUnidadMedida](
	[UidMedida] [uniqueidentifier] NOT NULL,
	[UidMedidaConversion] [uniqueidentifier] NOT NULL,
	[VchAliasMedida] [varchar](150) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ConversionUnidadMedida]    Script Date: 08/08/2019 14:47:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConversionUnidadMedida](
	[UidMedida] [uniqueidentifier] NOT NULL,
	[VchMedidaConversion] [nvarchar](50) NOT NULL
) ON [PRIMARY]

GO
--INSERT [dbo].[_Empresa] ([UidEmpresa]) VALUES (N'66e48284-328f-42d5-914d-da4b8b6c4229')
--INSERT [dbo].[_IPServidor] ([VchIpServidor]) VALUES (N'192.168.1.72')
--INSERT [dbo].[_Licencia] ([UidLicencia]) VALUES (N'67fbf4bd-ba47-4ad3-9f37-d6e43be20774')
--INSERT [dbo].[_Puerto] ([VchPuerto]) VALUES (N'8000')
INSERT [dbo].[AliasUnidadMedida] ([UidMedida], [UidMedidaConversion], [VchAliasMedida]) VALUES (N'7af05649-f301-4944-be18-51c886320937', N'198bdeb2-d82a-48d0-aae1-eb6d2427e61e', N'PGL')
INSERT [dbo].[AliasUnidadMedida] ([UidMedida], [UidMedidaConversion], [VchAliasMedida]) VALUES (N'22aa737e-526d-40e9-baae-5894b06c588b', N'198bdeb2-d82a-48d0-aae1-eb6d2427e61e', N'PLG')
INSERT [dbo].[AliasUnidadMedida] ([UidMedida], [UidMedidaConversion], [VchAliasMedida]) VALUES (N'dc6065cf-429a-41b3-8b65-5dbd297f4f81', N'198bdeb2-d82a-48d0-aae1-eb6d2427e61e', N'PULGADAS')
INSERT [dbo].[AliasUnidadMedida] ([UidMedida], [UidMedidaConversion], [VchAliasMedida]) VALUES (N'66b9d0df-377e-4b74-8bfe-5dcbb7595a77', N'198bdeb2-d82a-48d0-aae1-eb6d2427e61e', N'PULGADA')
INSERT [dbo].[AliasUnidadMedida] ([UidMedida], [UidMedidaConversion], [VchAliasMedida]) VALUES (N'594d7b37-ac1a-4cfb-9a80-6ac3eb5d9600', N'9a622fae-20d4-4434-af7d-9d3c3a428e95', N'CEN')
INSERT [dbo].[AliasUnidadMedida] ([UidMedida], [UidMedidaConversion], [VchAliasMedida]) VALUES (N'f4c70b2e-83e8-4258-b872-7a6140d69c1a', N'198bdeb2-d82a-48d0-aae1-eb6d2427e61e', N'IN')
INSERT [dbo].[AliasUnidadMedida] ([UidMedida], [UidMedidaConversion], [VchAliasMedida]) VALUES (N'99eb720d-10df-4a6e-b896-8caaa7fac2e1', N'198bdeb2-d82a-48d0-aae1-eb6d2427e61e', N'INCH')
INSERT [dbo].[AliasUnidadMedida] ([UidMedida], [UidMedidaConversion], [VchAliasMedida]) VALUES (N'fad41c44-10f6-47a1-82e4-92a7a77b463b', N'9a622fae-20d4-4434-af7d-9d3c3a428e95', N'CM')
INSERT [dbo].[AliasUnidadMedida] ([UidMedida], [UidMedidaConversion], [VchAliasMedida]) VALUES (N'521238e6-ca94-4127-920f-b57db3550fed', N'9a622fae-20d4-4434-af7d-9d3c3a428e95', N'CENTIMETRO')
INSERT [dbo].[AliasUnidadMedida] ([UidMedida], [UidMedidaConversion], [VchAliasMedida]) VALUES (N'0ab84a7c-1dec-4d66-b026-ee265e5a3a54', N'9a622fae-20d4-4434-af7d-9d3c3a428e95', N'CENTIMETROS')
INSERT [dbo].[ConversionUnidadMedida] ([UidMedida], [VchMedidaConversion]) VALUES (N'9a622fae-20d4-4434-af7d-9d3c3a428e95', N'37.7952755905512')
INSERT [dbo].[ConversionUnidadMedida] ([UidMedida], [VchMedidaConversion]) VALUES (N'198bdeb2-d82a-48d0-aae1-eb6d2427e61e', N'96.0')
/****** Object:  StoredProcedure [dbo].[Wpf_ActualizarEmpresa]    Script Date: 08/08/2019 14:47:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Wpf_ActualizarEmpresa]
	@UidEmpresa uniqueidentifier
AS
	delete from _Empresa
	insert into _Empresa (UidEmpresa) values(@UidEmpresa)
RETURN 0
GO
/****** Object:  StoredProcedure [dbo].[Wpf_ActualizarIpServidor]    Script Date: 08/08/2019 14:47:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Wpf_ActualizarIpServidor]
	-- Add the parameters for the stored procedure here
	@VchIpServidor Varchar(150)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	delete from _IPServidor
	Insert _IPServidor ( VchIpServidor) values(@VchIpServidor)
END

GO
/****** Object:  StoredProcedure [dbo].[Wpf_ActualizarLicencia]    Script Date: 08/08/2019 14:47:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Wpf_ActualizarLicencia]
	@UidLicencia uniqueidentifier
AS
	delete from _Licencia
	insert into _Licencia (UidLicencia) values(@UidLicencia)
RETURN 0
GO
/****** Object:  StoredProcedure [dbo].[Wpf_ActualizarPuerto]    Script Date: 08/08/2019 14:47:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[Wpf_ActualizarPuerto]
	-- Add the parameters for the stored procedure here
	@VchPuerto Varchar(150)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	delete from _Puerto
	Insert _Puerto ( VchPuerto) values(@VchPuerto)
END

GO
/****** Object:  StoredProcedure [dbo].[Wpf_ActualizarUsuario]    Script Date: 08/08/2019 14:47:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Wpf_ActualizarUsuario]
	@UidUsuario uniqueidentifier
AS
	delete from _Usuario
	insert into _Usuario (UidUsuario) values(@UidUsuario)
RETURN 0
GO
/****** Object:  StoredProcedure [dbo].[Wpf_Empresa_Find]    Script Date: 08/08/2019 14:47:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Wpf_Empresa_Find]
	
AS
 if((SELECT count(UidEmpresa) from _Empresa)=1)
  begin
	SELECT UidEmpresa from _Empresa
  end
GO
/****** Object:  StoredProcedure [dbo].[Wpf_IPServidor_Find]    Script Date: 08/08/2019 14:47:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Wpf_IPServidor_Find]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select VchIpServidor from _IPServidor
END

GO
/****** Object:  StoredProcedure [dbo].[Wpf_Licencia_Find]    Script Date: 08/08/2019 14:47:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Wpf_Licencia_Find]
	
AS
 if((SELECT count(UidLicencia) from _Licencia)=1)
  begin
	SELECT UidLicencia from _Licencia
  end
GO
/****** Object:  StoredProcedure [dbo].[Wpf_Puerto_Find]    Script Date: 08/08/2019 14:47:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[Wpf_Puerto_Find]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select   VchPuerto from _Puerto
END

GO
/****** Object:  StoredProcedure [dbo].[Wpf_RevocarEmpresa]    Script Date: 08/08/2019 14:47:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Wpf_RevocarEmpresa]
AS
	delete from _Empresa
	
RETURN 0
GO
/****** Object:  StoredProcedure [dbo].[Wpf_RevocarLicencia]    Script Date: 08/08/2019 14:47:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Wpf_RevocarLicencia]
AS
	delete from _Licencia
	delete from _Empresa
RETURN 0
GO
/****** Object:  StoredProcedure [dbo].[Wpf_RevocarUsuario]    Script Date: 08/08/2019 14:47:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Wpf_RevocarUsuario]
AS
	delete from _Usuario
	
RETURN 0
GO
/****** Object:  StoredProcedure [dbo].[Wpf_UnidadMedida_Find]    Script Date: 08/08/2019 14:47:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Wpf_UnidadMedida_Find]
	@VchAliasMedida Varchar(150)
AS
if ((Select COUNT( CUM.VchMedidaConversion)  from ConversionUnidadMedida as CUM
 INNER JOIN AliasUnidadMedida as AUM ON AUM.UidMedidaConversion= CUM.UidMedida
 Where AUM.VchAliasMedida=@VchAliasMedida) =1)
begin
Select CUM.VchMedidaConversion as IntMedidaConversion  from ConversionUnidadMedida as CUM
 INNER JOIN AliasUnidadMedida as AUM ON AUM.UidMedidaConversion= CUM.UidMedida
 Where AUM.VchAliasMedida=@VchAliasMedida
end
else
begin
Select CUM.VchMedidaConversion as IntMedidaConversion  from ConversionUnidadMedida as CUM
 INNER JOIN AliasUnidadMedida as AUM ON AUM.UidMedidaConversion= CUM.UidMedida
 Where AUM.VchAliasMedida='CENTIMETRO'
end
GO
/****** Object:  StoredProcedure [dbo].[Wpf_Usuario_Find]    Script Date: 08/08/2019 14:47:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Wpf_Usuario_Find]
	
AS
 if((SELECT count(UidUsuario) from _Usuario)=1)
  begin
	SELECT UidUsuario from _Usuario
  end
GO
/****** Object:  StoredProcedure [dbo].[Wpf_VerificarExistencia_IPServidor]    Script Date: 08/08/2019 14:47:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Wpf_VerificarExistencia_IPServidor]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	DECLARE @IsBTech BIT
    -- Insert statements for procedure here
	if(( select count(*) from _IPServidor)=1)
		begin
		 set @IsBTech= 1
		end
	else
		begin
		set  @IsBTech= 0
		end
SELECT @IsBTech AS 'IsBTech'
END

GO
/****** Object:  StoredProcedure [dbo].[Wpf_VerificarExistencia_Puerto]    Script Date: 08/08/2019 14:47:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[Wpf_VerificarExistencia_Puerto]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	DECLARE @IsBTech BIT
    -- Insert statements for procedure here
	if(( select count(*) from _Puerto)=1)
		begin
		 set @IsBTech= 1
		end
	else
		begin
		set  @IsBTech= 0
		end
SELECT @IsBTech AS 'IsBTech'
END

GO
/****** Object:  StoredProcedure [dbo].[Wpf_VerificarExistenciaEmpresa]    Script Date: 08/08/2019 14:47:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Wpf_VerificarExistenciaEmpresa]
	
AS
	select count(*) AS IntNoEmpresas from _Empresa
GO
/****** Object:  StoredProcedure [dbo].[Wpf_VerificarExistenciaLicencia]    Script Date: 08/08/2019 14:47:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Wpf_VerificarExistenciaLicencia]
	
AS
	select count(*) AS IntNoLicencias from _Licencia
GO
/****** Object:  StoredProcedure [dbo].[Wpf_VerificarExistenciaUsuario]    Script Date: 08/08/2019 14:47:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Wpf_VerificarExistenciaUsuario]
	
AS
	select count(*) AS IntNoUsuarios from _Usuario
GO
