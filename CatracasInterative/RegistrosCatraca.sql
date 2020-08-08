USE [Interative]
GO

/****** Object:  Table [dbo].[RegistrosCatraca]    Script Date: 08/08/2020 07:19:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[RegistrosCatraca](
	[DataHoraGravacao] [datetime] NOT NULL,
	[NumCatraca] [int] NOT NULL,
	[DataHoraProcesso] [datetime] NOT NULL,
	[TimeStampSensor1] [datetime] NOT NULL,
	[TimeStampSensor2] [datetime] NOT NULL,
	[Direcao] [int] NOT NULL,
 CONSTRAINT [PK_RegistrosCatraca] PRIMARY KEY CLUSTERED 
(
	[DataHoraGravacao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RegistrosCatraca] ADD  CONSTRAINT [DF_RegistrosCatraca_DataHoraGravacao]  DEFAULT (getdate()) FOR [DataHoraGravacao]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1=Entrada, -1=Saida, 0=Indefinido' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RegistrosCatraca', @level2type=N'COLUMN',@level2name=N'Direcao'
GO

