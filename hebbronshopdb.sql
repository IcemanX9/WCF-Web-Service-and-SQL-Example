USE [HebbronShop]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 15/09/2014 07:55:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 15/09/2014 07:55:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Price] [decimal](18, 0) NOT NULL,
	[StockLevel] [int] NOT NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([CategoryId], [Name], [Description], [Active]) VALUES (1, N'Case', N'We may have a comprehensive range of Mobile Cases for sale , which will help to keep your mobile phone protected from bumps and scratches.', 1)
INSERT [dbo].[Category] ([CategoryId], [Name], [Description], [Active]) VALUES (3, N'Covers', N'Here at Hebbron Stores, we have a monumental collection of Mobile Covers at competitive prices, which will help to keep your tablet or smartphone protected from any dents, scratches and scuffs.', 1)
INSERT [dbo].[Category] ([CategoryId], [Name], [Description], [Active]) VALUES (4, N'Accessories', N'Within our comprehensive range of Mobile Accessories, we have a range of car holders, batteries, screen protectors, sports armbands, stylus pens and much more.', 1)
INSERT [dbo].[Category] ([CategoryId], [Name], [Description], [Active]) VALUES (5, N'Flip Covers', N'Like covers but flip', 0)
SET IDENTITY_INSERT [dbo].[Category] OFF
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ProductId], [CategoryId], [Name], [Description], [Price], [StockLevel], [Active]) VALUES (1, 1, N'Nokia Lumia 820 Flip Case - Leather Style (Black)', N'Constructed with  rugged faux leather to ensure maximum protection, this sleek and lightweight Nokia Lumia 820 case is an excellent choice for your handset!Easy to fit, the black flip features an internal plastic holster; just slot your Lumia inside, ensure it''s firmly in place, and you''re good to go! Once fitted, the black flip not only adds a touch of professional class to the body of your phone - it also mitigates or reduces day-to-day concerns like scratches, dents and scuffs, enabling your Lumia 820 to look newer for longer!Featuring a front-facing magnetic clasp for easy touchscreen access - as well as a FREE complimentary screen protector, for optimum touchscreen protection! - this fabulous black flip is truly second to none.', CAST(5 AS Decimal(18, 0)), 100, 1)
INSERT [dbo].[Product] ([ProductId], [CategoryId], [Name], [Description], [Price], [StockLevel], [Active]) VALUES (2, 1, N'Nokia Lumia 820 Wallet Case - Leather Style (Purple)', N'If you''re searching for additional storage space, to lighten the load in your pockets, there''s no 
finer choice than the purple wallet Nokia Lumia 820 case!
Made from durable faux leather, this wallet is a fantastic accessory with many useful 
applications. First and foremost, it ensures excellent protection - reducing scratches, bumps and 
chips, and keeping the body of your phone free from aesthetic harm! Moreover, the wallet comes 
with many convenient utility functions; these include a magnet clasp for easy touchscreen access, 
a cut-out port around the camera lens, and a plastic internal holder to keep your phone securely 
in place!
The convenience of the purple wallet is rounded out by an ultra-competitive price and a free pre-
packaged screen protector, to ensure your touchscreen remains crystal-clear for longer than ever 
before! How can you say fairer than that?', CAST(6 AS Decimal(18, 0)), 100, 1)
INSERT [dbo].[Product] ([ProductId], [CategoryId], [Name], [Description], [Price], [StockLevel], [Active]) VALUES (3, 3, N'Nokia Lumia 820 Gel Case Cover - Floral Bee Pattern', N'Want to add a touch of the great outdoors to your phone? There''s no finer choice than the 
spring/summer themed floral gel case!
With a silicone exterior for added grip, and a padded gel underlay to cushion your phone from 
drops, this slim case provides unobtrusive and long-lasting protection for the Lumia 820. But its 
chief selling point should be its gorgeous veneer - a white/pink patterned tour de force, with bee 
motif for added style and maximum aesthetic appeal!
With a low, low price and a complimentary screen protector, to keep your touchscreen as clear and 
clean as your phone itself, there''s never been a better time to order the floral bee patterned 
case for yourself!', CAST(4 AS Decimal(18, 0)), 100, 1)
INSERT [dbo].[Product] ([ProductId], [CategoryId], [Name], [Description], [Price], [StockLevel], [Active]) VALUES (4, 3, N'Nokia Lumia 820 Gel Case Cover - Jellyfish Pattern', N'With a riotous explosion of vibrant colour, this gorgeous jellyfish gel case is a fantastic option 
for keeping your Lumia 820 free from harm!
It''s made from a combo of silicone and gel - a pair of lightweight materials which ensure maximum 
protection and minimum weight for the body of your phone! Once equipped, the jellyfish patterned 
case doesn''t just reduce the risk of drops, courtesy of its soft and grippy body - it also ensures 
that the damage of drops is reduced, helping to keep your phone in peak operating condition for 
longer.
With handy cut-outs around the external features of the Lumia, and a FREE complimentary screen 
protector to keep your touchscreen safe from damage, the jellyfish patterned case is ideal for 
getting the most out of your handset. So don''t delay to get yours now!', CAST(4 AS Decimal(18, 0)), 100, 1)
INSERT [dbo].[Product] ([ProductId], [CategoryId], [Name], [Description], [Price], [StockLevel], [Active]) VALUES (5, 3, N'Nokia Lumia 820 Hard Case - Black Hybrid', N'Constructed from interlocking layers of hard shell plastic, this ruggedized hard Nokia Lumia 820 
case is perfect for reducing damage to the body of your phone!
Lightweight and easy to fit, the black hard case slots comfortably around the back of the Lumia 
820, with no complex assembly required for fitting. Once equipped, the black hard hybrid ensures a 
boost in defence from damage such as scratches, dents, scuffs and casing chips - enabling your 
handset to continue in peak operating condition for longer!
With handy cut-outs around the external features of the Lumia, and a FREE complimentary screen 
protector, there''s no way to go wrong with the black hard hybrid! So do yourself a favour, and 
click to buy one for yourself now!', CAST(3 AS Decimal(18, 0)), 100, 1)
INSERT [dbo].[Product] ([ProductId], [CategoryId], [Name], [Description], [Price], [StockLevel], [Active]) VALUES (7, 4, N'
Black Nokia Lumia ports Armband', N'If you''re fond of exercise, there''s no finer accessory than the black Nokia Lumia 920 sports 
armband!
It''s made from a combo of PU leather and neoprene, to ensure optimum protection and a degree of 
protection from water and dust. But the main selling point of the black armband is the holster 
affixed to its exterior; your Lumia 920 slots into this gap, allowing you to use it hands-free by 
affixing it to your wrist!
Radically reducing both the risk of drops, and the damage that day-to-day usage can cause to your 
handset, the black armband is a truly convenient peripheral - get yours now!', CAST(11 AS Decimal(18, 0)), 100, 1)
INSERT [dbo].[Product] ([ProductId], [CategoryId], [Name], [Description], [Price], [StockLevel], [Active]) VALUES (8, 4, N'Black Car Holder And Charging Kit – CAR D160', N'Designed to ensure ease of use while driving, this combination Genuine Car Holder and Charging Kit is the ideal accessory for the frequent traveller.
The Nokia is the perfect phone to travel with: its excellent speakers, Beats Audio sound system and full HD 1080p screen make it the ideal choice for both navigating via SatNav, and listening to music on the move. But even the finest phone can run out of battery while on the move – and that’s where the Nokia Car Holder and Charging Kit comes into play.
Combining durable polycarbonate and metal, this easy-to-use car holder attaches comfortably to either the dashboard or the windshield of your car, allowing hands-free navigation and easy access to all of the music stored on your Nokia. Elegant and intuitive to use, simply slot your Nokia into the cradle portion of the car holder, and ensure it’s firmly in place. Once equipped, the combination car holder/charging kit will switch your phone automatically into car mode and begin charging its battery, allowing you to drive in comfort and security for longer than ever before.
With secure suction technology to ensure that your car holder doesn’t slip out at a crucial moment, this convenient, stylish accessory is a must-have for any discerning Nokia owner. So if you have one of your own, do yourself a favour – opt to buy our high-quality Nokia Car Holder and Charging Kit now!', CAST(46 AS Decimal(18, 0)), 20, 1)
SET IDENTITY_INSERT [dbo].[Product] OFF
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([CategoryId])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
