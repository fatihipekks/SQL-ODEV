USE [master]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Sirket](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[sirket_ad] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Gezegen](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[gezegen_ad] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Astronot](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ad] [nvarchar](20) NOT NULL,
	[soyad] [nvarchar](10) NOT NULL,
	[calistigi_sirket_ad] [nvarchar](20) NOT NULL,
	[gezegen_ad] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Arac](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[arac_ad] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
insert into Arac (arac_ad) values ('Star Ship')
insert into Arac (arac_ad) values ('Galaxy 2000')
insert into Sirket (sirket_ad) values ('NASA')
insert into Sirket (sirket_ad) values ('TESLA')
insert into Gezegen (gezegen_ad) values ('Mars')
insert into Gezegen (gezegen_ad) values ('Venus')
insert into Astronot (ad,soyad,calistigi_sirket_ad,gezegen_ad) values ('H�seyin','Cabbar','NASA','Mars')
insert into Astronot (ad,soyad,calistigi_sirket_ad,gezegen_ad) values ('Abdulkerim','K�rkayak','TESLA','Venus')
select kisia.ID , kisia.ad , kisia.soyad , kisia.calistigi_sirket_ad , kisia.gezegen_ad,
aracisim.arac_ad , sirketa.sirket_ad , gezegenAdi.gezegen_ad
from Sirket sirketa inner join Astronot kisia on
kisia.ID= sirketa.ID
inner join Arac aracisim on
sirketa.ID= aracisim.ID
inner join Gezegen gezegenAdi on
aracisim.ID= gezegenAdi.ID

