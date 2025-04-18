USE [ProjectSWP]
GO
/****** Object:  Table [dbo].[Answer]    Script Date: 3/4/2025 2:10:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Answer](
	[AnswerID] [int] IDENTITY(1,1) NOT NULL,
	[QuestionID] [int] NULL,
	[AnswerText] [nvarchar](255) NOT NULL,
	[SkinTypeID] [nvarchar](255) NULL,
	[Point] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[AnswerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Blog]    Script Date: 3/4/2025 2:10:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blog](
	[BlogID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](255) NOT NULL,
	[Content] [nvarchar](max) NOT NULL,
	[AuthorID] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[Status] [nvarchar](50) NOT NULL,
	[Category] [nvarchar](100) NULL,
	[SkinType] [nvarchar](100) NULL,
	[ImgURL] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[BlogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CarePlan]    Script Date: 3/4/2025 2:10:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CarePlan](
	[CarePlanID] [int] IDENTITY(1,1) NOT NULL,
	[SkinTypeID] [int] NULL,
	[PlanName] [nvarchar](255) NOT NULL,
	[Description] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[CarePlanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CarePlanProduct]    Script Date: 3/4/2025 2:10:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CarePlanProduct](
	[CarePlanID] [int] NOT NULL,
	[StepID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[ProductName] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[CarePlanID] ASC,
	[StepID] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CarePlanStep]    Script Date: 3/4/2025 2:10:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CarePlanStep](
	[StepID] [int] IDENTITY(1,1) NOT NULL,
	[CarePlanID] [int] NULL,
	[StepOrder] [int] NOT NULL,
	[StepName] [nvarchar](255) NOT NULL,
	[StepDescription] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[StepID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 3/4/2025 2:10:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[News]    Script Date: 3/4/2025 2:10:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](255) NOT NULL,
	[Content] [text] NOT NULL,
	[CreateDate] [datetime] NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[ImageURL] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderProduct]    Script Date: 3/4/2025 2:10:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderProduct](
	[OrderID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[UnitPrice] [decimal](10, 2) NOT NULL,
	[TotalPrice] [decimal](10, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 3/4/2025 2:10:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[OrderDate] [datetime] NULL,
	[UserID] [int] NULL,
	[TotalAmount] [decimal](10, 2) NULL,
	[PromotionID] [int] NULL,
	[DiscountAmount] [decimal](10, 2) NULL,
	[FinalAmount] [decimal](10, 2) NULL,
	[PaymentID] [int] NULL,
	[Status] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 3/4/2025 2:10:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[PaymentID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[PaymentTypeID] [int] NULL,
	[PaymentStatusID] [int] NULL,
	[PaymentDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[PaymentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentStatus]    Script Date: 3/4/2025 2:10:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentStatus](
	[PaymentStatusID] [int] IDENTITY(1,1) NOT NULL,
	[PaymentStatus] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PaymentStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentType]    Script Date: 3/4/2025 2:10:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentType](
	[PaymentTypeID] [int] IDENTITY(1,1) NOT NULL,
	[PaymentTypeName] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PaymentTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 3/4/2025 2:10:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](255) NOT NULL,
	[Price] [decimal](10, 2) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Ingredient] [nvarchar](max) NULL,
	[CategoryID] [int] NULL,
	[SkinTypeID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductsImage]    Script Date: 3/4/2025 2:10:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductsImage](
	[ProductsImageID] [int] IDENTITY(1,1) NOT NULL,
	[ImageDescription] [nvarchar](255) NULL,
	[ImageUrl] [varchar](255) NOT NULL,
	[ProductID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductsImageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Promotions]    Script Date: 3/4/2025 2:10:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Promotions](
	[PromotionID] [int] IDENTITY(1,1) NOT NULL,
	[PromotionName] [nvarchar](255) NOT NULL,
	[DiscountPercentage] [decimal](5, 2) NOT NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[IsActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[PromotionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Question]    Script Date: 3/4/2025 2:10:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Question](
	[QuestionID] [int] IDENTITY(1,1) NOT NULL,
	[QuizID] [int] NULL,
	[QuestionText] [nvarchar](255) NOT NULL,
	[OrderNumber] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[QuestionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quiz]    Script Date: 3/4/2025 2:10:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quiz](
	[QuizID] [int] IDENTITY(1,1) NOT NULL,
	[QuizName] [nvarchar](255) NOT NULL,
	[Description] [nvarchar](255) NULL,
	[DateCreated] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[QuizID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Review]    Script Date: 3/4/2025 2:10:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Review](
	[ReviewID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NULL,
	[UserID] [int] NULL,
	[Rating] [int] NOT NULL,
	[Comment] [nvarchar](255) NULL,
	[ReviewDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ReviewID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 3/4/2025 2:10:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SkinType]    Script Date: 3/4/2025 2:10:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SkinType](
	[SkinTypeID] [int] IDENTITY(1,1) NOT NULL,
	[SkinType] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SkinTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserAnswer]    Script Date: 3/4/2025 2:10:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserAnswer](
	[UserAnswerID] [int] IDENTITY(1,1) NOT NULL,
	[UserQuizID] [int] NULL,
	[QuestionID] [nvarchar](255) NULL,
	[AnswerID] [nvarchar](255) NULL,
	[SkinTypeID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserAnswerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserCarePlan]    Script Date: 3/4/2025 2:10:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserCarePlan](
	[UserCarePlanID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[CarePlanID] [int] NULL,
	[DateCreate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserCarePlanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserQuiz]    Script Date: 3/4/2025 2:10:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserQuiz](
	[UserQuizID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[QuizID] [int] NULL,
	[DateTaken] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserQuizID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 3/4/2025 2:10:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](255) NOT NULL,
	[FullName] [nvarchar](255) NULL,
	[Email] [varchar](255) NOT NULL,
	[Password] [varchar](255) NOT NULL,
	[ConfirmPassword] [varchar](255) NOT NULL,
	[RoleID] [int] NULL,
	[Phone] [varchar](255) NULL,
	[Address] [nvarchar](255) NULL,
	[DateCreate] [datetime] NULL,
	[IsActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Answer] ON 

INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerText], [SkinTypeID], [Point]) VALUES (1, 1, N'Rất nhờn, bóng loáng', N'1,4', N'3,1')
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerText], [SkinTypeID], [Point]) VALUES (2, 1, N'Căng rát, có hiện tượng bong tróc', N'2,5', N'3,1')
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerText], [SkinTypeID], [Point]) VALUES (3, 1, N'Không có cảm giác gì đặc biệt', N'3', N'3')
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerText], [SkinTypeID], [Point]) VALUES (4, 1, N'Chữ T dầu nhưng hai bên má khô', N'4', N'3')
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerText], [SkinTypeID], [Point]) VALUES (5, 1, N'Hơi châm chích, có thể bị đỏ', N'5', N'3')
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerText], [SkinTypeID], [Point]) VALUES (6, 2, N'Bóng dầu toàn bộ mặt', N'1,4', N'3,1')
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerText], [SkinTypeID], [Point]) VALUES (7, 2, N'Cảm thấy khô hơn so với buổi sáng', N'2,5', N'3,1')
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerText], [SkinTypeID], [Point]) VALUES (8, 2, N'Không có sự thay đổi rõ rệt', N'3', N'3')
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerText], [SkinTypeID], [Point]) VALUES (9, 2, N'Vùng chữ T tiết dầu, nhưng má vẫn ổn', N'4,1', N'3,1')
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerText], [SkinTypeID], [Point]) VALUES (10, 2, N'Da bị ửng đỏ, có cảm giác châm chích', N'5', N'3')
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerText], [SkinTypeID], [Point]) VALUES (11, 3, N'Rất dễ, lỗ chân lông to, thường xuyên có mụn', N'1,5', N'3,1')
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerText], [SkinTypeID], [Point]) VALUES (12, 3, N'Ít mụn, nhưng da hay bong tróc', N'2', N'3')
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerText], [SkinTypeID], [Point]) VALUES (13, 3, N'Hiếm khi bị mụn', N'3', N'3')
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerText], [SkinTypeID], [Point]) VALUES (14, 3, N'Mụn chỉ xuất hiện ở vùng chữ T', N'4', N'3')
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerText], [SkinTypeID], [Point]) VALUES (15, 3, N'Mụn nhỏ li ti, có thể kèm theo đỏ rát', N'5', N'3')
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerText], [SkinTypeID], [Point]) VALUES (16, 4, N'Rất nhanh trôi, bị bóng dầu', N'1', N'3')
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerText], [SkinTypeID], [Point]) VALUES (17, 4, N'Thường bị mốc, bong tróc', N'2,5', N'3,1')
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerText], [SkinTypeID], [Point]) VALUES (18, 4, N'Giữ lâu mà không có vấn đề gì', N'3', N'3')
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerText], [SkinTypeID], [Point]) VALUES (19, 4, N'Vùng chữ T nhanh trôi nhưng hai bên má vẫn ổn', N'4,1', N'3,1')
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerText], [SkinTypeID], [Point]) VALUES (20, 4, N'Hay bị kích ứng, nổi mẩn đỏ', N'5', N'3')
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerText], [SkinTypeID], [Point]) VALUES (21, 5, N'Không có phản ứng gì, nhưng dễ bị nhờn', N'1', N'3')
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerText], [SkinTypeID], [Point]) VALUES (22, 5, N'Da cảm thấy khô căng, hơi châm chích', N'2,5', N'3,1')
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerText], [SkinTypeID], [Point]) VALUES (23, 5, N'Không bị ảnh hưởng gì', N'3', N'3')
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerText], [SkinTypeID], [Point]) VALUES (24, 5, N'Vùng chữ T có thể bị nhờn, nhưng hai bên má vẫn ổn', N'4,1', N'3,1')
INSERT [dbo].[Answer] ([AnswerID], [QuestionID], [AnswerText], [SkinTypeID], [Point]) VALUES (25, 5, N'Dễ bị kích ứng, nổi mẩn đỏ', N'5', N'3')
SET IDENTITY_INSERT [dbo].[Answer] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (1, N'Tẩy trang')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (2, N'Sữa rửa mặt')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (3, N'Toner')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (4, N'Serum ')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (5, N'Kem Dưỡng')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (6, N'Kem Chống Nắng')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[News] ON 

INSERT [dbo].[News] ([ID], [Title], [Content], [CreateDate], [StartDate], [EndDate], [ImageURL]) VALUES (2, N'New Product Launch - Hydrating Serum', N'Introducing our latest hydrating serum, perfect for glowing skin!', CAST(N'2025-02-28T02:03:41.533' AS DateTime), CAST(N'2025-03-15T00:00:00.000' AS DateTime), CAST(N'2025-03-31T00:00:00.000' AS DateTime), N'https://thanhnien.mediacdn.vn/Uploaded/quochungqc/2022_11_08/skincare-1-8591.png')
INSERT [dbo].[News] ([ID], [Title], [Content], [CreateDate], [StartDate], [EndDate], [ImageURL]) VALUES (3, N'International Women''s Day Special', N'Celebrate Women''s Day with special promotions on self-care products!', CAST(N'2025-02-28T02:05:12.130' AS DateTime), CAST(N'2025-03-08T00:00:00.000' AS DateTime), CAST(N'2025-03-09T00:00:00.000' AS DateTime), N'https://images.squarespace-cdn.com/content/v1/53883795e4b016c956b8d243/1589887720909-5OZULEY68GY073JXVGRL/chup-anh-san-pham-mauhong-2.jpg')
INSERT [dbo].[News] ([ID], [Title], [Content], [CreateDate], [StartDate], [EndDate], [ImageURL]) VALUES (5, N'Spring Skincare Sale - Up to 30% Off', N'Get ready for spring with our exclusive skincare sale! Enjoy up to 30% off on selected items.', CAST(N'2025-03-02T12:03:40.337' AS DateTime), CAST(N'2025-03-20T00:00:00.000' AS DateTime), CAST(N'2025-04-05T00:00:00.000' AS DateTime), N'https://imageskincare.co.uk/cdn/shop/files/OILY-SKIN-SET-PDP-R01A.jpg?v=1714549403&width=800')
INSERT [dbo].[News] ([ID], [Title], [Content], [CreateDate], [StartDate], [EndDate], [ImageURL]) VALUES (6, N'Expert Skincare Webinar', N'Join our live webinar with skincare experts to learn the best routines for healthy skin!', CAST(N'2025-03-02T12:05:05.570' AS DateTime), CAST(N'2025-04-10T18:00:00.000' AS DateTime), CAST(N'2025-04-10T20:00:00.000' AS DateTime), N'https://www.glowrecipe.com/cdn/shop/files/12_24_24PDP_1.png?v=1735687868')
SET IDENTITY_INSERT [dbo].[News] OFF
GO
INSERT [dbo].[OrderProduct] ([OrderID], [ProductID], [Quantity], [UnitPrice], [TotalPrice]) VALUES (8, 3, 1, CAST(150000.00 AS Decimal(10, 2)), CAST(150000.00 AS Decimal(10, 2)))
INSERT [dbo].[OrderProduct] ([OrderID], [ProductID], [Quantity], [UnitPrice], [TotalPrice]) VALUES (8, 5, 1, CAST(350000.00 AS Decimal(10, 2)), CAST(350000.00 AS Decimal(10, 2)))
INSERT [dbo].[OrderProduct] ([OrderID], [ProductID], [Quantity], [UnitPrice], [TotalPrice]) VALUES (9, 6, 1, CAST(260000.00 AS Decimal(10, 2)), CAST(260000.00 AS Decimal(10, 2)))
INSERT [dbo].[OrderProduct] ([OrderID], [ProductID], [Quantity], [UnitPrice], [TotalPrice]) VALUES (9, 7, 1, CAST(150000.00 AS Decimal(10, 2)), CAST(150000.00 AS Decimal(10, 2)))
INSERT [dbo].[OrderProduct] ([OrderID], [ProductID], [Quantity], [UnitPrice], [TotalPrice]) VALUES (10, 5, 1, CAST(350000.00 AS Decimal(10, 2)), CAST(350000.00 AS Decimal(10, 2)))
INSERT [dbo].[OrderProduct] ([OrderID], [ProductID], [Quantity], [UnitPrice], [TotalPrice]) VALUES (10, 8, 1, CAST(450000.00 AS Decimal(10, 2)), CAST(450000.00 AS Decimal(10, 2)))
INSERT [dbo].[OrderProduct] ([OrderID], [ProductID], [Quantity], [UnitPrice], [TotalPrice]) VALUES (11, 5, 1, CAST(350000.00 AS Decimal(10, 2)), CAST(350000.00 AS Decimal(10, 2)))
INSERT [dbo].[OrderProduct] ([OrderID], [ProductID], [Quantity], [UnitPrice], [TotalPrice]) VALUES (11, 7, 1, CAST(150000.00 AS Decimal(10, 2)), CAST(150000.00 AS Decimal(10, 2)))
INSERT [dbo].[OrderProduct] ([OrderID], [ProductID], [Quantity], [UnitPrice], [TotalPrice]) VALUES (12, 4, 2, CAST(250000.00 AS Decimal(10, 2)), CAST(500000.00 AS Decimal(10, 2)))
INSERT [dbo].[OrderProduct] ([OrderID], [ProductID], [Quantity], [UnitPrice], [TotalPrice]) VALUES (12, 6, 1, CAST(260000.00 AS Decimal(10, 2)), CAST(260000.00 AS Decimal(10, 2)))
INSERT [dbo].[OrderProduct] ([OrderID], [ProductID], [Quantity], [UnitPrice], [TotalPrice]) VALUES (13, 6, 2, CAST(260000.00 AS Decimal(10, 2)), CAST(520000.00 AS Decimal(10, 2)))
INSERT [dbo].[OrderProduct] ([OrderID], [ProductID], [Quantity], [UnitPrice], [TotalPrice]) VALUES (13, 8, 1, CAST(450000.00 AS Decimal(10, 2)), CAST(450000.00 AS Decimal(10, 2)))
INSERT [dbo].[OrderProduct] ([OrderID], [ProductID], [Quantity], [UnitPrice], [TotalPrice]) VALUES (14, 4, 1, CAST(250000.00 AS Decimal(10, 2)), CAST(250000.00 AS Decimal(10, 2)))
INSERT [dbo].[OrderProduct] ([OrderID], [ProductID], [Quantity], [UnitPrice], [TotalPrice]) VALUES (14, 7, 1, CAST(150000.00 AS Decimal(10, 2)), CAST(150000.00 AS Decimal(10, 2)))
INSERT [dbo].[OrderProduct] ([OrderID], [ProductID], [Quantity], [UnitPrice], [TotalPrice]) VALUES (15, 4, 1, CAST(250000.00 AS Decimal(10, 2)), CAST(250000.00 AS Decimal(10, 2)))
INSERT [dbo].[OrderProduct] ([OrderID], [ProductID], [Quantity], [UnitPrice], [TotalPrice]) VALUES (15, 7, 1, CAST(150000.00 AS Decimal(10, 2)), CAST(150000.00 AS Decimal(10, 2)))
INSERT [dbo].[OrderProduct] ([OrderID], [ProductID], [Quantity], [UnitPrice], [TotalPrice]) VALUES (16, 5, 1, CAST(350000.00 AS Decimal(10, 2)), CAST(350000.00 AS Decimal(10, 2)))
INSERT [dbo].[OrderProduct] ([OrderID], [ProductID], [Quantity], [UnitPrice], [TotalPrice]) VALUES (16, 8, 1, CAST(450000.00 AS Decimal(10, 2)), CAST(450000.00 AS Decimal(10, 2)))
INSERT [dbo].[OrderProduct] ([OrderID], [ProductID], [Quantity], [UnitPrice], [TotalPrice]) VALUES (18, 4, 2, CAST(250000.00 AS Decimal(10, 2)), CAST(500000.00 AS Decimal(10, 2)))
INSERT [dbo].[OrderProduct] ([OrderID], [ProductID], [Quantity], [UnitPrice], [TotalPrice]) VALUES (20, 4, 1, CAST(250000.00 AS Decimal(10, 2)), CAST(250000.00 AS Decimal(10, 2)))
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([OrderID], [OrderDate], [UserID], [TotalAmount], [PromotionID], [DiscountAmount], [FinalAmount], [PaymentID], [Status]) VALUES (8, CAST(N'2025-02-27T22:22:56.053' AS DateTime), 5, CAST(500000.00 AS Decimal(10, 2)), NULL, CAST(0.00 AS Decimal(10, 2)), CAST(500000.00 AS Decimal(10, 2)), NULL, N'Pending')
INSERT [dbo].[Orders] ([OrderID], [OrderDate], [UserID], [TotalAmount], [PromotionID], [DiscountAmount], [FinalAmount], [PaymentID], [Status]) VALUES (9, CAST(N'2025-02-28T08:07:00.190' AS DateTime), 5, CAST(410000.00 AS Decimal(10, 2)), NULL, CAST(0.00 AS Decimal(10, 2)), CAST(410000.00 AS Decimal(10, 2)), NULL, N'Pending')
INSERT [dbo].[Orders] ([OrderID], [OrderDate], [UserID], [TotalAmount], [PromotionID], [DiscountAmount], [FinalAmount], [PaymentID], [Status]) VALUES (10, CAST(N'2025-02-28T08:07:12.583' AS DateTime), 6, CAST(800000.00 AS Decimal(10, 2)), NULL, CAST(0.00 AS Decimal(10, 2)), CAST(800000.00 AS Decimal(10, 2)), NULL, N'Pending')
INSERT [dbo].[Orders] ([OrderID], [OrderDate], [UserID], [TotalAmount], [PromotionID], [DiscountAmount], [FinalAmount], [PaymentID], [Status]) VALUES (11, CAST(N'2025-02-28T08:07:24.593' AS DateTime), 7, CAST(500000.00 AS Decimal(10, 2)), NULL, CAST(0.00 AS Decimal(10, 2)), CAST(500000.00 AS Decimal(10, 2)), NULL, N'Pending')
INSERT [dbo].[Orders] ([OrderID], [OrderDate], [UserID], [TotalAmount], [PromotionID], [DiscountAmount], [FinalAmount], [PaymentID], [Status]) VALUES (12, CAST(N'2025-02-28T08:07:40.280' AS DateTime), 8, CAST(760000.00 AS Decimal(10, 2)), NULL, CAST(0.00 AS Decimal(10, 2)), CAST(760000.00 AS Decimal(10, 2)), NULL, N'Pending')
INSERT [dbo].[Orders] ([OrderID], [OrderDate], [UserID], [TotalAmount], [PromotionID], [DiscountAmount], [FinalAmount], [PaymentID], [Status]) VALUES (13, CAST(N'2025-02-28T08:07:53.090' AS DateTime), 9, CAST(970000.00 AS Decimal(10, 2)), NULL, CAST(0.00 AS Decimal(10, 2)), CAST(970000.00 AS Decimal(10, 2)), NULL, N'Pending')
INSERT [dbo].[Orders] ([OrderID], [OrderDate], [UserID], [TotalAmount], [PromotionID], [DiscountAmount], [FinalAmount], [PaymentID], [Status]) VALUES (14, CAST(N'2025-02-28T08:08:05.700' AS DateTime), 10, CAST(400000.00 AS Decimal(10, 2)), NULL, CAST(0.00 AS Decimal(10, 2)), CAST(400000.00 AS Decimal(10, 2)), NULL, N'Pending')
INSERT [dbo].[Orders] ([OrderID], [OrderDate], [UserID], [TotalAmount], [PromotionID], [DiscountAmount], [FinalAmount], [PaymentID], [Status]) VALUES (15, CAST(N'2025-02-28T08:08:13.843' AS DateTime), 11, CAST(400000.00 AS Decimal(10, 2)), NULL, CAST(0.00 AS Decimal(10, 2)), CAST(400000.00 AS Decimal(10, 2)), NULL, N'Pending')
INSERT [dbo].[Orders] ([OrderID], [OrderDate], [UserID], [TotalAmount], [PromotionID], [DiscountAmount], [FinalAmount], [PaymentID], [Status]) VALUES (16, CAST(N'2025-02-28T08:08:24.803' AS DateTime), 12, CAST(800000.00 AS Decimal(10, 2)), NULL, CAST(0.00 AS Decimal(10, 2)), CAST(800000.00 AS Decimal(10, 2)), NULL, N'Pending')
INSERT [dbo].[Orders] ([OrderID], [OrderDate], [UserID], [TotalAmount], [PromotionID], [DiscountAmount], [FinalAmount], [PaymentID], [Status]) VALUES (18, CAST(N'2025-02-28T12:22:03.723' AS DateTime), 9, CAST(500000.00 AS Decimal(10, 2)), NULL, CAST(0.00 AS Decimal(10, 2)), CAST(500000.00 AS Decimal(10, 2)), NULL, N'Pending')
INSERT [dbo].[Orders] ([OrderID], [OrderDate], [UserID], [TotalAmount], [PromotionID], [DiscountAmount], [FinalAmount], [PaymentID], [Status]) VALUES (20, CAST(N'2025-02-28T12:25:49.663' AS DateTime), 5, CAST(250000.00 AS Decimal(10, 2)), NULL, CAST(0.00 AS Decimal(10, 2)), CAST(250000.00 AS Decimal(10, 2)), NULL, N'Completed')
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[PaymentStatus] ON 

INSERT [dbo].[PaymentStatus] ([PaymentStatusID], [PaymentStatus]) VALUES (1, N'Chưa thanh toán')
INSERT [dbo].[PaymentStatus] ([PaymentStatusID], [PaymentStatus]) VALUES (2, N'Đã thanh toán')
INSERT [dbo].[PaymentStatus] ([PaymentStatusID], [PaymentStatus]) VALUES (3, N'Hủy thanh toán')
SET IDENTITY_INSERT [dbo].[PaymentStatus] OFF
GO
SET IDENTITY_INSERT [dbo].[PaymentType] ON 

INSERT [dbo].[PaymentType] ([PaymentTypeID], [PaymentTypeName]) VALUES (1, N'Thanh toan qua VNPay')
INSERT [dbo].[PaymentType] ([PaymentTypeID], [PaymentTypeName]) VALUES (2, N'Thanh toán qua thẻ ngân hàng')
SET IDENTITY_INSERT [dbo].[PaymentType] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [Quantity], [Description], [Ingredient], [CategoryID], [SkinTypeID]) VALUES (1, N'Gel Rửa Mặt Kiểm Soát Dầu La Roche Posay Effaclar Gel', CAST(410000.00 AS Decimal(10, 2)), 1000, N'Gel rửa mặt tạo bọt làm sạch & giảm nhờn cho da dầu nhạy cảm La Roche-Posay Effaclar Purifying Foaming Gel sẽ giúp ngăn ngừa và hỗ trợ điều trị mụn tối đa với kết cấu dạng gel trong dễ dàng tạo bọt cùng công thức không chứa dầu, không cồn, an toàn cho làn da.

Sản phẩm nhẹ nhàng làm sạch da từ sâu trong lỗ chân lông, loại bỏ bụi bẩn cùng dầu thừa, đồng thời giữ độ pH luôn ở mức cân bằng 5.5 nên sau khi rửa mặt xong, da không hề khô rít, căng rát, mà vẫn mềm mịn, sạch thoáng và đầy sức sống.', N'AQUA / WATER • SODIUM LAURETH SULFATE • PEG-8 • COCO-BETAINE • HEXYLENE GLYCOL • SODIUM CHLORIDE • PEG-120 METHYL GLUCOSE DIOLEATE • ZINC PCA • SODIUM HYDROXIDE • CAPRYLYL GLYCOL • CITRIC ACID • SODIUM BENZOATE • PHENOXYETHANOL • PARFUM / FRAGRANCE', 2, 3)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [Quantity], [Description], [Ingredient], [CategoryID], [SkinTypeID]) VALUES (3, N'Gel Rửa Mặt Kiểm Soát Dầu La Roche Posay Effaclar Gel', CAST(150000.00 AS Decimal(10, 2)), 1000, N'Effaclar Foaming Gel loại bỏ bụi bẩn và bã nhờn trên da. Giảm khả năng xuất hiện của mụn đầu đen và kiểm soát độ bóng nhờn của da. Đem lại làn da sạch và tươi mát.', N'LAROCHE-POSAY LABORATOIRE PHARMACEUTIQUE', 2, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [Quantity], [Description], [Ingredient], [CategoryID], [SkinTypeID]) VALUES (4, N'Sữa Rửa Mặt Cetaphil Gentle Skin Cleanser', CAST(250000.00 AS Decimal(10, 2)), 1000, N'Sữa rửa mặt Cetaphil Gentle Skin Cleanser nhẹ nhàng làm sạch da, loại bỏ bụi bẩn và bã nhờn mà không gây kích ứng. Công thức không chứa xà phòng, không gây khô da, phù hợp cho mọi loại da, đặc biệt là da nhạy cảm.', N'AQUA • CETEARYL ALCOHOL • PROPYLENE GLYCOL • SODIUM LAURYL SULFATE • STEARYL ALCOHOL • PARABEN • PARFUM', 2, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [Quantity], [Description], [Ingredient], [CategoryID], [SkinTypeID]) VALUES (5, N'Kem Dưỡng Ẩm CeraVe Moisturizing Cream', CAST(350000.00 AS Decimal(10, 2)), 1000, N'Kem dưỡng ẩm CeraVe Moisturizing Cream giúp cung cấp độ ẩm và bảo vệ hàng rào tự nhiên của da. Công thức chứa Ceramide và Hyaluronic Acid giúp da luôn mềm mịn, không bị khô ráp.', N'Water, Glycerin, Petrolatum, Ceramide NP, Ceramide EOP, Sodium Hyaluronate, Cholesterol, Tocopherol, Dimethicone, Carbomer', 3, 2)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [Quantity], [Description], [Ingredient], [CategoryID], [SkinTypeID]) VALUES (6, N'Kem Chống Nắng Anessa Perfect UV Sunscreen', CAST(260000.00 AS Decimal(10, 2)), 1000, N'Kem chống nắng Anessa Perfect UV Sunscreen SPF50+ PA++++ bảo vệ da khỏi tác động của tia UV, chống thấm nước và mồ hôi, thích hợp cho hoạt động ngoài trời.', N'Water, Ethylhexyl Methoxycinnamate, Zinc Oxide, Uvinul A Plus, Titanium Dioxide, Cyclopentasiloxane, Dipropylene Glycol, Silica, Green Tea Extract', 4, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [Quantity], [Description], [Ingredient], [CategoryID], [SkinTypeID]) VALUES (7, N'Serum Vitamin C Melano CC Rohto', CAST(150000.00 AS Decimal(10, 2)), 1000, N'Serum Melano CC chứa Vitamin C tinh khiết giúp làm sáng da, mờ thâm, đồng thời ngăn ngừa mụn và hỗ trợ phục hồi da tổn thương.', N'Water, Ascorbic Acid, Dipotassium Glycyrrhizate, Sodium Ascorbyl Phosphate, Tocopheryl Acetate, Hydrolyzed Collagen, Thymol', 5, 3)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [Quantity], [Description], [Ingredient], [CategoryID], [SkinTypeID]) VALUES (8, N'La Roche-Posay Anthelios UV Correct SPF50', CAST(450000.00 AS Decimal(10, 2)), 800, N'Kem chống nắng La Roche-Posay Anthelios UV Correct SPF50 giúp bảo vệ da trước tia UV, ngăn ngừa lão hóa và hỗ trợ làm đều màu da.', N'Aqua, Homosalate, Octocrylene, Ethylhexyl Salicylate, Niacinamide, Glycerin, Thermal Spring Water', 6, 2)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [Quantity], [Description], [Ingredient], [CategoryID], [SkinTypeID]) VALUES (9, N'Biore UV Aqua Rich Watery Essence SPF50+ PA++++', CAST(250000.00 AS Decimal(10, 2)), 1000, N'Kem chống nắng Biore UV Aqua Rich Watery Essence với kết cấu siêu nhẹ, thẩm thấu nhanh, giúp bảo vệ da khỏi tia UV mà không gây bết dính.', N'Water, Alcohol, Ethylhexyl Methoxycinnamate, Butylene Glycol, Sodium Hyaluronate, Royal Jelly Extract, Citrus Extract', 6, 3)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [Quantity], [Description], [Ingredient], [CategoryID], [SkinTypeID]) VALUES (10, N'Vichy Capital Soleil UV-Age Daily SPF50+', CAST(590000.00 AS Decimal(10, 2)), 600, N'Kem chống nắng Vichy Capital Soleil UV-Age Daily giúp bảo vệ da khỏi tia UV và ô nhiễm môi trường, đồng thời chống lão hóa hiệu quả.', N'Aqua, Drometrizole Trisiloxane, Ethylhexyl Salicylate, Niacinamide, Probiotic Fractions, Peptides, Vichy Mineralizing Water', 6, 4)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [Quantity], [Description], [Ingredient], [CategoryID], [SkinTypeID]) VALUES (12, N'Anessa Whitening UV Sunscreen Gel SPF50+ PA++++', CAST(280000.00 AS Decimal(10, 2)), 900, N'Kem chống nắng Anessa Whitening UV Sunscreen Gel với công thức dưỡng trắng, bảo vệ da khỏi tác động của tia UV và ngăn ngừa thâm nám.', N'Water, Zinc Oxide, Ethylhexyl Methoxycinnamate, Tranexamic Acid, Green Tea Extract, Sodium Hyaluronate', 6, 4)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [Quantity], [Description], [Ingredient], [CategoryID], [SkinTypeID]) VALUES (13, N'Skin1004 Madagascar Centella Air-Fit Suncream SPF50+ PA++++', CAST(320000.00 AS Decimal(10, 2)), 900, N'Kem chống nắng Skin1004 Madagascar Centella giúp làm dịu da nhạy cảm, chống nắng phổ rộng với màng lọc vật lý.', N'Water, Zinc Oxide, Centella Asiatica Extract, Niacinamide, Titanium Dioxide, Glycerin', 6, 2)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [Quantity], [Description], [Ingredient], [CategoryID], [SkinTypeID]) VALUES (14, N'Nước Cân Bằng Cocoon Nước Sen Hậu Giang 310ml', CAST(250000.00 AS Decimal(10, 2)), 1000, N'Nước Cân Bằng Cocoon Nước Sen Hậu Giang 310ml khai thác sức mạnh từ những đoá sen tinh khiết từ vùng đất Hậu Giang kết hợp cùng các hoạt chất khoa học tiên tiến gồm Madecassoside, vitamin B5, B12, Beta-glucan (prebiotic) và Sweetone® (chiết xuất quả ngũ vị tử), nước sen Hậu Giang dịu lành giúp bảo vệ hàng rào độ ẩm của làn da nhạy cảm, giảm mẩn đỏ và ngứa do khô ráp, mang lại cho làn da một cảm giác nhẹ nhàng, êm ái như được vỗ về.', N'Chiết xuất sen có tác dụng hạn chế các gốc tự do sinh ra bởi tia UV và các căng thẳng từ môi trường. Ngoài ra, trong chiết xuất hoa sen có các loại đường như fructose và glucose nên có đặc tính giữ ẩm cao, hỗ trợ làm mềm và làm dịu làn da nhạy cảm.', 3, 1)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductsImage] ON 

INSERT [dbo].[ProductsImage] ([ProductsImageID], [ImageDescription], [ImageUrl], [ProductID]) VALUES (4, N'Sữa rửa mặt Centaphil', N'https://beautysky.s3.amazonaws.com/products/d4708df4-f912-431e-80e3-28e3f5f1086c_centaphil.webp', 4)
INSERT [dbo].[ProductsImage] ([ProductsImageID], [ImageDescription], [ImageUrl], [ProductID]) VALUES (6, N'La Roche-Posay Anthelios UV Correct SPF50', N'https://beautysky.s3.amazonaws.com/products/71ff471d-dc19-4ed7-8be8-9bfcbb60f3e7_kcn400SPF50.webp', 8)
INSERT [dbo].[ProductsImage] ([ProductsImageID], [ImageDescription], [ImageUrl], [ProductID]) VALUES (7, N'Gel Rửa Mặt Kiểm Soát Dầu La Roche Posay Effaclar Gel', N'https://beautysky.s3.amazonaws.com/products/699fd3e8-0c4a-4ec5-a2f6-20e90dc86a5f_google-shopping-gel-rua-mat-la-roche-posay-cho-da-dau-nhay-cam-400ml-1703480133_img_680x680_d30c8d_fit_center.jpg', 1)
INSERT [dbo].[ProductsImage] ([ProductsImageID], [ImageDescription], [ImageUrl], [ProductID]) VALUES (8, N'Anessa Whitening UV Sunscreen Gel SPF50+ PA++++', N'https://beautysky.s3.amazonaws.com/products/c571229b-49eb-4439-a654-1c440a350e84_4b5f4ee7-d942-4618-9341-cda91466204d.webp', 12)
SET IDENTITY_INSERT [dbo].[ProductsImage] OFF
GO
SET IDENTITY_INSERT [dbo].[Question] ON 

INSERT [dbo].[Question] ([QuestionID], [QuizID], [QuestionText], [OrderNumber]) VALUES (1, 1, N'Sau khi rửa mặt 30 phút mà không dùng sản phẩm dưỡng da, da bạn cảm thấy như thế nào?', 1)
INSERT [dbo].[Question] ([QuestionID], [QuizID], [QuestionText], [OrderNumber]) VALUES (2, 1, N'Vào buổi trưa, tình trạng da bạn như thế nào?', 2)
INSERT [dbo].[Question] ([QuestionID], [QuizID], [QuestionText], [OrderNumber]) VALUES (3, 1, N'Da bạn có dễ bị mụn không?', 3)
INSERT [dbo].[Question] ([QuestionID], [QuizID], [QuestionText], [OrderNumber]) VALUES (4, 1, N'Khi trang điểm, lớp nền trên da bạn trông như thế nào?', 4)
INSERT [dbo].[Question] ([QuestionID], [QuizID], [QuestionText], [OrderNumber]) VALUES (5, 1, N'Da bạn phản ứng thế nào khi dùng mỹ phẩm mới?', 5)
SET IDENTITY_INSERT [dbo].[Question] OFF
GO
SET IDENTITY_INSERT [dbo].[Quiz] ON 

INSERT [dbo].[Quiz] ([QuizID], [QuizName], [Description], [DateCreated]) VALUES (1, N'Skin Type Quiz', N'Quiz xác định loại da của bạn', CAST(N'2025-03-04T02:04:33.803' AS DateTime))
SET IDENTITY_INSERT [dbo].[Quiz] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (1, N'Customer')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (2, N'Staff')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (3, N'Manager')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[SkinType] ON 

INSERT [dbo].[SkinType] ([SkinTypeID], [SkinType]) VALUES (1, N'Da Thường')
INSERT [dbo].[SkinType] ([SkinTypeID], [SkinType]) VALUES (2, N'Da Khô')
INSERT [dbo].[SkinType] ([SkinTypeID], [SkinType]) VALUES (3, N'Da Dầu')
INSERT [dbo].[SkinType] ([SkinTypeID], [SkinType]) VALUES (4, N'Da Hỗn Hợp')
INSERT [dbo].[SkinType] ([SkinTypeID], [SkinType]) VALUES (5, N'Da Nhạy Cảm')
SET IDENTITY_INSERT [dbo].[SkinType] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([UserID], [UserName], [FullName], [Email], [Password], [ConfirmPassword], [RoleID], [Phone], [Address], [DateCreate], [IsActive]) VALUES (1, N'staff', N'Staff', N'staff@gmail.com', N'123456', N'123456', 2, N'0123456789', N'Hà Nội', CAST(N'2025-02-26T12:52:44.757' AS DateTime), 1)
INSERT [dbo].[Users] ([UserID], [UserName], [FullName], [Email], [Password], [ConfirmPassword], [RoleID], [Phone], [Address], [DateCreate], [IsActive]) VALUES (2, N'manager', N'Manager', N'manager@gmail.com', N'123456', N'123456', 3, N'0987654321', N'Hồ Chí Minh', CAST(N'2025-02-26T12:52:44.757' AS DateTime), 1)
INSERT [dbo].[Users] ([UserID], [UserName], [FullName], [Email], [Password], [ConfirmPassword], [RoleID], [Phone], [Address], [DateCreate], [IsActive]) VALUES (5, N'user1', N'User One', N'user1@example.com', N'123456', N'123456', 1, N'1234567890', N'123 Main St', CAST(N'2025-02-27T05:10:21.887' AS DateTime), 1)
INSERT [dbo].[Users] ([UserID], [UserName], [FullName], [Email], [Password], [ConfirmPassword], [RoleID], [Phone], [Address], [DateCreate], [IsActive]) VALUES (6, N'user2', N'User Two', N'user2@example.com', N'123456', N'123456', 1, N'2345678901', N'456 Elm St', CAST(N'2025-02-27T05:10:51.670' AS DateTime), 1)
INSERT [dbo].[Users] ([UserID], [UserName], [FullName], [Email], [Password], [ConfirmPassword], [RoleID], [Phone], [Address], [DateCreate], [IsActive]) VALUES (7, N'user3', N'User Three', N'user3@example.com', N'123456', N'123456', 1, N'3456789012', N'789 Oak St', CAST(N'2025-02-27T05:11:14.853' AS DateTime), 1)
INSERT [dbo].[Users] ([UserID], [UserName], [FullName], [Email], [Password], [ConfirmPassword], [RoleID], [Phone], [Address], [DateCreate], [IsActive]) VALUES (8, N'user4', N'User Four', N'user4@example.com', N'123456', N'123456', 1, N'4567890123', N'101 Pine St', CAST(N'2025-02-27T05:11:35.127' AS DateTime), 1)
INSERT [dbo].[Users] ([UserID], [UserName], [FullName], [Email], [Password], [ConfirmPassword], [RoleID], [Phone], [Address], [DateCreate], [IsActive]) VALUES (9, N'user5', N'User Five', N'user5@example.com', N'123456', N'123456', 1, N'5678901234', N'202 Maple St', CAST(N'2025-02-27T05:11:55.480' AS DateTime), 1)
INSERT [dbo].[Users] ([UserID], [UserName], [FullName], [Email], [Password], [ConfirmPassword], [RoleID], [Phone], [Address], [DateCreate], [IsActive]) VALUES (10, N'user6', N'User Six', N'user6@example.com', N'123456', N'123456', 1, N'6789012345', N'303 Birch St', CAST(N'2025-02-27T05:12:16.663' AS DateTime), 1)
INSERT [dbo].[Users] ([UserID], [UserName], [FullName], [Email], [Password], [ConfirmPassword], [RoleID], [Phone], [Address], [DateCreate], [IsActive]) VALUES (11, N'user7', N'User Seven', N'user7@example.com', N'123456', N'123456', 1, N'7890123456', N'404 Cedar St', CAST(N'2025-02-27T05:12:35.107' AS DateTime), 1)
INSERT [dbo].[Users] ([UserID], [UserName], [FullName], [Email], [Password], [ConfirmPassword], [RoleID], [Phone], [Address], [DateCreate], [IsActive]) VALUES (12, N'user8', N'User Eight', N'user8@example.com', N'123456', N'123456', 1, N'8901234567', N'505 Walnut St', CAST(N'2025-02-27T05:12:54.197' AS DateTime), 1)
INSERT [dbo].[Users] ([UserID], [UserName], [FullName], [Email], [Password], [ConfirmPassword], [RoleID], [Phone], [Address], [DateCreate], [IsActive]) VALUES (13, N'user9', N'User Nine', N'user9@example.com', N'123456', N'123456', 1, N'9012345678', N'606 Chestnut St', CAST(N'2025-02-27T05:13:10.273' AS DateTime), 1)
INSERT [dbo].[Users] ([UserID], [UserName], [FullName], [Email], [Password], [ConfirmPassword], [RoleID], [Phone], [Address], [DateCreate], [IsActive]) VALUES (14, N'user10', N'User Ten', N'user10@example.com', N'123456', N'123456', 1, N'0123456789', N'707 Spruce St', CAST(N'2025-02-27T05:13:32.757' AS DateTime), 1)
INSERT [dbo].[Users] ([UserID], [UserName], [FullName], [Email], [Password], [ConfirmPassword], [RoleID], [Phone], [Address], [DateCreate], [IsActive]) VALUES (15, N'hai', N'hai', N'hai@gmail.com', N'123456', N'123456', 1, N'0383546550', N'ST Mai Chí Thọ', CAST(N'2025-02-28T06:00:07.907' AS DateTime), 1)
INSERT [dbo].[Users] ([UserID], [UserName], [FullName], [Email], [Password], [ConfirmPassword], [RoleID], [Phone], [Address], [DateCreate], [IsActive]) VALUES (16, N'hoanghai', N'hoanghai', N'hai170504@gmail.com', N'123456', N'123456', 3, N'0383546550', N'Vinh Cuu, Dong Nai', CAST(N'2025-03-02T02:03:55.433' AS DateTime), 1)
INSERT [dbo].[Users] ([UserID], [UserName], [FullName], [Email], [Password], [ConfirmPassword], [RoleID], [Phone], [Address], [DateCreate], [IsActive]) VALUES (17, N'Nhi', N'Uyển Nhi', N'nhi@gmail.com', N'123456', N'123456', 2, N'0913857160', N'Bien Hoa', CAST(N'2025-03-02T09:13:12.400' AS DateTime), 1)
INSERT [dbo].[Users] ([UserID], [UserName], [FullName], [Email], [Password], [ConfirmPassword], [RoleID], [Phone], [Address], [DateCreate], [IsActive]) VALUES (18, N'hao', N'hao', N'hao@gmail.com', N'123456', N'123456', 2, N'0327186781', N'Sai Gon', CAST(N'2025-03-02T09:26:39.403' AS DateTime), 1)
INSERT [dbo].[Users] ([UserID], [UserName], [FullName], [Email], [Password], [ConfirmPassword], [RoleID], [Phone], [Address], [DateCreate], [IsActive]) VALUES (19, N'danh', N'danh', N'danh@gmail.com', N'123456', N'123456', 2, N'0912831829', N'Sai Gon', CAST(N'2025-03-02T09:38:59.967' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Users__A9D1053448E90CD9]    Script Date: 3/4/2025 2:10:21 AM ******/
ALTER TABLE [dbo].[Users] ADD UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Blog] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[News] ADD  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT (getdate()) FOR [OrderDate]
GO
ALTER TABLE [dbo].[Payment] ADD  DEFAULT (getdate()) FOR [PaymentDate]
GO
ALTER TABLE [dbo].[Promotions] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Quiz] ADD  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[Review] ADD  DEFAULT (getdate()) FOR [ReviewDate]
GO
ALTER TABLE [dbo].[UserCarePlan] ADD  DEFAULT (getdate()) FOR [DateCreate]
GO
ALTER TABLE [dbo].[UserQuiz] ADD  DEFAULT (getdate()) FOR [DateTaken]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT (getdate()) FOR [DateCreate]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Answer]  WITH CHECK ADD FOREIGN KEY([QuestionID])
REFERENCES [dbo].[Question] ([QuestionID])
GO
ALTER TABLE [dbo].[Blog]  WITH CHECK ADD FOREIGN KEY([AuthorID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[CarePlan]  WITH CHECK ADD FOREIGN KEY([SkinTypeID])
REFERENCES [dbo].[SkinType] ([SkinTypeID])
GO
ALTER TABLE [dbo].[CarePlanProduct]  WITH CHECK ADD FOREIGN KEY([CarePlanID])
REFERENCES [dbo].[CarePlan] ([CarePlanID])
GO
ALTER TABLE [dbo].[CarePlanProduct]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
GO
ALTER TABLE [dbo].[CarePlanProduct]  WITH CHECK ADD FOREIGN KEY([StepID])
REFERENCES [dbo].[CarePlanStep] ([StepID])
GO
ALTER TABLE [dbo].[CarePlanStep]  WITH CHECK ADD FOREIGN KEY([CarePlanID])
REFERENCES [dbo].[CarePlan] ([CarePlanID])
GO
ALTER TABLE [dbo].[OrderProduct]  WITH CHECK ADD FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([OrderID])
GO
ALTER TABLE [dbo].[OrderProduct]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([PaymentID])
REFERENCES [dbo].[Payment] ([PaymentID])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([PromotionID])
REFERENCES [dbo].[Promotions] ([PromotionID])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD FOREIGN KEY([PaymentTypeID])
REFERENCES [dbo].[PaymentType] ([PaymentTypeID])
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD FOREIGN KEY([PaymentStatusID])
REFERENCES [dbo].[PaymentStatus] ([PaymentStatusID])
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([CategoryID])
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD FOREIGN KEY([SkinTypeID])
REFERENCES [dbo].[SkinType] ([SkinTypeID])
GO
ALTER TABLE [dbo].[ProductsImage]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
GO
ALTER TABLE [dbo].[Question]  WITH CHECK ADD FOREIGN KEY([QuizID])
REFERENCES [dbo].[Quiz] ([QuizID])
GO
ALTER TABLE [dbo].[Review]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
GO
ALTER TABLE [dbo].[Review]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[UserAnswer]  WITH CHECK ADD FOREIGN KEY([UserQuizID])
REFERENCES [dbo].[UserQuiz] ([UserQuizID])
GO
ALTER TABLE [dbo].[UserAnswer]  WITH CHECK ADD  CONSTRAINT [FK_UserAnswer_SkinType] FOREIGN KEY([SkinTypeID])
REFERENCES [dbo].[SkinType] ([SkinTypeID])
GO
ALTER TABLE [dbo].[UserAnswer] CHECK CONSTRAINT [FK_UserAnswer_SkinType]
GO
ALTER TABLE [dbo].[UserCarePlan]  WITH CHECK ADD FOREIGN KEY([CarePlanID])
REFERENCES [dbo].[CarePlan] ([CarePlanID])
GO
ALTER TABLE [dbo].[UserCarePlan]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[UserQuiz]  WITH CHECK ADD FOREIGN KEY([QuizID])
REFERENCES [dbo].[Quiz] ([QuizID])
GO
ALTER TABLE [dbo].[UserQuiz]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD FOREIGN KEY([RoleID])
REFERENCES [dbo].[Role] ([RoleID])
GO
