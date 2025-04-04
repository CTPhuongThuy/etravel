USE [etraveldb]
GO
ALTER TABLE [dbo].[TransactionDetail] DROP CONSTRAINT [FK_TransactionDetail_Transaction]
GO
ALTER TABLE [dbo].[Transaction] DROP CONSTRAINT [FK_Transaction_Account]
GO
ALTER TABLE [dbo].[Transaction] DROP CONSTRAINT [FK_Payment_Booking]
GO
ALTER TABLE [dbo].[PlaceTime] DROP CONSTRAINT [FK_PlaceTime_Place]
GO
ALTER TABLE [dbo].[PlaceItem] DROP CONSTRAINT [FK_PlaceItem_Place]
GO
ALTER TABLE [dbo].[PlaceImage] DROP CONSTRAINT [FK_PlaceImage_Place]
GO
ALTER TABLE [dbo].[PlaceDescription] DROP CONSTRAINT [FK_PlaceDescription_Place]
GO
ALTER TABLE [dbo].[PlaceCategory] DROP CONSTRAINT [FK_PlaceCategory_Place]
GO
ALTER TABLE [dbo].[PlaceCategory] DROP CONSTRAINT [FK_PlaceCategory_Category]
GO
ALTER TABLE [dbo].[MarkPlace] DROP CONSTRAINT [FK_MarkPlace_Place]
GO
ALTER TABLE [dbo].[MarkPlace] DROP CONSTRAINT [FK_MarkPlace_Account]
GO
ALTER TABLE [dbo].[ItineraryPlace] DROP CONSTRAINT [FK_TourDetail_Tour]
GO
ALTER TABLE [dbo].[ItineraryPlace] DROP CONSTRAINT [FK_TourDetail_Place]
GO
ALTER TABLE [dbo].[ItineraryDescription] DROP CONSTRAINT [FK_TourDescription_Tour]
GO
ALTER TABLE [dbo].[Itinerary] DROP CONSTRAINT [FK_Tour_Account]
GO
ALTER TABLE [dbo].[ItemDescription] DROP CONSTRAINT [FK_ItemDescription_PlaceItem]
GO
ALTER TABLE [dbo].[FeedBack] DROP CONSTRAINT [FK_FeedBack_Tour1]
GO
ALTER TABLE [dbo].[FeedBack] DROP CONSTRAINT [FK_FeedBack_Place1]
GO
ALTER TABLE [dbo].[FeedBack] DROP CONSTRAINT [FK_FeedBack_Account]
GO
ALTER TABLE [dbo].[FcmToken] DROP CONSTRAINT [FK_FcmToken_Account]
GO
ALTER TABLE [dbo].[Conversation] DROP CONSTRAINT [FK_Conversation_Account1]
GO
ALTER TABLE [dbo].[Conversation] DROP CONSTRAINT [FK_Conversation_Account]
GO
ALTER TABLE [dbo].[CelebrateImage] DROP CONSTRAINT [FK_CelebrateImage_BookingPlace]
GO
ALTER TABLE [dbo].[CategoryLanguage] DROP CONSTRAINT [FK_CategoryLanguage_Category]
GO
ALTER TABLE [dbo].[BookingPlace] DROP CONSTRAINT [FK_BookingPlace_Place]
GO
ALTER TABLE [dbo].[BookingPlace] DROP CONSTRAINT [FK_BookingPlace_Journey]
GO
ALTER TABLE [dbo].[BookingPlace] DROP CONSTRAINT [FK_BookingPlace_Booking]
GO
ALTER TABLE [dbo].[Booking] DROP CONSTRAINT [FK_Booking_Account]
GO
ALTER TABLE [dbo].[Account] DROP CONSTRAINT [FK_Account_Role]
GO
ALTER TABLE [dbo].[Account] DROP CONSTRAINT [FK_Account_Nationality]
GO
ALTER TABLE [dbo].[Account] DROP CONSTRAINT [FK_Account_ConfigLanguage]
GO
/****** Object:  Index [IX_Conversation_1]    Script Date: 12/9/2023 8:46:13 PM ******/
ALTER TABLE [dbo].[Conversation] DROP CONSTRAINT [IX_Conversation_1]
GO
/****** Object:  Index [UQ_ConfigLanguage]    Script Date: 12/9/2023 8:46:13 PM ******/
DROP INDEX [UQ_ConfigLanguage] ON [dbo].[ConfigLanguage]
GO
/****** Object:  Index [UQ_Phone]    Script Date: 12/9/2023 8:46:13 PM ******/
DROP INDEX [UQ_Phone] ON [dbo].[Account]
GO
/****** Object:  Index [UC_Email]    Script Date: 12/9/2023 8:46:13 PM ******/
ALTER TABLE [dbo].[Account] DROP CONSTRAINT [UC_Email]
GO
/****** Object:  Table [dbo].[TransactionDetail]    Script Date: 12/9/2023 8:46:13 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TransactionDetail]') AND type in (N'U'))
DROP TABLE [dbo].[TransactionDetail]
GO
/****** Object:  Table [dbo].[Transaction]    Script Date: 12/9/2023 8:46:13 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Transaction]') AND type in (N'U'))
DROP TABLE [dbo].[Transaction]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 12/9/2023 8:46:13 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Role]') AND type in (N'U'))
DROP TABLE [dbo].[Role]
GO
/****** Object:  Table [dbo].[PlaceTime]    Script Date: 12/9/2023 8:46:13 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PlaceTime]') AND type in (N'U'))
DROP TABLE [dbo].[PlaceTime]
GO
/****** Object:  Table [dbo].[PlaceItem]    Script Date: 12/9/2023 8:46:13 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PlaceItem]') AND type in (N'U'))
DROP TABLE [dbo].[PlaceItem]
GO
/****** Object:  Table [dbo].[PlaceImage]    Script Date: 12/9/2023 8:46:13 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PlaceImage]') AND type in (N'U'))
DROP TABLE [dbo].[PlaceImage]
GO
/****** Object:  Table [dbo].[PlaceDescription]    Script Date: 12/9/2023 8:46:13 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PlaceDescription]') AND type in (N'U'))
DROP TABLE [dbo].[PlaceDescription]
GO
/****** Object:  Table [dbo].[PlaceCategory]    Script Date: 12/9/2023 8:46:13 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PlaceCategory]') AND type in (N'U'))
DROP TABLE [dbo].[PlaceCategory]
GO
/****** Object:  Table [dbo].[Place]    Script Date: 12/9/2023 8:46:13 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Place]') AND type in (N'U'))
DROP TABLE [dbo].[Place]
GO
/****** Object:  Table [dbo].[Nationality]    Script Date: 12/9/2023 8:46:13 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Nationality]') AND type in (N'U'))
DROP TABLE [dbo].[Nationality]
GO
/****** Object:  Table [dbo].[MarkPlace]    Script Date: 12/9/2023 8:46:13 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MarkPlace]') AND type in (N'U'))
DROP TABLE [dbo].[MarkPlace]
GO
/****** Object:  Table [dbo].[Journey]    Script Date: 12/9/2023 8:46:13 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Journey]') AND type in (N'U'))
DROP TABLE [dbo].[Journey]
GO
/****** Object:  Table [dbo].[ItineraryPlace]    Script Date: 12/9/2023 8:46:13 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ItineraryPlace]') AND type in (N'U'))
DROP TABLE [dbo].[ItineraryPlace]
GO
/****** Object:  Table [dbo].[ItineraryDescription]    Script Date: 12/9/2023 8:46:13 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ItineraryDescription]') AND type in (N'U'))
DROP TABLE [dbo].[ItineraryDescription]
GO
/****** Object:  Table [dbo].[Itinerary]    Script Date: 12/9/2023 8:46:13 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Itinerary]') AND type in (N'U'))
DROP TABLE [dbo].[Itinerary]
GO
/****** Object:  Table [dbo].[ItemDescription]    Script Date: 12/9/2023 8:46:13 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ItemDescription]') AND type in (N'U'))
DROP TABLE [dbo].[ItemDescription]
GO
/****** Object:  Table [dbo].[FeedBack]    Script Date: 12/9/2023 8:46:13 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FeedBack]') AND type in (N'U'))
DROP TABLE [dbo].[FeedBack]
GO
/****** Object:  Table [dbo].[FcmToken]    Script Date: 12/9/2023 8:46:13 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FcmToken]') AND type in (N'U'))
DROP TABLE [dbo].[FcmToken]
GO
/****** Object:  Table [dbo].[Conversation]    Script Date: 12/9/2023 8:46:13 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Conversation]') AND type in (N'U'))
DROP TABLE [dbo].[Conversation]
GO
/****** Object:  Table [dbo].[ConfigLanguage]    Script Date: 12/9/2023 8:46:13 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ConfigLanguage]') AND type in (N'U'))
DROP TABLE [dbo].[ConfigLanguage]
GO
/****** Object:  Table [dbo].[CelebrateImage]    Script Date: 12/9/2023 8:46:13 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CelebrateImage]') AND type in (N'U'))
DROP TABLE [dbo].[CelebrateImage]
GO
/****** Object:  Table [dbo].[CategoryLanguage]    Script Date: 12/9/2023 8:46:13 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CategoryLanguage]') AND type in (N'U'))
DROP TABLE [dbo].[CategoryLanguage]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 12/9/2023 8:46:13 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Category]') AND type in (N'U'))
DROP TABLE [dbo].[Category]
GO
/****** Object:  Table [dbo].[BookingPlace]    Script Date: 12/9/2023 8:46:13 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BookingPlace]') AND type in (N'U'))
DROP TABLE [dbo].[BookingPlace]
GO
/****** Object:  Table [dbo].[Booking]    Script Date: 12/9/2023 8:46:13 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Booking]') AND type in (N'U'))
DROP TABLE [dbo].[Booking]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 12/9/2023 8:46:13 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Account]') AND type in (N'U'))
DROP TABLE [dbo].[Account]
GO
USE [master]
GO
/****** Object:  Database [etraveldb]    Script Date: 12/9/2023 8:46:13 PM ******/
DROP DATABASE [etraveldb]
GO
/****** Object:  Database [etraveldb]    Script Date: 12/9/2023 8:46:13 PM ******/
CREATE DATABASE [etraveldb]
GO
ALTER DATABASE [etraveldb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [etraveldb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [etraveldb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [etraveldb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [etraveldb] SET ARITHABORT OFF 
GO
ALTER DATABASE [etraveldb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [etraveldb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [etraveldb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [etraveldb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [etraveldb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [etraveldb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [etraveldb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [etraveldb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [etraveldb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [etraveldb] SET  DISABLE_BROKER 
GO
ALTER DATABASE [etraveldb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [etraveldb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [etraveldb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [etraveldb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [etraveldb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [etraveldb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [etraveldb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [etraveldb] SET RECOVERY FULL 
GO
ALTER DATABASE [etraveldb] SET  MULTI_USER 
GO
ALTER DATABASE [etraveldb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [etraveldb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [etraveldb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [etraveldb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [etraveldb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [etraveldb] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [etraveldb] SET QUERY_STORE = ON
GO
ALTER DATABASE [etraveldb] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [etraveldb]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 12/9/2023 8:46:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ConfigLanguageId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
	[NationalCode] [nvarchar](10) NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Email] [varchar](150) NOT NULL,
	[Image] [varchar](max) NULL,
	[Phone] [varchar](20) NOT NULL,
	[Password] [nvarchar](150) NOT NULL,
	[Address] [nvarchar](300) NULL,
	[Gender] [nvarchar](10) NULL,
	[CreateTime] [datetime] NOT NULL,
	[UpdateTime] [datetime] NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Booking]    Script Date: 12/9/2023 8:46:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Booking](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AccountId] [int] NOT NULL,
	[ItineraryId] [int] NULL,
	[Total] [decimal](18, 2) NOT NULL,
	[IsPrepared] [bit] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[UpdateTime] [datetime] NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_Booking] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BookingPlace]    Script Date: 12/9/2023 8:46:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookingPlace](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PlaceId] [int] NOT NULL,
	[BookingId] [int] NOT NULL,
	[JourneyId] [int] NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[StartTime] [datetime] NULL,
	[Ordinal] [int] NULL,
	[Status] [int] NOT NULL,
	[IsJourney] [bit] NOT NULL,
	[ExpiredTime] [datetime] NULL,
 CONSTRAINT [PK_BookingDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 12/9/2023 8:46:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[Status] [int] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[UpdateTime] [datetime] NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CategoryLanguage]    Script Date: 12/9/2023 8:46:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoryLanguage](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[NameLanguage] [nvarchar](150) NOT NULL,
	[Status] [int] NULL,
	[LanguageCode] [nchar](10) NOT NULL,
 CONSTRAINT [PK_CategoryLanguage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CelebrateImage]    Script Date: 12/9/2023 8:46:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CelebrateImage](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BookingDetailId] [int] NOT NULL,
	[ImageUrl] [varchar](max) NULL,
	[IsPrimary] [bit] NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_CelebrateImage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ConfigLanguage]    Script Date: 12/9/2023 8:46:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConfigLanguage](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[Icon] [varchar](max) NOT NULL,
	[FileLink] [varchar](300) NOT NULL,
	[LanguageCode] [varchar](10) NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[UpdateTime] [datetime] NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_Language] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Conversation]    Script Date: 12/9/2023 8:46:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Conversation](
	[SessionId] [int] IDENTITY(1,1) NOT NULL,
	[Account_One_Id] [int] NOT NULL,
	[Account_Two_Id] [int] NOT NULL,
	[ChannelId] [varchar](max) NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_Conversation_1] PRIMARY KEY CLUSTERED 
(
	[Account_One_Id] ASC,
	[Account_Two_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FcmToken]    Script Date: 12/9/2023 8:46:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FcmToken](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AccountId] [int] NOT NULL,
	[Token] [varchar](max) NOT NULL,
	[IsPrimary] [bit] NOT NULL,
 CONSTRAINT [PK_FcmToken] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FeedBack]    Script Date: 12/9/2023 8:46:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FeedBack](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AccountId] [int] NOT NULL,
	[PlaceId] [int] NULL,
	[ItineraryId] [int] NULL,
	[Rate] [float] NULL,
	[Content] [nvarchar](500) NULL,
	[IsPlace] [bit] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[UpdateTime] [datetime] NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_FeedBack] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ItemDescription]    Script Date: 12/9/2023 8:46:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemDescription](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PlaceItemId] [int] NOT NULL,
	[LanguageCode] [nchar](10) NOT NULL,
	[NameItem] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ItemDescription] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Itinerary]    Script Date: 12/9/2023 8:46:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Itinerary](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreateById] [int] NOT NULL,
	[Name] [nvarchar](150) NULL,
	[Image] [varchar](max) NULL,
	[Total] [decimal](18, 2) NOT NULL,
	[Rate] [float] NULL,
	[CreateTime] [datetime] NOT NULL,
	[UpdateTime] [datetime] NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_Tour] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ItineraryDescription]    Script Date: 12/9/2023 8:46:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItineraryDescription](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ItineraryId] [int] NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[CreateTime] [datetime] NULL,
	[UpdateTime] [datetime] NULL,
	[Status] [int] NOT NULL,
	[LanguageCode] [nchar](10) NULL,
 CONSTRAINT [PK_TourDescription_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ItineraryPlace]    Script Date: 12/9/2023 8:46:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItineraryPlace](
	[PlaceId] [int] NOT NULL,
	[ItineraryId] [int] NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[Ordinal] [int] NULL,
 CONSTRAINT [PK_TourDetail] PRIMARY KEY CLUSTERED 
(
	[PlaceId] ASC,
	[ItineraryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Journey]    Script Date: 12/9/2023 8:46:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Journey](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StartTime] [datetime] NULL,
	[EndTime] [datetime] NULL,
	[TotalTime] [float] NOT NULL,
	[TotalDistance] [float] NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_Journey] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MarkPlace]    Script Date: 12/9/2023 8:46:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MarkPlace](
	[AccountId] [int] NOT NULL,
	[PlaceId] [int] NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_MarkPlace] PRIMARY KEY CLUSTERED 
(
	[AccountId] ASC,
	[PlaceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nationality]    Script Date: 12/9/2023 8:46:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nationality](
	[PhoneCode] [nvarchar](10) NOT NULL,
	[NationalCode] [nvarchar](10) NOT NULL,
	[NationalName] [nvarchar](100) NOT NULL,
	[Icon] [nvarchar](max) NOT NULL,
	[LanguageName] [nvarchar](100) NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[UpdateTime] [datetime] NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_Nationality] PRIMARY KEY CLUSTERED 
(
	[NationalCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Place]    Script Date: 12/9/2023 8:46:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Place](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[Longitude] [decimal](9, 6) NOT NULL,
	[Latitude] [decimal](8, 6) NOT NULL,
	[GooglePlaceID] [varchar](200) NULL,
	[Address] [nvarchar](150) NOT NULL,
	[EntryTicket] [decimal](18, 2) NULL,
	[Hour] [time](7) NULL,
	[Rate] [float] NULL,
	[Price] [decimal](18, 2) NULL,
	[CreateTime] [datetime] NULL,
	[UpdateTime] [datetime] NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_Place] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PlaceCategory]    Script Date: 12/9/2023 8:46:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlaceCategory](
	[PlaceId] [int] NOT NULL,
	[CategoryId] [int] NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_PlaceCategory] PRIMARY KEY CLUSTERED 
(
	[PlaceId] ASC,
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PlaceDescription]    Script Date: 12/9/2023 8:46:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlaceDescription](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PlaceId] [int] NOT NULL,
	[VoiceFile] [varchar](max) NULL,
	[Name] [nvarchar](200) NOT NULL,
	[LanguageCode] [nchar](10) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[UpdateTime] [datetime] NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_PlaceDescription] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PlaceImage]    Script Date: 12/9/2023 8:46:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlaceImage](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PlaceId] [int] NOT NULL,
	[Url] [varchar](max) NOT NULL,
	[IsPrimary] [bit] NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_PlaceImage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PlaceItem]    Script Date: 12/9/2023 8:46:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlaceItem](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PlaceId] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[BeaconId] [nvarchar](255) NOT NULL,
	[BeaconMajorNumber] [int] NULL,
	[BeaconMinorNumber] [int] NULL,
	[StartTime] [time](7) NOT NULL,
	[EndTime] [time](7) NOT NULL,
	[Url] [nvarchar](max) NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_PlaceItem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PlaceTime]    Script Date: 12/9/2023 8:46:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlaceTime](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PlaceId] [int] NOT NULL,
	[DaysOfWeek] [int] NOT NULL,
	[OpenTime] [time](7) NOT NULL,
	[EndTime] [time](7) NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_PlaceTime] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 12/9/2023 8:46:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](150) NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transaction]    Script Date: 12/9/2023 8:46:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transaction](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AccountId] [int] NOT NULL,
	[BookingId] [int] NOT NULL,
	[PaymentMethod] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](800) NULL,
	[Amount] [decimal](18, 2) NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[UpdateTime] [datetime] NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_Payment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TransactionDetail]    Script Date: 12/9/2023 8:46:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransactionDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TransactionId] [int] NOT NULL,
	[PaymentId] [nvarchar](max) NOT NULL,
	[CaptureId] [nvarchar](max) NULL,
	[PaymentAccountId] [nvarchar](max) NULL,
	[Amount] [decimal](18, 2) NOT NULL,
	[Currency] [nvarchar](50) NOT NULL,
	[Description] [varchar](100) NULL,
	[CreateTime] [datetime] NOT NULL,
	[UpdateTime] [datetime] NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_Transaction] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([Id], [ConfigLanguageId], [RoleId], [NationalCode], [FirstName], [LastName], [Email], [Image], [Phone], [Password], [Address], [Gender], [CreateTime], [UpdateTime], [Status]) VALUES (1, 1, 1, N'vi', N'Super', N'Admin', N'etravelAdmin2023@gmail.com', N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/Account%2Fadmin_avatar.jpg?alt=media&token=69391304-f2d7-4e7c-bda6-9a0a3190da9c', N'0945214765', N'$2a$11$NXJsCAcyXJtLUhSxbEe.lOq0dWpYWXcuyL2whlx/iUc5dTiTTGoMy', N'789 Đường Nguyễn Huệ, Quận 1, Thành phố Hồ Chí Minh', N'Male', CAST(N'2023-07-10T00:00:00.000' AS DateTime), CAST(N'2023-07-13T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Account] ([Id], [ConfigLanguageId], [RoleId], [NationalCode], [FirstName], [LastName], [Email], [Image], [Phone], [Password], [Address], [Gender], [CreateTime], [UpdateTime], [Status]) VALUES (2, 2, 2, N'en-gb', N'Japan', N'Moderator', N'etravelJpOp@gmail.com', N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/Account%2Ftour_operator.jpg?alt=media&token=2eb38339-d598-4b74-9ba7-0e0737b241fa', N'0354792468', N'$2a$11$NXJsCAcyXJtLUhSxbEe.lOq0dWpYWXcuyL2whlx/iUc5dTiTTGoMy', N'321 Đường Trần Phú, Quận 5, Thành phố Hồ Chí Minh', N'Female', CAST(N'2023-07-11T00:00:00.000' AS DateTime), CAST(N'2023-07-13T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Account] ([Id], [ConfigLanguageId], [RoleId], [NationalCode], [FirstName], [LastName], [Email], [Image], [Phone], [Password], [Address], [Gender], [CreateTime], [UpdateTime], [Status]) VALUES (3, 4, 3, N'en-us', N'Li', N'Na', N'li.na@gmail.com', N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/Account%2Ftraveller_avatar_default%20(2).png?alt=media&token=1bc35639-f459-4047-952b-8ed6da8b4189', N'0374373917', N'$2a$11$NXJsCAcyXJtLUhSxbEe.lOq0dWpYWXcuyL2whlx/iUc5dTiTTGoMy', N'123 Shanghai Street, Shanghai, China', N'Female', CAST(N'2023-07-11T00:00:00.000' AS DateTime), CAST(N'2023-07-13T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Account] ([Id], [ConfigLanguageId], [RoleId], [NationalCode], [FirstName], [LastName], [Email], [Image], [Phone], [Password], [Address], [Gender], [CreateTime], [UpdateTime], [Status]) VALUES (4, 6, 2, N'en-gb', N'English', N'Moderator', N'etravelEnOp@gmail.com', N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/Account%2Ftour_operator.jpg?alt=media&token=2eb38339-d598-4b74-9ba7-0e0737b241fa', N'0912458745', N'$2a$11$NXJsCAcyXJtLUhSxbEe.lOq0dWpYWXcuyL2whlx/iUc5dTiTTGoMy', N'123 Đường Hùng Vương, Quận Hoàn Kiếm, Hà Nội', N'Female', CAST(N'2023-07-12T00:00:00.000' AS DateTime), CAST(N'2023-07-13T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Account] ([Id], [ConfigLanguageId], [RoleId], [NationalCode], [FirstName], [LastName], [Email], [Image], [Phone], [Password], [Address], [Gender], [CreateTime], [UpdateTime], [Status]) VALUES (5, 6, 3, N'en-us', N'Oliver', N'Johnson', N'cuongdq19@gmail.com', N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/Account%2Ftraveller_avatar_default%20(1).png?alt=media&token=4c1771d3-6d5b-4ee5-b12c-cfb347378d6b', N'0938072650', N'$2a$11$NXJsCAcyXJtLUhSxbEe.lOq0dWpYWXcuyL2whlx/iUc5dTiTTGoMy', N'789 Broadway, New York City, USA', N'Male', CAST(N'2023-07-13T00:00:00.000' AS DateTime), CAST(N'2023-07-13T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Account] ([Id], [ConfigLanguageId], [RoleId], [NationalCode], [FirstName], [LastName], [Email], [Image], [Phone], [Password], [Address], [Gender], [CreateTime], [UpdateTime], [Status]) VALUES (6, 4, 2, N'zh-cn', N'China', N'Moderator', N'etravelChiOp@gmail.com', N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/Account%2Ftour_operator.jpg?alt=media&token=2eb38339-d598-4b74-9ba7-0e0737b241fa', N'0916024635', N'$2a$11$NXJsCAcyXJtLUhSxbEe.lOq0dWpYWXcuyL2whlx/iUc5dTiTTGoMy', N'123 Đường Trần Phú, Quận Hồng Bàng, Hải Phòng', N'Male', CAST(N'2023-07-15T00:00:00.000' AS DateTime), CAST(N'2023-07-13T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Account] ([Id], [ConfigLanguageId], [RoleId], [NationalCode], [FirstName], [LastName], [Email], [Image], [Phone], [Password], [Address], [Gender], [CreateTime], [UpdateTime], [Status]) VALUES (7, 2, 3, N'ja', N'Takashi', N'Nakamura', N'nakamura.takashi@gmail.com', N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/Account%2Fvisitor1.jpg?alt=media&token=b27db8a4-4597-4d98-8fea-1af5fc565c9e', N'0389362598', N'$2a$11$NXJsCAcyXJtLUhSxbEe.lOq0dWpYWXcuyL2whlx/iUc5dTiTTGoMy', N'2-3-4 Shibuya, Shibuya-ku, Tokyo, Japan', N'Female', CAST(N'2023-07-15T00:00:00.000' AS DateTime), CAST(N'2023-07-13T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Account] ([Id], [ConfigLanguageId], [RoleId], [NationalCode], [FirstName], [LastName], [Email], [Image], [Phone], [Password], [Address], [Gender], [CreateTime], [UpdateTime], [Status]) VALUES (8, 6, 3, N'en-us', N'Emily', N'Johnson', N'emily.johnson@gmail.com', N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/Account%2Fvisitor2.png?alt=media&token=009006c6-5cab-40f8-883a-5c1d81166437', N'0385156373', N'$2a$11$NXJsCAcyXJtLUhSxbEe.lOq0dWpYWXcuyL2whlx/iUc5dTiTTGoMy', N'123 Main Street, Anytown, CA 12345, United States', N'Female', CAST(N'2023-07-23T00:00:00.000' AS DateTime), CAST(N'2023-07-13T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Account] ([Id], [ConfigLanguageId], [RoleId], [NationalCode], [FirstName], [LastName], [Email], [Image], [Phone], [Password], [Address], [Gender], [CreateTime], [UpdateTime], [Status]) VALUES (9, 6, 3, N'en-us', N'Jessica', N'Thompson', N'jessica.thompson@gmail.com', N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/Account%2Fvisitor3.jpg?alt=media&token=9f4644bd-0a98-41d9-ada3-e229ddf09136', N'0797933260', N'$2a$11$NXJsCAcyXJtLUhSxbEe.lOq0dWpYWXcuyL2whlx/iUc5dTiTTGoMy', N'567 Maple Lane, Villagetown, NY 12345, United States', N'Female', CAST(N'2023-07-23T00:00:00.000' AS DateTime), CAST(N'2023-07-13T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Account] ([Id], [ConfigLanguageId], [RoleId], [NationalCode], [FirstName], [LastName], [Email], [Image], [Phone], [Password], [Address], [Gender], [CreateTime], [UpdateTime], [Status]) VALUES (10, 6, 3, N'en-us', N'Emma', N'Johnson', N'emma.johnson@gmail.com', N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/Account%2Fvisitor4.jpg?alt=media&token=f71b6142-f29a-4671-9666-5621fe37a001', N'0343060124', N'$2a$11$NXJsCAcyXJtLUhSxbEe.lOq0dWpYWXcuyL2whlx/iUc5dTiTTGoMy', N'25 High Street, Manchester M1 1AB, United Kingdom', N'Female', CAST(N'2023-07-13T00:00:00.000' AS DateTime), CAST(N'2023-07-13T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Account] ([Id], [ConfigLanguageId], [RoleId], [NationalCode], [FirstName], [LastName], [Email], [Image], [Phone], [Password], [Address], [Gender], [CreateTime], [UpdateTime], [Status]) VALUES (11, 2, 3, N'ja', N'Sakura', N'Tanaka', N'sakura.tanaka@gmail.com', N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/Account%2Fvisitor5.jpg?alt=media&token=d0c808d7-cac1-481a-bf17-7353d1c762b1', N'0971520977', N'$2a$11$NXJsCAcyXJtLUhSxbEe.lOq0dWpYWXcuyL2whlx/iUc5dTiTTGoMy', N'4-5-6 Minato, Minato-ku, Osaka, Japan', N'Male', CAST(N'2023-08-13T00:00:00.000' AS DateTime), CAST(N'2023-07-13T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Account] ([Id], [ConfigLanguageId], [RoleId], [NationalCode], [FirstName], [LastName], [Email], [Image], [Phone], [Password], [Address], [Gender], [CreateTime], [UpdateTime], [Status]) VALUES (12, 6, 3, N'en-us', N'Pierre', N'Martin', N'pierre.martin@gmail.com', N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/Account%2Fvisitor6.jpg?alt=media&token=3ce80727-8ff7-47c2-b402-4c63702646d4', N'0376847165', N'$2a$11$NXJsCAcyXJtLUhSxbEe.lOq0dWpYWXcuyL2whlx/iUc5dTiTTGoMy', N'45 Rue du Champs-Élysées, Lyon 69001', N'Male', CAST(N'2023-09-13T00:00:00.000' AS DateTime), CAST(N'2023-07-13T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Account] ([Id], [ConfigLanguageId], [RoleId], [NationalCode], [FirstName], [LastName], [Email], [Image], [Phone], [Password], [Address], [Gender], [CreateTime], [UpdateTime], [Status]) VALUES (13, 6, 3, N'zh-cn', N'Li', N'Wei', N'li.wei@gmail.com', N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/Account%2Fvisitor7.png?alt=media&token=8887a1f3-1b3b-43ab-826f-b0bafdeae922', N'0337984693', N'$2a$11$NXJsCAcyXJtLUhSxbEe.lOq0dWpYWXcuyL2whlx/iUc5dTiTTGoMy', N'123 Main Street, Quận Haidian, Bắc Kinh, Trung Quốc', N'Male', CAST(N'2023-09-23T00:00:00.000' AS DateTime), CAST(N'2023-11-26T22:33:12.867' AS DateTime), 1)
INSERT [dbo].[Account] ([Id], [ConfigLanguageId], [RoleId], [NationalCode], [FirstName], [LastName], [Email], [Image], [Phone], [Password], [Address], [Gender], [CreateTime], [UpdateTime], [Status]) VALUES (14, 4, 3, N'zh-cn', N'Zhang', N'Mei', N'zhang.mei@gmail.com', N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/Account%2Fvisitor8.jpg?alt=media&token=16939ee2-eb26-4211-b981-a23e7b7c4856', N'0942949219', N'$2a$11$NXJsCAcyXJtLUhSxbEe.lOq0dWpYWXcuyL2whlx/iUc5dTiTTGoMy', N'456 Nanjing Road, Quận Huangpu, Thượng Hải, Trung Quốc', N'Female', CAST(N'2023-08-23T00:00:00.000' AS DateTime), CAST(N'2023-07-13T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Account] ([Id], [ConfigLanguageId], [RoleId], [NationalCode], [FirstName], [LastName], [Email], [Image], [Phone], [Password], [Address], [Gender], [CreateTime], [UpdateTime], [Status]) VALUES (15, 1, 3, N'vi', N'Nguyen', N'Tien Linh', N'linhjoey111@gmail.com', N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/Account%2Ftraveller_avatar_default%20(1).png?alt=media&token=4c1771d3-6d5b-4ee5-b12c-cfb347378d6b', N'0982876645', N'$2a$11$NXJsCAcyXJtLUhSxbEe.lOq0dWpYWXcuyL2whlx/iUc5dTiTTGoMy', N'123 Main Street, Anytown, Vietnam', N'Male', CAST(N'2023-10-14T00:00:00.000' AS DateTime), CAST(N'2023-07-13T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Account] ([Id], [ConfigLanguageId], [RoleId], [NationalCode], [FirstName], [LastName], [Email], [Image], [Phone], [Password], [Address], [Gender], [CreateTime], [UpdateTime], [Status]) VALUES (16, 2, 3, N'vi', N'Alice', N'Smith', N'alice.smith@gmail.com', N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/Account%2Ftraveller_avatar_default%20(2).png?alt=media&token=1bc35639-f459-4047-952b-8ed6da8b4189', N'0778303705', N'$2a$11$NXJsCAcyXJtLUhSxbEe.lOq0dWpYWXcuyL2whlx/iUc5dTiTTGoMy', N'456 Tokyo Street, Tokyo, Japan', N'Female', CAST(N'2023-10-15T00:00:00.000' AS DateTime), CAST(N'2023-07-13T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Account] ([Id], [ConfigLanguageId], [RoleId], [NationalCode], [FirstName], [LastName], [Email], [Image], [Phone], [Password], [Address], [Gender], [CreateTime], [UpdateTime], [Status]) VALUES (17, 6, 3, N'en-gb', N'Maria', N'García', N'maria.garcia@gmail.com', N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/Account%2Ftraveller_avatar_default%20(2).png?alt=media&token=1bc35639-f459-4047-952b-8ed6da8b4189', N'0327553456', N'$2a$11$NXJsCAcyXJtLUhSxbEe.lOq0dWpYWXcuyL2whlx/iUc5dTiTTGoMy', N'789 New York Street, New York, USA', N'Female', CAST(N'2023-11-12T00:00:00.000' AS DateTime), CAST(N'2023-07-13T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Account] ([Id], [ConfigLanguageId], [RoleId], [NationalCode], [FirstName], [LastName], [Email], [Image], [Phone], [Password], [Address], [Gender], [CreateTime], [UpdateTime], [Status]) VALUES (18, 4, 3, N'zh-cn', N'Lil ', N'Wei', N'lil.wei@gmail.com', N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/Account%2Ftraveller_avatar_default%20(1).png?alt=media&token=4c1771d3-6d5b-4ee5-b12c-cfb347378d6b', N'0398152604', N'$2a$11$NXJsCAcyXJtLUhSxbEe.lOq0dWpYWXcuyL2whlx/iUc5dTiTTGoMy', N'456 Beijing Street, Beijing, China', N'Female', CAST(N'2023-11-21T00:00:00.000' AS DateTime), CAST(N'2023-07-13T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Account] ([Id], [ConfigLanguageId], [RoleId], [NationalCode], [FirstName], [LastName], [Email], [Image], [Phone], [Password], [Address], [Gender], [CreateTime], [UpdateTime], [Status]) VALUES (19, 6, 3, N'vi', N'Phuong', N'Thuy', N'caothiphuongthuy.07@gmail.com', N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/Account%2Ftraveller_avatar_default%20(2).png?alt=media&token=1bc35639-f459-4047-952b-8ed6da8b4189', N'0396421901', N'$2a$11$NXJsCAcyXJtLUhSxbEe.lOq0dWpYWXcuyL2whlx/iUc5dTiTTGoMy', N'Vinhome Grand Park', N'Female', CAST(N'2023-12-10T00:00:00.000' AS DateTime), CAST(N'2023-07-13T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Account] ([Id], [ConfigLanguageId], [RoleId], [NationalCode], [FirstName], [LastName], [Email], [Image], [Phone], [Password], [Address], [Gender], [CreateTime], [UpdateTime], [Status]) VALUES (20, 2, 3, N'ja', N'Sakura', N'Hayashi', N'sakura.haya12@gmail.com', N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/Account%2Ftraveller_avatar_default%20(2).png?alt=media&token=1bc35639-f459-4047-952b-8ed6da8b4189', N'0866710504', N'$2a$11$NXJsCAcyXJtLUhSxbEe.lOq0dWpYWXcuyL2whlx/iUc5dTiTTGoMy', N'12 Osaka Street, Osaka, Japan', N'Female', CAST(N'2023-11-12T00:00:00.000' AS DateTime), CAST(N'2023-07-13T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Account] ([Id], [ConfigLanguageId], [RoleId], [NationalCode], [FirstName], [LastName], [Email], [Image], [Phone], [Password], [Address], [Gender], [CreateTime], [UpdateTime], [Status]) VALUES (21, 6, 3, N'en-gb', N'Michael', N'Davis', N'michael.davis@gmail.com', N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/Account%2Ftraveller_avatar_default%20(1).png?alt=media&token=4c1771d3-6d5b-4ee5-b12c-cfb347378d6b', N'0786291126', N'$2a$11$NXJsCAcyXJtLUhSxbEe.lOq0dWpYWXcuyL2whlx/iUc5dTiTTGoMy', N'345 California Street, San Francisco, USA', N'Male', CAST(N'2023-11-23T00:00:00.000' AS DateTime), CAST(N'2023-07-13T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Account] ([Id], [ConfigLanguageId], [RoleId], [NationalCode], [FirstName], [LastName], [Email], [Image], [Phone], [Password], [Address], [Gender], [CreateTime], [UpdateTime], [Status]) VALUES (22, 4, 3, N'zh-cn', N'Li', N'Mei', N'li.mei@gmail.com', N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/Account%2Ftraveller_avatar_default%20(2).png?alt=media&token=1bc35639-f459-4047-952b-8ed6da8b4189', N'0337034958', N'$2a$11$NXJsCAcyXJtLUhSxbEe.lOq0dWpYWXcuyL2whlx/iUc5dTiTTGoMy', N'789 Guangzhou Street, Guangzhou, China', N'Male', CAST(N'2023-12-14T00:00:00.000' AS DateTime), CAST(N'2023-07-13T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Account] ([Id], [ConfigLanguageId], [RoleId], [NationalCode], [FirstName], [LastName], [Email], [Image], [Phone], [Password], [Address], [Gender], [CreateTime], [UpdateTime], [Status]) VALUES (23, 1, 3, N'en-gb', N'Emma', N'Smith', N'emma.smith@gmail.com', N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/Account%2Ftraveller_avatar_default%20(1).png?alt=media&token=4c1771d3-6d5b-4ee5-b12c-cfb347378d6b', N'0982876644', N'$2a$11$NXJsCAcyXJtLUhSxbEe.lOq0dWpYWXcuyL2whlx/iUc5dTiTTGoMy', N'123 Washington Street, Washington D.C., USA', N'Female', CAST(N'2023-12-15T00:00:00.000' AS DateTime), CAST(N'2023-07-13T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Account] ([Id], [ConfigLanguageId], [RoleId], [NationalCode], [FirstName], [LastName], [Email], [Image], [Phone], [Password], [Address], [Gender], [CreateTime], [UpdateTime], [Status]) VALUES (24, 2, 3, N'ja', N'Rin', N'Yamamoto', N'rin.yamamoto@gmail.com', N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/Account%2Ftraveller_avatar_default%20(2).png?alt=media&token=1bc35639-f459-4047-952b-8ed6da8b4189', N'0987088557', N'$2a$11$NXJsCAcyXJtLUhSxbEe.lOq0dWpYWXcuyL2whlx/iUc5dTiTTGoMy', N'23 Kyoto Street, Kyoto, Japan', N'Male', CAST(N'2023-12-03T00:00:00.000' AS DateTime), CAST(N'2023-07-13T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Account] ([Id], [ConfigLanguageId], [RoleId], [NationalCode], [FirstName], [LastName], [Email], [Image], [Phone], [Password], [Address], [Gender], [CreateTime], [UpdateTime], [Status]) VALUES (25, 6, 3, N'en-gb', N'Daniel', N'Smith', N'daniel.smith@gmail.com', N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/Account%2Ftraveller_avatar_default%20(1).png?alt=media&token=4c1771d3-6d5b-4ee5-b12c-cfb347378d6b', N'0704494100', N'$2a$11$NXJsCAcyXJtLUhSxbEe.lOq0dWpYWXcuyL2whlx/iUc5dTiTTGoMy', N'456 Texas Street, Dallas, USA', N'Male', CAST(N'2023-11-27T00:00:00.000' AS DateTime), CAST(N'2023-07-13T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Account] ([Id], [ConfigLanguageId], [RoleId], [NationalCode], [FirstName], [LastName], [Email], [Image], [Phone], [Password], [Address], [Gender], [CreateTime], [UpdateTime], [Status]) VALUES (26, 4, 3, N'zh-cn', N'Yang', N'Li', N'yang.li@gmail.com', N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/Account%2Ftraveller_avatar_default%20(2).png?alt=media&token=1bc35639-f459-4047-952b-8ed6da8b4189', N'0329167171', N'$2a$11$NXJsCAcyXJtLUhSxbEe.lOq0dWpYWXcuyL2whlx/iUc5dTiTTGoMy', N'789 Guangzhou Street, Guangzhou, China', N'Male', CAST(N'2023-11-28T00:00:00.000' AS DateTime), CAST(N'2023-07-13T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Account] ([Id], [ConfigLanguageId], [RoleId], [NationalCode], [FirstName], [LastName], [Email], [Image], [Phone], [Password], [Address], [Gender], [CreateTime], [UpdateTime], [Status]) VALUES (27, 1, 3, N'ja', N'Olivia', N'Dupont', N'olivia.dupont@gmail.com', N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/Account%2Ftraveller_avatar_default%20(1).png?alt=media&token=4c1771d3-6d5b-4ee5-b12c-cfb347378d6b', N'0392345649', N'$2a$11$NXJsCAcyXJtLUhSxbEe.lOq0dWpYWXcuyL2whlx/iUc5dTiTTGoMy', N'12 Lyon Street, Lyon, France', N'Male', CAST(N'2023-11-25T00:00:00.000' AS DateTime), CAST(N'2023-07-13T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Account] ([Id], [ConfigLanguageId], [RoleId], [NationalCode], [FirstName], [LastName], [Email], [Image], [Phone], [Password], [Address], [Gender], [CreateTime], [UpdateTime], [Status]) VALUES (28, 2, 3, N'ja', N'Hiroki', N'Tanaka', N'hiroki.tanaka@gmail.com', N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/Account%2Ftraveller_avatar_default%20(2).png?alt=media&token=1bc35639-f459-4047-952b-8ed6da8b4189', N'0986692617', N'$2a$11$NXJsCAcyXJtLUhSxbEe.lOq0dWpYWXcuyL2whlx/iUc5dTiTTGoMy', N'15 Nagoya Street, Nagoya, Japan', N'Female', CAST(N'2023-12-15T00:00:00.000' AS DateTime), CAST(N'2023-07-13T00:00:00.000' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Booking] ON 

INSERT [dbo].[Booking] ([Id], [AccountId], [ItineraryId], [Total], [IsPrepared], [CreateTime], [UpdateTime], [Status]) VALUES (1, 17, 1, CAST(21.00 AS Decimal(18, 2)), 1, CAST(N'2023-11-24T07:08:00.000' AS DateTime), CAST(N'2023-11-24T07:08:00.000' AS DateTime), 1)
INSERT [dbo].[Booking] ([Id], [AccountId], [ItineraryId], [Total], [IsPrepared], [CreateTime], [UpdateTime], [Status]) VALUES (2, 12, NULL, CAST(11.00 AS Decimal(18, 2)), 0, CAST(N'2023-11-24T00:12:00.000' AS DateTime), CAST(N'2023-11-24T00:12:00.000' AS DateTime), 1)
INSERT [dbo].[Booking] ([Id], [AccountId], [ItineraryId], [Total], [IsPrepared], [CreateTime], [UpdateTime], [Status]) VALUES (3, 12, NULL, CAST(10.00 AS Decimal(18, 2)), 0, CAST(N'2023-11-24T11:59:00.000' AS DateTime), CAST(N'2023-11-24T11:59:00.000' AS DateTime), 1)
INSERT [dbo].[Booking] ([Id], [AccountId], [ItineraryId], [Total], [IsPrepared], [CreateTime], [UpdateTime], [Status]) VALUES (4, 12, NULL, CAST(20.00 AS Decimal(18, 2)), 0, CAST(N'2023-11-24T14:24:00.000' AS DateTime), CAST(N'2023-11-24T14:24:00.000' AS DateTime), 1)
INSERT [dbo].[Booking] ([Id], [AccountId], [ItineraryId], [Total], [IsPrepared], [CreateTime], [UpdateTime], [Status]) VALUES (5, 11, NULL, CAST(15.00 AS Decimal(18, 2)), 0, CAST(N'2023-11-21T09:50:00.000' AS DateTime), CAST(N'2023-11-21T09:50:00.000' AS DateTime), 1)
INSERT [dbo].[Booking] ([Id], [AccountId], [ItineraryId], [Total], [IsPrepared], [CreateTime], [UpdateTime], [Status]) VALUES (6, 14, 2, CAST(16.00 AS Decimal(18, 2)), 1, CAST(N'2023-11-14T12:11:00.000' AS DateTime), CAST(N'2023-11-14T12:11:00.000' AS DateTime), 1)
INSERT [dbo].[Booking] ([Id], [AccountId], [ItineraryId], [Total], [IsPrepared], [CreateTime], [UpdateTime], [Status]) VALUES (7, 19, 7, CAST(12.00 AS Decimal(18, 2)), 1, CAST(N'2023-11-14T15:15:00.000' AS DateTime), CAST(N'2023-11-14T15:15:00.000' AS DateTime), 1)
INSERT [dbo].[Booking] ([Id], [AccountId], [ItineraryId], [Total], [IsPrepared], [CreateTime], [UpdateTime], [Status]) VALUES (8, 19, NULL, CAST(7.00 AS Decimal(18, 2)), 0, CAST(N'2023-11-14T11:11:00.000' AS DateTime), CAST(N'2023-11-14T11:11:00.000' AS DateTime), 1)
INSERT [dbo].[Booking] ([Id], [AccountId], [ItineraryId], [Total], [IsPrepared], [CreateTime], [UpdateTime], [Status]) VALUES (9, 17, NULL, CAST(16.00 AS Decimal(18, 2)), 0, CAST(N'2023-11-15T10:00:00.000' AS DateTime), CAST(N'2023-11-15T10:00:00.000' AS DateTime), 1)
INSERT [dbo].[Booking] ([Id], [AccountId], [ItineraryId], [Total], [IsPrepared], [CreateTime], [UpdateTime], [Status]) VALUES (10, 14, NULL, CAST(20.00 AS Decimal(18, 2)), 0, CAST(N'2023-11-15T09:00:00.000' AS DateTime), CAST(N'2023-11-15T09:00:00.000' AS DateTime), 1)
INSERT [dbo].[Booking] ([Id], [AccountId], [ItineraryId], [Total], [IsPrepared], [CreateTime], [UpdateTime], [Status]) VALUES (11, 4, 6, CAST(17.00 AS Decimal(18, 2)), 1, CAST(N'2023-11-25T22:17:51.843' AS DateTime), CAST(N'2023-11-25T22:18:06.313' AS DateTime), 1)
INSERT [dbo].[Booking] ([Id], [AccountId], [ItineraryId], [Total], [IsPrepared], [CreateTime], [UpdateTime], [Status]) VALUES (12, 4, 0, CAST(10.00 AS Decimal(18, 2)), 0, CAST(N'2023-11-25T22:18:55.103' AS DateTime), CAST(N'2023-11-25T22:19:06.867' AS DateTime), 1)
INSERT [dbo].[Booking] ([Id], [AccountId], [ItineraryId], [Total], [IsPrepared], [CreateTime], [UpdateTime], [Status]) VALUES (13, 4, 0, CAST(13.00 AS Decimal(18, 2)), 0, CAST(N'2023-11-25T22:19:51.423' AS DateTime), CAST(N'2023-11-27T22:20:09.567' AS DateTime), 1)
INSERT [dbo].[Booking] ([Id], [AccountId], [ItineraryId], [Total], [IsPrepared], [CreateTime], [UpdateTime], [Status]) VALUES (14, 5, 7, CAST(12.00 AS Decimal(18, 2)), 1, CAST(N'2023-11-27T22:21:15.710' AS DateTime), CAST(N'2023-11-27T22:21:32.643' AS DateTime), 1)
INSERT [dbo].[Booking] ([Id], [AccountId], [ItineraryId], [Total], [IsPrepared], [CreateTime], [UpdateTime], [Status]) VALUES (15, 5, 0, CAST(12.00 AS Decimal(18, 2)), 0, CAST(N'2023-11-27T22:22:20.813' AS DateTime), CAST(N'2023-11-27T22:22:32.727' AS DateTime), 1)
INSERT [dbo].[Booking] ([Id], [AccountId], [ItineraryId], [Total], [IsPrepared], [CreateTime], [UpdateTime], [Status]) VALUES (16, 6, 5, CAST(24.00 AS Decimal(18, 2)), 1, CAST(N'2023-11-27T22:24:06.310' AS DateTime), CAST(N'2023-11-27T22:24:20.353' AS DateTime), 1)
INSERT [dbo].[Booking] ([Id], [AccountId], [ItineraryId], [Total], [IsPrepared], [CreateTime], [UpdateTime], [Status]) VALUES (17, 8, 2, CAST(21.00 AS Decimal(18, 2)), 1, CAST(N'2023-11-27T22:25:31.673' AS DateTime), CAST(N'2023-11-27T22:25:46.127' AS DateTime), 1)
INSERT [dbo].[Booking] ([Id], [AccountId], [ItineraryId], [Total], [IsPrepared], [CreateTime], [UpdateTime], [Status]) VALUES (18, 8, 0, CAST(15.00 AS Decimal(18, 2)), 0, CAST(N'2023-11-27T22:26:22.643' AS DateTime), CAST(N'2023-11-27T22:26:35.713' AS DateTime), 1)
INSERT [dbo].[Booking] ([Id], [AccountId], [ItineraryId], [Total], [IsPrepared], [CreateTime], [UpdateTime], [Status]) VALUES (19, 8, 6, CAST(17.00 AS Decimal(18, 2)), 1, CAST(N'2023-11-27T22:27:40.460' AS DateTime), CAST(N'2023-11-27T22:27:53.063' AS DateTime), 1)
INSERT [dbo].[Booking] ([Id], [AccountId], [ItineraryId], [Total], [IsPrepared], [CreateTime], [UpdateTime], [Status]) VALUES (20, 8, 0, CAST(10.00 AS Decimal(18, 2)), 0, CAST(N'2023-11-27T22:28:44.480' AS DateTime), CAST(N'2023-11-27T22:28:56.280' AS DateTime), 1)
INSERT [dbo].[Booking] ([Id], [AccountId], [ItineraryId], [Total], [IsPrepared], [CreateTime], [UpdateTime], [Status]) VALUES (21, 8, 0, CAST(8.00 AS Decimal(18, 2)), 0, CAST(N'2023-11-27T22:29:27.807' AS DateTime), CAST(N'2023-11-27T22:29:38.930' AS DateTime), 1)
INSERT [dbo].[Booking] ([Id], [AccountId], [ItineraryId], [Total], [IsPrepared], [CreateTime], [UpdateTime], [Status]) VALUES (22, 11, 0, CAST(12.00 AS Decimal(18, 2)), 0, CAST(N'2023-11-26T22:30:57.733' AS DateTime), CAST(N'2023-11-26T22:31:09.527' AS DateTime), 1)
INSERT [dbo].[Booking] ([Id], [AccountId], [ItineraryId], [Total], [IsPrepared], [CreateTime], [UpdateTime], [Status]) VALUES (23, 11, 5, CAST(24.00 AS Decimal(18, 2)), 1, CAST(N'2023-11-26T22:31:25.277' AS DateTime), CAST(N'2023-11-26T22:31:37.603' AS DateTime), 1)
INSERT [dbo].[Booking] ([Id], [AccountId], [ItineraryId], [Total], [IsPrepared], [CreateTime], [UpdateTime], [Status]) VALUES (24, 13, 0, CAST(9.00 AS Decimal(18, 2)), 0, CAST(N'2023-11-26T22:33:39.303' AS DateTime), CAST(N'2023-11-26T22:33:52.807' AS DateTime), 1)
INSERT [dbo].[Booking] ([Id], [AccountId], [ItineraryId], [Total], [IsPrepared], [CreateTime], [UpdateTime], [Status]) VALUES (25, 13, 6, CAST(17.00 AS Decimal(18, 2)), 1, CAST(N'2023-11-26T22:34:07.337' AS DateTime), CAST(N'2023-11-26T22:34:19.657' AS DateTime), 1)
INSERT [dbo].[Booking] ([Id], [AccountId], [ItineraryId], [Total], [IsPrepared], [CreateTime], [UpdateTime], [Status]) VALUES (26, 14, 2, CAST(21.00 AS Decimal(18, 2)), 1, CAST(N'2023-11-26T22:35:03.980' AS DateTime), CAST(N'2023-11-26T22:35:15.600' AS DateTime), 1)
INSERT [dbo].[Booking] ([Id], [AccountId], [ItineraryId], [Total], [IsPrepared], [CreateTime], [UpdateTime], [Status]) VALUES (27, 15, 0, CAST(9.00 AS Decimal(18, 2)), 0, CAST(N'2023-11-26T22:37:02.383' AS DateTime), NULL, 0)
INSERT [dbo].[Booking] ([Id], [AccountId], [ItineraryId], [Total], [IsPrepared], [CreateTime], [UpdateTime], [Status]) VALUES (28, 16, 0, CAST(16.00 AS Decimal(18, 2)), 0, CAST(N'2023-11-29T22:40:12.587' AS DateTime), CAST(N'2023-11-29T22:40:28.437' AS DateTime), 1)
INSERT [dbo].[Booking] ([Id], [AccountId], [ItineraryId], [Total], [IsPrepared], [CreateTime], [UpdateTime], [Status]) VALUES (29, 16, 6, CAST(17.00 AS Decimal(18, 2)), 1, CAST(N'2023-11-29T22:41:14.683' AS DateTime), CAST(N'2023-11-29T22:41:25.830' AS DateTime), 1)
INSERT [dbo].[Booking] ([Id], [AccountId], [ItineraryId], [Total], [IsPrepared], [CreateTime], [UpdateTime], [Status]) VALUES (30, 17, 0, CAST(12.00 AS Decimal(18, 2)), 0, CAST(N'2023-11-29T22:43:06.217' AS DateTime), CAST(N'2023-11-29T22:43:16.790' AS DateTime), 1)
INSERT [dbo].[Booking] ([Id], [AccountId], [ItineraryId], [Total], [IsPrepared], [CreateTime], [UpdateTime], [Status]) VALUES (31, 18, 0, CAST(12.00 AS Decimal(18, 2)), 0, CAST(N'2023-11-29T22:44:50.233' AS DateTime), CAST(N'2023-11-29T22:45:01.917' AS DateTime), 1)
INSERT [dbo].[Booking] ([Id], [AccountId], [ItineraryId], [Total], [IsPrepared], [CreateTime], [UpdateTime], [Status]) VALUES (32, 18, 0, CAST(14.00 AS Decimal(18, 2)), 0, CAST(N'2023-11-29T22:45:56.790' AS DateTime), CAST(N'2023-11-29T22:46:11.193' AS DateTime), 1)
INSERT [dbo].[Booking] ([Id], [AccountId], [ItineraryId], [Total], [IsPrepared], [CreateTime], [UpdateTime], [Status]) VALUES (33, 20, 0, CAST(9.00 AS Decimal(18, 2)), 0, CAST(N'2023-11-29T22:47:25.870' AS DateTime), CAST(N'2023-11-29T22:47:37.963' AS DateTime), 1)
INSERT [dbo].[Booking] ([Id], [AccountId], [ItineraryId], [Total], [IsPrepared], [CreateTime], [UpdateTime], [Status]) VALUES (34, 21, 5, CAST(24.00 AS Decimal(18, 2)), 1, CAST(N'2023-11-29T22:48:59.193' AS DateTime), CAST(N'2023-11-29T22:49:10.473' AS DateTime), 1)
INSERT [dbo].[Booking] ([Id], [AccountId], [ItineraryId], [Total], [IsPrepared], [CreateTime], [UpdateTime], [Status]) VALUES (35, 21, 0, CAST(9.00 AS Decimal(18, 2)), 0, CAST(N'2023-11-24T22:50:08.507' AS DateTime), CAST(N'2023-11-24T22:50:29.247' AS DateTime), 1)
INSERT [dbo].[Booking] ([Id], [AccountId], [ItineraryId], [Total], [IsPrepared], [CreateTime], [UpdateTime], [Status]) VALUES (36, 21, 7, CAST(12.00 AS Decimal(18, 2)), 1, CAST(N'2023-11-24T22:51:19.880' AS DateTime), CAST(N'2023-11-24T22:51:31.293' AS DateTime), 1)
INSERT [dbo].[Booking] ([Id], [AccountId], [ItineraryId], [Total], [IsPrepared], [CreateTime], [UpdateTime], [Status]) VALUES (37, 22, 0, CAST(12.00 AS Decimal(18, 2)), 0, CAST(N'2023-11-24T22:54:11.537' AS DateTime), CAST(N'2023-11-24T22:54:24.423' AS DateTime), 1)
INSERT [dbo].[Booking] ([Id], [AccountId], [ItineraryId], [Total], [IsPrepared], [CreateTime], [UpdateTime], [Status]) VALUES (38, 22, 0, CAST(14.00 AS Decimal(18, 2)), 0, CAST(N'2023-11-24T22:54:59.913' AS DateTime), CAST(N'2023-11-24T22:55:19.313' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Booking] OFF
GO
SET IDENTITY_INSERT [dbo].[BookingPlace] ON 

INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (2, 3, 1, 1, CAST(2.00 AS Decimal(18, 2)), CAST(N'2023-11-24T07:10:00.000' AS DateTime), 1, 1, 1, CAST(N'2023-11-30T07:10:00.000' AS DateTime))
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (3, 8, 1, 1, CAST(5.00 AS Decimal(18, 2)), CAST(N'2023-11-24T08:42:00.000' AS DateTime), 2, 1, 1, CAST(N'2023-11-30T07:10:00.000' AS DateTime))
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (4, 9, 10, NULL, CAST(6.00 AS Decimal(18, 2)), CAST(N'2023-11-24T11:11:00.000' AS DateTime), 3, 1, 0, CAST(N'2023-11-30T11:11:00.000' AS DateTime))
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (5, 21, 1, 3, CAST(0.00 AS Decimal(18, 2)), CAST(N'2023-11-24T07:10:00.000' AS DateTime), 1, 1, 1, CAST(N'2023-11-30T11:11:00.000' AS DateTime))
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (6, 11, 1, 3, CAST(3.00 AS Decimal(18, 2)), CAST(N'2023-11-24T08:42:00.000' AS DateTime), 2, 0, 1, CAST(N'2023-11-30T11:11:00.000' AS DateTime))
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (7, 6, 10, NULL, CAST(5.00 AS Decimal(18, 2)), CAST(N'2023-11-24T11:30:00.000' AS DateTime), 3, 0, 1, CAST(N'2023-11-30T11:11:00.000' AS DateTime))
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (8, 8, 10, NULL, CAST(5.00 AS Decimal(18, 2)), CAST(N'2023-11-24T00:00:00.000' AS DateTime), NULL, 0, 0, CAST(N'2023-11-30T11:11:00.000' AS DateTime))
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (9, 21, 2, 2, CAST(0.00 AS Decimal(18, 2)), CAST(N'2023-11-24T07:10:00.000' AS DateTime), 1, 1, 1, CAST(N'2023-11-30T11:11:00.000' AS DateTime))
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (10, 9, 2, 2, CAST(6.00 AS Decimal(18, 2)), CAST(N'2023-11-24T08:42:00.000' AS DateTime), 2, 0, 1, CAST(N'2023-11-30T11:11:00.000' AS DateTime))
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (11, 10, 5, NULL, CAST(5.00 AS Decimal(18, 2)), NULL, NULL, 0, 0, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (12, 11, 5, NULL, CAST(3.00 AS Decimal(18, 2)), NULL, NULL, 0, 0, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (13, 14, 5, NULL, CAST(6.00 AS Decimal(18, 2)), NULL, NULL, 0, 0, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (14, 15, 2, NULL, CAST(5.00 AS Decimal(18, 2)), NULL, NULL, 0, 0, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (15, 3, 6, 4, CAST(2.00 AS Decimal(18, 2)), CAST(N'2023-11-21T07:01:00.000' AS DateTime), 1, 1, 1, CAST(N'2023-12-04T11:11:00.000' AS DateTime))
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (16, 8, 6, 4, CAST(5.00 AS Decimal(18, 2)), CAST(N'2023-11-21T09:05:00.000' AS DateTime), 2, 1, 1, CAST(N'2023-12-04T11:11:00.000' AS DateTime))
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (17, 9, 6, 4, CAST(6.00 AS Decimal(18, 2)), NULL, 4, 0, 1, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (18, 19, 6, 4, CAST(0.00 AS Decimal(18, 2)), NULL, 3, 0, 1, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (19, 3, 7, 7, CAST(2.00 AS Decimal(18, 2)), CAST(N'2023-11-14T08:02:00.000' AS DateTime), 1, 1, 1, CAST(N'2023-12-04T11:11:00.000' AS DateTime))
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (20, 10, 10, NULL, CAST(5.00 AS Decimal(18, 2)), CAST(N'2023-11-14T09:26:00.000' AS DateTime), 2, 1, 1, CAST(N'2023-12-04T11:11:00.000' AS DateTime))
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (21, 11, 6, 4, CAST(3.00 AS Decimal(18, 2)), NULL, 5, 0, 1, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (22, 7, 7, 7, CAST(5.00 AS Decimal(18, 2)), NULL, 3, 0, 1, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (23, 12, 7, 7, CAST(5.00 AS Decimal(18, 2)), NULL, 4, 0, 1, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (24, 21, 7, 7, CAST(0.00 AS Decimal(18, 2)), NULL, 5, 0, 1, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (25, 17, 3, NULL, CAST(5.00 AS Decimal(18, 2)), NULL, NULL, 0, 0, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (26, 18, 3, NULL, CAST(5.00 AS Decimal(18, 2)), NULL, NULL, 0, 0, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (27, 19, 3, NULL, CAST(0.00 AS Decimal(18, 2)), NULL, NULL, 0, 0, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (28, 20, 3, NULL, CAST(0.00 AS Decimal(18, 2)), NULL, NULL, 0, 0, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (29, 10, 9, NULL, CAST(5.00 AS Decimal(18, 2)), NULL, NULL, 0, 0, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (30, 11, 2, NULL, CAST(3.00 AS Decimal(18, 2)), NULL, NULL, 0, 0, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (31, 14, 2, NULL, CAST(6.00 AS Decimal(18, 2)), NULL, NULL, 0, 0, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (32, 15, 4, NULL, CAST(5.00 AS Decimal(18, 2)), NULL, NULL, 0, 0, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (33, 16, 4, NULL, CAST(5.00 AS Decimal(18, 2)), NULL, NULL, 0, 0, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (34, 17, 4, NULL, CAST(5.00 AS Decimal(18, 2)), NULL, NULL, 0, 0, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (35, 18, 4, NULL, CAST(5.00 AS Decimal(18, 2)), NULL, NULL, 0, 0, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (36, 19, 4, NULL, CAST(0.00 AS Decimal(18, 2)), NULL, NULL, 0, 0, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (37, 20, 4, NULL, CAST(0.00 AS Decimal(18, 2)), NULL, NULL, 0, 0, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (38, 10, 8, NULL, CAST(5.00 AS Decimal(18, 2)), NULL, NULL, 0, 0, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (39, 11, 9, NULL, CAST(3.00 AS Decimal(18, 2)), NULL, NULL, 0, 0, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (40, 14, 9, NULL, CAST(6.00 AS Decimal(18, 2)), NULL, NULL, 0, 0, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (41, 28, 9, NULL, CAST(2.00 AS Decimal(18, 2)), NULL, NULL, 0, 0, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (42, 27, 9, NULL, CAST(0.00 AS Decimal(18, 2)), NULL, NULL, 0, 0, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (43, 24, 8, NULL, CAST(0.00 AS Decimal(18, 2)), NULL, NULL, 0, 0, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (44, 23, 8, NULL, CAST(0.00 AS Decimal(18, 2)), NULL, NULL, 0, 0, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (45, 22, 8, NULL, CAST(0.00 AS Decimal(18, 2)), NULL, NULL, 0, 0, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (46, 28, 8, NULL, CAST(2.00 AS Decimal(18, 2)), NULL, NULL, 0, 0, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (47, 3, 11, 8, CAST(2.00 AS Decimal(18, 2)), NULL, 3, 0, 1, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (48, 6, 11, 8, CAST(5.00 AS Decimal(18, 2)), NULL, 2, 0, 1, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (49, 17, 11, 8, CAST(5.00 AS Decimal(18, 2)), NULL, 4, 0, 1, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (50, 18, 11, 8, CAST(5.00 AS Decimal(18, 2)), NULL, 1, 0, 1, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (51, 10, 12, NULL, CAST(5.00 AS Decimal(18, 2)), NULL, 2, 1, 0, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (52, 11, 12, NULL, CAST(3.00 AS Decimal(18, 2)), NULL, 1, 1, 0, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (53, 28, 12, NULL, CAST(2.00 AS Decimal(18, 2)), NULL, 3, 1, 0, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (54, 3, 13, NULL, CAST(2.00 AS Decimal(18, 2)), NULL, 1, 1, 0, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (55, 6, 13, NULL, CAST(5.00 AS Decimal(18, 2)), NULL, 2, 1, 0, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (56, 9, 13, NULL, CAST(6.00 AS Decimal(18, 2)), NULL, 3, 1, 0, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (57, 3, 14, 9, CAST(2.00 AS Decimal(18, 2)), NULL, 2, 0, 1, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (58, 7, 14, 9, CAST(5.00 AS Decimal(18, 2)), NULL, 1, 0, 1, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (59, 12, 14, 9, CAST(5.00 AS Decimal(18, 2)), NULL, 3, 0, 1, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (60, 21, 14, 9, CAST(0.00 AS Decimal(18, 2)), NULL, 4, 0, 1, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (61, 7, 15, NULL, CAST(5.00 AS Decimal(18, 2)), NULL, 3, 1, 0, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (62, 10, 15, NULL, CAST(5.00 AS Decimal(18, 2)), NULL, 1, 1, 0, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (63, 28, 15, NULL, CAST(2.00 AS Decimal(18, 2)), NULL, 2, 1, 0, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (64, 3, 16, 10, CAST(2.00 AS Decimal(18, 2)), NULL, 3, 0, 1, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (65, 9, 16, 10, CAST(6.00 AS Decimal(18, 2)), NULL, 1, 0, 1, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (66, 10, 16, 10, CAST(5.00 AS Decimal(18, 2)), NULL, 4, 0, 1, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (67, 12, 16, 10, CAST(5.00 AS Decimal(18, 2)), NULL, 5, 0, 1, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (68, 16, 16, 10, CAST(6.00 AS Decimal(18, 2)), NULL, 2, 0, 1, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (69, 3, 17, 11, CAST(2.00 AS Decimal(18, 2)), NULL, 2, 0, 1, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (70, 6, 17, 11, CAST(5.00 AS Decimal(18, 2)), NULL, 5, 0, 1, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (71, 8, 17, 11, CAST(5.00 AS Decimal(18, 2)), NULL, 3, 0, 1, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (72, 9, 17, 11, CAST(6.00 AS Decimal(18, 2)), NULL, 4, 0, 1, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (73, 11, 17, 11, CAST(3.00 AS Decimal(18, 2)), NULL, 1, 0, 1, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (74, 7, 18, NULL, CAST(5.00 AS Decimal(18, 2)), NULL, 3, 1, 0, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (75, 8, 18, NULL, CAST(5.00 AS Decimal(18, 2)), NULL, 2, 1, 0, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (76, 12, 18, NULL, CAST(5.00 AS Decimal(18, 2)), NULL, 1, 1, 0, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (77, 3, 19, 12, CAST(2.00 AS Decimal(18, 2)), NULL, 3, 0, 1, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (78, 6, 19, 12, CAST(5.00 AS Decimal(18, 2)), NULL, 2, 0, 1, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (79, 17, 19, 12, CAST(5.00 AS Decimal(18, 2)), NULL, 4, 0, 1, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (80, 18, 19, 12, CAST(5.00 AS Decimal(18, 2)), NULL, 1, 0, 1, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (81, 7, 20, NULL, CAST(5.00 AS Decimal(18, 2)), NULL, 3, 1, 0, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (82, 8, 20, NULL, CAST(5.00 AS Decimal(18, 2)), NULL, 1, 1, 0, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (83, 20, 20, NULL, CAST(0.00 AS Decimal(18, 2)), NULL, 2, 1, 0, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (84, 11, 21, NULL, CAST(3.00 AS Decimal(18, 2)), NULL, 2, 1, 0, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (85, 12, 21, NULL, CAST(5.00 AS Decimal(18, 2)), NULL, 1, 1, 0, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (86, 3, 22, NULL, CAST(2.00 AS Decimal(18, 2)), NULL, 3, 1, 0, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (87, 7, 22, NULL, CAST(5.00 AS Decimal(18, 2)), NULL, 2, 1, 0, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (88, 10, 22, NULL, CAST(5.00 AS Decimal(18, 2)), NULL, 1, 1, 0, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (89, 3, 23, 13, CAST(2.00 AS Decimal(18, 2)), NULL, 3, 0, 1, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (90, 9, 23, 13, CAST(6.00 AS Decimal(18, 2)), NULL, 1, 0, 1, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (91, 10, 23, 13, CAST(5.00 AS Decimal(18, 2)), NULL, 4, 0, 1, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (92, 12, 23, 13, CAST(5.00 AS Decimal(18, 2)), NULL, 5, 0, 1, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (93, 16, 23, 13, CAST(6.00 AS Decimal(18, 2)), NULL, 2, 0, 1, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (94, 3, 24, NULL, CAST(2.00 AS Decimal(18, 2)), NULL, 3, 1, 0, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (95, 7, 24, NULL, CAST(5.00 AS Decimal(18, 2)), NULL, 2, 1, 0, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (96, 28, 24, NULL, CAST(2.00 AS Decimal(18, 2)), NULL, 1, 1, 0, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (97, 3, 25, 14, CAST(2.00 AS Decimal(18, 2)), NULL, 3, 0, 1, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (98, 6, 25, 14, CAST(5.00 AS Decimal(18, 2)), NULL, 2, 0, 1, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (99, 17, 25, 14, CAST(5.00 AS Decimal(18, 2)), NULL, 4, 0, 1, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (100, 18, 25, 14, CAST(5.00 AS Decimal(18, 2)), NULL, 1, 0, 1, NULL)
GO
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (101, 3, 26, 15, CAST(2.00 AS Decimal(18, 2)), NULL, 2, 0, 1, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (102, 6, 26, 15, CAST(5.00 AS Decimal(18, 2)), NULL, 5, 0, 1, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (103, 8, 26, 15, CAST(5.00 AS Decimal(18, 2)), NULL, 3, 0, 1, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (104, 9, 26, 15, CAST(6.00 AS Decimal(18, 2)), NULL, 4, 0, 1, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (105, 11, 26, 15, CAST(3.00 AS Decimal(18, 2)), NULL, 1, 0, 1, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (106, 3, 27, NULL, CAST(2.00 AS Decimal(18, 2)), NULL, 3, 1, 0, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (107, 7, 27, NULL, CAST(5.00 AS Decimal(18, 2)), NULL, 2, 1, 0, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (108, 28, 27, NULL, CAST(2.00 AS Decimal(18, 2)), NULL, 1, 1, 0, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (109, 8, 28, NULL, CAST(5.00 AS Decimal(18, 2)), NULL, 3, 1, 0, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (110, 9, 28, NULL, CAST(6.00 AS Decimal(18, 2)), NULL, 2, 1, 0, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (111, 12, 28, NULL, CAST(5.00 AS Decimal(18, 2)), NULL, 1, 1, 0, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (112, 3, 29, 16, CAST(2.00 AS Decimal(18, 2)), NULL, 3, 0, 1, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (113, 6, 29, 16, CAST(5.00 AS Decimal(18, 2)), NULL, 2, 0, 1, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (114, 17, 29, 16, CAST(5.00 AS Decimal(18, 2)), NULL, 4, 0, 1, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (115, 18, 29, 16, CAST(5.00 AS Decimal(18, 2)), NULL, 1, 0, 1, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (116, 3, 30, NULL, CAST(2.00 AS Decimal(18, 2)), NULL, 3, 1, 0, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (117, 7, 30, NULL, CAST(5.00 AS Decimal(18, 2)), NULL, 2, 1, 0, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (118, 10, 30, NULL, CAST(5.00 AS Decimal(18, 2)), NULL, 1, 1, 0, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (119, 6, 31, NULL, CAST(5.00 AS Decimal(18, 2)), NULL, 2, 1, 0, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (120, 8, 31, NULL, CAST(5.00 AS Decimal(18, 2)), NULL, 1, 1, 0, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (121, 28, 31, NULL, CAST(2.00 AS Decimal(18, 2)), NULL, 3, 1, 0, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (122, 9, 32, NULL, CAST(6.00 AS Decimal(18, 2)), NULL, 3, 1, 0, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (123, 11, 32, NULL, CAST(3.00 AS Decimal(18, 2)), NULL, 2, 1, 0, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (124, 12, 32, NULL, CAST(5.00 AS Decimal(18, 2)), NULL, 1, 1, 0, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (125, 3, 33, NULL, CAST(2.00 AS Decimal(18, 2)), NULL, 1, 1, 0, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (126, 10, 33, NULL, CAST(5.00 AS Decimal(18, 2)), NULL, 2, 1, 0, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (127, 28, 33, NULL, CAST(2.00 AS Decimal(18, 2)), NULL, 3, 1, 0, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (128, 3, 34, 17, CAST(2.00 AS Decimal(18, 2)), NULL, 3, 0, 1, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (129, 9, 34, 17, CAST(6.00 AS Decimal(18, 2)), NULL, 1, 0, 1, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (130, 10, 34, 17, CAST(5.00 AS Decimal(18, 2)), NULL, 4, 0, 1, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (131, 12, 34, 17, CAST(5.00 AS Decimal(18, 2)), NULL, 5, 0, 1, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (132, 16, 34, 17, CAST(6.00 AS Decimal(18, 2)), NULL, 2, 0, 1, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (133, 3, 35, NULL, CAST(2.00 AS Decimal(18, 2)), NULL, 1, 1, 0, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (134, 10, 35, NULL, CAST(5.00 AS Decimal(18, 2)), NULL, 2, 1, 0, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (135, 28, 35, NULL, CAST(2.00 AS Decimal(18, 2)), NULL, 3, 1, 0, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (136, 3, 36, 18, CAST(2.00 AS Decimal(18, 2)), NULL, 2, 0, 1, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (137, 7, 36, 18, CAST(5.00 AS Decimal(18, 2)), NULL, 1, 0, 1, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (138, 12, 36, 18, CAST(5.00 AS Decimal(18, 2)), NULL, 3, 0, 1, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (139, 21, 36, 18, CAST(0.00 AS Decimal(18, 2)), NULL, 4, 0, 1, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (140, 7, 37, NULL, CAST(5.00 AS Decimal(18, 2)), NULL, 3, 1, 0, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (141, 10, 37, NULL, CAST(5.00 AS Decimal(18, 2)), NULL, 1, 1, 0, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (142, 28, 37, NULL, CAST(2.00 AS Decimal(18, 2)), NULL, 2, 1, 0, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (143, 9, 38, NULL, CAST(6.00 AS Decimal(18, 2)), NULL, 1, 1, 0, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (144, 11, 38, NULL, CAST(3.00 AS Decimal(18, 2)), NULL, 2, 1, 0, NULL)
INSERT [dbo].[BookingPlace] ([Id], [PlaceId], [BookingId], [JourneyId], [Price], [StartTime], [Ordinal], [Status], [IsJourney], [ExpiredTime]) VALUES (145, 12, 38, NULL, CAST(5.00 AS Decimal(18, 2)), NULL, 3, 1, 0, NULL)
SET IDENTITY_INSERT [dbo].[BookingPlace] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([Id], [Name], [Status], [CreateTime], [UpdateTime]) VALUES (1, N'Triển Lãm', 1, CAST(N'2023-08-08T00:00:00.000' AS DateTime), CAST(N'2023-08-08T00:00:00.000' AS DateTime))
INSERT [dbo].[Category] ([Id], [Name], [Status], [CreateTime], [UpdateTime]) VALUES (2, N'Di Tích Lịch Sử', 1, CAST(N'2023-08-08T00:00:00.000' AS DateTime), CAST(N'2023-08-08T00:00:00.000' AS DateTime))
INSERT [dbo].[Category] ([Id], [Name], [Status], [CreateTime], [UpdateTime]) VALUES (3, N'Văn Hóa', 1, CAST(N'2023-08-08T00:00:00.000' AS DateTime), CAST(N'2023-08-08T00:00:00.000' AS DateTime))
INSERT [dbo].[Category] ([Id], [Name], [Status], [CreateTime], [UpdateTime]) VALUES (4, N'Khám Phá', 1, CAST(N'2023-08-08T00:00:00.000' AS DateTime), CAST(N'2023-08-08T00:00:00.000' AS DateTime))
INSERT [dbo].[Category] ([Id], [Name], [Status], [CreateTime], [UpdateTime]) VALUES (6, N'Thư Giãn', 1, CAST(N'2023-08-08T00:00:00.000' AS DateTime), CAST(N'2023-08-08T00:00:00.000' AS DateTime))
INSERT [dbo].[Category] ([Id], [Name], [Status], [CreateTime], [UpdateTime]) VALUES (7, N'Không Gian Xanh', 1, CAST(N'2023-08-08T00:00:00.000' AS DateTime), CAST(N'2023-08-08T00:00:00.000' AS DateTime))
INSERT [dbo].[Category] ([Id], [Name], [Status], [CreateTime], [UpdateTime]) VALUES (8, N'Ẩm Thực', 1, CAST(N'2023-08-08T00:00:00.000' AS DateTime), CAST(N'2023-08-08T00:00:00.000' AS DateTime))
INSERT [dbo].[Category] ([Id], [Name], [Status], [CreateTime], [UpdateTime]) VALUES (9, N'Tôn Giáo', 1, CAST(N'2023-08-08T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Category] ([Id], [Name], [Status], [CreateTime], [UpdateTime]) VALUES (10, N'Nghệ Thuật', 1, CAST(N'2023-08-08T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Category] ([Id], [Name], [Status], [CreateTime], [UpdateTime]) VALUES (11, N'Giải Trí', 1, CAST(N'2023-08-08T00:00:00.000' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[CategoryLanguage] ON 

INSERT [dbo].[CategoryLanguage] ([Id], [CategoryId], [NameLanguage], [Status], [LanguageCode]) VALUES (1, 1, N'Triển Lãm', 1, N'vi        ')
INSERT [dbo].[CategoryLanguage] ([Id], [CategoryId], [NameLanguage], [Status], [LanguageCode]) VALUES (2, 1, N'展示', 1, N'ja        ')
INSERT [dbo].[CategoryLanguage] ([Id], [CategoryId], [NameLanguage], [Status], [LanguageCode]) VALUES (3, 1, N'Exhibition', 1, N'en-us     ')
INSERT [dbo].[CategoryLanguage] ([Id], [CategoryId], [NameLanguage], [Status], [LanguageCode]) VALUES (4, 1, N'展览', 1, N'zh-cn     ')
INSERT [dbo].[CategoryLanguage] ([Id], [CategoryId], [NameLanguage], [Status], [LanguageCode]) VALUES (5, 2, N'Di Tích Lịch Sử', 1, N'vi        ')
INSERT [dbo].[CategoryLanguage] ([Id], [CategoryId], [NameLanguage], [Status], [LanguageCode]) VALUES (6, 2, N'史跡', 1, N'ja        ')
INSERT [dbo].[CategoryLanguage] ([Id], [CategoryId], [NameLanguage], [Status], [LanguageCode]) VALUES (7, 2, N'Historical sites', 1, N'en-us     ')
INSERT [dbo].[CategoryLanguage] ([Id], [CategoryId], [NameLanguage], [Status], [LanguageCode]) VALUES (8, 2, N'古迹', 1, N'zh-cn     ')
INSERT [dbo].[CategoryLanguage] ([Id], [CategoryId], [NameLanguage], [Status], [LanguageCode]) VALUES (9, 3, N'Văn Hóa', 1, N'vi        ')
INSERT [dbo].[CategoryLanguage] ([Id], [CategoryId], [NameLanguage], [Status], [LanguageCode]) VALUES (10, 3, N'文化', 1, N'ja        ')
INSERT [dbo].[CategoryLanguage] ([Id], [CategoryId], [NameLanguage], [Status], [LanguageCode]) VALUES (11, 3, N'Culture', 1, N'en-us     ')
INSERT [dbo].[CategoryLanguage] ([Id], [CategoryId], [NameLanguage], [Status], [LanguageCode]) VALUES (12, 3, N'文化', 1, N'zh-cn     ')
INSERT [dbo].[CategoryLanguage] ([Id], [CategoryId], [NameLanguage], [Status], [LanguageCode]) VALUES (13, 4, N'Khám Phá', 1, N'vi        ')
INSERT [dbo].[CategoryLanguage] ([Id], [CategoryId], [NameLanguage], [Status], [LanguageCode]) VALUES (14, 4, N'発見する', 1, N'ja        ')
INSERT [dbo].[CategoryLanguage] ([Id], [CategoryId], [NameLanguage], [Status], [LanguageCode]) VALUES (15, 4, N'Discover', 1, N'en-us     ')
INSERT [dbo].[CategoryLanguage] ([Id], [CategoryId], [NameLanguage], [Status], [LanguageCode]) VALUES (16, 4, N'发现', 1, N'zh-cn     ')
INSERT [dbo].[CategoryLanguage] ([Id], [CategoryId], [NameLanguage], [Status], [LanguageCode]) VALUES (17, 6, N'Thư Giãn', 1, N'vi        ')
INSERT [dbo].[CategoryLanguage] ([Id], [CategoryId], [NameLanguage], [Status], [LanguageCode]) VALUES (18, 6, N'リラックス', 1, N'ja        ')
INSERT [dbo].[CategoryLanguage] ([Id], [CategoryId], [NameLanguage], [Status], [LanguageCode]) VALUES (19, 6, N'Relax', 1, N'en-us     ')
INSERT [dbo].[CategoryLanguage] ([Id], [CategoryId], [NameLanguage], [Status], [LanguageCode]) VALUES (20, 6, N'放松', 1, N'zh-cn     ')
INSERT [dbo].[CategoryLanguage] ([Id], [CategoryId], [NameLanguage], [Status], [LanguageCode]) VALUES (21, 7, N'Không Gian Xanh', 1, N'vi        ')
INSERT [dbo].[CategoryLanguage] ([Id], [CategoryId], [NameLanguage], [Status], [LanguageCode]) VALUES (22, 7, N'緑地', 1, N'ja        ')
INSERT [dbo].[CategoryLanguage] ([Id], [CategoryId], [NameLanguage], [Status], [LanguageCode]) VALUES (23, 7, N'Green space', 1, N'en-us     ')
INSERT [dbo].[CategoryLanguage] ([Id], [CategoryId], [NameLanguage], [Status], [LanguageCode]) VALUES (24, 7, N'绿地', 1, N'zh-cn     ')
INSERT [dbo].[CategoryLanguage] ([Id], [CategoryId], [NameLanguage], [Status], [LanguageCode]) VALUES (25, 8, N'Ẩm Thực', 1, N'vi        ')
INSERT [dbo].[CategoryLanguage] ([Id], [CategoryId], [NameLanguage], [Status], [LanguageCode]) VALUES (26, 8, N'飲食 ', 1, N'ja        ')
INSERT [dbo].[CategoryLanguage] ([Id], [CategoryId], [NameLanguage], [Status], [LanguageCode]) VALUES (27, 8, N'Cuisine', 1, N'en-us     ')
INSERT [dbo].[CategoryLanguage] ([Id], [CategoryId], [NameLanguage], [Status], [LanguageCode]) VALUES (28, 8, N'饮食 ', 1, N'zh-cn     ')
INSERT [dbo].[CategoryLanguage] ([Id], [CategoryId], [NameLanguage], [Status], [LanguageCode]) VALUES (29, 9, N'Tôn Giáo', 1, N'vi        ')
INSERT [dbo].[CategoryLanguage] ([Id], [CategoryId], [NameLanguage], [Status], [LanguageCode]) VALUES (30, 9, N'信仰的', 1, N'ja        ')
INSERT [dbo].[CategoryLanguage] ([Id], [CategoryId], [NameLanguage], [Status], [LanguageCode]) VALUES (31, 9, N'Religion', 1, N'en-us     ')
INSERT [dbo].[CategoryLanguage] ([Id], [CategoryId], [NameLanguage], [Status], [LanguageCode]) VALUES (32, 9, N'宗教', 1, N'zh-cn     ')
INSERT [dbo].[CategoryLanguage] ([Id], [CategoryId], [NameLanguage], [Status], [LanguageCode]) VALUES (33, 10, N'Nghệ Thuật', 1, N'vi        ')
INSERT [dbo].[CategoryLanguage] ([Id], [CategoryId], [NameLanguage], [Status], [LanguageCode]) VALUES (34, 10, N'芸術', 1, N'ja        ')
INSERT [dbo].[CategoryLanguage] ([Id], [CategoryId], [NameLanguage], [Status], [LanguageCode]) VALUES (35, 10, N'Art', 1, N'en-us     ')
INSERT [dbo].[CategoryLanguage] ([Id], [CategoryId], [NameLanguage], [Status], [LanguageCode]) VALUES (36, 10, N'艺术 ', 1, N'zh-cn     ')
INSERT [dbo].[CategoryLanguage] ([Id], [CategoryId], [NameLanguage], [Status], [LanguageCode]) VALUES (37, 11, N'Giải Trí', 1, N'vi        ')
INSERT [dbo].[CategoryLanguage] ([Id], [CategoryId], [NameLanguage], [Status], [LanguageCode]) VALUES (38, 11, N'娯楽', 1, N'ja        ')
INSERT [dbo].[CategoryLanguage] ([Id], [CategoryId], [NameLanguage], [Status], [LanguageCode]) VALUES (39, 11, N'Amusing', 1, N'en-us     ')
INSERT [dbo].[CategoryLanguage] ([Id], [CategoryId], [NameLanguage], [Status], [LanguageCode]) VALUES (40, 11, N'娱乐', 1, N'zh-cn     ')
SET IDENTITY_INSERT [dbo].[CategoryLanguage] OFF
GO
SET IDENTITY_INSERT [dbo].[CelebrateImage] ON 

INSERT [dbo].[CelebrateImage] ([Id], [BookingDetailId], [ImageUrl], [IsPrimary], [Status]) VALUES (1, 2, N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/Celebrate%2Fman-nhan-voi-ve-dep-doc-dao-cua-nha-tho-duc-ba-sai-gon.jpg?alt=media&token=d244cbbc-c56e-4b1f-b458-80fb445bed3a', 1, 1)
INSERT [dbo].[CelebrateImage] ([Id], [BookingDetailId], [ImageUrl], [IsPrimary], [Status]) VALUES (2, 2, N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/Celebrate%2Fnha-tho-duc-ba-nha-tho-dep-nhat-viet-nam.jpg?alt=media&token=4ebe6f59-b28a-44e7-9f83-bf5cea517773', 0, 1)
INSERT [dbo].[CelebrateImage] ([Id], [BookingDetailId], [ImageUrl], [IsPrimary], [Status]) VALUES (3, 8, N'https://luhanhvietnam.com.vn/du-lich/vnt_upload/news/12_2019/man-nhan-voi-ve-dep-doc-dao-cua-nha-tho-duc-ba-sai-gon.jpg', 1, 1)
INSERT [dbo].[CelebrateImage] ([Id], [BookingDetailId], [ImageUrl], [IsPrimary], [Status]) VALUES (4, 9, N'https://cdn.vntrip.vn/cam-nang/wp-content/uploads/2017/09/co-gi-hot-o-pho-di-bo-bui-vien-e1505380369394.jpg', 1, 1)
INSERT [dbo].[CelebrateImage] ([Id], [BookingDetailId], [ImageUrl], [IsPrimary], [Status]) VALUES (5, 9, N'https://static.tuoitre.vn/tto/i/s626/2017/06/18/f9a2e616.jpg', 0, 1)
SET IDENTITY_INSERT [dbo].[CelebrateImage] OFF
GO
SET IDENTITY_INSERT [dbo].[ConfigLanguage] ON 

INSERT [dbo].[ConfigLanguage] ([Id], [Name], [Icon], [FileLink], [LanguageCode], [CreateTime], [UpdateTime], [Status]) VALUES (1, N'Tiếng Việt', N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/Language%2Fvietnam_language.jpg?alt=media&token=d3175873-790f-4922-984c-e4caa00fb02a', N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/Language%2FFileTranslate%2Fvi.json?alt=media&token=0de300c6-facc-4878-8643-8a1898314e80', N'vi', CAST(N'2023-07-13T00:00:00.000' AS DateTime), CAST(N'2023-07-13T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[ConfigLanguage] ([Id], [Name], [Icon], [FileLink], [LanguageCode], [CreateTime], [UpdateTime], [Status]) VALUES (2, N'日本語', N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/Language%2Fjapan_language.jpg?alt=media&token=4598bba1-f291-4ff2-86d0-e50e00144a44', N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/Language%2FFileTranslate%2Fja.json?alt=media&token=0de300c6-facc-4878-8643-8a1898314e80', N'ja', CAST(N'2023-07-13T00:00:00.000' AS DateTime), CAST(N'2023-07-13T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[ConfigLanguage] ([Id], [Name], [Icon], [FileLink], [LanguageCode], [CreateTime], [UpdateTime], [Status]) VALUES (4, N'简体中文', N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/Language%2Fchina_language.jpg?alt=media&token=27862358-4022-41ea-bd81-12ef73125357', N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/Language%2FFileTranslate%2Fzh-cn.json?alt=media&token=0de300c6-facc-4878-8643-8a1898314e80', N'zh-cn', CAST(N'2023-07-13T00:00:00.000' AS DateTime), CAST(N'2023-07-13T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[ConfigLanguage] ([Id], [Name], [Icon], [FileLink], [LanguageCode], [CreateTime], [UpdateTime], [Status]) VALUES (6, N'English(US)', N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/Language%2Fus.png?alt=media&token=de21fec4-fbfa-46ec-a297-4bf7fdd7ecf9&_gl=1*d4ps97*_ga*MTYyNzY2MzU2NC4xNjgyNzcwNTY2*_ga_CW55HF8NVT*MTY5NjM0MDY5NC4zMC4xLjE2OTYzNDExNjEuNTQuMC4w', N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/Language%2FFileTranslate%2Fen-us.json?alt=media&token=0de300c6-facc-4878-8643-8a1898314e80', N'en-us', CAST(N'2023-03-10T00:00:00.000' AS DateTime), NULL, 2)
SET IDENTITY_INSERT [dbo].[ConfigLanguage] OFF
GO
SET IDENTITY_INSERT [dbo].[Conversation] ON 

INSERT [dbo].[Conversation] ([SessionId], [Account_One_Id], [Account_Two_Id], [ChannelId], [Status]) VALUES (10, 5, 11, N'NV8xMQ==', 1)
INSERT [dbo].[Conversation] ([SessionId], [Account_One_Id], [Account_Two_Id], [ChannelId], [Status]) VALUES (13, 5, 14, N'NV8xNA==', 1)
INSERT [dbo].[Conversation] ([SessionId], [Account_One_Id], [Account_Two_Id], [ChannelId], [Status]) VALUES (8, 5, 19, N'NV8xOQ==', 1)
INSERT [dbo].[Conversation] ([SessionId], [Account_One_Id], [Account_Two_Id], [ChannelId], [Status]) VALUES (11, 11, 5, N'NV8xMQ==', 1)
INSERT [dbo].[Conversation] ([SessionId], [Account_One_Id], [Account_Two_Id], [ChannelId], [Status]) VALUES (14, 11, 14, N'MTFfMTQ=', 1)
INSERT [dbo].[Conversation] ([SessionId], [Account_One_Id], [Account_Two_Id], [ChannelId], [Status]) VALUES (18, 11, 19, N'MTFfMTk=', 1)
INSERT [dbo].[Conversation] ([SessionId], [Account_One_Id], [Account_Two_Id], [ChannelId], [Status]) VALUES (12, 14, 5, N'NV8xNA==', 1)
INSERT [dbo].[Conversation] ([SessionId], [Account_One_Id], [Account_Two_Id], [ChannelId], [Status]) VALUES (15, 14, 11, N'MTFfMTQ=', 1)
INSERT [dbo].[Conversation] ([SessionId], [Account_One_Id], [Account_Two_Id], [ChannelId], [Status]) VALUES (17, 14, 19, N'MTRfMTk=', 1)
INSERT [dbo].[Conversation] ([SessionId], [Account_One_Id], [Account_Two_Id], [ChannelId], [Status]) VALUES (9, 19, 5, N'NV8xOQ==', 1)
INSERT [dbo].[Conversation] ([SessionId], [Account_One_Id], [Account_Two_Id], [ChannelId], [Status]) VALUES (19, 19, 11, N'MTFfMTk=', 1)
INSERT [dbo].[Conversation] ([SessionId], [Account_One_Id], [Account_Two_Id], [ChannelId], [Status]) VALUES (16, 19, 14, N'MTRfMTk=', 1)
SET IDENTITY_INSERT [dbo].[Conversation] OFF
GO
SET IDENTITY_INSERT [dbo].[FcmToken] ON 

INSERT [dbo].[FcmToken] ([Id], [AccountId], [Token], [IsPrimary]) VALUES (1, 19, N'cCDNL_gnSGu954xQ3FKThS:APA91bEGYTDRuv1V9IEY3ST_UPF0mPcNvngWWzuG98y5DN6cc5FC69J0voUHtNGoPGURe5506zYpvGLZxEtkDhV9wMGVN1GpmBpHPet5Y7roP1hOtaoWgKRjM3108rB7PasGe_Z6o5T2', 1)
INSERT [dbo].[FcmToken] ([Id], [AccountId], [Token], [IsPrimary]) VALUES (2, 5, N'cScuoqtmQBueswgrsFN53r:APA91bGtFhpiN-TUAG1sduAfwztV1SDrBLbvprDLs3JvL2OutJzvBBFbZVl2RY5jmaBEF34Hfy4hVeznOE0F-hwYL2PRorgJt-EvJoEkSq4O-VVLnt_QurE4LozcVg45tvROkw-9RFnz', 0)
INSERT [dbo].[FcmToken] ([Id], [AccountId], [Token], [IsPrimary]) VALUES (3, 12, N'cScuoqtmQBueswgrsFN53r:APA91bGtFhpiN-TUAG1sduAfwztV1SDrBLbvprDLs3JvL2OutJzvBBFbZVl2RY5jmaBEF34Hfy4hVeznOE0F-hwYL2PRorgJt-EvJoEkSq4O-VVLnt_QurE4LozcVg45tvROkw-9RFnz', 1)
INSERT [dbo].[FcmToken] ([Id], [AccountId], [Token], [IsPrimary]) VALUES (4, 4, N'cxoTFArFRFmVwRq8NA9vlk:APA91bE5NB8K2zpunV-bqmFeByjoLHz-1uNuJ-tGJZzGqYGFH2qO5XyFtRZTjbNlRQC4LyZbKljJZRkg9y-tkG0wXuqAooF6nUsEVBR4XqAB4Vge2MwvLaUMutHEAgzJa1IPfNuuCTOa', 0)
INSERT [dbo].[FcmToken] ([Id], [AccountId], [Token], [IsPrimary]) VALUES (5, 5, N'cEsdHEuyT4-DR7PPfoBmhs:APA91bGUQz1-qESap00cCG1XZWxnzLQPUTzkhLT052HfNKduNivhr6r1enZ8EhwjPjW7h4bSbuE8Yt5Tb_plB4JNEreWHLkH-f5OJGeMy8QdUSNxu16Oovh-QxxTxTbuVZKwD2HfdTON', 1)
INSERT [dbo].[FcmToken] ([Id], [AccountId], [Token], [IsPrimary]) VALUES (6, 5, N'cxoTFArFRFmVwRq8NA9vlk:APA91bE5NB8K2zpunV-bqmFeByjoLHz-1uNuJ-tGJZzGqYGFH2qO5XyFtRZTjbNlRQC4LyZbKljJZRkg9y-tkG0wXuqAooF6nUsEVBR4XqAB4Vge2MwvLaUMutHEAgzJa1IPfNuuCTOa', 0)
INSERT [dbo].[FcmToken] ([Id], [AccountId], [Token], [IsPrimary]) VALUES (7, 6, N'cxoTFArFRFmVwRq8NA9vlk:APA91bE5NB8K2zpunV-bqmFeByjoLHz-1uNuJ-tGJZzGqYGFH2qO5XyFtRZTjbNlRQC4LyZbKljJZRkg9y-tkG0wXuqAooF6nUsEVBR4XqAB4Vge2MwvLaUMutHEAgzJa1IPfNuuCTOa', 1)
INSERT [dbo].[FcmToken] ([Id], [AccountId], [Token], [IsPrimary]) VALUES (8, 8, N'cxoTFArFRFmVwRq8NA9vlk:APA91bE5NB8K2zpunV-bqmFeByjoLHz-1uNuJ-tGJZzGqYGFH2qO5XyFtRZTjbNlRQC4LyZbKljJZRkg9y-tkG0wXuqAooF6nUsEVBR4XqAB4Vge2MwvLaUMutHEAgzJa1IPfNuuCTOa', 0)
INSERT [dbo].[FcmToken] ([Id], [AccountId], [Token], [IsPrimary]) VALUES (9, 8, N'cxoTFArFRFmVwRq8NA9vlk:APA91bE5NB8K2zpunV-bqmFeByjoLHz-1uNuJ-tGJZzGqYGFH2qO5XyFtRZTjbNlRQC4LyZbKljJZRkg9y-tkG0wXuqAooF6nUsEVBR4XqAB4Vge2MwvLaUMutHEAgzJa1IPfNuuCTOa', 1)
INSERT [dbo].[FcmToken] ([Id], [AccountId], [Token], [IsPrimary]) VALUES (10, 11, N'cxoTFArFRFmVwRq8NA9vlk:APA91bE5NB8K2zpunV-bqmFeByjoLHz-1uNuJ-tGJZzGqYGFH2qO5XyFtRZTjbNlRQC4LyZbKljJZRkg9y-tkG0wXuqAooF6nUsEVBR4XqAB4Vge2MwvLaUMutHEAgzJa1IPfNuuCTOa', 1)
INSERT [dbo].[FcmToken] ([Id], [AccountId], [Token], [IsPrimary]) VALUES (11, 13, N'cxoTFArFRFmVwRq8NA9vlk:APA91bE5NB8K2zpunV-bqmFeByjoLHz-1uNuJ-tGJZzGqYGFH2qO5XyFtRZTjbNlRQC4LyZbKljJZRkg9y-tkG0wXuqAooF6nUsEVBR4XqAB4Vge2MwvLaUMutHEAgzJa1IPfNuuCTOa', 1)
INSERT [dbo].[FcmToken] ([Id], [AccountId], [Token], [IsPrimary]) VALUES (12, 14, N'cxoTFArFRFmVwRq8NA9vlk:APA91bE5NB8K2zpunV-bqmFeByjoLHz-1uNuJ-tGJZzGqYGFH2qO5XyFtRZTjbNlRQC4LyZbKljJZRkg9y-tkG0wXuqAooF6nUsEVBR4XqAB4Vge2MwvLaUMutHEAgzJa1IPfNuuCTOa', 1)
INSERT [dbo].[FcmToken] ([Id], [AccountId], [Token], [IsPrimary]) VALUES (13, 15, N'cxoTFArFRFmVwRq8NA9vlk:APA91bE5NB8K2zpunV-bqmFeByjoLHz-1uNuJ-tGJZzGqYGFH2qO5XyFtRZTjbNlRQC4LyZbKljJZRkg9y-tkG0wXuqAooF6nUsEVBR4XqAB4Vge2MwvLaUMutHEAgzJa1IPfNuuCTOa', 1)
INSERT [dbo].[FcmToken] ([Id], [AccountId], [Token], [IsPrimary]) VALUES (14, 16, N'cxoTFArFRFmVwRq8NA9vlk:APA91bE5NB8K2zpunV-bqmFeByjoLHz-1uNuJ-tGJZzGqYGFH2qO5XyFtRZTjbNlRQC4LyZbKljJZRkg9y-tkG0wXuqAooF6nUsEVBR4XqAB4Vge2MwvLaUMutHEAgzJa1IPfNuuCTOa', 1)
INSERT [dbo].[FcmToken] ([Id], [AccountId], [Token], [IsPrimary]) VALUES (15, 17, N'cxoTFArFRFmVwRq8NA9vlk:APA91bE5NB8K2zpunV-bqmFeByjoLHz-1uNuJ-tGJZzGqYGFH2qO5XyFtRZTjbNlRQC4LyZbKljJZRkg9y-tkG0wXuqAooF6nUsEVBR4XqAB4Vge2MwvLaUMutHEAgzJa1IPfNuuCTOa', 0)
INSERT [dbo].[FcmToken] ([Id], [AccountId], [Token], [IsPrimary]) VALUES (16, 18, N'cxoTFArFRFmVwRq8NA9vlk:APA91bE5NB8K2zpunV-bqmFeByjoLHz-1uNuJ-tGJZzGqYGFH2qO5XyFtRZTjbNlRQC4LyZbKljJZRkg9y-tkG0wXuqAooF6nUsEVBR4XqAB4Vge2MwvLaUMutHEAgzJa1IPfNuuCTOa', 1)
INSERT [dbo].[FcmToken] ([Id], [AccountId], [Token], [IsPrimary]) VALUES (17, 20, N'cxoTFArFRFmVwRq8NA9vlk:APA91bE5NB8K2zpunV-bqmFeByjoLHz-1uNuJ-tGJZzGqYGFH2qO5XyFtRZTjbNlRQC4LyZbKljJZRkg9y-tkG0wXuqAooF6nUsEVBR4XqAB4Vge2MwvLaUMutHEAgzJa1IPfNuuCTOa', 1)
INSERT [dbo].[FcmToken] ([Id], [AccountId], [Token], [IsPrimary]) VALUES (18, 21, N'cxoTFArFRFmVwRq8NA9vlk:APA91bE5NB8K2zpunV-bqmFeByjoLHz-1uNuJ-tGJZzGqYGFH2qO5XyFtRZTjbNlRQC4LyZbKljJZRkg9y-tkG0wXuqAooF6nUsEVBR4XqAB4Vge2MwvLaUMutHEAgzJa1IPfNuuCTOa', 1)
INSERT [dbo].[FcmToken] ([Id], [AccountId], [Token], [IsPrimary]) VALUES (19, 22, N'cxoTFArFRFmVwRq8NA9vlk:APA91bE5NB8K2zpunV-bqmFeByjoLHz-1uNuJ-tGJZzGqYGFH2qO5XyFtRZTjbNlRQC4LyZbKljJZRkg9y-tkG0wXuqAooF6nUsEVBR4XqAB4Vge2MwvLaUMutHEAgzJa1IPfNuuCTOa', 1)
INSERT [dbo].[FcmToken] ([Id], [AccountId], [Token], [IsPrimary]) VALUES (20, 17, N'cScuoqtmQBueswgrsFN53r:APA91bGtFhpiN-TUAG1sduAfwztV1SDrBLbvprDLs3JvL2OutJzvBBFbZVl2RY5jmaBEF34Hfy4hVeznOE0F-hwYL2PRorgJt-EvJoEkSq4O-VVLnt_QurE4LozcVg45tvROkw-9RFnz', 1)
SET IDENTITY_INSERT [dbo].[FcmToken] OFF
GO
SET IDENTITY_INSERT [dbo].[FeedBack] ON 

INSERT [dbo].[FeedBack] ([Id], [AccountId], [PlaceId], [ItineraryId], [Rate], [Content], [IsPlace], [CreateTime], [UpdateTime], [Status]) VALUES (1, 19, 3, NULL, 5, N'Mình rất vui vì phong cảnh của Việt Nam thực sự rất đẹp', 1, CAST(N'2023-08-08T00:00:00.000' AS DateTime), CAST(N'2023-08-08T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[FeedBack] ([Id], [AccountId], [PlaceId], [ItineraryId], [Rate], [Content], [IsPlace], [CreateTime], [UpdateTime], [Status]) VALUES (2, 4, NULL, 2, 5, N'一切都很棒，这次旅行很棒。 越南原来这么美', 0, CAST(N'2023-08-08T00:00:00.000' AS DateTime), CAST(N'2023-08-08T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[FeedBack] ([Id], [AccountId], [PlaceId], [ItineraryId], [Rate], [Content], [IsPlace], [CreateTime], [UpdateTime], [Status]) VALUES (3, 8, 3, NULL, 5, N'Visiting Notre-Dame Cathedral was a truly awe-inspiring experience. The intricate details of the architecture and the sense of history within its walls left me speechless.', 1, CAST(N'2023-10-10T00:00:00.000' AS DateTime), CAST(N'2023-08-15T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[FeedBack] ([Id], [AccountId], [PlaceId], [ItineraryId], [Rate], [Content], [IsPlace], [CreateTime], [UpdateTime], [Status]) VALUES (4, 3, 3, NULL, 5, N'参观圣母院大教堂是一次令人惊叹的体验。其建筑的复杂细节和内部的历史感让我感到无言以对。', 1, CAST(N'2023-08-15T00:00:00.000' AS DateTime), NULL, 1)
INSERT [dbo].[FeedBack] ([Id], [AccountId], [PlaceId], [ItineraryId], [Rate], [Content], [IsPlace], [CreateTime], [UpdateTime], [Status]) VALUES (5, 8, 7, NULL, 5, N'The exhibits and artifacts vividly conveyed the realities of war and its impact, reminding us of the importance of peace.', 1, CAST(N'2023-08-15T00:00:00.000' AS DateTime), NULL, 1)
INSERT [dbo].[FeedBack] ([Id], [AccountId], [PlaceId], [ItineraryId], [Rate], [Content], [IsPlace], [CreateTime], [UpdateTime], [Status]) VALUES (6, 15, 7, NULL, 5, N'Thăm Bảo tàng Chứng tích chiến tranh là một trải nghiệm đầy cảm xúc. ', 1, CAST(N'2023-08-15T00:00:00.000' AS DateTime), NULL, 1)
INSERT [dbo].[FeedBack] ([Id], [AccountId], [PlaceId], [ItineraryId], [Rate], [Content], [IsPlace], [CreateTime], [UpdateTime], [Status]) VALUES (7, 23, 10, NULL, 5, N'Visiting Independence Palace was an enlightening experience into Vietnam''s history. The preserved rooms and exhibits provided a fascinating glimpse into the past and the significance of the site.', 1, CAST(N'2023-08-15T00:00:00.000' AS DateTime), NULL, 1)
INSERT [dbo].[FeedBack] ([Id], [AccountId], [PlaceId], [ItineraryId], [Rate], [Content], [IsPlace], [CreateTime], [UpdateTime], [Status]) VALUES (8, 7, 10, NULL, 5, N'日本語: 独立宮殿を訪れることは、ベトナムの歴史についての啓発的な体験でした。', 1, CAST(N'2023-08-15T00:00:00.000' AS DateTime), NULL, 1)
INSERT [dbo].[FeedBack] ([Id], [AccountId], [PlaceId], [ItineraryId], [Rate], [Content], [IsPlace], [CreateTime], [UpdateTime], [Status]) VALUES (9, 16, 20, NULL, 4, N'ホー・ティ・キー・フード・ストリートを訪れることは、楽しい食の旅でした。', 1, CAST(N'2023-08-15T00:00:00.000' AS DateTime), NULL, 1)
INSERT [dbo].[FeedBack] ([Id], [AccountId], [PlaceId], [ItineraryId], [Rate], [Content], [IsPlace], [CreateTime], [UpdateTime], [Status]) VALUES (10, 4, 28, NULL, 5, N'Trường xây dựng với phong cách rất đẹp.', 1, CAST(N'2023-11-21T00:00:00.000' AS DateTime), NULL, 1)
INSERT [dbo].[FeedBack] ([Id], [AccountId], [PlaceId], [ItineraryId], [Rate], [Content], [IsPlace], [CreateTime], [UpdateTime], [Status]) VALUES (11, 17, NULL, 2, 5, N'TOT', 0, CAST(N'2023-11-30T21:24:29.810' AS DateTime), NULL, 1)
SET IDENTITY_INSERT [dbo].[FeedBack] OFF
GO
SET IDENTITY_INSERT [dbo].[ItemDescription] ON 

INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (1, 1, N'en-us     ', N'The statue of Our Lady of Peace')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (2, 1, N'vi        ', N'Bức tượng đức mẹ Hòa Bình')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (4, 1, N'ja        ', N'平和の聖母像')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (5, 2, N'en-us     ', N'Church Center')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (6, 2, N'vi        ', N'Trung tâm Nhà thờ')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (8, 2, N'ja        ', N'チャーチセンター')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (9, 1, N'zh-cn     ', N'和平圣母像')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (11, 2, N'zh-cn     ', N'教堂中心')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (12, 3, N'en-us     ', N'Self Made Man')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (13, 3, N'vi        ', N'Tượng The Self Made Man')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (14, 3, N'ja        ', N'「セルフメイドマン」像')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (15, 3, N'zh-cn     ', N'“白手起家的人”雕像')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (16, 4, N'en-us     ', N'The Drums')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (18, 4, N'vi        ', N'Trống đồng')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (19, 4, N'ja        ', N'ドラム')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (20, 4, N'zh-cn     ', N'鼓')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (21, 5, N'en-us     ', N'King''s shirt display cabinet')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (22, 5, N'vi        ', N'Tủ trưng bày áo vua')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (23, 5, N'ja        ', N'王様のシャツの飾り棚')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (24, 5, N'zh-cn     ', N'国王衬衫展示柜')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (25, 6, N'en-us     ', N'Bach Dang wooden pile')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (26, 6, N'vi        ', N'Cọc gỗ Bạch Đằng')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (27, 6, N'ja        ', N'バックダン木杭')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (28, 6, N'zh-cn     ', N'巴赫当木桩')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (29, 7, N'en-us     ', N'Tay Son period antiquities gallery')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (30, 7, N'vi        ', N'Phòng trưng bày cổ vật thời Tây Sơn')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (31, 7, N'ja        ', N'テイ・ソン時代の骨董品ギャラリー')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (32, 7, N'zh-cn     ', N'西山时期古物画廊')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (33, 8, N'en-us     ', N'Special area of ​​Independence Palace')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (34, 8, N'vi        ', N'Bên trong Nhà thờ Đức Bà')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (35, 8, N'ja        ', N'ノートルダム大聖堂の内部')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (36, 8, N'zh-cn     ', N'巴黎圣母院大教堂内部')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (37, 9, N'en-us     ', N'Lotus pond area')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (38, 9, N'vi        ', N'Khu hồ sen')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (39, 9, N'ja        ', N'蓮池エリア')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (40, 9, N'zh-cn     ', N'荷花池区')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (41, 10, N'vi        ', N'Khu chuyên đề Dinh độc lập')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (42, 10, N'en-us     ', N'Thematic area of Independence Palace')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (43, 10, N'ja        ', N'独立宮殿のテーマエリア')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (44, 10, N'zh-cn     ', N'独立宫主题区')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (45, 11, N'vi        ', N'Khu bổ sung trong Dinh')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (46, 11, N'en-us     ', N'Additional area in the Palace')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (47, 11, N'ja        ', N'宮殿内の追加エリア')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (48, 11, N'zh-cn     ', N'宫殿内的其他区域')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (49, 12, N'vi        ', N'Khu vực cố định ')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (50, 12, N'en-us     ', N'Fixed area in the Palace')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (51, 12, N'ja        ', N'独立宮殿内の固定エリア')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (52, 12, N'zh-cn     ', N'独立宫内的固定区域')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (53, 13, N'vi        ', N'Khu vực động vật hoang dã')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (54, 13, N'ja        ', N'野生動物エリア')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (55, 13, N'en-us     ', N'Wildlife Area')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (56, 13, N'zh-cn     ', N'野生动物区域')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (57, 14, N'vi        ', N'Khu vực động vật hoang dã châu Á')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (58, 14, N'ja        ', N'アジアの野生動物エリア')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (59, 14, N'en-us     ', N'Asian Wildlife Area')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (60, 14, N'zh-cn     ', N'亚洲野生动物区域')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (61, 15, N'vi        ', N'Khu vực động vật có vú')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (62, 15, N'ja        ', N'哺乳動物エリア')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (63, 15, N'en-us     ', N'Mammal Area')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (64, 15, N'zh-cn     ', N'哺乳动物区域')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (65, 16, N'vi        ', N'Nhà hầm')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (66, 16, N'ja        ', N'地下室')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (67, 16, N'en-us     ', N'Basement')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (68, 16, N'zh-cn     ', N'地下室')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (69, 17, N'vi        ', N'Hệ thống địa đạo')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (70, 17, N'ja        ', N'地下道システム')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (71, 17, N'en-us     ', N'Underground Tunnel System')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (72, 17, N'zh-cn     ', N'地下通道系统')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (73, 18, N'vi        ', N'Lỗ châu mai')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (74, 18, N'ja        ', N'レンガの穴')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (75, 18, N'en-us     ', N'Brick Hole')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (76, 18, N'zh-cn     ', N'砖洞')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (77, 19, N'vi        ', N'Chánh điện')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (78, 19, N'ja        ', N'本殿 ')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (79, 19, N'en-us     ', N'Main Hall')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (80, 19, N'zh-cn     ', N'本殿 ')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (81, 20, N'vi        ', N'Tháp chuông')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (82, 20, N'ja        ', N'鐘楼')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (83, 20, N'en-us     ', N'Bell Tower')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (84, 20, N'zh-cn     ', N'钟楼')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (85, 21, N'vi        ', N'Thiền viện')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (86, 21, N'ja        ', N'禅寺')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (87, 21, N'en-us     ', N'Zen Temple')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (88, 21, N'zh-cn     ', N'禅寺')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (89, 22, N'vi        ', N'Công viên phía nam cầu')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (90, 22, N'ja        ', N'橋の南公園')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (91, 22, N'en-us     ', N'South Bridge Park')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (92, 22, N'zh-cn     ', N'南桥公园')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (93, 23, N'vi        ', N'Thân cầu')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (94, 23, N'ja        ', N'橋の本体')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (95, 23, N'en-us     ', N'Bridge Structure')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (96, 23, N'zh-cn     ', N'桥身')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (97, 24, N'vi        ', N'Đài phun nước')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (98, 24, N'ja        ', N'噴水台')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (99, 24, N'en-us     ', N'Fountain')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (100, 24, N'zh-cn     ', N'喷泉 ')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (101, 25, N'vi        ', N'Thủy cung')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (102, 25, N'ja        ', N'水族館')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (103, 25, N'en-us     ', N'Aquarium')
GO
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (104, 25, N'zh-cn     ', N'水族馆')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (105, 26, N'vi        ', N'Biển tiên đồng ngọc nữ')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (106, 26, N'ja        ', N'天使の宝石の海')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (107, 26, N'en-us     ', N'Sea of Angelic Gemstones')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (108, 26, N'zh-cn     ', N'天使的宝石之海')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (109, 27, N'vi        ', N'Lâu đài pháp thuật')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (110, 27, N'ja        ', N'魔法の城')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (111, 27, N'en-us     ', N'Magic Castle')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (112, 27, N'zh-cn     ', N'魔法城堡')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (113, 28, N'vi        ', N'Bên trong bưu điện')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (114, 28, N'ja        ', N'郵便局内')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (115, 28, N'en-us     ', N'Inside the Post Office')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (116, 28, N'zh-cn     ', N'邮局内部')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (117, 29, N'vi        ', N'Bốt điện thoại xưa')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (118, 29, N'ja        ', N'古い電話ボックス')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (119, 29, N'en-us     ', N'Old Telephone Booth')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (120, 29, N'zh-cn     ', N'旧电话亭')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (121, 30, N'vi        ', N'Cửa hàng lưu niệm')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (122, 30, N'ja        ', N'記念品店')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (123, 30, N'en-us     ', N'Souvenir Shop')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (124, 30, N'zh-cn     ', N'纪念品店')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (125, 31, N'vi        ', N'Đài Phun Nước Nghệ Thuật')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (126, 31, N'ja        ', N'アート噴水台')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (127, 31, N'en-us     ', N'Art Fountain')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (128, 31, N'zh-cn     ', N'艺术喷泉台')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (129, 32, N'vi        ', N'Quảng Trường Nguyễn Huệ')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (130, 32, N'ja        ', N'ヌイン・フエ広場')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (131, 32, N'en-us     ', N'Nguyen Hue Square')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (132, 32, N'zh-cn     ', N'阮惠广场')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (133, 33, N'vi        ', N'Chung cư 42 Nguyễn Huệ')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (134, 33, N'ja        ', N'42 ヌイエンフエアパートメント')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (135, 33, N'en-us     ', N'42 Nguyen Hue Apartment')
INSERT [dbo].[ItemDescription] ([Id], [PlaceItemId], [LanguageCode], [NameItem]) VALUES (136, 33, N'zh-cn     ', N'42 阮惠公寓')
SET IDENTITY_INSERT [dbo].[ItemDescription] OFF
GO
SET IDENTITY_INSERT [dbo].[Itinerary] ON 

INSERT [dbo].[Itinerary] ([Id], [CreateById], [Name], [Image], [Total], [Rate], [CreateTime], [UpdateTime], [Status]) VALUES (2, 4, N'Welcome To Ho Chi Minh City', N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/Tour%2FOneDayTour.jpg?alt=media&token=2e05c845-0dfa-4df4-aa9c-294f31e88515', CAST(21.00 AS Decimal(18, 2)), 5, CAST(N'2023-07-18T00:00:00.000' AS DateTime), CAST(N'2023-07-18T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Itinerary] ([Id], [CreateById], [Name], [Image], [Total], [Rate], [CreateTime], [UpdateTime], [Status]) VALUES (5, 2, N'One Day In Ho Chi Minh City', N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/Tour%2Fday-1-HCMC-arrival.jpg?alt=media&token=45949c65-5f84-49ce-8a8a-ad269d4de8f9', CAST(24.00 AS Decimal(18, 2)), 5, CAST(N'2023-07-18T00:00:00.000' AS DateTime), CAST(N'2023-07-18T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[Itinerary] ([Id], [CreateById], [Name], [Image], [Total], [Rate], [CreateTime], [UpdateTime], [Status]) VALUES (6, 2, N'Travel Ho Chi Minh', N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/Tour%2F4141-bao-tang-my-thuat-viet-nam-ra-mat-3d-tour-094108.jpg?alt=media&token=2500aa79-087d-41cb-95ae-5873782f1ed4', CAST(17.00 AS Decimal(18, 2)), NULL, CAST(N'2023-08-08T00:00:00.000' AS DateTime), NULL, 1)
INSERT [dbo].[Itinerary] ([Id], [CreateById], [Name], [Image], [Total], [Rate], [CreateTime], [UpdateTime], [Status]) VALUES (7, 4, N'History and Culture Combo', N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/Tour%2F%2Bdinh-doc-lap-nha-tho-duc-ba-buu-dien.jpg?alt=media&token=16eeb9f8-c305-4039-b9cc-bf646d5635c0', CAST(12.00 AS Decimal(18, 2)), NULL, CAST(N'2023-08-15T00:00:00.000' AS DateTime), NULL, 1)
SET IDENTITY_INSERT [dbo].[Itinerary] OFF
GO
SET IDENTITY_INSERT [dbo].[ItineraryDescription] ON 

INSERT [dbo].[ItineraryDescription] ([Id], [ItineraryId], [Name], [Description], [CreateTime], [UpdateTime], [Status], [LanguageCode]) VALUES (1, 2, N'Chào mừng đến với thành phố Hồ Chí Minh', N'Hãy tham gia vào chuyến tour du lịch trong một ngày tại thành phố Hồ Chí Minh và khám phá những nét đẹp văn hóa, kiến trúc và ẩm thực của thành phố sôi động này.

Buổi sáng, chúng ta sẽ bắt đầu tại Nhà thờ Đức Bà, một công trình kiến trúc nổi tiếng và biểu tượng của thành phố. Với kiến trúc tuyệt đẹp và lịch sử lâu đời, Nhà thờ Đức Bà sẽ là điểm dừng đầu tiên để tận hưởng không khí yên bình và tìm hiểu về di sản văn hóa của Việt Nam.

Tiếp theo, chúng ta sẽ thăm Chợ Bến Thành, một điểm đến vô cùng sôi động và đa dạng. Tại đây, bạn có thể khám phá và mua sắm các sản phẩm địa phương, từ đồ thủ công đến đặc sản. Chợ Bến Thành là nơi tuyệt vời để tìm hiểu về văn hóa và sự phát triển của thành phố qua các gian hàng và hương vị đặc trưng.

Sau đó, chúng ta sẽ dạo quanh khu phố Tây Bùi Viện, nơi tập trung nhiều quán cà phê, nhà hàng và cửa hàng lưu niệm. Với không khí sôi động và năng động, khu phố Tây Bùi Viện sẽ mang đến cho bạn trải nghiệm thú vị về cuộc sống về đêm của thành phố và cơ hội thưởng thức các món ăn đa dạng từ khắp nơi trên thế giới.

Buổi trưa, chúng ta sẽ thưởng thức một bữa trưa truyền thống Việt Nam tại một nhà hàng địa phương. Với những món ăn phổ biến và độc đáo như phở, bánh xèo và cơm tấm, bạn sẽ được trải nghiệm hương vị tinh túy của ẩm thực Việt Nam.

Buổi chiều, chúng ta sẽ đến Bảo tàng Lịch sử Thành phố Hồ Chí Minh để tìm hiểu về lịch sử và văn hóa của Thành Phố. Với những hiện vật quý giá và triển lãm đa dạng, bạn sẽ có cơ hội khám phá các giai đoạn quan trọng trong lịch sử Thành Phố và hiểu sâu hơn về người dân , thành phố này nói riêng và người dan việt nam nói chung.

Cuối cùng, chúng ta sẽ dạo quanh Công viên Tao Đàn, nơi bạn có thể thư giãn và tận hưởng không gian xanh mát. Công viên này còn có những di tích văn hóa đặc biệt, đặc biệt là chùa Vĩnh Nghiêm, nơi mang đến sự yên bình và tĩnh lặng cho mỗi du khách.

Chuyến tour du lịch trong một ngày tại thành phố Hồ Chí Minh sẽ mang đến cho bạn những trải nghiệm đa dạng về văn hóa, ẩm thực và lịch sử của thành phố. Hãy tham gia và khám phá những nét đẹp độc đáo của Hồ Chí Minh!', CAST(N'2023-07-29T00:00:00.000' AS DateTime), CAST(N'2023-07-29T00:00:00.000' AS DateTime), 1, N'vi        ')
INSERT [dbo].[ItineraryDescription] ([Id], [ItineraryId], [Name], [Description], [CreateTime], [UpdateTime], [Status], [LanguageCode]) VALUES (2, 7, N'Combo Lịch sử Văn hóa', N'Sài Gòn - Tp.HCM là đô thị sắc màu rực rỡ & quyến rũ, là thành phố năng động và thân thiện, đồng thời cũng trung tâm kinh tế, văn hóa - du lịch, khoa học công nghệ lớn nhất Việt Nam. Bên cạnh những tòa nhà cao tầng hiện đại, Sài Gòn còn có các khu di tích mang kiến trúc cổ kính lâu đời. ', CAST(N'2023-08-15T00:00:00.000' AS DateTime), NULL, 1, N'vi        ')
INSERT [dbo].[ItineraryDescription] ([Id], [ItineraryId], [Name], [Description], [CreateTime], [UpdateTime], [Status], [LanguageCode]) VALUES (3, 7, N'History and Culture Combo', N'Saigon - Ho Chi Minh City is a vibrant and charming city, a dynamic and friendly city, and also the largest economic, cultural - tourism, scientific and technological center in Vietnam. Besides modern high-rise buildings, Saigon also has relics with ancient architecture.', CAST(N'2023-08-15T00:00:00.000' AS DateTime), NULL, 1, N'en-us     ')
INSERT [dbo].[ItineraryDescription] ([Id], [ItineraryId], [Name], [Description], [CreateTime], [UpdateTime], [Status], [LanguageCode]) VALUES (4, 5, N'Ho Chi Minh City One Day Tour', N'Tour "Discover Ho Chi Minh in one day":

Morning:

Start the tour by visiting Nha Rong Wharf, where President Ho Chi Minh boarded the Ha Long ship in 1911 to find a way to save the country. Nha Rong Wharf is located close to the Saigon River and has a convenient location to get to.

Next, head to the Ho Chi Minh Museum, which displays artifacts and exhibits about President Ho Chi Minh''s life and revolutionary work. The museum is located near Nha Rong Wharf, adjacent to the city center, which is an easily accessible location.

After that, we will continue to visit the Independence Palace, an important architectural symbol of Ho Chi Minh City. Independence Palace is located on Ho Chi Minh Street, in the downtown area.

Noon:

Take time to enjoy lunch at a local restaurant near the Independence Palace area. You can try traditional Vietnamese dishes or choose from international dishes.
Afternoon:

Next, head to September 23 Park, a large and green park in the heart of the city. You can walk around the park, relax and enjoy the peaceful space after lunch.

Continue the trip by going to Notre Dame Cathedral, a famous architecture and symbol of Ho Chi Minh City. The church is located downtown, near September 23 Park, and is easily accessible by public transport or taxis.

Evening:

Finally, we will visit Bui Vien West Quarter, which is home to many cafes, restaurants, and entertainment activities. The neighborhood is located in the downtown area and is easily accessible by taxi or motorbike taxi. You can enjoy street food, join the excitement and experience the city''s nightlife.
Wish you have an interesting and convenient trip in Ho Chi Minh!', CAST(N'2023-07-29T00:00:00.000' AS DateTime), CAST(N'2023-07-29T00:00:00.000' AS DateTime), 1, N'en-us     ')
INSERT [dbo].[ItineraryDescription] ([Id], [ItineraryId], [Name], [Description], [CreateTime], [UpdateTime], [Status], [LanguageCode]) VALUES (5, 6, N'Travel Ho Chi Minh', N'With a vibrant pace of life, ancient French architectural works: Notre-Dame Cathedral, Independence Palace, Dam Sen Cultural Park, ..and countless amusement and entertainment areas have created the attraction of Saigon. ', CAST(N'2023-08-08T00:00:00.000' AS DateTime), NULL, 1, N'en-us     ')
INSERT [dbo].[ItineraryDescription] ([Id], [ItineraryId], [Name], [Description], [CreateTime], [UpdateTime], [Status], [LanguageCode]) VALUES (6, 6, N'Tour Sài Gòn', N'Với nhịp sống sôi động, các công trình kiến trúc Pháp cổ: Nhà thờ Đức Bà, Dinh Độc Lập, Công viên Văn hóa Đầm Sen ,..và vô số các khu vui chơi, giải trí đã tạo nên sức hấp dẫn của Sài gòn.', CAST(N'2023-08-08T00:00:00.000' AS DateTime), NULL, 1, N'vi        ')
INSERT [dbo].[ItineraryDescription] ([Id], [ItineraryId], [Name], [Description], [CreateTime], [UpdateTime], [Status], [LanguageCode]) VALUES (7, 5, N'Tour Thành Phố Hồ Chí Minh Một Ngày', N'Tour du lịch "Khám phá Hồ Chí Minh trong một ngày":

Buổi sáng:

Bắt đầu tour bằng việc tham quan Bến Nhà Rồng, nơi mà Chủ tịch Hồ Chí Minh đã lên tàu Hạ Long vào năm 1911 để đi tìm đường cứu nước. Bến Nhà Rồng nằm sát bờ sông Sài Gòn và có vị trí thuận tiện để đến.

Tiếp theo, hãy đến Bảo Tàng Hồ Chí Minh, nơi trưng bày các hiện vật và triển lãm về cuộc đời và công cuộc cách mạng của Chủ tịch Hồ Chí Minh. Bảo tàng nằm gần Bến Nhà Rồng, tiếp giáp với trung tâm thành phố, là một địa điểm dễ dàng tiếp cận.

Sau đó, chúng ta sẽ tiếp tục tham quan Dinh Độc Lập, một biểu tượng kiến trúc quan trọng của thành phố Hồ Chí Minh. Dinh Độc Lập nằm trên đường Hồ Chí Minh, trong khu vực trung tâm thành phố.

Buổi trưa:

Dành thời gian để thưởng thức bữa trưa tại một nhà hàng địa phương gần khu vực Dinh Độc Lập. Bạn có thể thử những món ăn truyền thống Việt Nam hoặc lựa chọn các món ăn quốc tế.
Buổi chiều:

Tiếp theo, hãy tới Công viên 23 tháng 9, một công viên rộng lớn và xanh mát ở trung tâm thành phố. Bạn có thể dạo quanh công viên, thư giãn và tận hưởng không gian yên bình sau bữa trưa.

Tiếp tục chuyến đi bằng việc đến Nhà thờ Đức Bà, một công trình kiến trúc nổi tiếng và biểu tượng của thành phố Hồ Chí Minh. Nhà thờ nằm ở trung tâm thành phố, gần Công viên 23 tháng 9, và dễ dàng tiếp cận bằng các phương tiện giao thông công cộng hoặc taxi.

Buổi tối:

Cuối cùng, chúng ta sẽ thăm Khu phố Tây Bùi Viện, nơi tập trung nhiều quán cà phê, nhà hàng, và hoạt động giải trí. Khu phố nằm trong khu vực trung tâm thành phố và dễ dàng tiếp cận bằng taxi hoặc xe ôm. Bạn có thể thưởng thức ẩm thực đường phố, tham gia vào sự sôi động và trải nghiệm cuộc sống về đêm của thành phố.
Chúc bạn có một chuyến du lịch thú vị và tiện lợi tại Hồ Chí Minh!', CAST(N'2023-07-29T00:00:00.000' AS DateTime), CAST(N'2023-07-29T00:00:00.000' AS DateTime), 1, N'vi        ')
INSERT [dbo].[ItineraryDescription] ([Id], [ItineraryId], [Name], [Description], [CreateTime], [UpdateTime], [Status], [LanguageCode]) VALUES (8, 2, N'Welcome To Ho Chi Minh City', N'Go on a one-day tour of Ho Chi Minh City and discover the cultural, architectural and culinary beauties of this vibrant city.

In the morning, we will start at Notre Dame Cathedral, a famous structure and symbol of the city. With its beautiful architecture and long history, Notre Dame Cathedral will be the first stop to enjoy the peaceful atmosphere and learn about the cultural heritage of Vietnam.

Next, we will visit Ben Thanh Market, an extremely vibrant and diverse destination. Here you can explore and shop for local products, from crafts to specialties. Ben Thanh Market is a great place to learn about the culture and development of the city through stalls and typical flavors.

After that, we will walk around Bui Vien West Street, where many cafes, restaurants and souvenir shops are located. With a vibrant and dynamic atmosphere, Bui Vien West Quarter will bring you an exciting experience of the city''s nightlife and the opportunity to enjoy diverse cuisines from around the world.

At noon, we will enjoy a traditional Vietnamese lunch at a local restaurant. With popular and unique dishes such as pho, banh xeo and broken rice, you will experience the quintessential taste of Vietnamese cuisine.

In the afternoon, we will go to Ho Chi Minh City Museum of History to learn about the history and culture of the City. With precious artifacts and diverse exhibitions, you will have the opportunity to explore important periods in the City''s history and gain a deeper understanding of the people, the city in particular and the Vietnamese people in general.

Finally, we will walk around Tao Dan Park, where you can relax and enjoy the green space. This park also has special cultural relics, especially Vinh Nghiem pagoda, which brings peace and quiet to every visitor.

This one day tour in Ho Chi Minh City will give you a diverse experience of the city''s culture, cuisine and history. Join and discover the unique beauty of Ho Chi Minh!', CAST(N'2023-07-29T00:00:00.000' AS DateTime), CAST(N'2023-07-29T00:00:00.000' AS DateTime), 1, N'en-us     ')
INSERT [dbo].[ItineraryDescription] ([Id], [ItineraryId], [Name], [Description], [CreateTime], [UpdateTime], [Status], [LanguageCode]) VALUES (9, 6, N'ツアーコンボ', N'活気に満ちた生活のペースとともに、ノートルダム大聖堂、独立宮殿、ダムセン文化公園などの古代フランスの建築物、そして数え切れないほどの遊園地やエンターテイメントエリアがサイゴンの魅力を生み出してきました。', CAST(N'2023-08-08T00:00:00.000' AS DateTime), NULL, 1, N'ja        ')
INSERT [dbo].[ItineraryDescription] ([Id], [ItineraryId], [Name], [Description], [CreateTime], [UpdateTime], [Status], [LanguageCode]) VALUES (10, 5, N'ホーチミン市 1 日ツアー', N'ツアー「1 日でホーチミンを発見」:

朝：

ツアーは、1911 年にホーチミン大統領が国を救う方法を見つけるためにハロン船に乗ったナロン埠頭から始まります。 ナロン埠頭はサイゴン川の近くに位置しており、アクセスが便利な場所にあります。

次に、ホーチミン大統領の生涯と革命の業績に関する工芸品や展示物が展示されているホーチミン博物館に向かいます。 博物館はナロン埠頭の近くにあり、市内中心部に隣接しており、アクセスしやすい場所にあります。

その後、ホーチミン市の重要な建築的シンボルである独立宮殿を訪れます。 独立宮殿はダウンタウンのホーチミン通りにあります。

昼：

独立宮殿エリア近くの地元のレストランでランチをお楽しみください。 伝統的なベトナム料理を試すことも、各国料理から選ぶこともできます。
午後：

次に、街の中心部にある大きくて緑豊かな公園、セプテンバー 23 パークへ向かいます。 ランチの後は公園内を散策したり、静かな空間をゆっくりと楽しんでみてはいかがでしょうか。

旅を続けて、有名な建築物でありホーチミン市のシンボルであるノートルダム大聖堂へ行きます。 教会はダウンタウンの 9 月 23 日公園の近くにあり、公共交通機関やタクシーで簡単にアクセスできます。

夜：

最後に、多くのカフェ、レストラン、エンターテイメント施設が集まるブイビエン西地区を訪れます。 近隣は繁華街に位置しており、タクシーやバイクタクシーで簡単にアクセスできます。 屋台の食べ物を楽しんだり、興奮に参加したり、街のナイトライフを体験したりできます。
ホーチミン旅行が楽しくて便利になりますように！', CAST(N'2023-07-29T00:00:00.000' AS DateTime), CAST(N'2023-07-29T00:00:00.000' AS DateTime), 1, N'ja        ')
INSERT [dbo].[ItineraryDescription] ([Id], [ItineraryId], [Name], [Description], [CreateTime], [UpdateTime], [Status], [LanguageCode]) VALUES (11, 2, N'ホーチミン市へようこそ', N'ホーチミン市の 1 日ツアーに参加して、この活気に満ちた街の文化、建築、料理の美しさを発見してください。

午前中は、有名な建造物であり街のシンボルであるノートルダム大聖堂からスタートします。 美しい建築と長い歴史を持つノートルダム大聖堂は、平和な雰囲気を楽しみ、ベトナムの文化遺産について学ぶための最初の目的地となります。

次に、非常に活気に満ちた多様な目的地であるベンタイン市場を訪れます。 ここでは、工芸品から特産品に至るまで、地元の製品を探索したり買い物をしたりできます。 ベンタイン市場は、屋台や代表的な味を通して街の文化と発展について学ぶのに最適な場所です。

その後、カフェやレストラン、お土産店が立ち並ぶブイビエン西通りを散策します。 活気に満ちたダイナミックな雰囲気を持つブイビエン西地区では、街のナイトライフのエキサイティングな体験と、世界中の多様な料理を楽しむ機会をお届けします。

正午には、地元のレストランで伝統的なベトナムのランチをお楽しみください。 フォー、バインセオ、ブロークンライスなどの人気のユニークな料理で、ベトナム料理の真髄を体験してください。

午後はホーチミン市歴史博物館へ行き、ホーチミン市の歴史と文化について学びます。 貴重な工芸品や多様な展示品により、市の歴史の重要な時期を探索し、人々、特に市とベトナム人全般についてより深い理解を得る機会が得られます。

最後に、緑豊かなリラックスできるタオダン公園を散策します。 この公園には特別な文化遺物もあり、特にヴィン ギエム パゴダは訪れる人すべてに安らぎと静けさをもたらします。

ホーチミン市のこの 1 日ツアーでは、街の文化、料理、歴史を多様に体験できます。 参加してホーチミンのユニークな美しさを発見してください!', CAST(N'2023-07-29T00:00:00.000' AS DateTime), CAST(N'2023-07-29T00:00:00.000' AS DateTime), 1, N'ja        ')
INSERT [dbo].[ItineraryDescription] ([Id], [ItineraryId], [Name], [Description], [CreateTime], [UpdateTime], [Status], [LanguageCode]) VALUES (12, 7, N'历史与文化的结合', N'西贡-胡志明市是一座充满活力和魅力的城市，一座充满活力和友好的城市，也是越南最大的经济、文化旅游、科技中心。 除了现代化的高楼大厦，西贡还有古老的建筑遗迹。', CAST(N'2023-08-15T00:00:00.000' AS DateTime), NULL, 1, N'zh-cn     ')
INSERT [dbo].[ItineraryDescription] ([Id], [ItineraryId], [Name], [Description], [CreateTime], [UpdateTime], [Status], [LanguageCode]) VALUES (13, 6, N'旅游组合', N'充滿活力的生活節奏，古老的法國建築作品：巴黎圣母院、獨立宮、大壩森文化公園……以及數不勝數的遊樂和娛樂場所造就了西貢的吸引力。', CAST(N'2023-08-08T00:00:00.000' AS DateTime), NULL, 1, N'zh-cn     ')
INSERT [dbo].[ItineraryDescription] ([Id], [ItineraryId], [Name], [Description], [CreateTime], [UpdateTime], [Status], [LanguageCode]) VALUES (14, 2, N'欢迎来到胡志明市', N'参加胡志明市一日游，探索这座充满活力的城市的文化、建筑和美食之美。

早上，我们将从巴黎圣母院出发，这是这座城市的著名建筑和象征。 巴黎圣母院拥有美丽的建筑和悠久的历史，将成为享受宁静氛围和了解越南文化遗产的第一站。

接下来，我们将参观滨城市场，这是一个充满活力和多元化的目的地。 在这里您可以探索和购买当地产品，从工艺品到特产。 滨城市场是通过摊位和典型风味了解城市文化和发展的好地方。

之后，我们将漫步碧文西街，那里有许多咖啡馆、餐馆和纪念品商店。 碧文西区 (Bui Vien West Quarter) 拥有充满活力和活力的氛围，将为您带来令人兴奋的城市夜生活体验，并有机会享受来自世界各地的多样化美食。

中午，我们将在当地餐厅享用传统的越南午餐。 河粉、banh xeo、碎米等流行而独特的菜肴，让您体验到越南美食的精髓。

下午，我们将前往胡志明市历史博物馆，了解胡志明市的历史和文化。 通过珍贵的文物和多样化的展览，您将有机会探索这座城市历史上的重要时期，并加深对人民、特别是这座城市以及越南人民的了解。

最后，我们将漫步陶丹公园，在那里您可以放松身心，享受绿色空间。 这个公园还拥有特殊的文物古迹，尤其是永严塔，给每一位游客带来宁静与安宁。

胡志明市一日游将让您体验这座城市的文化、美食和历史。 加入并发现胡志明市的独特之美！', CAST(N'2023-07-29T00:00:00.000' AS DateTime), CAST(N'2023-07-29T00:00:00.000' AS DateTime), 1, N'zh-cn     ')
INSERT [dbo].[ItineraryDescription] ([Id], [ItineraryId], [Name], [Description], [CreateTime], [UpdateTime], [Status], [LanguageCode]) VALUES (15, 7, N'歴史と文化のコンボ', N'サイゴン - ホーチミン市は、活気に満ちた魅力的な都市、ダイナミックでフレンドリーな都市であり、ベトナム最大の経済、文化、観光、科学技術の中心地でもあります。 サイゴンには近代的な高層ビルのほかに、古代建築の遺跡も残っています。', CAST(N'2023-08-15T00:00:00.000' AS DateTime), NULL, 1, N'ja        ')
INSERT [dbo].[ItineraryDescription] ([Id], [ItineraryId], [Name], [Description], [CreateTime], [UpdateTime], [Status], [LanguageCode]) VALUES (16, 5, N'胡志明市一日游', N'“一日探索胡志明市”之旅：

早晨：

从参观芽龙港开始旅程，胡志明主席于 1911 年登上下龙船寻找拯救国家的方法。 芽龙码头靠近西贡河，交通便利。

接下来，前往胡志明博物馆，里面陈列着有关胡志明主席的生平和革命工作的文物和展品。 博物馆位于芽龙码头附近，毗邻市中心，交通便利。

随后，我们将继续参观胡志明市的重要建筑标志——独立宫。 独立宫位于市中心的胡志明街。

中午：

花点时间在独立宫区附近的当地餐厅享用午餐。 您可以尝试传统的越南菜肴或选择国际菜肴。
下午：

接下来，前往 9 月 23 日公园，这是一座位于市中心的大型绿色公园。 午餐后，您可以在公园里散步，放松身心，享受宁静的空间。

继续行程前往巴黎圣母院，这是胡志明市的著名建筑和象征。 该教堂位于市中心，靠近 9 月 23 日公园，乘坐公共交通工具或出租车即可轻松抵达。

晚上：

最后，我们将参观碧文西区，那里有许多咖啡馆、餐馆和娱乐活动。 该社区位于市中心，乘坐出租车或摩的很方便。 您可以享受街头美食、加入热闹并体验城市的夜生活。
祝您在胡志明市有一个有趣而方便的旅行！', CAST(N'2023-07-29T00:00:00.000' AS DateTime), CAST(N'2023-07-29T00:00:00.000' AS DateTime), 1, N'zh-cn     ')
SET IDENTITY_INSERT [dbo].[ItineraryDescription] OFF
GO
INSERT [dbo].[ItineraryPlace] ([PlaceId], [ItineraryId], [Price], [Ordinal]) VALUES (3, 2, CAST(2.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[ItineraryPlace] ([PlaceId], [ItineraryId], [Price], [Ordinal]) VALUES (3, 5, CAST(2.00 AS Decimal(18, 2)), 4)
INSERT [dbo].[ItineraryPlace] ([PlaceId], [ItineraryId], [Price], [Ordinal]) VALUES (3, 6, CAST(2.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[ItineraryPlace] ([PlaceId], [ItineraryId], [Price], [Ordinal]) VALUES (3, 7, CAST(2.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[ItineraryPlace] ([PlaceId], [ItineraryId], [Price], [Ordinal]) VALUES (6, 2, CAST(5.00 AS Decimal(18, 2)), 5)
INSERT [dbo].[ItineraryPlace] ([PlaceId], [ItineraryId], [Price], [Ordinal]) VALUES (6, 6, CAST(5.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[ItineraryPlace] ([PlaceId], [ItineraryId], [Price], [Ordinal]) VALUES (7, 7, CAST(5.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[ItineraryPlace] ([PlaceId], [ItineraryId], [Price], [Ordinal]) VALUES (8, 2, CAST(5.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[ItineraryPlace] ([PlaceId], [ItineraryId], [Price], [Ordinal]) VALUES (9, 2, CAST(6.00 AS Decimal(18, 2)), 3)
INSERT [dbo].[ItineraryPlace] ([PlaceId], [ItineraryId], [Price], [Ordinal]) VALUES (9, 5, CAST(6.00 AS Decimal(18, 2)), 5)
INSERT [dbo].[ItineraryPlace] ([PlaceId], [ItineraryId], [Price], [Ordinal]) VALUES (10, 5, CAST(5.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[ItineraryPlace] ([PlaceId], [ItineraryId], [Price], [Ordinal]) VALUES (11, 2, CAST(3.00 AS Decimal(18, 2)), 4)
INSERT [dbo].[ItineraryPlace] ([PlaceId], [ItineraryId], [Price], [Ordinal]) VALUES (12, 5, CAST(5.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[ItineraryPlace] ([PlaceId], [ItineraryId], [Price], [Ordinal]) VALUES (12, 7, CAST(5.00 AS Decimal(18, 2)), 3)
INSERT [dbo].[ItineraryPlace] ([PlaceId], [ItineraryId], [Price], [Ordinal]) VALUES (16, 5, CAST(6.00 AS Decimal(18, 2)), 3)
INSERT [dbo].[ItineraryPlace] ([PlaceId], [ItineraryId], [Price], [Ordinal]) VALUES (17, 6, CAST(5.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[ItineraryPlace] ([PlaceId], [ItineraryId], [Price], [Ordinal]) VALUES (18, 6, CAST(5.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[ItineraryPlace] ([PlaceId], [ItineraryId], [Price], [Ordinal]) VALUES (21, 7, CAST(0.00 AS Decimal(18, 2)), 4)
GO
SET IDENTITY_INSERT [dbo].[Journey] ON 

INSERT [dbo].[Journey] ([Id], [StartTime], [EndTime], [TotalTime], [TotalDistance], [Status]) VALUES (1, CAST(N'2023-11-24T00:00:00.000' AS DateTime), CAST(N'2023-02-03T00:00:00.000' AS DateTime), 5, 22, 3)
INSERT [dbo].[Journey] ([Id], [StartTime], [EndTime], [TotalTime], [TotalDistance], [Status]) VALUES (2, CAST(N'2023-11-24T00:00:00.000' AS DateTime), CAST(N'2023-02-09T00:00:00.000' AS DateTime), 6, 3, 1)
INSERT [dbo].[Journey] ([Id], [StartTime], [EndTime], [TotalTime], [TotalDistance], [Status]) VALUES (3, CAST(N'2023-11-24T00:00:00.000' AS DateTime), NULL, 10, 10, 0)
INSERT [dbo].[Journey] ([Id], [StartTime], [EndTime], [TotalTime], [TotalDistance], [Status]) VALUES (4, CAST(N'2023-11-21T07:01:00.000' AS DateTime), NULL, 5, 45, 0)
INSERT [dbo].[Journey] ([Id], [StartTime], [EndTime], [TotalTime], [TotalDistance], [Status]) VALUES (7, CAST(N'2023-11-14T08:32:00.000' AS DateTime), CAST(N'2023-11-14T18:32:00.000' AS DateTime), 18, 32, 0)
INSERT [dbo].[Journey] ([Id], [StartTime], [EndTime], [TotalTime], [TotalDistance], [Status]) VALUES (8, NULL, NULL, 7.5194444444444448, 33.736, 0)
INSERT [dbo].[Journey] ([Id], [StartTime], [EndTime], [TotalTime], [TotalDistance], [Status]) VALUES (9, NULL, NULL, 6.0375, 32.547, 0)
INSERT [dbo].[Journey] ([Id], [StartTime], [EndTime], [TotalTime], [TotalDistance], [Status]) VALUES (10, NULL, NULL, 7.963055555555556, 31.25, 0)
INSERT [dbo].[Journey] ([Id], [StartTime], [EndTime], [TotalTime], [TotalDistance], [Status]) VALUES (11, NULL, NULL, 7.7883333333333331, 27.277, 0)
INSERT [dbo].[Journey] ([Id], [StartTime], [EndTime], [TotalTime], [TotalDistance], [Status]) VALUES (12, NULL, NULL, 7.5138888888888893, 33.701, 0)
INSERT [dbo].[Journey] ([Id], [StartTime], [EndTime], [TotalTime], [TotalDistance], [Status]) VALUES (13, NULL, NULL, 7.9602777777777778, 31.231, 0)
INSERT [dbo].[Journey] ([Id], [StartTime], [EndTime], [TotalTime], [TotalDistance], [Status]) VALUES (14, NULL, NULL, 7.5091666666666663, 33.788, 0)
INSERT [dbo].[Journey] ([Id], [StartTime], [EndTime], [TotalTime], [TotalDistance], [Status]) VALUES (15, NULL, NULL, 7.7872222222222218, 27.261, 0)
INSERT [dbo].[Journey] ([Id], [StartTime], [EndTime], [TotalTime], [TotalDistance], [Status]) VALUES (16, NULL, NULL, 7.5091666666666663, 33.788, 0)
INSERT [dbo].[Journey] ([Id], [StartTime], [EndTime], [TotalTime], [TotalDistance], [Status]) VALUES (17, NULL, NULL, 7.958333333333333, 31.22, 0)
INSERT [dbo].[Journey] ([Id], [StartTime], [EndTime], [TotalTime], [TotalDistance], [Status]) VALUES (18, NULL, NULL, 6.0375, 32.547, 0)
SET IDENTITY_INSERT [dbo].[Journey] OFF
GO
INSERT [dbo].[MarkPlace] ([AccountId], [PlaceId], [Status]) VALUES (12, 3, 1)
INSERT [dbo].[MarkPlace] ([AccountId], [PlaceId], [Status]) VALUES (12, 6, 1)
INSERT [dbo].[MarkPlace] ([AccountId], [PlaceId], [Status]) VALUES (12, 7, 1)
INSERT [dbo].[MarkPlace] ([AccountId], [PlaceId], [Status]) VALUES (12, 8, 1)
INSERT [dbo].[MarkPlace] ([AccountId], [PlaceId], [Status]) VALUES (17, 3, 1)
INSERT [dbo].[MarkPlace] ([AccountId], [PlaceId], [Status]) VALUES (17, 6, 1)
GO
INSERT [dbo].[Nationality] ([PhoneCode], [NationalCode], [NationalName], [Icon], [LanguageName], [CreateTime], [UpdateTime], [Status]) VALUES (N'+44', N'en-gb', N'United Kingdom', N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/Language%2Fengland_language.jpg?alt=media&token=828cd40b-68a4-4908-9472-77096b633b7a&_gl=1*31ffqd*_ga*MTYyNzY2MzU2NC4xNjgyNzcwNTY2*_ga_CW55HF8NVT*MTY5NjM0MDY5NC4zMC4xLjE2OTYzNDE0ODEuNTguMC4w', N'English(UK)', CAST(N'2023-02-13T00:00:00.000' AS DateTime), NULL, 1)
INSERT [dbo].[Nationality] ([PhoneCode], [NationalCode], [NationalName], [Icon], [LanguageName], [CreateTime], [UpdateTime], [Status]) VALUES (N'+1', N'en-us', N'USA', N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/Language%2Fus.png?alt=media&token=de21fec4-fbfa-46ec-a297-4bf7fdd7ecf9&_gl=1*d4ps97*_ga*MTYyNzY2MzU2NC4xNjgyNzcwNTY2*_ga_CW55HF8NVT*MTY5NjM0MDY5NC4zMC4xLjE2OTYzNDExNjEuNTQuMC4w', N'English(US)', CAST(N'2023-02-13T00:00:00.000' AS DateTime), NULL, 0)
INSERT [dbo].[Nationality] ([PhoneCode], [NationalCode], [NationalName], [Icon], [LanguageName], [CreateTime], [UpdateTime], [Status]) VALUES (N'+33', N'fr', N'French', N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/Language%2Ffrance.jpg?alt=media&token=6922e913-f401-441b-8a4e-709c58f7a743&_gl=1*9rhf6l*_ga*MTYyNzY2MzU2NC4xNjgyNzcwNTY2*_ga_CW55HF8NVT*MTY5NjM0MDY5NC4zMC4xLjE2OTYzNDE2ODQuNTYuMC4w', N'Français', CAST(N'2023-10-03T00:00:00.000' AS DateTime), NULL, 1)
INSERT [dbo].[Nationality] ([PhoneCode], [NationalCode], [NationalName], [Icon], [LanguageName], [CreateTime], [UpdateTime], [Status]) VALUES (N'+81', N'ja', N'Japan', N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/Language%2Fjapan_language.jpg?alt=media&token=4598bba1-f291-4ff2-86d0-e50e00144a44', N'日本語', CAST(N'2023-10-03T00:00:00.000' AS DateTime), NULL, 0)
INSERT [dbo].[Nationality] ([PhoneCode], [NationalCode], [NationalName], [Icon], [LanguageName], [CreateTime], [UpdateTime], [Status]) VALUES (N'+82', N'ko', N'Korean', N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/Language%2FFlag_of_South_Korea.png?alt=media&token=dffb6ac8-96f6-41df-8ddb-66d81bede244&_gl=1*mopq21*_ga*MTYyNzY2MzU2NC4xNjgyNzcwNTY2*_ga_CW55HF8NVT*MTY5NjM0MDY5NC4zMC4xLjE2OTYzNDE3OTcuNTcuMC4w', N'한국어', CAST(N'2023-10-03T00:00:00.000' AS DateTime), NULL, 1)
INSERT [dbo].[Nationality] ([PhoneCode], [NationalCode], [NationalName], [Icon], [LanguageName], [CreateTime], [UpdateTime], [Status]) VALUES (N'+7', N'ru', N'Russia', N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/Language%2Frussia.jpg?alt=media&token=84f3c075-2808-4e5f-9233-86b4db2d00a9&_gl=1*11hcq38*_ga*MTYyNzY2MzU2NC4xNjgyNzcwNTY2*_ga_CW55HF8NVT*MTY5NjM0MDY5NC4zMC4xLjE2OTYzNDE4NTUuNjAuMC4w', N'Русский', CAST(N'2023-10-03T00:00:00.000' AS DateTime), NULL, 1)
INSERT [dbo].[Nationality] ([PhoneCode], [NationalCode], [NationalName], [Icon], [LanguageName], [CreateTime], [UpdateTime], [Status]) VALUES (N'+66', N'th', N'Thailand', N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/Language%2Fthailand.jpg?alt=media&token=f945b153-d2bf-4d77-9ff7-6ce7e2a9b843&_gl=1*1i24t8x*_ga*MTYyNzY2MzU2NC4xNjgyNzcwNTY2*_ga_CW55HF8NVT*MTY5NjM0MDY5NC4zMC4xLjE2OTYzNDIyMTMuNTQuMC4w', N'ไทย', CAST(N'2023-10-03T00:00:00.000' AS DateTime), NULL, 1)
INSERT [dbo].[Nationality] ([PhoneCode], [NationalCode], [NationalName], [Icon], [LanguageName], [CreateTime], [UpdateTime], [Status]) VALUES (N'+90', N'tr', N'Turkey', N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/Language%2FFlag_of_Turkey.png?alt=media&token=e062190b-aac3-4c60-98bc-d03027178b20&_gl=1*1e24dw3*_ga*MTYyNzY2MzU2NC4xNjgyNzcwNTY2*_ga_CW55HF8NVT*MTY5NjM0MDY5NC4zMC4xLjE2OTYzNDE5MTAuNS4wLjA.', N'Türkçe', CAST(N'2023-03-10T00:00:00.000' AS DateTime), NULL, 1)
INSERT [dbo].[Nationality] ([PhoneCode], [NationalCode], [NationalName], [Icon], [LanguageName], [CreateTime], [UpdateTime], [Status]) VALUES (N'+84', N'vi', N'Viet Nam', N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/Language%2Fvietnam_language.jpg?alt=media&token=d3175873-790f-4922-984c-e4caa00fb02a', N'Tiếng Việt', CAST(N'2023-10-03T00:00:00.000' AS DateTime), NULL, 0)
INSERT [dbo].[Nationality] ([PhoneCode], [NationalCode], [NationalName], [Icon], [LanguageName], [CreateTime], [UpdateTime], [Status]) VALUES (N'+86', N'zh-cn', N'China', N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/Language%2Fchina_language.jpg?alt=media&token=27862358-4022-41ea-bd81-12ef73125357', N'简体中文', CAST(N'2023-10-03T00:00:00.000' AS DateTime), NULL, 0)
INSERT [dbo].[Nationality] ([PhoneCode], [NationalCode], [NationalName], [Icon], [LanguageName], [CreateTime], [UpdateTime], [Status])
VALUES (N'+65',
N'sg',
N'Singapore',
N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/Language%2FFlag_of_Singapore.png?alt=media&token=b32ca614-de17-4cf5-805b-898d72604e58',
N'Singapore', 
CAST(N'2023-10-03T00:00:00.000' AS DateTime),
NULL, 1)


INSERT [dbo].[Nationality] ([PhoneCode], [NationalCode], [NationalName], [Icon], [LanguageName], [CreateTime], [UpdateTime], [Status])
VALUES (N'+91',
N'en-in',
N'India',
N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/Language%2FINDIA.jpg?alt=media&token=00c76aab-edd2-4837-98b1-3f4232482623',
N'India', 
CAST(N'2023-10-03T00:00:00.000' AS DateTime),
NULL, 1)
INSERT [dbo].[Nationality] ([PhoneCode], [NationalCode], [NationalName], [Icon], [LanguageName], [CreateTime], [UpdateTime], [Status])
VALUES (N'+1',
N'en-ca',
N'Canadian',
N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/Language%2FCANADA.png?alt=media&token=03d52c42-1ab3-4c97-a7e0-871d2133a86f',
N'Canadian', 
CAST(N'2023-10-03T00:00:00.000' AS DateTime),
NULL, 1)

GO
SET IDENTITY_INSERT [dbo].[Place] ON 

INSERT [dbo].[Place] ([Id], [Name], [Longitude], [Latitude], [GooglePlaceID], [Address], [EntryTicket], [Hour], [Rate], [Price], [CreateTime], [UpdateTime], [Status]) VALUES (3, N'Nhà thờ Đức Bà', CAST(106.699018 AS Decimal(9, 6)), CAST(10.779782 AS Decimal(8, 6)), N'ChIJUSTY5jcvdTERRVvtbJNZT-g', N'Ben Thanh Ward, District 1, Ho Chi Minh City', CAST(0.00 AS Decimal(18, 2)), CAST(N'01:30:00' AS Time), 5, CAST(2.00 AS Decimal(18, 2)), CAST(N'2023-07-13T00:00:00.000' AS DateTime), CAST(N'2023-07-13T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[Place] ([Id], [Name], [Longitude], [Latitude], [GooglePlaceID], [Address], [EntryTicket], [Hour], [Rate], [Price], [CreateTime], [UpdateTime], [Status]) VALUES (6, N'Công viên Tao Đàn', CAST(106.692440 AS Decimal(9, 6)), CAST(10.774533 AS Decimal(8, 6)), N'ChIJsXOVajkvdTERcBdP0Xow8j4', N'Ben Thanh Ward, District 1, Ho Chi Minh City', CAST(0.00 AS Decimal(18, 2)), CAST(N'01:00:00' AS Time), NULL, CAST(5.00 AS Decimal(18, 2)), CAST(N'2023-07-13T00:00:00.000' AS DateTime), CAST(N'2023-07-13T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[Place] ([Id], [Name], [Longitude], [Latitude], [GooglePlaceID], [Address], [EntryTicket], [Hour], [Rate], [Price], [CreateTime], [UpdateTime], [Status]) VALUES (7, N'Bảo tàng Chứng tích chiến tranh', CAST(106.692091 AS Decimal(9, 6)), CAST(10.779509 AS Decimal(8, 6)), N'ChIJzwg3ojAvdTERqnQUK99K2Xw', N'28 Vo Van Tan Street, Vo Thi Sau Ward, District 3, Ho Chi Minh City', CAST(1.69 AS Decimal(18, 2)), CAST(N'01:30:00' AS Time), 5, CAST(5.00 AS Decimal(18, 2)), CAST(N'2023-07-13T00:00:00.000' AS DateTime), CAST(N'2023-07-13T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[Place] ([Id], [Name], [Longitude], [Latitude], [GooglePlaceID], [Address], [EntryTicket], [Hour], [Rate], [Price], [CreateTime], [UpdateTime], [Status]) VALUES (8, N'Chợ Bến Thành', CAST(106.698019 AS Decimal(9, 6)), CAST(10.772512 AS Decimal(8, 6)), N'ChIJTeYpMT8vdTERMH8sUnkta40', N'Ben Thanh Ward, District 1, Ho Chi Minh City', CAST(0.00 AS Decimal(18, 2)), CAST(N'01:00:00' AS Time), NULL, CAST(5.00 AS Decimal(18, 2)), CAST(N'2023-07-13T00:00:00.000' AS DateTime), CAST(N'2023-07-13T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[Place] ([Id], [Name], [Longitude], [Latitude], [GooglePlaceID], [Address], [EntryTicket], [Hour], [Rate], [Price], [CreateTime], [UpdateTime], [Status]) VALUES (9, N'Khu phố Tây Bùi Viện', CAST(106.693991 AS Decimal(9, 6)), CAST(10.767421 AS Decimal(8, 6)), N'ChIJm0JKxJcvdTERRqqWAm02iAQ', N'228 Bui Vien street, Pham Ngu Lao ward, District 1, Ho Chi Minh city', CAST(0.00 AS Decimal(18, 2)), CAST(N'02:00:00' AS Time), NULL, CAST(6.00 AS Decimal(18, 2)), CAST(N'2023-07-13T00:00:00.000' AS DateTime), CAST(N'2023-07-13T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[Place] ([Id], [Name], [Longitude], [Latitude], [GooglePlaceID], [Address], [EntryTicket], [Hour], [Rate], [Price], [CreateTime], [UpdateTime], [Status]) VALUES (10, N'Dinh Độc Lập', CAST(106.695299 AS Decimal(9, 6)), CAST(10.776988 AS Decimal(8, 6)), N'ChIJL0dwVTgvdTERao3t8B1Jhxc', N'135 Nam Ky Khoi Nghia, Ben Nghe Ward, District 1, Ho Chi Minh City', CAST(2.75 AS Decimal(18, 2)), CAST(N'01:30:00' AS Time), 5, CAST(5.00 AS Decimal(18, 2)), CAST(N'2023-07-13T00:00:00.000' AS DateTime), CAST(N'2023-07-13T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[Place] ([Id], [Name], [Longitude], [Latitude], [GooglePlaceID], [Address], [EntryTicket], [Hour], [Rate], [Price], [CreateTime], [UpdateTime], [Status]) VALUES (11, N'Bảo tàng Lịch sử Hồ Chí Minh', CAST(106.704736 AS Decimal(9, 6)), CAST(10.787978 AS Decimal(8, 6)), N'ChIJ5fqrRUsvdTERlfW0JX8JGyU', N'2 Nguyen Binh Khiem, Ben Nghe, District 1, Ho Chi Minh City', CAST(1.69 AS Decimal(18, 2)), CAST(N'01:00:00' AS Time), NULL, CAST(3.00 AS Decimal(18, 2)), CAST(N'2023-07-13T00:00:00.000' AS DateTime), CAST(N'2023-07-13T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[Place] ([Id], [Name], [Longitude], [Latitude], [GooglePlaceID], [Address], [EntryTicket], [Hour], [Rate], [Price], [CreateTime], [UpdateTime], [Status]) VALUES (12, N'Bến Nhà Rồng - Bảo Tàng Hồ Chí Minh', CAST(106.706771 AS Decimal(9, 6)), CAST(10.768103 AS Decimal(8, 6)), N'ChIJFTI64MIvdTERjmiEbXdrb00', N'1 Nguyen Tat Thanh, Ward 12, District 4, Ho Chi Minh City', CAST(1.27 AS Decimal(18, 2)), CAST(N'01:00:00' AS Time), NULL, CAST(5.00 AS Decimal(18, 2)), CAST(N'2023-07-13T00:00:00.000' AS DateTime), CAST(N'2023-07-13T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[Place] ([Id], [Name], [Longitude], [Latitude], [GooglePlaceID], [Address], [EntryTicket], [Hour], [Rate], [Price], [CreateTime], [UpdateTime], [Status]) VALUES (14, N'Chùa Giác Lâm', CAST(106.649215 AS Decimal(9, 6)), CAST(10.778591 AS Decimal(8, 6)), N'ChIJwbgGB7kudTER_wqscOHg_y4', N'565 Lac Long Quan, Ward 10, Tan Binh, Ho Chi Minh City', CAST(0.00 AS Decimal(18, 2)), CAST(N'01:00:00' AS Time), NULL, CAST(6.00 AS Decimal(18, 2)), CAST(N'2023-07-13T00:00:00.000' AS DateTime), CAST(N'2023-07-13T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[Place] ([Id], [Name], [Longitude], [Latitude], [GooglePlaceID], [Address], [EntryTicket], [Hour], [Rate], [Price], [CreateTime], [UpdateTime], [Status]) VALUES (15, N'Nhà hát thành phố Hồ Chí Minh', CAST(106.703164 AS Decimal(9, 6)), CAST(10.776630 AS Decimal(8, 6)), N'ChIJKcrnSUYvdTERO64MErYx9VU', N'07 Lam Son Square, Ben Nghe, District 1, Ho Chi Minh City', CAST(3.60 AS Decimal(18, 2)), CAST(N'01:30:00' AS Time), NULL, CAST(5.00 AS Decimal(18, 2)), CAST(N'2023-07-13T00:00:00.000' AS DateTime), CAST(N'2023-07-13T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[Place] ([Id], [Name], [Longitude], [Latitude], [GooglePlaceID], [Address], [EntryTicket], [Hour], [Rate], [Price], [CreateTime], [UpdateTime], [Status]) VALUES (16, N'Công viên 23 tháng 9', CAST(106.692125 AS Decimal(9, 6)), CAST(10.768796 AS Decimal(8, 6)), N'ChIJu4YK_j4vdTERfSn0egKOyug', N'D. Pham Ngu Lao, Pham Ngu Lao Ward, District 1, Ho Chi Minh City', CAST(0.00 AS Decimal(18, 2)), CAST(N'00:30:00' AS Time), NULL, CAST(6.00 AS Decimal(18, 2)), CAST(N'2023-07-13T00:00:00.000' AS DateTime), CAST(N'2023-07-13T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[Place] ([Id], [Name], [Longitude], [Latitude], [GooglePlaceID], [Address], [EntryTicket], [Hour], [Rate], [Price], [CreateTime], [UpdateTime], [Status]) VALUES (17, N'Công viên Văn hóa Đầm Sen', CAST(106.641894 AS Decimal(9, 6)), CAST(10.766087 AS Decimal(8, 6)), N'ChIJa2jyR5cudTERy2ySbqgJudk', N'262 Lac Long Quan, Ward 5, District 11, Ho Chi Minh City', CAST(11.85 AS Decimal(18, 2)), CAST(N'02:00:00' AS Time), NULL, CAST(5.00 AS Decimal(18, 2)), CAST(N'2023-07-13T00:00:00.000' AS DateTime), CAST(N'2023-07-13T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[Place] ([Id], [Name], [Longitude], [Latitude], [GooglePlaceID], [Address], [EntryTicket], [Hour], [Rate], [Price], [CreateTime], [UpdateTime], [Status]) VALUES (18, N'Bảo tàng Mỹ thuật', CAST(106.699114 AS Decimal(9, 6)), CAST(10.769931 AS Decimal(8, 6)), N'ChIJsfntd0AvdTERdgUjB_drRrE', N'97A Duc Chinh Ward, Nguyen Thai Binh Ward, District 1, Ho Chi Minh City', CAST(1.69 AS Decimal(18, 2)), CAST(N'01:30:00' AS Time), NULL, CAST(5.00 AS Decimal(18, 2)), CAST(N'2023-07-13T00:00:00.000' AS DateTime), CAST(N'2023-07-13T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[Place] ([Id], [Name], [Longitude], [Latitude], [GooglePlaceID], [Address], [EntryTicket], [Hour], [Rate], [Price], [CreateTime], [UpdateTime], [Status]) VALUES (19, N'Công viên văn hóa Suối Tiên', CAST(106.802920 AS Decimal(9, 6)), CAST(10.866120 AS Decimal(8, 6)), N'ChIJDXlfx1sndTERFg6NcPqJ8e8', N'120 Ha Noi highway, Thu Duc City, Ho Chi Minh City, Việt Nam', CAST(5.50 AS Decimal(18, 2)), CAST(N'02:30:00' AS Time), NULL, CAST(7.00 AS Decimal(18, 2)), CAST(N'2023-12-06T00:00:00.000' AS DateTime), CAST(N'2023-12-06T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[Place] ([Id], [Name], [Longitude], [Latitude], [GooglePlaceID], [Address], [EntryTicket], [Hour], [Rate], [Price], [CreateTime], [UpdateTime], [Status]) VALUES (20, N'Bưu điện Thành phố Hồ Chí Minh', CAST(106.700190 AS Decimal(9, 6)), CAST(10.780240 AS Decimal(8, 6)), N'ChIJG0t3qXcmdTERJuyQfLLtQD0', N'Số 125 Cong xa Paris, Ben Nghe, District 1, Ho Chi Minh City', CAST(2.50 AS Decimal(18, 2)), CAST(N'01:30:00' AS Time), NULL, CAST(0.00 AS Decimal(18, 2)), CAST(N'2023-12-07T00:00:00.000' AS DateTime), CAST(N'2023-12-07T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[Place] ([Id], [Name], [Longitude], [Latitude], [GooglePlaceID], [Address], [EntryTicket], [Hour], [Rate], [Price], [CreateTime], [UpdateTime], [Status]) VALUES (21, N'Phố đi bộ Nguyễn Huệ', CAST(106.703650 AS Decimal(9, 6)), CAST(10.774070 AS Decimal(8, 6)), N'ChIJGepn_UYvdTEReq9GxaQbiFc', N'Nguyen Hue street, Ben Nghe, District 1, Ho Chi Minh City', CAST(0.00 AS Decimal(18, 2)), CAST(N'01:30:00' AS Time), NULL, CAST(6.00 AS Decimal(18, 2)), CAST(N'2023-12-08T00:00:00.000' AS DateTime), CAST(N'2023-12-08T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[Place] ([Id], [Name], [Longitude], [Latitude], [GooglePlaceID], [Address], [EntryTicket], [Hour], [Rate], [Price], [CreateTime], [UpdateTime], [Status]) VALUES (22, N'Cầu Ánh Sao', CAST(106.718570 AS Decimal(9, 6)), CAST(10.724718 AS Decimal(8, 6)), NULL, N'Khu đô thị Phú Mỹ Hưng, Quận 7, Thành phố Hồ Chí Minh, Việt Nam', CAST(0.00 AS Decimal(18, 2)), CAST(N'01:00:00' AS Time), NULL, CAST(4.00 AS Decimal(18, 2)), CAST(N'2023-11-25T00:00:00.000' AS DateTime), CAST(N'2023-11-25T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[Place] ([Id], [Name], [Longitude], [Latitude], [GooglePlaceID], [Address], [EntryTicket], [Hour], [Rate], [Price], [CreateTime], [UpdateTime], [Status]) VALUES (23, N'Chùa Bửu Long', CAST(106.834980 AS Decimal(9, 6)), CAST(10.878897 AS Decimal(8, 6)), N'ChIJmWI0qFzfdDERyycx50mNPk4', N'81 Nguyen Xien street, Long Binh, District 9, Ho Chi Minh City', CAST(0.00 AS Decimal(18, 2)), CAST(N'01:00:00' AS Time), NULL, CAST(3.00 AS Decimal(18, 2)), CAST(N'2023-11-05T00:00:00.000' AS DateTime), CAST(N'2023-11-05T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[Place] ([Id], [Name], [Longitude], [Latitude], [GooglePlaceID], [Address], [EntryTicket], [Hour], [Rate], [Price], [CreateTime], [UpdateTime], [Status]) VALUES (24, N'Địa đạo Củ Chi', CAST(106.461590 AS Decimal(9, 6)), CAST(11.141588 AS Decimal(8, 6)), N'ChIJKXVC7sAyCzERLxR747WgrZg', N'Phu Hiep, Cu Chi, Ho Chi Minh City', CAST(6.00 AS Decimal(18, 2)), CAST(N'02:00:00' AS Time), NULL, CAST(4.00 AS Decimal(18, 2)), CAST(N'2023-11-22T00:00:00.000' AS DateTime), CAST(N'2023-11-22T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[Place] ([Id], [Name], [Longitude], [Latitude], [GooglePlaceID], [Address], [EntryTicket], [Hour], [Rate], [Price], [CreateTime], [UpdateTime], [Status]) VALUES (27, N'Thảo Cầm Viên', CAST(106.705290 AS Decimal(9, 6)), CAST(10.787538 AS Decimal(8, 6)), N'ChIJx7wwM0svdTERjuH2a9dkuU0', N'1 Nguyen Thi Minh Khai street, Da Kao, District 1, Ho Chi Minh City', CAST(2.50 AS Decimal(18, 2)), CAST(N'02:30:00' AS Time), NULL, CAST(5.00 AS Decimal(18, 2)), CAST(N'2023-11-13T00:00:00.000' AS DateTime), CAST(N'2023-11-13T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[Place] ([Id], [Name], [Longitude], [Latitude], [GooglePlaceID], [Address], [EntryTicket], [Hour], [Rate], [Price], [CreateTime], [UpdateTime], [Status]) VALUES (28, N'Dai Hoc FPT', CAST(106.809925 AS Decimal(9, 6)), CAST(10.842118 AS Decimal(8, 6)), N'ChIJsQdrFzEndTERXq6bN0uyUrc', N'Lot E2a-7, Street D1, D. D1, Long Thanh My, Thu Duc City, Ho Chi Minh City', CAST(0.00 AS Decimal(18, 2)), CAST(N'00:40:00' AS Time), 5, CAST(2.00 AS Decimal(18, 2)), CAST(N'2023-07-14T00:00:00.000' AS DateTime), CAST(N'2023-07-14T00:00:00.000' AS DateTime), 2)
SET IDENTITY_INSERT [dbo].[Place] OFF
GO
INSERT [dbo].[PlaceCategory] ([PlaceId], [CategoryId], [Status]) VALUES (3, 1, 1)
INSERT [dbo].[PlaceCategory] ([PlaceId], [CategoryId], [Status]) VALUES (3, 9, 1)
INSERT [dbo].[PlaceCategory] ([PlaceId], [CategoryId], [Status]) VALUES (3, 10, 1)
INSERT [dbo].[PlaceCategory] ([PlaceId], [CategoryId], [Status]) VALUES (6, 6, 1)
INSERT [dbo].[PlaceCategory] ([PlaceId], [CategoryId], [Status]) VALUES (6, 7, 1)
INSERT [dbo].[PlaceCategory] ([PlaceId], [CategoryId], [Status]) VALUES (7, 1, 1)
INSERT [dbo].[PlaceCategory] ([PlaceId], [CategoryId], [Status]) VALUES (7, 2, 1)
INSERT [dbo].[PlaceCategory] ([PlaceId], [CategoryId], [Status]) VALUES (7, 4, 1)
INSERT [dbo].[PlaceCategory] ([PlaceId], [CategoryId], [Status]) VALUES (8, 3, 1)
INSERT [dbo].[PlaceCategory] ([PlaceId], [CategoryId], [Status]) VALUES (8, 4, 1)
INSERT [dbo].[PlaceCategory] ([PlaceId], [CategoryId], [Status]) VALUES (9, 4, 1)
INSERT [dbo].[PlaceCategory] ([PlaceId], [CategoryId], [Status]) VALUES (10, 1, 1)
INSERT [dbo].[PlaceCategory] ([PlaceId], [CategoryId], [Status]) VALUES (10, 2, 1)
INSERT [dbo].[PlaceCategory] ([PlaceId], [CategoryId], [Status]) VALUES (10, 3, 1)
INSERT [dbo].[PlaceCategory] ([PlaceId], [CategoryId], [Status]) VALUES (11, 1, 1)
INSERT [dbo].[PlaceCategory] ([PlaceId], [CategoryId], [Status]) VALUES (11, 3, 1)
INSERT [dbo].[PlaceCategory] ([PlaceId], [CategoryId], [Status]) VALUES (11, 4, 1)
INSERT [dbo].[PlaceCategory] ([PlaceId], [CategoryId], [Status]) VALUES (12, 1, 1)
INSERT [dbo].[PlaceCategory] ([PlaceId], [CategoryId], [Status]) VALUES (12, 2, 1)
INSERT [dbo].[PlaceCategory] ([PlaceId], [CategoryId], [Status]) VALUES (14, 2, 1)
INSERT [dbo].[PlaceCategory] ([PlaceId], [CategoryId], [Status]) VALUES (14, 3, 1)
INSERT [dbo].[PlaceCategory] ([PlaceId], [CategoryId], [Status]) VALUES (14, 6, 1)
INSERT [dbo].[PlaceCategory] ([PlaceId], [CategoryId], [Status]) VALUES (14, 9, 1)
INSERT [dbo].[PlaceCategory] ([PlaceId], [CategoryId], [Status]) VALUES (15, 2, 1)
INSERT [dbo].[PlaceCategory] ([PlaceId], [CategoryId], [Status]) VALUES (15, 3, 1)
INSERT [dbo].[PlaceCategory] ([PlaceId], [CategoryId], [Status]) VALUES (15, 10, 1)
INSERT [dbo].[PlaceCategory] ([PlaceId], [CategoryId], [Status]) VALUES (16, 6, 1)
INSERT [dbo].[PlaceCategory] ([PlaceId], [CategoryId], [Status]) VALUES (16, 7, 1)
INSERT [dbo].[PlaceCategory] ([PlaceId], [CategoryId], [Status]) VALUES (17, 4, 1)
INSERT [dbo].[PlaceCategory] ([PlaceId], [CategoryId], [Status]) VALUES (17, 7, 1)
INSERT [dbo].[PlaceCategory] ([PlaceId], [CategoryId], [Status]) VALUES (17, 11, 1)
INSERT [dbo].[PlaceCategory] ([PlaceId], [CategoryId], [Status]) VALUES (18, 1, 1)
INSERT [dbo].[PlaceCategory] ([PlaceId], [CategoryId], [Status]) VALUES (18, 3, 1)
INSERT [dbo].[PlaceCategory] ([PlaceId], [CategoryId], [Status]) VALUES (18, 10, 1)
INSERT [dbo].[PlaceCategory] ([PlaceId], [CategoryId], [Status]) VALUES (19, 4, 1)
INSERT [dbo].[PlaceCategory] ([PlaceId], [CategoryId], [Status]) VALUES (19, 7, 1)
INSERT [dbo].[PlaceCategory] ([PlaceId], [CategoryId], [Status]) VALUES (19, 11, 1)
INSERT [dbo].[PlaceCategory] ([PlaceId], [CategoryId], [Status]) VALUES (20, 3, 1)
INSERT [dbo].[PlaceCategory] ([PlaceId], [CategoryId], [Status]) VALUES (20, 4, 1)
INSERT [dbo].[PlaceCategory] ([PlaceId], [CategoryId], [Status]) VALUES (21, 4, 1)
INSERT [dbo].[PlaceCategory] ([PlaceId], [CategoryId], [Status]) VALUES (21, 6, 1)
INSERT [dbo].[PlaceCategory] ([PlaceId], [CategoryId], [Status]) VALUES (21, 11, 1)
INSERT [dbo].[PlaceCategory] ([PlaceId], [CategoryId], [Status]) VALUES (22, 6, 1)
INSERT [dbo].[PlaceCategory] ([PlaceId], [CategoryId], [Status]) VALUES (22, 7, 1)
INSERT [dbo].[PlaceCategory] ([PlaceId], [CategoryId], [Status]) VALUES (23, 6, 1)
INSERT [dbo].[PlaceCategory] ([PlaceId], [CategoryId], [Status]) VALUES (23, 9, 1)
INSERT [dbo].[PlaceCategory] ([PlaceId], [CategoryId], [Status]) VALUES (24, 2, 1)
INSERT [dbo].[PlaceCategory] ([PlaceId], [CategoryId], [Status]) VALUES (24, 3, 1)
INSERT [dbo].[PlaceCategory] ([PlaceId], [CategoryId], [Status]) VALUES (24, 4, 1)
INSERT [dbo].[PlaceCategory] ([PlaceId], [CategoryId], [Status]) VALUES (27, 4, 1)
INSERT [dbo].[PlaceCategory] ([PlaceId], [CategoryId], [Status]) VALUES (27, 6, 1)
INSERT [dbo].[PlaceCategory] ([PlaceId], [CategoryId], [Status]) VALUES (27, 7, 1)
INSERT [dbo].[PlaceCategory] ([PlaceId], [CategoryId], [Status]) VALUES (28, 3, 1)
INSERT [dbo].[PlaceCategory] ([PlaceId], [CategoryId], [Status]) VALUES (28, 6, 1)
GO
SET IDENTITY_INSERT [dbo].[PlaceDescription] ON 

INSERT [dbo].[PlaceDescription] ([Id], [PlaceId], [VoiceFile], [Name], [LanguageCode], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (1, 3, N'http://localhost:8002/etravel/live/hls/bennharongvi/playlist.m3u8', N'Nhà thờ Đức Bà', N'vi        ', N'Nhà Thờ Đức Bà là một công trình kiến trúc nổi tiếng tại thành phố Hồ Chí Minh, Việt Nam. Được xây dựng vào cuối thế kỷ 19, Nhà Thờ Đức Bà là một trong những di sản văn hóa đáng chú ý của thành phố.

Nhà Thờ Đức Bà nằm trên đường Đồng Khởi, ngay trung tâm của quận 1, và cách dòng sông Sài Gòn chỉ vài bước chân. Nó là một trong những công trình kiến trúc Pháp đẹp nhất ở Việt Nam và được xây dựng dưới thời đô hộ của Pháp. Nhà Thờ Đức Bà kết hợp giữa kiến trúc Gothic và Roman, tạo nên một phong cách độc đáo.

Công trình được xây dựng từ năm 1863 và hoàn thành vào năm 1880. Nhà Thờ Đức Bà có một lối kiến trúc vĩ đại với các cột và cung điện cao, và nó được chế tác từ những tấm gạch đỏ đặc biệt được nhập khẩu từ Pháp. Nó có hai tháp chuông cao và một tháp chuông chính ở giữa, tạo nên một bức tranh nghệ thuật nổi bật trên bầu trời của thành phố.

Bên trong Nhà Thờ Đức Bà, bạn sẽ thấy nhiều tác phẩm nghệ thuật đẹp mắt, bao gồm các bức tranh, tượng chúa Kitô, và các cửa sổ kính nghệ thuật. Ngôi nhà thờ cũng có một khuôn viên rộng lớn với những khu vườn xanh mát, tạo nên một không gian yên tĩnh để thư giãn và tận hưởng.

Nhà Thờ Đức Bà không chỉ là một địa điểm tôn giáo quan trọng, mà còn là một địa điểm du lịch phổ biến cho du khách. Du khách có thể tham quan bên trong nhà thờ, ngắm nhìn kiến trúc độc đáo và tìm hiểu về lịch sử và văn hóa của nơi này. Đồng thời, từ Nhà Thờ Đức Bà, bạn cũng có thể dễ dàng đi bộ để khám phá các điểm tham quan khác trong khu vực trung tâm thành phố Hồ Chí Minh.

Nhà Thờ Đức Bà là một biểu tượng văn hóa và kiến trúc quan trọng của Hồ Chí Minh và Việt Nam. Với vẻ đẹp cổ điển và sự nổi tiếng của mình, nó thu hút hàng năm rất nhiều du khách đến thăm và khám phá.', CAST(N'2023-07-14T00:00:00.000' AS DateTime), CAST(N'2023-07-14T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[PlaceDescription] ([Id], [PlaceId], [VoiceFile], [Name], [LanguageCode], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (2, 6, N'http://localhost:8002/etravel/live/hls/bennharongvi/playlist.m3u8', N'Công viên Tao Đàn', N'vi        ', N'Công viên Tao Đàn là một công viên nổi tiếng và được yêu thích tại thành phố Hồ Chí Minh, Việt Nam. Với diện tích rộng lớn và không gian xanh mát, công viên này là một điểm đến lý tưởng để thư giãn và tận hưởng thiên nhiên.

Công viên Tao Đàn được đặt tên theo một ngôi chùa nằm trong khu vực công viên. Chùa Tao Đàn là một ngôi chùa Phật giáo quan trọng, thu hút rất đông người dân và du khách đến thăm. Công viên được xây dựng xung quanh chùa và trở thành một nơi gặp gỡ và sinh hoạt của cộng đồng Phật giáo trong thành phố.

Công viên Tao Đàn có nhiều cây xanh và cánh đồng hoa tươi đẹp, tạo nên không gian trong lành và yên bình. Nơi đây rất phổ biến với người dân địa phương và du khách, đặc biệt là vào buổi sáng và buổi chiều, khi người ta thường đến để tập thể dục, thả diều, hoặc chỉ đơn giản là thư giãn sau một ngày làm việc.

Công viên cũng có các tiện ích khác như khu vui chơi trẻ em, khu tập thể dục ngoài trời, và các gian hàng bán đồ ăn và đồ uống. Du khách có thể tham gia vào các hoạt động như yoga, tai chi, và các lớp học thể dục khác do các huấn luyện viên chuyên nghiệp tổ chức.

Ngoài ra, Công viên Tao Đàn cũng nằm gần các điểm tham quan khác trong thành phố Hồ Chí Minh. Du khách có thể kết hợp việc thăm công viên với việc khám phá các địa điểm lân cận như Nhà hát Thành phố, Bảo tàng Mỹ thuật và Công viên 30/4.

Với không gian xanh mát và các hoạt động vui chơi giải trí, Công viên Tao Đàn là một địa điểm lý tưởng để thư giãn và tận hưởng không gian tự nhiên trong lòng thành phố Hồ Chí Minh.', CAST(N'2023-07-14T00:00:00.000' AS DateTime), CAST(N'2023-07-14T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[PlaceDescription] ([Id], [PlaceId], [VoiceFile], [Name], [LanguageCode], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (3, 7, N'http://localhost:8002/etravel/live/hls/bennharongvi/playlist.m3u8', N'Bảo tàng Chứng tích chiến tranh', N'vi        ', N'Bảo tàng Chứng tích chiến tranh, còn được gọi là Bảo tàng Chiến tranh, là một điểm tham quan lịch sử quan trọng tại thành phố Hồ Chí Minh, Việt Nam. Bảo tàng này tập trung trưng bày và lưu giữ các hiện vật, hình ảnh và tư liệu liên quan đến Chiến tranh Việt Nam và những hậu quả của nó.

Bảo tàng Chứng tích chiến tranh nằm trong khu vực quận 3, gần trung tâm thành phố. Được thành lập từ năm 1975, bảo tàng có mục tiêu giữ gìn và truyền đạt lịch sử của cuộc Chiến tranh Việt Nam cho thế hệ hiện tại và tương lai.

Trong Bảo tàng Chứng tích chiến tranh, du khách có thể tham quan các phòng trưng bày với nhiều hiện vật đáng chú ý như máy bay chiến đấu, xe tăng, pháo binh, vũ khí và trang bị quân đội. Ngoài ra, bảo tàng còn trưng bày các bức tranh, hình ảnh và tư liệu mô tả cuộc Chiến tranh Việt Nam và những tác động của nó đến người dân và đất nước.

Bên cạnh việc trưng bày, Bảo tàng Chứng tích chiến tranh cũng cung cấp các chương trình giảng dạy và hướng dẫn từ các nhân viên có kiến thức chuyên sâu về lịch sử. Du khách có thể hiểu rõ hơn về nguyên nhân, diễn biến và hậu quả của cuộc Chiến tranh Việt Nam thông qua những thông tin được chia sẻ và giải thích chi tiết.

Bảo tàng Chứng tích chiến tranh là một địa điểm quan trọng để khám phá và hiểu về lịch sử của Việt Nam. Nó giúp du khách có cái nhìn sâu sắc hơn về những khía cạnh đa dạng của cuộc Chiến tranh Việt Nam và tác động của nó lên quốc gia và con người.', CAST(N'2023-07-14T00:00:00.000' AS DateTime), CAST(N'2023-07-14T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[PlaceDescription] ([Id], [PlaceId], [VoiceFile], [Name], [LanguageCode], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (4, 8, N'http://localhost:8002/etravel/live/hls/bennharongvi/playlist.m3u8', N'Chợ Bến Thành', N'vi        ', N'Chợ Bến Thành là một trong những chợ truyền thống nổi tiếng và sầm uất nhất tại thành phố Hồ Chí Minh, Việt Nam. Được xây dựng từ thế kỷ 19, chợ Bến Thành là điểm đến không thể bỏ qua cho du khách muốn trải nghiệm văn hóa và mua sắm đặc sản địa phương.

Chợ Bến Thành nằm ở trung tâm quận 1, là một điểm giao thoa của các con đường sầm uất. Chợ có diện tích rộng lớn và được chia thành nhiều khu vực, mỗi khu vực chuyên bán các loại hàng hóa khác nhau như thực phẩm, quần áo, mỹ phẩm, đồ điện tử và nhiều sản phẩm thủ công mỹ nghệ khác.

Chợ Bến Thành không chỉ là nơi để mua sắm, mà còn là một điểm đến để khám phá văn hóa và ẩm thực Việt Nam. Du khách có thể thưởng thức các món ăn đường phố ngon lành như phở, bánh xèo, nem nướng và nhiều món ăn truyền thống khác. Ngoài ra, chợ cũng có các quầy hàng trái cây, hoa tươi và các loại đồ lưu niệm để khách du lịch mua sắm và lưu giữ kỷ niệm.

Chợ Bến Thành là nơi tập trung của cả người dân địa phương và du khách, vì vậy nơi đây rất sôi động và tấp nập. Du khách có thể trải nghiệm không gian chợ đầy màu sắc, nghe tiếng đào báo giá và thương thảo, và cảm nhận sự năng động của cuộc sống thành phố.

Chợ Bến Thành là một địa điểm mua sắm và trải nghiệm văn hóa đặc biệt tại Hồ Chí Minh. Điều này tạo ra một trải nghiệm thú vị cho du khách muốn khám phá sự đa dạng và sự sống động của thị trường địa phương.', CAST(N'2023-07-14T00:00:00.000' AS DateTime), CAST(N'2023-07-14T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[PlaceDescription] ([Id], [PlaceId], [VoiceFile], [Name], [LanguageCode], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (5, 9, N'http://localhost:8002/etravel/live/hls/bennharongvi/playlist.m3u8', N'Khu phố Tây Bùi Viện', N'vi        ', N'Khu phố Tây Bùi Viện là một trong những điểm đến sôi động và nổi tiếng ở thành phố Hồ Chí Minh, Việt Nam. Được biết đến là trung tâm của cuộc sống về đêm và du lịch giải trí, khu phố Tây Bùi Viện là nơi tập trung của các quán bar, nhà hàng, khách sạn, và các hoạt động vui chơi giải trí.

Khu phố Tây Bùi Viện nằm ở quận 1, gần trung tâm thành phố. Đây là một khu phố năng động và sôi động, đặc biệt vào ban đêm. Đây là điểm đến yêu thích của cả du khách nước ngoài và người dân địa phương.

Trên khu phố Tây Bùi Viện, du khách có thể tìm thấy một loạt các nhà hàng phục vụ ẩm thực quốc tế và đặc sản Việt Nam. Các quán bar và quán cà phê với âm nhạc sống và không gian ngoài trời cũng là điểm đến phổ biến. Du khách có thể thưởng thức các món ăn ngon, tham gia vào các buổi biểu diễn âm nhạc trực tiếp và tận hưởng không khí vui vẻ và sôi động.

Ngoài ra, khu phố Tây Bùi Viện cũng là nơi có nhiều cửa hàng bán đồ lưu niệm, quần áo, phụ kiện và nhiều sản phẩm khác để du khách mua sắm và lưu giữ kỷ niệm về chuyến du lịch.

Khu phố Tây Bùi Viện là một điểm đến tuyệt vời cho những ai muốn thưởng thức ẩm thực, trải nghiệm cuộc sống về đêm và tận hưởng không gian giải trí sôi động của thành phố Hồ Chí Minh.', CAST(N'2023-07-14T00:00:00.000' AS DateTime), CAST(N'2023-07-14T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[PlaceDescription] ([Id], [PlaceId], [VoiceFile], [Name], [LanguageCode], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (6, 10, N'http://localhost:8002/etravel/live/hls/bennharongvi/playlist.m3u8', N'Dinh Độc Lập', N'vi        ', N'Dinh Độc Lập, hay còn được gọi là Cung điện Độc Lập, là một tòa nhà lịch sử quan trọng ở thành phố Hồ Chí Minh, Việt Nam. Được xây dựng từ năm 1962 đến 1966, Dinh Độc Lập đã đóng vai trò quan trọng trong lịch sử và chính trị của Việt Nam.

Dinh Độc Lập được thiết kế bởi kiến trúc sư Ngô Viết Thụ, mang phong cách kiến trúc châu Âu hiện đại. Tòa nhà này thể hiện sự hòa quyện giữa nét đặc trưng của kiến trúc Pháp và các yếu tố truyền thống Việt Nam.

Dinh Độc Lập từng là nơi tổ chức các sự kiện lịch sử quan trọng của Việt Nam, bao gồm việc ký kết Hiệp định Paris năm 1973 chấm dứt chiến tranh Việt Nam. Ngày nay, nó được chuyển đổi thành Bảo tàng Dinh Độc Lập, nơi trưng bày các hiện vật và tư liệu lịch sử về cuộc chiến tranh và sự phát triển của Việt Nam.

Bên trong Dinh Độc Lập, du khách có thể tham quan các phòng trưng bày với những hiện vật quan trọng, hình ảnh và tài liệu về lịch sử của Việt Nam. Điều này giúp khách du lịch hiểu rõ hơn về quá trình chiến đấu cho độc lập và sự phát triển của Việt Nam sau cuộc chiến tranh.

Dinh Độc Lập là một địa điểm quan trọng để tìm hiểu về lịch sử và văn hóa của Việt Nam. Nó là một điểm đến phổ biến cho du khách muốn khám phá những di sản quan trọng và hình ảnh của đất nước.', CAST(N'2023-07-14T00:00:00.000' AS DateTime), CAST(N'2023-07-14T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[PlaceDescription] ([Id], [PlaceId], [VoiceFile], [Name], [LanguageCode], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (7, 11, N'http://localhost:8002/etravel/live/hls/bennharongvi/playlist.m3u8', N'Bảo tàng Lịch sử Thành phố Hồ Chí Minh', N'vi        ', N'Bảo tàng Lịch sử Thành phố Hồ Chí Minh là một điểm đến văn hóa quan trọng ở thành phố Hồ Chí Minh, Việt Nam. Nơi đây giới thiệu về lịch sử và văn hóa của thành phố từ thời cổ đại cho đến hiện đại.

Bảo tàng trưng bày nhiều hiện vật, tư liệu và bản ghi chứng về sự phát triển của thành phố và văn hóa dân tộc. Du khách có thể khám phá các phòng trưng bày với các bức tranh, dioramas, và các hiện vật cổ, đồng thời nghe các hướng dẫn viên giải thích chi tiết về những di sản lịch sử quan trọng.

Bảo tàng Lịch sử Thành phố Hồ Chí Minh cũng có một số triển lãm tạm thời và hoạt động giáo dục văn hóa. Đây là nơi du khách có thể hiểu sâu hơn về quá khứ và hiện tại của thành phố Hồ Chí Minh.', CAST(N'2023-07-14T00:00:00.000' AS DateTime), CAST(N'2023-07-14T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[PlaceDescription] ([Id], [PlaceId], [VoiceFile], [Name], [LanguageCode], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (8, 12, N'http://localhost:8002/etravel/live/hls/bennharongvi/playlist.m3u8', N'Bến Nhà Rồng - Bảo Tàng Hồ Chí Minh', N'vi        ', N'Bến Nhà Rồng là một địa điểm lịch sử quan trọng ở thành phố Hồ Chí Minh, Việt Nam, và là nơi sinh sống của Bác Hồ Chí Minh trong một thời gian dài. Hiện nay, nó đã được biến đổi thành Bảo Tàng Hồ Chí Minh để tưởng nhớ vị lãnh tụ vĩ đại của Việt Nam.

Bến Nhà Rồng nằm ở Quận 4, cách trung tâm thành phố không xa. Đây là một tòa nhà cổ có kiến trúc độc đáo, mang nét đặc trưng của miền Nam Việt Nam. Bên trong Bến Nhà Rồng, du khách có thể khám phá các phòng trưng bày với các hiện vật, hình ảnh và tài liệu về cuộc đời và sự nghiệp của Bác Hồ.

Bảo Tàng Hồ Chí Minh tại Bến Nhà Rồng cung cấp một cái nhìn sâu sắc vào cuộc sống và công lao của Bác Hồ Chí Minh. Du khách có thể tìm hiểu về giai đoạn sinh thời, hoạt động cách mạng và tư tưởng của Bác Hồ qua các trưng bày và diễn giảng.

Ngoài ra, Bến Nhà Rồng cũng có một khu vườn xanh mát và một con tàu truyền thống đậu sát bến, mang đến không gian yên tĩnh và thư giãn cho du khách.

Bảo Tàng Hồ Chí Minh tại Bến Nhà Rồng là một điểm đến lý tưởng cho những ai quan tâm đến lịch sử và văn hóa của Việt Nam, đặc biệt là về cuộc đời và sự nghiệp của Bác Hồ Chí Minh.', CAST(N'2023-07-14T00:00:00.000' AS DateTime), CAST(N'2023-07-14T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[PlaceDescription] ([Id], [PlaceId], [VoiceFile], [Name], [LanguageCode], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (9, 14, N'http://localhost:8002/etravel/live/hls/bennharongvi/playlist.m3u8', N'Chùa Giác Lâm', N'vi        ', N'Chùa Giác Lâm là một ngôi chùa cổ nằm ở thành phố Hồ Chí Minh, Việt Nam. Đây là một trong những ngôi chùa cổ nhất và lớn nhất ở thành phố này, mang trong mình giá trị lịch sử và tâm linh đặc biệt.

Chùa Giác Lâm được xây dựng vào thế kỷ 18 và là ngôi chùa quan trọng thuộc Thiền tông. Kiến trúc của chùa được thiết kế theo phong cách Đông Dương và Chăm Pa, tạo nên một không gian tôn nghiêm và thanh bình.

Trong khuôn viên của Chùa Giác Lâm, du khách có thể khám phá nhiều tòa nhà và công trình kiến trúc độc đáo, bao gồm những ngôi đình, chùa, tháp chuông và một đài phật đá lớn. Ngoài ra, chùa còn có một số tượng Phật và các tác phẩm nghệ thuật khác đáng chú ý.

Chùa Giác Lâm cũng là nơi linh thiêng và trang nhã để tín đồ Phật giáo và du khách đến cầu nguyện và tìm hiểu về tôn giáo và triết lý Phật giáo. Ngoài ra, chùa cũng thu hút nhiều khách du lịch quốc tế muốn khám phá và trải nghiệm văn hóa và kiến trúc truyền thống của Việt Nam.

Chùa Giác Lâm là một điểm đến hấp dẫn cho những ai muốn khám phá văn hóa, tôn giáo và kiến trúc đặc trưng của Việt Nam, đồng thời tìm hiểu về sự hòa hợp giữa các truyền thống Phật giáo và văn hóa địa phương.', CAST(N'2023-07-14T00:00:00.000' AS DateTime), CAST(N'2023-07-14T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[PlaceDescription] ([Id], [PlaceId], [VoiceFile], [Name], [LanguageCode], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (10, 15, N'http://localhost:8002/etravel/live/hls/bennharongvi/playlist.m3u8', N'Nhà hát thành phố Hồ Chí Minh', N'vi        ', N'Nhà hát thành phố Hồ Chí Minh, còn được gọi là Nhà hát Lớn, là một biểu tượng nổi tiếng và điểm đến văn hóa quan trọng ở Hồ Chí Minh, Việt Nam. Với kiến trúc độc đáo và vẻ đẹp kiệt xuất, nó là một trong những nhà hát lớn nhất và đẹp nhất ở Đông Nam Á.

Nhà hát thành phố Hồ Chí Minh được xây dựng vào thập kỷ 1890 và mang trong mình nét đặc trưng của kiến trúc Pháp thuộc thời kỳ thống nhất đất nước. Tòa nhà được xây dựng bằng vật liệu cao cấp và trang trí bằng các chi tiết tinh xảo, tạo nên một không gian hoành tráng và lịch sự.

Nhà hát thành phố Hồ Chí Minh là nơi diễn ra nhiều buổi biểu diễn nghệ thuật như nhạc kịch, opera, vũ đạo, và hát chói. Với sức chứa lớn và trang bị âm thanh, ánh sáng và trang phục hiện đại, nó tạo điều kiện tốt cho các buổi biểu diễn chất lượng cao.

Ngoài việc là một địa điểm biểu diễn, Nhà hát thành phố Hồ Chí Minh cũng là một công trình kiến trúc đẹp và thu hút du khách. Du khách có thể tham quan và chụp ảnh tại đây để lưu giữ những kỷ niệm đáng nhớ.

Nhà hát thành phố Hồ Chí Minh là một địa điểm văn hóa quan trọng, mang lại những trải nghiệm nghệ thuật tuyệt vời và là biểu tượng của sự phát triển văn hóa và nghệ thuật tại Hồ Chí Minh.', CAST(N'2023-07-14T00:00:00.000' AS DateTime), CAST(N'2023-07-14T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[PlaceDescription] ([Id], [PlaceId], [VoiceFile], [Name], [LanguageCode], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (11, 16, N'http://localhost:8002/etravel/live/hls/bennharongvi/playlist.m3u8', N'Công viên 23 tháng 9', N'vi        ', N'Công viên 23 tháng 9 là một công viên nằm ở trung tâm thành phố Hồ Chí Minh, Việt Nam. Đây là một trong những công viên lớn và phổ biến nhất ở thành phố này, được đặt tên để tưởng nhớ ngày Quốc khánh Việt Nam - ngày 23 tháng 9.

Công viên có vị trí thuận lợi, nằm gần nhiều khu vực mua sắm, nhà hàng và khách sạn. Nó cũng nằm gần các địa điểm du lịch nổi tiếng khác như Nhà hát Thành phố và Nhà hát Lớn.

Công viên 23 tháng 9 có không gian rộng rãi và xanh tươi, với các tán cây và cánh đồng cỏ. Nó là nơi lí tưởng để dạo chơi, tản bộ và thư giãn. Có nhiều khu vực ngồi nghỉ, cung cấp không gian yên tĩnh và bóng mát để du khách nghỉ ngơi.

Ngoài ra, công viên cũng có các tiện ích khác như hồ nước, sân chơi trẻ em, sân bóng rổ và sân cầu lông. Đây là nơi lý tưởng để cả gia đình và nhóm bạn tận hưởng các hoạt động thể thao và giải trí ngoài trời.

Công viên 23 tháng 9 là một điểm đến phổ biến cho cả người dân địa phương và du khách. Nơi này mang lại không chỉ một không gian xanh mát và thư giãn, mà còn là trung tâm của hoạt động vui chơi, nghỉ ngơi và tận hưởng cuộc sống đô thị.', CAST(N'2023-07-14T00:00:00.000' AS DateTime), CAST(N'2023-07-14T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[PlaceDescription] ([Id], [PlaceId], [VoiceFile], [Name], [LanguageCode], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (12, 17, N'http://localhost:8002/etravel/live/hls/bennharongvi/playlist.m3u8', N'Công viên Văn hóa Đầm Sen', N'vi        ', N'Công viên Văn hóa Đầm Sen là một công viên giải trí nổi tiếng ở thành phố Hồ Chí Minh, Việt Nam. Nằm cách trung tâm thành phố không xa, công viên này là một điểm đến phổ biến cho du khách và người dân địa phương.

Công viên Văn hóa Đầm Sen có không gian rộng rãi và xanh tươi, với hồ nước, cây cối và khu vườn. Đây là nơi lý tưởng để thư giãn, đi dạo và tận hưởng không gian tự nhiên.

Công viên này cũng có nhiều hoạt động giải trí và giáo dục, bao gồm các trò chơi cảnh quan, khu vui chơi trẻ em, bể bơi, rạp chiếu phim và các hoạt động ngoài trời khác. Du khách có thể tham gia trò chơi, thư giãn trên bãi biển nhân tạo hoặc tham gia các hoạt động thể thao như bóng đá, cầu lông và bóng chuyền.

Ngoài ra, công viên còn có nhà hàng, quán cà phê và khu vực picnic để khách du lịch có thể thưởng thức các món ăn đặc sản và nghỉ ngơi sau khi khám phá.

Công viên Văn hóa Đầm Sen là một điểm đến hấp dẫn cho cả gia đình và nhóm bạn, nơi bạn có thể tận hưởng các hoạt động vui chơi, giải trí và thư giãn trong không gian xanh mát.', CAST(N'2023-07-14T00:00:00.000' AS DateTime), CAST(N'2023-07-14T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[PlaceDescription] ([Id], [PlaceId], [VoiceFile], [Name], [LanguageCode], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (13, 18, N'http://localhost:8002/etravel/live/hls/bennharongvi/playlist.m3u8', N'Bảo tàng Mỹ thuật', N'vi        ', N'Bảo tàng Mỹ thuật ở Hồ Chí Minh là một điểm đến nổi tiếng cho những người yêu nghệ thuật và văn hóa. Bảo tàng này hiển thị và bảo quản nhiều tác phẩm nghệ thuật quý giá từ các nghệ sĩ Việt Nam và quốc tế.

Bảo tàng Mỹ thuật nằm ở trung tâm thành phố Hồ Chí Minh và có kiến trúc độc đáo. Nó bao gồm nhiều tầng lầu với không gian triển lãm rộng rãi và hiện đại. Các phòng trưng bày được thiết kế một cách cẩn thận để giới thiệu và trưng bày các tác phẩm nghệ thuật đa dạng trong các thể loại như hội họa, điêu khắc, ảnh nghệ thuật và nhiều hơn nữa.

Bảo tàng Mỹ thuật tổ chức các triển lãm tạm thời và triển lãm cố định, mang đến cho khách tham quan những trải nghiệm đa dạng và phong phú. Đây cũng là nơi tổ chức các sự kiện văn hóa, hội thảo và các hoạt động nghệ thuật khác.

Du khách thăm Bảo tàng Mỹ thuật có thể khám phá và tìm hiểu về lịch sử và phong cách nghệ thuật Việt Nam, cũng như trải nghiệm sự đa dạng và sáng tạo của các tác phẩm nghệ thuật hiện đại.', CAST(N'2023-07-14T00:00:00.000' AS DateTime), CAST(N'2023-07-14T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[PlaceDescription] ([Id], [PlaceId], [VoiceFile], [Name], [LanguageCode], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (14, 19, N'http://localhost:8002/etravel/live/hls/bennharongvi/playlist.m3u8', N'Công viên văn hóa Suối Tiên', N'vi        ', N'Nằm cách trung tâm Thành phố Hồ Chí Minh khoảng 19 km, Công viên Văn hóa Suối Tiên không chỉ là một công viên giải trí thú vị mà còn là một điểm đến văn hóa độc đáo với đầy đủ các hoạt động giải trí, nghệ thuật và giáo dục.Khi bạn bước vào Công viên Suối Tiên, bạn sẽ được chìm đắm trong một không gian với hình ảnh thiên nhiên hùng vĩ, các suối nước trong xanh và cây cỏ xanh mướt. Đây là không gian lý tưởng để gia đình và bạn bè thư giãn.Công viên nổi tiếng với hệ thống suối và đồng nước nước lớn. Bạn có thể tham gia các hoạt động như chèo thuyền kayak, cá cảnh và thậm chí là thăm khu vực cá sấu độc đáo.Công viên Suối Tiên không chỉ là nơi giải trí mà còn là bảo tàng văn hóa dân dụ với những triển lãm phản ánh đời sống, nghệ thuật, và truyền thống văn hóa của người Việt. Công viên có nhiều trò chơi giải trí thú vị và phức tạp như Vương quốc đồng hồ cát, Cánh đồng hoa tulip, và Khu vực Công viên nước với nhiều trò chơi nước hấp dẫn. Hãy khám phá thế giới ẩm thực đa dạng tại Công viên Suối Tiên với nhiều nhà hàng và quán ăn phục vụ các món ăn truyền thống Việt Nam và quốc tế. Công viên thường xuyên tổ chức các sự kiện và triển lãm nghệ thuật đặc sắc, tạo ra không khí sôi động và độc đáo cho du khách. Với các chương trình giáo dục và giải đố, Công viên Suối Tiên còn là điểm đến phổ biến cho các chuyến trường học.Hãy chuẩn bị cho một hành trình đầy năng lượng và trải nghiệm tuyệt vời tại Công viên Văn hóa Suối Tiên, nơi mang đến cho bạn một kết hợp hoàn hảo giữa văn hóa, giải trí và thiên nhiên. Chúc quý vị và các bạn có những khoảnh khắc truyền kỳ tại Suối Tiên!', CAST(N'2023-07-14T00:00:00.000' AS DateTime), CAST(N'2023-07-14T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[PlaceDescription] ([Id], [PlaceId], [VoiceFile], [Name], [LanguageCode], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (15, 20, N'http://localhost:8002/etravel/live/hls/bennharongvi/playlist.m3u8', N'Bưu điện Thành phố Hồ Chí Minh', N'vi        ', N'Bưu điện Thành phố Hồ Chí Minh, hay còn được biết đến là Bưu điện Sài Gòn, là một trong những địa điểm quan trọng và lâu đời tại Thành phố Hồ Chí Minh, Việt Nam. Được xây dựng vào năm 1886, bưu điện này mang đến không gian kiến trúc độc đáo, kết hợp giữa phong cách châu Âu và châu Á. Với kiến trúc nổi bật, Bưu điện Thành phố Hồ Chí Minh thu hút nhiều du khách đến thăm và chiêm ngưỡng. Điểm nhấn của tòa nhà là tháp đồng hồ cao cùng với những đường nét trang trí tinh tế. Bên trong, bạn có thể tìm thấy một không gian trưng bày về lịch sử bưu chính và các dịch vụ bưu điện hiện đại.', CAST(N'2023-07-14T00:00:00.000' AS DateTime), CAST(N'2023-07-14T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[PlaceDescription] ([Id], [PlaceId], [VoiceFile], [Name], [LanguageCode], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (16, 21, N'http://localhost:8002/etravel/live/hls/bennharongvi/playlist.m3u8', N'Phố đi bộ Nguyễn Huệ', N'vi        ', N'Phố đi bộ Nguyễn Huệ là một trong những địa điểm trung tâm và sầm uất nhất tại Thành phố Hồ Chí Minh, Việt Nam. Được mở vào năm 2015, khu vực này trải dài từ Quảng trường Đông Khai đến Dinh Thống Nhất, tạo nên một khu vực giải trí và mua sắm hấp dẫn.
Phố đi bộ Nguyễn Huệ được trang trí với nhiều đèn LED màu sắc và có nhiều tiện ích cho người dân và du khách. Dọc theo con đường, bạn sẽ tìm thấy các cửa hàng, nhà hàng, quán bar và các hoạt động giải trí đa dạng. Nơi đây thường tổ chức các sự kiện lớn, triển lãm nghệ thuật và các hoạt động văn hóa thu hút đông đảo khách tham quan.', CAST(N'2023-07-14T00:00:00.000' AS DateTime), CAST(N'2023-07-14T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[PlaceDescription] ([Id], [PlaceId], [VoiceFile], [Name], [LanguageCode], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (17, 22, N'http://localhost:8002/etravel/live/hls/bennharongvi/playlist.m3u8', N'Cầu Ánh Sao', N'vi        ', N'Cầu Ánh Sao, hay còn được gọi là Cầu Rồng, là một trong những công trình kiến trúc nổi tiếng tại thành phố Hồ Chí Minh, Việt Nam. Cây cầu này nằm trên dòng sông Sài Gòn và nổi tiếng với kiến trúc độc đáo, với hàng loạt đèn LED tạo ra hiệu ứng ánh sáng đa dạng vào ban đêm.

Cầu Ánh Sao có thiết kế đặc biệt với 3 cột tháp cao và các đường nét mềm mại, tạo nên vẻ đẹp hiện đại và lôi cuốn. Ban đêm, cây cầu được thắp sáng bởi hàng ngàn đèn LED màu sắc, tạo nên một phong cảnh lung linh và lãng mạn. Đây thường là điểm đến lý tưởng cho các cặp đôi muốn tận hưởng không gian lãng mạn và chụp ảnh đẹp.

Cầu Ánh Sao cũng là nơi thường xuyên tổ chức các sự kiện văn hóa và nghệ thuật, và có quầy bar trên cầu nơi bạn có thể thư giãn và thưởng thức đồ uống trong không gian phong cách.', CAST(N'2023-07-14T00:00:00.000' AS DateTime), CAST(N'2023-07-14T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[PlaceDescription] ([Id], [PlaceId], [VoiceFile], [Name], [LanguageCode], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (18, 23, N'http://localhost:8002/etravel/live/hls/bennharongvi/playlist.m3u8', N'Chùa Bửu Long', N'vi        ', N'Chùa Bửu Long là một ngôi chùa Phật giáo nằm ở thành phố Hồ Chí Minh, Việt Nam. Đây là một trong những ngôi chùa quan trọng và yên bình tại khu vực này, nơi mọi người đến để tìm kiếm sự tĩnh lặng và tôn vinh tinh thần Phật giáo.

Chùa Bửu Long được xây dựng vào những năm 1940 và nằm bên bờ hồ Bửu Long, tạo nên một cảnh quan hùng vĩ với cây cối xanh mướt và nước hồ trong lành. Tại chùa, bạn có thể tham quan các kiến trúc đẹp mắt và những tượng Phật được tạo hình tinh xảo. Không chỉ là nơi tâm linh, chùa Bửu Long còn có một số hoạt động tôn giáo thường xuyên, và đây cũng là nơi bạn có thể học về lịch sử và triết học Phật giáo.

Chùa Bửu Long thường thu hút đông đảo du khách và người hành hương đến để tìm kiếm sự bình yên và tinh thần động viên. Điều này làm cho nó trở thành một điểm đến yên bình để thoát khỏi sự nhiễu động của cuộc sống đô thị và tìm kiếm sự kết nối với tâm hồn và thiên nhiên.', CAST(N'2023-07-14T00:00:00.000' AS DateTime), CAST(N'2023-07-14T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[PlaceDescription] ([Id], [PlaceId], [VoiceFile], [Name], [LanguageCode], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (19, 24, N'http://localhost:8002/etravel/live/hls/bennharongvi/playlist.m3u8', N'Địa đạo Củ Chi', N'vi        ', N'Khu du lịch địa đạo Củ Chi là một điểm đến lịch sử quan trọng tại thành phố Hồ Chí Minh, Việt Nam, nơi du khách có thể khám phá các hầm địa đạo từ thời kỳ Chiến tranh Việt Nam. Đây là một trong những di sản lịch sử quý báu của Việt Nam và thế giới.

Những hầm địa đạo ở Củ Chi đã đóng vai trò quan trọng trong cuộc chiến tranh, được sử dụng bởi người dân và quân đội Việt Cộng như một mạng lưới phòng thủ và giao thông dưới lòng đất. Khu du lịch này giúp du khách hiểu sâu hơn về cuộc sống và chiến đấu của người dân Việt Nam trong thời kỳ chiến tranh.

Trong tour du lịch tại Củ Chi, du khách có cơ hội khám phá các hầm địa đạo, thấy cách cuộc sống được tổ chức dưới lòng đất với bệnh viện, phòng họp, và cảm nhận khó khăn của việc sống trong điều kiện này. Du khách cũng có thể thử bắn súng và trải nghiệm các hoạt động liên quan đến cuộc chiến tranh.

Khu du lịch địa đạo Củ Chi không chỉ là một cơ hội để học hỏi về lịch sử, mà còn là một kính đảng để tôn vinh tinh thần kiên trì và sự hy sinh của những người lính và dân thường trong thời kỳ chiến tranh.', CAST(N'2023-07-14T00:00:00.000' AS DateTime), CAST(N'2023-07-14T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[PlaceDescription] ([Id], [PlaceId], [VoiceFile], [Name], [LanguageCode], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (20, 27, N'http://localhost:8002/etravel/live/hls/bennharongvi/playlist.m3u8', N'Thảo Cầm Viên', N'vi        ', N'Thảo Cầm Viên, còn được gọi là Vườn Bách Thú Sài Gòn, là một công viên và vườn thú lớn tại thành phố Hồ Chí Minh, Việt Nam. Đây là một trong những điểm đến phổ biến và thú vị ở thành phố này, thu hút nhiều du khách cả trong và ngoài nước.

Thảo Cầm Viên bao gồm một khu vườn xanh mát với hồ cảnh quan và các khu vực động thực vật đa dạng. Điều đặc biệt là công viên có một vườn hoa nhiệt đới, nơi bạn có thể thả mình vào không gian yên bình và thư giãn.

Ngoài ra, Thảo Cầm Viên cũng có một vườn thú với hơn 1,000 loài động vật từ khắp nơi trên thế giới. Du khách có cơ hội thấy thú vật hoang dã và học hỏi về sự đa dạng của thế giới tự nhiên. Các loài động vật ở đây được chăm sóc tốt, và việc du lịch tại Thảo Cầm Viên cung cấp một trải nghiệm học hỏi và giải trí thú vị.

Ngoài ra, công viên còn có nhiều tiện ích khác như nhà hàng, quán café, và khu vui chơi cho trẻ em, tạo điều kiện cho một ngày thư giãn tại tự nhiên giữa lòng thành phố.', CAST(N'2023-07-14T00:00:00.000' AS DateTime), CAST(N'2023-07-14T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[PlaceDescription] ([Id], [PlaceId], [VoiceFile], [Name], [LanguageCode], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (21, 28, N'http://localhost:8002/etravel/live/hls/bennharongvi/playlist.m3u8', N'Đại Học FPT HCM', N'vi        ', N'Trường Đại học FPT HCM tọa lạc tại đường D1, Khu Công Nghệ Cao, Quận 9 – đây là một trong những vị trí “đắc địa” của khu vực, tập trung các công ty, doanh nghiệp hàng đầu như: FPT Software, Intel (USA), Nidec (Japan)… và các trung tâm nghiên cứu khoa học, kỹ thuật hiện đại.', CAST(N'2023-07-14T00:00:00.000' AS DateTime), CAST(N'2023-07-14T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[PlaceDescription] ([Id], [PlaceId], [VoiceFile], [Name], [LanguageCode], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (22, 3, N'http://localhost:8002/etravel/live/hls/sapajp/playlist.m3u8', N'サイゴン大教会', N'ja        ', N'ドゥク・バ寺院は、ベトナムのホーチミン市にある有名な建築物です。19世紀末に建設され、ホーチミン市の注目すべき文化遺産の一つです。

ドゥク・バ寺院は、ホーチミン市の1区に位置するドン・コイ通りにあり、サイゴン川からわずか数歩の場所にあります。それはベトナムで最も美しいフランスの建築物の一つであり、フランスの植民地時代に建設されました。ドゥク・バ寺院はゴシックとロマンの建築スタイルを組み合わせており、独特のスタイルを作り出しています。

この建物は1863年に建設が始まり、1880年に完成しました。ドゥク・バ寺院は、高い柱とアーチを持つ壮大な建築様式を持っており、特別にフランスから輸入された赤レンガで作られています。それには高い鐘楼が2つあり、中央には中央鐘楼があり、都市の空に目を引く美しい絵画を作り出しています。

ドゥク・バ寺院の内部には、美しい芸術作品がたくさんあります。絵画、キリスト像、ステンドグラスなどがあります。寺院には広大な敷地があり、緑豊かな庭園があり、リラックスして楽しむことができる静かな空間があります。

ドゥク・バ寺院は、宗教的な重要な場所だけでなく、観光客に人気のある観光地でもあります。訪問者は寺院内部を見学し、独特な建築や歴史、文化について学ぶことができます。また、ドゥク・バ寺院からは、ホーチミン市中心部の他の観光名所を簡単に散策することもできます。

ドゥク・バ寺院は、ホーチミン市やベトナムの重要な文化的・建築的な象徴です。その古典的な美しさと名声により、多くの観光客が毎年訪れ、探検しています。', CAST(N'2023-07-14T00:00:00.000' AS DateTime), CAST(N'2023-07-14T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[PlaceDescription] ([Id], [PlaceId], [VoiceFile], [Name], [LanguageCode], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (23, 6, N'http://localhost:8002/etravel/live/hls/sapajp/playlist.m3u8', N'タオダン公園', N'ja        ', N'タオダン公園は、ベトナムのホーチミン市にある有名で人気のある公園です。広大な敷地と緑豊かな空間が特徴で、自然を楽しむのに最適な場所です。

タオダン公園は、公園内にある寺院にちなんで名付けられました。タオダン寺院は重要な仏教寺院であり、多くの地元住民や観光客が訪れます。公園は寺院の周りに建設され、街の仏教共同体の交流と活動の場となっています。

タオダン公園には多くの緑の木々や美しい花畑があり、清々しい空間を作り出しています。この公園は地元の人々や観光客にとって人気があり、特に朝や夕方には運動をしたり、凧揚げを楽しんだり、ただ単に一日の疲れを癒すために訪れます。

公園には子供用遊び場や屋外フィットネスエリア、飲食店もあります。訪問者はヨガや太極拳、プロのトレーナーによる他のエクササイズクラスなどの活動に参加することもできます。

さらに、タオダン公園はホーチミン市の他の観光スポットにも近いです。公園を訪れた後は、市内の他の観光地や名所、例えば市庁舎、美術館、30/4公園などを訪れることができます。

涼しい緑豊かな空間と楽しいアクティビティが楽しめるタオダン公園は、ホーチミン市の中心部で自然を楽しむための理想的な場所です。', CAST(N'2023-07-14T00:00:00.000' AS DateTime), CAST(N'2023-07-14T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[PlaceDescription] ([Id], [PlaceId], [VoiceFile], [Name], [LanguageCode], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (24, 7, N'http://localhost:8002/etravel/live/hls/sapajp/playlist.m3u8', N'戦争証跡博物館', N'ja        ', N'戦争証跡博物館は、ベトナムのホーチミン市にある重要な歴史的な観光スポットです。この博物館は、ベトナム戦争およびその結果に関連する展示品、写真、資料を収集・展示しています。

戦争証跡博物館は、ホーチミン市の3区に位置しており、市中心部から近い場所にあります。1975年に設立され、この博物館はベトナム戦争の歴史を現在および将来の世代に伝えることを目的としています。

戦争証跡博物館では、訪問者は戦闘機、戦車、砲兵、軍事装備などの注目すべき展示品が展示されている展示室を見学することができます。さらに、この博物館ではベトナム戦争およびその影響についての絵画、写真、資料なども展示されています。

展示の他に、戦争証跡博物館では、歴史に詳しいスタッフによる教育プログラムやガイドツアーも提供されています。訪問者は、ベトナム戦争の原因、経過、および結果についてより詳しく理解することができます。

戦争証跡博物館は、ベトナムの歴史を探求し理解するための重要な場所です。この博物館は、ベトナム戦争の多様な側面とその国家や人々への影響について、訪問者により深い洞察を与えるでしょう。', CAST(N'2023-07-14T00:00:00.000' AS DateTime), CAST(N'2023-07-14T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[PlaceDescription] ([Id], [PlaceId], [VoiceFile], [Name], [LanguageCode], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (25, 8, N'http://localhost:8002/etravel/live/hls/sapajp/playlist.m3u8', N'ベンタイン市場', N'ja        ', N'ベンタイン市場は、ホーチミン市、ベトナムで最も有名で賑やかな伝統的な市場の一つです。19世紀に建設され、ホーチミン市で地元の特産品や文化を体験したい観光客にとって見逃せないスポットです。

ベンタイン市場は、1区の中心部に位置し、繁華街の交差点に位置しています。広大な敷地には様々なエリアがあり、食品、衣料品、化粧品、電化製品、そして様々な伝統工芸品など、さまざまな商品が扱われています。

ベンタイン市場はただのショッピングの場所だけでなく、ベトナムの文化や食事を体験する場所でもあります。観光客は、フォーやバインセオ、ネムヌオンなどの美味しいストリートフードを楽しむことができます。また、市場にはフルーツや生花、そしてお土産品の店もあり、観光客はお買い物や思い出の品を購入することができます。

ベンタイン市場は地元の人々と観光客の集まる場所なので、非常に活気があり賑やかです。市場のカラフルな雰囲気を体験し、交渉や値切りの音を聞きながら、都会の生活の活気を感じることができます。

ベンタイン市場はホーチミン市でのショッピングと文化体験の特別な場所です。これは、地元の市場の多様性と活気を探求したい観光客にとって魅力的な体験を提供します。', CAST(N'2023-07-14T00:00:00.000' AS DateTime), CAST(N'2023-07-14T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[PlaceDescription] ([Id], [PlaceId], [VoiceFile], [Name], [LanguageCode], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (26, 9, N'http://localhost:8002/etravel/live/hls/sapajp/playlist.m3u8', N'ブイビエン通り', N'ja        ', N'ブイヴィエン通りは、ホーチミン市、ベトナムの有名な賑やかなスポットの一つです。夜の生活とエンターテイメントの中心地として知られており、バー、レストラン、ホテル、そしてエンターテイメント活動が集まる場所です。

ブイヴィエン通りは、市内中心部の1区に位置しています。夜になると特に活気に満ちたエリアで、外国人観光客や地元の人々に人気の目的地です。

ブイヴィエン通りでは、国際料理やベトナムの特産品を提供するさまざまなレストランがあります。また、生演奏の音楽や屋外スペースがあるバーとカフェも人気です。美味しい食べ物を楽しんだり、ライブパフォーマンスに参加したり、楽しい雰囲気を味わうことができます。

さらに、ブイヴィエン通りには、お土産品や衣類、アクセサリーなどさまざまな商品を取り扱うショップも多くあります。観光客はお買い物をしたり、旅行の思い出を保持したりすることができます。

ブイヴィエン通りは、美食を楽しんだり、夜の生活を体験したり、ホーチミン市の活気あるエンターテイメントスペースを満喫したい人々にとって素晴らしい目的地です。', CAST(N'2023-07-14T00:00:00.000' AS DateTime), CAST(N'2023-07-14T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[PlaceDescription] ([Id], [PlaceId], [VoiceFile], [Name], [LanguageCode], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (27, 10, N'http://localhost:8002/etravel/live/hls/sapajp/playlist.m3u8', N'独立記念館', N'ja        ', N'独立宮殿（Độc Lập宮殿）、または独立宮（Dinh Độc Lập）は、ベトナムのホーチミン市にある重要な歴史的建造物です。1962年から1966年にかけて建設され、ベトナムの歴史と政治において重要な役割を果たしました。

独立宮殿は、建築家ノー・ヴィエット・トゥによって設計され、モダンなヨーロッパの建築スタイルを持っています。この建物は、フランスの建築の特徴とベトナムの伝統的な要素が融合したものです。

独立宮殿は、ベトナムの重要な歴史的イベントが開催された場所であり、1973年のパリ協定の締結など、ベトナム戦争の終結に関連する出来事が行われました。現在では、独立宮殿は独立宮博物館として利用され、ベトナムの戦争と発展に関する歴史的な展示物や資料が展示されています。

独立宮殿の内部では、訪問者はベトナムの歴史に関連する重要な展示物、写真、資料を展示している展示室を見学することができます。これにより、観光客はベトナムの独立への闘いと戦後の発展についてより深く理解することができます。

独立宮殿は、ベトナムの歴史と文化を理解するための重要な場所です。国の重要な遺産とイメージを探求したい観光客にとって人気のある目的地です。', CAST(N'2023-07-14T00:00:00.000' AS DateTime), CAST(N'2023-07-14T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[PlaceDescription] ([Id], [PlaceId], [VoiceFile], [Name], [LanguageCode], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (28, 11, N'http://localhost:8002/etravel/live/hls/sapajp/playlist.m3u8', N'ホーチミン市歴史博物館', N'ja        ', N'ホーチミン市歴史博物館は、ベトナムのホーチミン市にある重要な文化施設です。この場所では、古代から現代までの都市の歴史と文化について紹介されています。

博物館には、市の発展と民族文化に関する多くの展示品、資料、記録が展示されています。訪問者は、絵画、ジオラマ、古代の遺物などが展示された展示室を探索し、ガイドから重要な歴史的遺産についての詳細な説明を聞くことができます。

ホーチミン市歴史博物館では、一時的な展示や文化教育活動も行われています。ここでは、ホーチミン市の過去と現在についてより深く理解することができます。', CAST(N'2023-07-14T00:00:00.000' AS DateTime), CAST(N'2023-07-14T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[PlaceDescription] ([Id], [PlaceId], [VoiceFile], [Name], [LanguageCode], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (29, 12, N'http://localhost:8002/etravel/live/hls/sapajp/playlist.m3u8', N'ナロン埠頭 - ホーチミン博物館', N'ja        ', N'ベンナーロンは、ホーチミン市、ベトナムにおける重要な歴史的な場所であり、ホー・チ・ミン主席の長い間の住居でもありました。現在、それはホー・チ・ミン博物館として改装され、ベトナムの偉大な指導者を記念するために使用されています。

ベンナーロンは、ホーチミン市の4区に位置しており、市中心部からはそれほど遠くありません。それは独特な建築スタイルを持つ古い建物で、ベトナム南部の特徴を備えています。ベンナーロンの内部では、訪問者は展示室を探索し、ホー・チ・ミン主席の生涯や業績に関連する展示品、写真、資料を見ることができます。

ベンナーロンのホー・チ・ミン博物館は、ホー・チ・ミンの人生と功績に深い洞察を提供します。訪問者は、展示や講演を通じて、ホー・チ・ミンの生涯、革命活動、思想について学ぶことができます。

さらに、ベンナーロンには静かでリラックスできる緑豊かな庭園や、桟橋に停泊する伝統的な船もあります。

ホー・チ・ミン博物館は、ベトナムの歴史と文化に興味を持つ人々にとって理想的な目的地であり、特にホー・チ・ミンの生涯と業績に関心がある方にとって魅力的です。', CAST(N'2023-07-14T00:00:00.000' AS DateTime), CAST(N'2023-07-14T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[PlaceDescription] ([Id], [PlaceId], [VoiceFile], [Name], [LanguageCode], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (30, 14, N'http://localhost:8002/etravel/live/hls/sapajp/playlist.m3u8', N'Giac Lam パゴダ', N'ja        ', N'Chùa Giác Lâmは、ベトナムのホーチミン市にある古い寺院です。これはこの都市で最も古く、最も大きな寺院の一つであり、特別な歴史的および霊的価値を持っています。

Chùa Giác Lâmは18世紀に建てられた寺院で、禅宗に属する重要な寺院です。寺院の建築はインドシナとチャンパのスタイルに基づいており、厳粛で平和な雰囲気を醸し出しています。

Chùa Giác Lâmの敷地内では、多くの特徴的な建物や構造物を探索することができます。それには、祠堂、寺院、鐘楼、そして大きな仏塔などが含まれます。また、寺院にはいくつかの仏像や他の注目すべき美術作品もあります。

Chùa Giác Lâmは仏教徒や観光客が祈りを捧げ、仏教の宗教と教義について学ぶための聖なる場所でもあります。また、多くの国際観光客も訪れ、ベトナムの文化や伝統的な建築を探求し体験したいと思っています。

Chùa Giác Lâmは、ベトナムの独特な文化、宗教、および建築を探求し、仏教の伝統と地域の文化の調和について学びたい人々にとって魅力的な目的地です。', CAST(N'2023-07-14T00:00:00.000' AS DateTime), CAST(N'2023-07-14T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[PlaceDescription] ([Id], [PlaceId], [VoiceFile], [Name], [LanguageCode], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (31, 15, N'http://localhost:8002/etravel/live/hls/sapajp/playlist.m3u8', N'ホーチミン市劇場', N'ja        ', N'ホーチミン市劇場は、ホーチミン市、ベトナムにある有名な文化的なランドマークであり、重要な観光スポットです。その独特な建築と美しさで、東南アジアで最大かつ美しい劇場の一つです。

ホーチミン市劇場は1890年代に建設され、国家統一時代のフランスの建築スタイルの特徴を持っています。高級な建材で建てられ、細部まで洗練されたデザインで装飾されており、壮大で上品な雰囲気を作り出しています。

ホーチミン市劇場は、ミュージカル、オペラ、ダンス、演奏など、多くの芸術公演が行われる場所です。大きな収容力とモダンな音響、照明、衣装設備が備わっており、高品質な公演に最適な環境を提供しています。

劇場としてだけでなく、ホーチミン市劇場は美しい建築物でもあり、観光客を魅了しています。訪問者はここで観光を楽しんだり、思い出の写真を撮ったりすることができます。

ホーチミン市劇場は、重要な文化的なスポットであり、素晴らしい芸術体験を提供し、ホーチミン市における文化と芸術の発展の象徴です。', CAST(N'2023-07-14T00:00:00.000' AS DateTime), CAST(N'2023-07-14T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[PlaceDescription] ([Id], [PlaceId], [VoiceFile], [Name], [LanguageCode], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (32, 16, N'http://localhost:8002/etravel/live/hls/sapajp/playlist.m3u8', N'9月23日公園', N'ja        ', N'9月23日公園は、ベトナムのホーチミン市に位置する公園です。これは市内で最も大きく、人気のある公園の一つであり、ベトナムの独立記念日である9月23日にちなんで名付けられました。

公園は便利な立地にあり、多くのショッピングエリア、レストラン、ホテルに近接しています。また、市内の他の有名な観光地である市庁舎広場やオペラハウスにも近いです。

9月23日公園は広々とした緑豊かな空間で、木々や草原が広がっています。散歩やリラックスに最適な場所です。多くのベンチが設置されており、静かで涼しい場所で休息することができます。

さらに、公園には湖や子供用遊び場、バスケットボールコート、バドミントンコートなどの施設もあります。これは家族や友人グループが屋外でスポーツや娯楽活動を楽しむのに理想的な場所です。

9月23日公園は地元の人々や観光客の両方に人気のある目的地です。ここはただ緑豊かでリラックスできる場所だけでなく、都市の生活を楽しむための娯楽やレクリエーションの中心地でもあります。', CAST(N'2023-07-14T00:00:00.000' AS DateTime), CAST(N'2023-07-14T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[PlaceDescription] ([Id], [PlaceId], [VoiceFile], [Name], [LanguageCode], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (33, 17, N'http://localhost:8002/etravel/live/hls/sapajp/playlist.m3u8', N'ダムセン文化公園', N'ja        ', N'ダムセン文化公園は、ベトナムのホーチミン市にある有名なレジャーパークです。市内中心部からはそれほど遠くない場所に位置しており、観光客や地元の人々にとって人気のある目的地です。

ダムセン文化公園は広々とした緑豊かなスペースを持ち、湖、樹木、庭園があります。ここはリラックスしたり、散歩したり、自然環境を楽しむのに最適な場所です。

この公園には、ランドスケープゲーム、子供向け遊び場、プール、映画館、その他の屋外活動など、多くのエンターテイメントや教育活動があります。観光客はゲームに参加したり、人工ビーチでリラックスしたり、サッカーやバドミントン、バレーボールなどのスポーツ活動に参加したりすることができます。

さらに、公園内にはレストラン、カフェ、ピクニックエリアもあり、観光客は特産品を味わったり、探索後に休憩したりすることができます。

ダムセン文化公園は家族や友人グループのための魅力的な目的地であり、涼しい緑の中で遊び、エンターテイメントを楽しみ、リラックスすることができる場所です。', CAST(N'2023-07-14T00:00:00.000' AS DateTime), CAST(N'2023-07-14T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[PlaceDescription] ([Id], [PlaceId], [VoiceFile], [Name], [LanguageCode], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (34, 18, N'http://localhost:8002/etravel/live/hls/sapajp/playlist.m3u8', N'ホーチミン市美術館', N'ja        ', N'ホーチミン市美術館は、芸術や文化を愛する人々のための有名な観光地です。この美術館では、ベトナムおよび国際の多くの貴重な芸術作品が展示および保存されています。

ホーチミン市美術館は市内中心部に位置し、独特な建築をしています。広々とした展示スペースとモダンなデザインの多層階からなります。展示室は慎重に設計され、絵画、彫刻、アート写真など、さまざまなジャンルの芸術作品を紹介・展示しています。

美術館では一時的な展示や常設展示を開催し、訪問者に多様で充実した体験を提供しています。また、文化イベント、講演会、および他の芸術活動も行われています。

美術館を訪れる観光客は、ベトナムの芸術の歴史とスタイルを探求し、現代美術の多様性と創造性を体験することができます。', CAST(N'2023-07-14T00:00:00.000' AS DateTime), CAST(N'2023-07-14T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[PlaceDescription] ([Id], [PlaceId], [VoiceFile], [Name], [LanguageCode], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (35, 19, N'http://localhost:8002/etravel/live/hls/sapajp/playlist.m3u8', N'スオイティエン文化公園', N'ja        ', N'ホーチミン市内から約19km離れた所に位置するスオイティエン文化公園は、魅力的なレジャーパークだけでなく、エンターテイメント、アート、教育が充実したユニークな文化スポットです。スオイティエンパークに足を踏み入れると、壮大な自然の風景、透明な水の流れ、そして緑豊かな植物に囲まれる空間に心を奪われます。ここは家族や友達とリラックスする理想的な場所です。公園は大規模な水域と大きな湖のシステムで有名です。カヌーやカヤック、魚観察など、様々なアクティビティに参加できます。さらに、独自のワニエリアも見学することができます。スオイティエンパークはエンターテイメントだけでなく、ベトナムの生活、芸術、文化の展示があるフォークカルチャーミュージアムでもあります。公園内には時計砂の王国、チューリップの畑、そしてウォーターパークエリアなど、興奮するようなエンターテイメントも豊富です。多様な料理文化を楽しむために、スオイティエンパークでは様々なレストランや伝統的なベトナム料理、国際料理を提供する飲食店があります。公園は定期的に特別なイベントや芸術展を開催し、訪れる人々に独自で賑やかでユニークな雰囲気を提供します。また、学校の遠足にも人気のある教育プログラムも実施されています。スオイティエン文化公園でエネルギッシュで素晴らしい体験の準備をしましょう。ここは文化、エンターテイメント、自然の完璧な組み合わせを提供する場所であり、皆さんには素晴らしい体験が待っています。スオイティエンで素晴らしい瞬間をお楽しみください！', CAST(N'2023-07-14T00:00:00.000' AS DateTime), CAST(N'2023-07-14T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[PlaceDescription] ([Id], [PlaceId], [VoiceFile], [Name], [LanguageCode], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (36, 20, N'http://localhost:8002/etravel/live/hls/sapajp/playlist.m3u8', N'ホーチミン市郵便局 ', N'ja        ', N'ホーチミン市郵便局、またはサイゴン郵便局としても知られているこの郵便局は、ベトナムのホーチミン市における重要な歴史的建造物の一つです。1886年に建設され、ヨーロッパとアジアの建築様式が融合された独自の建築様式を持っています。
	 この郵便局はその特徴的な建築で多くの観光客を引き寄せ、高い時計塔と精巧な装飾が目を引きます。建物内部には郵便の歴史や現代の郵便サービスに関する展示があります。', CAST(N'2023-07-14T00:00:00.000' AS DateTime), CAST(N'2023-07-14T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[PlaceDescription] ([Id], [PlaceId], [VoiceFile], [Name], [LanguageCode], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (37, 21, N'http://localhost:8002/etravel/live/hls/sapajp/playlist.m3u8', N'Nguyen Hue ペデストリアンストリート', N'ja        ', N'グエンフエ歩行者道路（Nguyen Hue Pedestrian Street）は、ベトナムのホーチミン市で最も中心的で賑やかなエリアの一つです。2015年に開通し、このエリアはドンカイ広場から再統一宮まで広がり、魅力的なエンターテイメントとショッピングのスポットを提供しています。
グエンフエ歩行者道路は多彩なLEDライトで飾られ、市民や観光客に様々な利便性を提供しています。道路沿いには多くの店舗、レストラン、バー、様々なエンターテイメント活動が点在しています。ここでは大規模なイベント、アート展、文化的な活動が頻繁に開催され、多くの観光客を魅了しています。', CAST(N'2023-07-14T00:00:00.000' AS DateTime), CAST(N'2023-07-14T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[PlaceDescription] ([Id], [PlaceId], [VoiceFile], [Name], [LanguageCode], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (38, 22, N'http://localhost:8002/etravel/live/hls/sapajp/playlist.m3u8', N'アンサオ橋', N'ja        ', N'アンサオ橋、またはドラゴン橋とも呼ばれるアンサオ橋は、ベトナム、ホーチミン市で有名な建築物の一つです。この橋はサイゴン川に架かっており、ユニークな建築構造で知られており、夜間にはLEDライトがさまざまな光の効果を創り出します。

アンサオ橋は3つの高い塔と滑らかなデザインで特徴的で、モダンで魅力的な外観を持っています。夜間、橋は数千個のカラフルなLEDライトで照らされ、華やかでロマンチックな景色を作り出します。これは美しい写真を撮りたいカップルにとって理想的な場所です。

アンサオ橋は文化イベントや芸術イベントが頻繁に開催される場所でもあり、橋の上にはスタイリッシュなバーもあり、リラックスして飲み物を楽しむことができます。', CAST(N'2023-07-14T00:00:00.000' AS DateTime), CAST(N'2023-07-14T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[PlaceDescription] ([Id], [PlaceId], [VoiceFile], [Name], [LanguageCode], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (39, 23, N'http://localhost:8002/etravel/live/hls/sapajp/playlist.m3u8', N'ブーロン寺', N'ja        ', N'ブーロン寺は、ベトナム、ホーチミン市にある仏教寺院です。これはこの地域で重要な静寂な寺院の一つであり、人々はここに来て精神的な平穏を見つけ、仏教の精神を尊重します。

ブーロン寺は1940年代に建設され、ブーロン湖のほとりに位置しており、美しい緑と清らかな湖水の壮大な景色を創り出しています。寺院では美しい建築物や精巧に彫刻された仏像を見学することができます。これは精神的な場所だけでなく、ブーロン寺は宗教的な活動が頻繁に行われ、仏教の歴史と哲学を学ぶ場所でもあります。

ブーロン寺はしばしば多くの観光客や巡礼者を引き寄せ、精神的な平和と鼓舞を求めて訪れます。これは都市生活の喧騒から逃れ、魂と自然とのつながりを求める静かな避難所として、静寂な目的地となっています。', CAST(N'2023-07-14T00:00:00.000' AS DateTime), CAST(N'2023-07-14T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[PlaceDescription] ([Id], [PlaceId], [VoiceFile], [Name], [LanguageCode], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (40, 24, N'http://localhost:8002/etravel/live/hls/sapajp/playlist.m3u8', N'クチトンネル', N'ja        ', N'クチトンネルは、ベトナム、ホーチミン市に位置する重要な歴史的な観光スポットで、訪問者はベトナム戦争時代の地下トンネルを探索する機会があります。これはベトナムと世界の貴重な歴史遺産の一つです。

クチトンネルは戦争中に重要な役割を果たし、ベトコン（ベトナム解放民族戦線）と一般市民によって地下の防御と交通ネットワークとして使用されました。この観光地は、ベトナムの戦争時代の人々の生活と戦闘について深く理解するのに役立ちます。

クチトンネルのツアーでは、訪問者は地下トンネルを探索し、地下の病院、会議室などの生活条件を体験できます。また、射撃を試す機会や戦争に関連するさまざまなアクティビティも楽しむことができます。

クチトンネル観光地は歴史を学ぶ機会だけでなく、戦争時代の兵士や一般市民の忍耐と犠牲精神を称える場所でもあります。', CAST(N'2023-07-14T00:00:00.000' AS DateTime), CAST(N'2023-07-14T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[PlaceDescription] ([Id], [PlaceId], [VoiceFile], [Name], [LanguageCode], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (41, 27, N'http://localhost:8002/etravel/live/hls/sapajp/playlist.m3u8', N'サイゴン動植物園', N'ja        ', N'サイゴン動植物園、またの名をタオカムビエンは、ベトナムのホーチミン市に位置する大規模な公園兼動物園です。この場所は、市内外から多くの訪問者を惹きつける人気のある観光スポットであり、楽しい冒険の場所でもあります。

サイゴン動植物園は、美しい景色の庭園エリアや多様な植物エリアを含む広大な敷地にあります。特筆すべきは、熱帯植物園で、ここでは静かなひとときを過ごしたりリラックスしたりすることができます。

さらに、サイゴン動植物園には、世界中から来た1,000以上の種類の動物が飼育されている動物園があります。訪問者は野生動物を見たり、自然界の多様性について学んだりする機会があります。ここの動物たちはよくケアされており、サイゴン動植物園での旅行は楽しみながら学ぶことができます。

さらに、公園にはレストラン、カフェ、子供用の遊び場などの施設も豊富にあり、都市の中で自然環境を楽しむための理想的な場所です。', CAST(N'2023-07-14T00:00:00.000' AS DateTime), CAST(N'2023-07-14T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[PlaceDescription] ([Id], [PlaceId], [VoiceFile], [Name], [LanguageCode], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (42, 28, N'http://localhost:8002/etravel/live/hls/sapajp/playlist.m3u8', N'FPT大学ホーチミン市', N'ja        ', N'FPT 大学 HCM は、9 区ハイテクパークの D1 ストリートにあります。このエリアの「一等地」の 1 つで、FPT ソフトウェア、インテル (米国)、日本電産 (日本) などの大手企業や企業が集まっています。 ... そして現代の科学および技術研究センター。', CAST(N'2023-07-14T00:00:00.000' AS DateTime), CAST(N'2023-07-14T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[PlaceDescription] ([Id], [PlaceId], [VoiceFile], [Name], [LanguageCode], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (43, 3, N'http://localhost:8002/etravel/live/hls/bennharongusuk/playlist.m3u8', N'Notre-Dame Cathedral', N'en-us     ', N'The Notre Dame Cathedral is a famous architectural landmark in Ho Chi Minh City, Vietnam. Built in the late 19th century, the Notre Dame Cathedral is one of the notable cultural heritage sites in the city.

Located on Dong Khoi Street in District 1, the Notre Dame Cathedral is just a few steps away from the Saigon River. It is one of the most beautiful French architectural structures in Vietnam and was constructed during the French colonial period. The Notre Dame Cathedral combines Gothic and Roman architectural styles, creating a unique blend.

Construction of the cathedral began in 1863 and was completed in 1880. The Notre Dame Cathedral features grand architecture with tall columns and arches, and it is crafted from specially imported red bricks from France. It has two tall bell towers and a central spire, forming a prominent artistic feature against the city''s skyline.

Inside the Notre Dame Cathedral, visitors will find many beautiful works of art, including paintings, statues of Christ, and stained glass windows. The cathedral also has a large courtyard with lush gardens, providing a tranquil space to relax and enjoy.

The Notre Dame Cathedral is not only an important religious site but also a popular tourist destination. Visitors can explore the interior of the cathedral, admire the unique architecture, and learn about its history and culture. Additionally, from the Notre Dame Cathedral, it is easy to walk and explore other attractions in the central area of Ho Chi Minh City.

The Notre Dame Cathedral is a significant cultural and architectural icon of Ho Chi Minh City and Vietnam. With its classical beauty and fame, it attracts a large number of tourists who come to visit and discover its charm.', CAST(N'2023-07-14T00:00:00.000' AS DateTime), CAST(N'2023-07-14T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[PlaceDescription] ([Id], [PlaceId], [VoiceFile], [Name], [LanguageCode], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (44, 6, N'http://localhost:8002/etravel/live/hls/bennharongusuk/playlist.m3u8', N'Tao Dan Park', N'en-us     ', N'Tao Dan Park is a famous and beloved park in Ho Chi Minh City, Vietnam. With its large area and green spaces, the park is an ideal destination for relaxation and enjoying nature.

Tao Dan Park is named after a temple located within the park. Tao Dan Temple is an important Buddhist temple that attracts many local residents and visitors. The park is built around the temple and has become a gathering and activity spot for the Buddhist community in the city.

The park features numerous lush trees and beautiful flower fields, creating a serene and peaceful atmosphere. It is popular among locals and tourists, especially in the morning and evening, when people come to exercise, fly kites, or simply unwind after a day''s work.

The park also offers various amenities such as children''s playgrounds, outdoor fitness areas, and food and beverage stalls. Visitors can participate in activities like yoga, tai chi, and other fitness classes organized by professional trainers.

Additionally, Tao Dan Park is located near other attractions in Ho Chi Minh City. Visitors can combine a visit to the park with exploring nearby sites such as the City Theater, the Fine Arts Museum, and the April 30th Park.

With its refreshing green spaces and entertaining activities, Tao Dan Park is an ideal place to relax and enjoy the natural environment within the bustling city of Ho Chi Minh.', CAST(N'2023-07-14T00:00:00.000' AS DateTime), CAST(N'2023-07-14T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[PlaceDescription] ([Id], [PlaceId], [VoiceFile], [Name], [LanguageCode], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (45, 7, N'http://localhost:8002/etravel/live/hls/bennharongusuk/playlist.m3u8', N'War Remnants Museum', N'en-us     ', N'The War Remnants Museum, also known as the War Remnants Exhibition, is an important historical attraction in Ho Chi Minh City, Vietnam. This museum focuses on displaying and preserving artifacts, photographs, and documents related to the Vietnam War and its aftermath.

The War Remnants Museum is located in District 3, near the city center. Established in 1975, the museum aims to preserve and convey the history of the Vietnam War to present and future generations.

Inside the War Remnants Museum, visitors can explore exhibition rooms with notable artifacts such as warplanes, tanks, artillery, military equipment, as well as displays of paintings, photographs, and documents depicting the Vietnam War and its impact on the people and the country.

In addition to the exhibitions, the War Remnants Museum offers educational programs and guided tours led by knowledgeable staff. Visitors can gain a deeper understanding of the causes, progression, and consequences of the Vietnam War through shared information and detailed explanations.

The War Remnants Museum is an important destination to explore and understand the history of Vietnam. It provides visitors with a profound insight into the diverse aspects of the Vietnam War and its impact on the nation and its people.', CAST(N'2023-07-14T00:00:00.000' AS DateTime), CAST(N'2023-07-14T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[PlaceDescription] ([Id], [PlaceId], [VoiceFile], [Name], [LanguageCode], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (46, 8, N'http://localhost:8002/etravel/live/hls/bennharongusuk/playlist.m3u8', N'Ben Thanh Market', N'en-us     ', N'Ben Thanh Market is one of the most famous and bustling traditional markets in Ho Chi Minh City, Vietnam. Built in the 19th century, Ben Thanh Market is a must-visit destination for tourists who want to experience local specialties and culture.

Located in District 1, at a central intersection, Ben Thanh Market covers a large area and is divided into various sections, each specializing in different goods such as food, clothing, cosmetics, electronics, and various traditional handicrafts.

Ben Thanh Market is not just a place for shopping, but also an opportunity to experience Vietnamese culture and cuisine. Visitors can indulge in delicious street food such as pho, banh xeo, nem nuong, and more. Additionally, the market has fruit stalls, fresh flower shops, and souvenir stores where tourists can shop for local produce and keepsakes.

Being a gathering place for both locals and tourists, Ben Thanh Market is lively and bustling. Visitors can immerse themselves in the colorful atmosphere of the market, listen to the bargaining and negotiation sounds, and feel the vibrant energy of city life.

Ben Thanh Market is a special destination for shopping and cultural experiences in Ho Chi Minh City. It offers an exciting opportunity for tourists who wish to explore the diversity and liveliness of the local market.', CAST(N'2023-07-14T00:00:00.000' AS DateTime), CAST(N'2023-07-14T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[PlaceDescription] ([Id], [PlaceId], [VoiceFile], [Name], [LanguageCode], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (47, 9, N'http://localhost:8002/etravel/live/hls/bennharongusuk/playlist.m3u8', N'Bui Vien Street', N'en-us     ', N'Bui Vien Street is one of the famous and bustling spots in Ho Chi Minh City, Vietnam. It is known as the center of nightlife and entertainment, with a concentration of bars, restaurants, hotels, and various entertainment activities.

Bui Vien Street is located in District 1, near the city center. It is a vibrant and lively area, especially at night. It is a favorite destination for both foreign tourists and local residents.

On Bui Vien Street, visitors can find a variety of restaurants serving international cuisine and Vietnamese specialties. The bars and cafes with live music and outdoor spaces are also popular destinations. Visitors can indulge in delicious food, participate in live music performances, and enjoy a lively and vibrant atmosphere.

Additionally, Bui Vien Street is also home to many shops selling souvenirs, clothing, accessories, and various products for tourists to shop and preserve memories of their trip.

Bui Vien Street is a great destination for those who want to enjoy culinary delights, experience the nightlife, and immerse themselves in the vibrant entertainment scene of Ho Chi Minh City.', CAST(N'2023-07-14T00:00:00.000' AS DateTime), CAST(N'2023-07-14T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[PlaceDescription] ([Id], [PlaceId], [VoiceFile], [Name], [LanguageCode], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (48, 10, N'http://localhost:8002/etravel/live/hls/bennharongusuk/playlist.m3u8', N'Independence Palace', N'en-us     ', N'Independence Palace, also known as the Independence Palace, is an important historical building in Ho Chi Minh City, Vietnam. Constructed from 1962 to 1966, Dinh Độc Lập played a significant role in Vietnam''s history and politics.

Designed by architect Ngô Viết Thụ, Dinh Độc Lập showcases a modern European architectural style while incorporating distinct elements of Vietnamese tradition.

Dinh Độc Lập was once the site of important historical events in Vietnam, including the signing of the Paris Peace Accords in 1973 that marked the end of the Vietnam War. Today, it has been transformed into the Independence Palace Historical Site, showcasing exhibits and materials related to the war and the development of Vietnam.

Inside Dinh Độc Lập, visitors can explore exhibition rooms displaying important artifacts, photographs, and documents related to Vietnam''s history. This provides tourists with a deeper understanding of the struggle for independence and the post-war development of Vietnam.

Dinh Độc Lập is a significant destination for learning about Vietnam''s history and culture. It is a popular spot for tourists seeking to explore important heritage and imagery of the country.', CAST(N'2023-07-14T00:00:00.000' AS DateTime), CAST(N'2023-07-14T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[PlaceDescription] ([Id], [PlaceId], [VoiceFile], [Name], [LanguageCode], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (49, 11, N'http://localhost:8002/etravel/live/hls/bennharongusuk/playlist.m3u8', N'Ho Chi Minh City Museum of History', N'en-us     ', N'Ho Chi Minh City Museum of History is an important cultural destination in Ho Chi Minh City, Vietnam. It showcases the history and culture of the city from ancient times to the present.

The museum exhibits numerous artifacts, materials, and records depicting the development of the city and its ethnic culture. Visitors can explore exhibition rooms with paintings, dioramas, and ancient relics, while listening to detailed explanations from guides about important historical heritage.

The Ho Chi Minh City Museum of History also features temporary exhibitions and cultural education activities. It is a place where visitors can gain a deeper understanding of the past and present of Ho Chi Minh City.', CAST(N'2023-07-14T00:00:00.000' AS DateTime), CAST(N'2023-07-14T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[PlaceDescription] ([Id], [PlaceId], [VoiceFile], [Name], [LanguageCode], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (50, 12, N'http://localhost:8002/etravel/live/hls/bennharongusuk/playlist.m3u8', N'Nha Rong Wharf - Ho Chi Minh Museum', N'en-us     ', N'Bến Nhà Rồng, also known as Ho Chi Minh Museum, is an important historical site in Ho Chi Minh City, Vietnam, and was the residence of President Ho Chi Minh for a significant period of time. It has now been transformed into the Ho Chi Minh Museum to commemorate the great leader of Vietnam.

Bến Nhà Rồng is located in District 4, not far from the city center. It is an old building with unique architecture, reflecting the characteristics of Southern Vietnam. Inside Bến Nhà Rồng, visitors can explore exhibition rooms showcasing artifacts, photographs, and documents related to the life and career of President Ho Chi Minh.

The Ho Chi Minh Museum at Bến Nhà Rồng provides deep insights into the life and achievements of President Ho Chi Minh. Visitors can learn about his life, revolutionary activities, and ideology through the displays and lectures.

Additionally, Bến Nhà Rồng also features a tranquil and relaxing garden and a traditional ship docked by the river, offering a peaceful ambiance for visitors.

The Ho Chi Minh Museum at Bến Nhà Rồng is an ideal destination for those interested in the history and culture of Vietnam, particularly the life and career of President Ho Chi Minh.', CAST(N'2023-07-14T00:00:00.000' AS DateTime), CAST(N'2023-07-14T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[PlaceDescription] ([Id], [PlaceId], [VoiceFile], [Name], [LanguageCode], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (51, 14, N'http://localhost:8002/etravel/live/hls/bennharongusuk/playlist.m3u8', N'Giac Lam Pagoda', N'en-us     ', N'Giác Lâm Pagoda is an ancient temple located in Ho Chi Minh City, Vietnam. It is one of the oldest and largest pagodas in the city, carrying significant historical and spiritual value.

Giác Lâm Pagoda was built in the 18th century and is an important temple of the Zen tradition. The architecture of the pagoda is designed in the Indochinese and Champa styles, creating a solemn and peaceful atmosphere.

Within the premises of Giác Lâm Pagoda, visitors can explore various unique buildings and structures, including shrines, temples, bell towers, and a large stone Buddha statue. Additionally, the pagoda houses several notable Buddhist statues and other artworks.

Giác Lâm Pagoda is also a sacred and elegant place for Buddhist practitioners and tourists to come and pray, as well as to learn about the religion and philosophy of Buddhism. Moreover, it attracts many international tourists who want to explore and experience Vietnam''s culture and traditional architecture.

Giác Lâm Pagoda is an appealing destination for those who want to discover the distinctive culture, religion, and architecture of Vietnam, while gaining insights into the harmony between Buddhist traditions and the local culture.', CAST(N'2023-07-14T00:00:00.000' AS DateTime), CAST(N'2023-07-14T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[PlaceDescription] ([Id], [PlaceId], [VoiceFile], [Name], [LanguageCode], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (52, 15, N'http://localhost:8002/etravel/live/hls/bennharongusuk/playlist.m3u8', N'Ho Chi Minh City Theater', N'en-us     ', N'The Ho Chi Minh City Theater, also known as the Municipal Theater, is a famous cultural landmark and important tourist destination in Ho Chi Minh City, Vietnam. With its unique architecture and exquisite beauty, it is one of the largest and most beautiful theaters in Southeast Asia.

The Ho Chi Minh City Theater was constructed in the 1890s and carries the distinctive features of French architecture during the period of national unification. Built with high-quality materials and adorned with intricate details, it creates a grand and elegant atmosphere.

The Ho Chi Minh City Theater is a venue for various artistic performances such as musicals, operas, dances, and concerts. With its large seating capacity and modern facilities for sound, lighting, and costumes, it provides an excellent environment for high-quality performances.

Beyond being a performance venue, the Ho Chi Minh City Theater is also a beautiful architectural structure that attracts visitors. Visitors can enjoy sightseeing and take memorable photographs here.

The Ho Chi Minh City Theater is an important cultural spot, offering superb artistic experiences and serving as a symbol of cultural and artistic development in Ho Chi Minh City.', CAST(N'2023-07-14T00:00:00.000' AS DateTime), CAST(N'2023-07-14T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[PlaceDescription] ([Id], [PlaceId], [VoiceFile], [Name], [LanguageCode], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (53, 16, N'http://localhost:8002/etravel/live/hls/bennharongusuk/playlist.m3u8', N'September 23 Park', N'en-us     ', N'September 23 Park is a park located in Ho Chi Minh City, Vietnam. It is one of the largest and most popular parks in the city, named in commemoration of Vietnam''s National Day - September 23.

The park has a convenient location, close to many shopping areas, restaurants, and hotels. It is also near other famous tourist attractions such as City Hall Square and the Municipal Theater.

September 23 Park features spacious and green spaces, with trees and grassy fields. It is an ideal place for strolling, walking, and relaxation. There are many benches provided, offering quiet and shaded spots for visitors to rest.

Additionally, the park also has amenities such as a lake, children''s playground, basketball court, and badminton court. It is a perfect place for families and groups of friends to enjoy outdoor sports and recreation activities.

September 23 Park is a popular destination for both locals and tourists. It provides not only a green and relaxing space but also serves as a center for leisure, rest, and urban enjoyment.', CAST(N'2023-07-14T00:00:00.000' AS DateTime), CAST(N'2023-07-14T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[PlaceDescription] ([Id], [PlaceId], [VoiceFile], [Name], [LanguageCode], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (54, 17, N'http://localhost:8002/etravel/live/hls/bennharongusuk/playlist.m3u8', N'Dam Sen Cultural Park', N'en-us     ', N'Dam Sen Cultural Park is a famous amusement park in Ho Chi Minh City, Vietnam. Located not far from the city center, this park is a popular destination for both tourists and locals.

Dam Sen Cultural Park features spacious and green spaces, with a lake, trees, and gardens. It is an ideal place for relaxation, walking, and enjoying the natural environment.

The park offers various entertainment and educational activities, including landscape games, children''s playgrounds, swimming pools, cinemas, and other outdoor activities. Visitors can participate in games, relax on the artificial beach, or engage in sports activities such as soccer, badminton, and volleyball.

Additionally, the park has restaurants, cafes, and picnic areas where tourists can enjoy local specialties and take a break after exploring.

Dam Sen Cultural Park is an attractive destination for families and group of friends, where you can enjoy fun activities, entertainment, and relaxation in a green and refreshing environment.', CAST(N'2023-07-14T00:00:00.000' AS DateTime), CAST(N'2023-07-14T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[PlaceDescription] ([Id], [PlaceId], [VoiceFile], [Name], [LanguageCode], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (55, 18, N'http://localhost:8002/etravel/live/hls/bennharongusuk/playlist.m3u8', N'Ho Chi Minh City Museum of Fine Arts', N'en-us     ', N'The Art Museum in Ho Chi Minh City is a renowned destination for art and culture enthusiasts. This museum showcases and preserves numerous valuable art pieces from both Vietnamese and international artists.

The Art Museum is located in the city center of Ho Chi Minh City and features unique architecture. It consists of multiple floors with spacious and modern exhibition spaces. The exhibition rooms are carefully designed to introduce and display diverse art pieces across various genres such as painting, sculpture, art photography, and more.

The Art Museum organizes temporary exhibitions and permanent displays, providing visitors with diverse and enriching experiences. It is also a venue for cultural events, lectures, and other artistic activities.

Visitors to the Art Museum can explore and learn about the history and styles of Vietnamese art as well as experience the diversity and creativity of modern art pieces.', CAST(N'2023-07-14T00:00:00.000' AS DateTime), CAST(N'2023-07-14T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[PlaceDescription] ([Id], [PlaceId], [VoiceFile], [Name], [LanguageCode], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (56, 19, N'http://localhost:8002/etravel/live/hls/bennharongusuk/playlist.m3u8', N'Suoi Tien Cultural Park', N'en-us     ', N'Located approximately 19 km from the center of Ho Chi Minh City, Suoi Tien Cultural Park is not just an intriguing amusement park, but also a unique cultural destination with a diverse range of entertainment, art, and educational activities. As you step into Suoi Tien Park, you will be immersed in a space with majestic natural landscapes, crystal-clear water streams, and lush greenery. It is an ideal place for families and friends to unwind. The park is renowned for its extensive system of streams and large water lakes. Visitors can partake in activities such as kayaking, fish watching, and even explore a unique crocodile area. Suoi Tien Park is not only an entertainment hub but also a folk culture museum showcasing the life, art, and cultural traditions of the Vietnamese people. The park features various entertaining and complex games like the Kingdom of Sand Clocks, Tulip Field, and a Water Park area. To savor a diverse culinary experience, Suoi Tien Park offers numerous restaurants serving traditional Vietnamese and international cuisines. The park regularly hosts special events and art exhibitions, creating a lively and unique atmosphere for visitors. Moreover, it is a popular destination for educational programs and school outings. Prepare for an energetic and fantastic experience at Suoi Tien Cultural Park, where a perfect blend of culture, entertainment, and nature awaits you. Wishing you wonderful moments at Suoi Tien!', CAST(N'2023-07-14T00:00:00.000' AS DateTime), CAST(N'2023-07-14T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[PlaceDescription] ([Id], [PlaceId], [VoiceFile], [Name], [LanguageCode], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (57, 20, N'http://localhost:8002/etravel/live/hls/bennharongusuk/playlist.m3u8', N'Ho Chi Minh City Post Office', N'en-us     ', N'The Ho Chi Minh City Post Office, also known as the Saigon Central Post Office, is one of the significant historical landmarks in Ho Chi Minh City, Vietnam. Constructed in 1886, this post office features a unique blend of European and Asian architectural styles.
	  With its distinctive architecture, the Ho Chi Minh City Post Office attracts many visitors who come to admire its high clock tower and intricate decorations. Inside, you can find an exhibition space showcasing the history of postal services and modern postal facilities.', CAST(N'2023-07-14T00:00:00.000' AS DateTime), CAST(N'2023-07-14T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[PlaceDescription] ([Id], [PlaceId], [VoiceFile], [Name], [LanguageCode], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (58, 21, N'http://localhost:8002/etravel/live/hls/bennharongusuk/playlist.m3u8', N'Nguyễn Huệ Pedestrian Street', N'en-us     ', N'Nguyen Hue Pedestrian Street is one of the most central and vibrant areas in Ho Chi Minh City, Vietnam. Opened in 2015, this area stretches from Dong Khoi Square to the Reunification Palace, creating an engaging hub for entertainment and shopping.
Adorned with colorful LED lights, Nguyen Hue Pedestrian Street offers various amenities for both locals and tourists. Along the street, you ưill find numerous shops, restaurants, bars, and diverse entertainment activities. The location frequently hosts large events, art exhibitions, and cultural activities, attracting a considerable number of visitors.', CAST(N'2023-07-14T00:00:00.000' AS DateTime), CAST(N'2023-07-14T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[PlaceDescription] ([Id], [PlaceId], [VoiceFile], [Name], [LanguageCode], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (59, 22, N'http://localhost:8002/etravel/live/hls/bennharongusuk/playlist.m3u8', N'The Anh Sao Bridge', N'en-us     ', N'The Anh Sao Bridge, also known as the Dragon Bridge, is one of the famous architectural landmarks in Ho Chi Minh City, Vietnam. This bridge spans the Saigon River and is renowned for its unique architecture, featuring a series of LED lights that create various lighting effects at night.

The Anh Sao Bridge has a distinctive design with three tall towers and smooth lines, giving it a modern and captivating appearance. At night, the bridge is illuminated by thousands of colorful LED lights, creating a vibrant and romantic scenery. This is often an ideal destination for couples looking to enjoy a romantic atmosphere and take beautiful photos.

The Anh Sao Bridge also hosts frequent cultural and artistic events and has a stylish bar on the bridge where you can relax and enjoy drinks.', CAST(N'2023-07-14T00:00:00.000' AS DateTime), CAST(N'2023-07-14T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[PlaceDescription] ([Id], [PlaceId], [VoiceFile], [Name], [LanguageCode], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (60, 23, N'http://localhost:8002/etravel/live/hls/bennharongusuk/playlist.m3u8', N'Buu Long Pagoda', N'en-us     ', N'Buu Long Pagoda is a Buddhist temple located in Ho Chi Minh City, Vietnam. It is one of the significant and tranquil Buddhist temples in the area where people come to seek tranquility and honor the Buddhist spirit.

Buu Long Pagoda was constructed in the 1940s and is situated by Buu Long Lake, creating a majestic landscape with lush greenery and pristine lake waters. At the temple, you can explore beautiful architecture and intricately sculpted Buddha statues. Not only a spiritual place, Buu Long Pagoda also hosts regular religious activities and is a place where you can learn about the history and philosophy of Buddhism.

Buu Long Pagoda often attracts many tourists and pilgrims who come to find spiritual peace and inspiration. It serves as a quiet sanctuary, away from the hustle and bustle of urban life, where individuals seek a connection with their souls and with nature.', CAST(N'2023-07-14T00:00:00.000' AS DateTime), CAST(N'2023-07-14T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[PlaceDescription] ([Id], [PlaceId], [VoiceFile], [Name], [LanguageCode], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (61, 24, N'http://localhost:8002/etravel/live/hls/bennharongusuk/playlist.m3u8', N'Cu Chi Tunnels', N'en-us     ', N'The Cu Chi Tunnels tourist area is an important historical destination in Ho Chi Minh City, Vietnam, where visitors can explore underground tunnels from the Vietnam War era. This is one of Vietnam and the world precious historical heritage sites.

The Cu Chi Tunnels played a significant role during the war, used by the Viet Cong (Vietnamese Communist forces) and civilians as an underground defense and transportation network. This tourist area helps visitors gain a deeper understanding of the lives and struggles of the people of Vietnam during the wartime.

During tours of Cu Chi, visitors have the opportunity to explore the underground tunnels, see the living conditions with hospitals and meeting rooms, and experience the difficulties of living in such conditions. Visitors can also try shooting and enjoy various war-related activities.

The Cu Chi Tunnels tourist area is not only an opportunity to learn about history but also a place to honor the resilience and sacrifices of soldiers and civilians during the wartime.', CAST(N'2023-07-14T00:00:00.000' AS DateTime), CAST(N'2023-07-14T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[PlaceDescription] ([Id], [PlaceId], [VoiceFile], [Name], [LanguageCode], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (62, 27, N'http://localhost:8002/etravel/live/hls/bennharongusuk/playlist.m3u8', N'Thao Cam Vien', N'en-us     ', N'Thao Cam Vien, also known as the Saigon Zoo and Botanical Gardens, is a large park and zoo in Ho Chi Minh City, Vietnam. It is one of the popular and fascinating attractions in the city, drawing visitors from both within and outside the country.

Thao Cam Vien encompasses a lush green garden area with landscaped ponds and diverse botanical sections. Notably, the park features a tropical garden where you can unwind in a tranquil setting.

Furthermore, Thao Cam Vien has a zoo housing over 1,000 species of animals from around the world. Visitors have the opportunity to observe wildlife and learn about the diversity of the natural world. The animals here are well cared for, and a visit to Thao Cam Vien provides an educational and entertaining experience.

Additionally, the park offers various amenities such as restaurants, cafes, and a playground for children, making it an ideal place for a day of relaxation in nature within the city.', CAST(N'2023-07-14T00:00:00.000' AS DateTime), CAST(N'2023-07-14T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[PlaceDescription] ([Id], [PlaceId], [VoiceFile], [Name], [LanguageCode], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (63, 28, N'http://localhost:8002/etravel/live/hls/bennharongusuk/playlist.m3u8', N'FPT University HCM', N'en-us     ', N'FPT University HCM is located on D1 Street, Hi-Tech Park, District 9 - this is one of the "prime" locations in the area, gathering leading companies and businesses such as: FPT Software, Intel (USA), Nidec (Japan) ... and modern scientific and technical research centers.', CAST(N'2023-07-14T00:00:00.000' AS DateTime), CAST(N'2023-07-14T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[PlaceDescription] ([Id], [PlaceId], [VoiceFile], [Name], [LanguageCode], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (64, 3, N'http://localhost:8002/etravel/live/hls/sapazhcn/playlist.m3u8', N'西贡圣母大教堂', N'zh-cn     ', N'西贡圣母大教堂（Notre Dame Cathedral）是越南胡志明市的一座著名建筑地标。该教堂建于19世纪末，是该市的一处重要文化遗产。

圣母大教堂位于胡志明市一区的东开街（Đồng Khởi Street），离西贡河仅几步之遥。它是越南最美丽的法国建筑之一，建于法国殖民时期。圣母大教堂融合了哥特式和罗马式建筑风格，形成了独特的风格。

该教堂的建设始于1863年，于1880年完工。圣母大教堂拥有宏伟的建筑风格，有高耸的柱子和拱门，使用了特别进口的红砖制作而成。它有两座高塔和一个中央尖顶，形成了城市天际线上引人注目的艺术景观。

在圣母大教堂内部，游客可以欣赏到许多美丽的艺术作品，包括绘画、基督雕像和彩色玻璃窗。教堂还有一个宽敞的庭院，拥有茂盛的花园，提供了一个宁静的空间供人们放松和欣赏。

圣母大教堂不仅是一处重要的宗教场所，也是一个受欢迎的旅游景点。游客可以参观教堂内部，欣赏其独特的建筑风格，了解其历史和文化。此外，从圣母大教堂出发，游客还可以轻松步行探索胡志明市中心的其他景点。

圣母大教堂是胡志明市和越南重要的文化和建筑象征。凭借其古典的美丽和声誉，吸引了大量游客前来参观和发现其魅力。', CAST(N'2023-07-14T00:00:00.000' AS DateTime), CAST(N'2023-07-14T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[PlaceDescription] ([Id], [PlaceId], [VoiceFile], [Name], [LanguageCode], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (65, 6, N'http://localhost:8002/etravel/live/hls/sapazhcn/playlist.m3u8', N'陶丹公园', N'zh-cn     ', N'陶丹公园是越南胡志明市的一座著名且备受喜爱的公园。该公园占地广阔，绿地环绕，是人们放松身心、享受大自然的理想去处。

陶丹公园以公园内的一座寺庙命名。陶丹寺是一座重要的佛教寺庙，吸引着许多当地居民和游客前来参观。公园围绕着寺庙建造，成为城市佛教社区聚会和活动的场所。

公园内有茂密的树木和美丽的花坛，营造出宁静祥和的氛围。公园深受当地居民和游客喜爱，尤其是早晨和傍晚，人们会来这里锻炼身体、放飞风筝，或者仅仅是在一天工作之后放松心情。

公园还提供各种设施，如儿童游乐场、户外健身区和餐饮摊位。游客们可以参加瑜伽、太极等各种由专业教练组织的健身活动。

此外，陶丹公园还靠近胡志明市的其他景点。游客可以将公园的参观与探索附近的景点相结合，如城市剧院、美术馆和四月三十日公园等。

陶丹公园以其清新的绿地和娱乐活动，是在繁忙的胡志明市中放松身心、享受自然环境的理想之地。', CAST(N'2023-07-14T00:00:00.000' AS DateTime), CAST(N'2023-07-14T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[PlaceDescription] ([Id], [PlaceId], [VoiceFile], [Name], [LanguageCode], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (66, 7, N'http://localhost:8002/etravel/live/hls/sapazhcn/playlist.m3u8', N'战争遗迹博物馆', N'zh-cn     ', N'战争遗迹博物馆，又称战争遗迹展览馆，是越南胡志明市的一个重要历史景点。该博物馆专注于展示和保存与越南战争及其后果相关的文物、照片和文件。

战争遗迹博物馆位于胡志明市的第3区，靠近市中心。成立于1975年，该博物馆的目标是将越南战争的历史传承给现在和未来的世代。

在战争遗迹博物馆内，游客可以参观展览室，展示了战斗机、坦克、火炮、军事装备等重要文物，以及描绘越南战争及其对人民和国家影响的绘画、照片和文件。

除了展览之外，战争遗迹博物馆还提供教育项目和由知识渊博的工作人员带领的导览。游客可以通过分享的信息和详细的解释更深入地了解越南战争的原因、进展和后果。

战争遗迹博物馆是探索和了解越南历史的重要目的地。它为游客提供了对越南战争的多个方面及其对国家和人民的影响的深刻洞察。', CAST(N'2023-07-14T00:00:00.000' AS DateTime), CAST(N'2023-07-14T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[PlaceDescription] ([Id], [PlaceId], [VoiceFile], [Name], [LanguageCode], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (67, 8, N'http://localhost:8002/etravel/live/hls/sapazhcn/playlist.m3u8', N'滨城市场', N'zh-cn     ', N'本扬市场是越南胡志明市最著名且繁华的传统市场之一。建于19世纪，本扬市场是游客体验当地特色和文化的必访之地。

本扬市场位于1区的中心交叉路口，占地广阔，分为不同区域，各个区域专营食品、服装、化妆品、电子产品和各种传统手工艺品等不同商品。

本扬市场不仅是购物的地方，还是体验越南文化和美食的场所。游客可以品尝到美味的街头食品，如越南牛肉粉、越南薄饼、越南烤肉卷等。此外，市场还设有水果摊位、鲜花店和纪念品商店，游客可以购买当地特产和纪念品。

作为当地居民和游客聚集的场所，本扬市场热闹而繁华。游客可以沉浸在市场的丰富多彩氛围中，听取讨价还价的声音，感受都市生活的活力。

本扬市场是胡志明市的购物和文化体验的特殊场所。它为希望探索当地市场的多样性和活力的游客提供了令人兴奋的机会。', CAST(N'2023-07-14T00:00:00.000' AS DateTime), CAST(N'2023-07-14T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[PlaceDescription] ([Id], [PlaceId], [VoiceFile], [Name], [LanguageCode], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (68, 9, N'http://localhost:8002/etravel/live/hls/sapazhcn/playlist.m3u8', N'裴援步行街', N'zh-cn     ', N'步英街是越南胡志明市著名繁华的地区之一。它以夜生活和娱乐中心而闻名，集中了许多酒吧、餐厅、酒店和各种娱乐活动。

步英街位于胡志明市的一区，靠近市中心。这是一个充满活力和活力的地区，尤其是在晚上。它是外国游客和当地居民喜爱的目的地。

在步英街上，游客可以找到各种餐厅，提供国际美食和越南特色菜肴。酒吧和咖啡馆常常有现场音乐和室外空间，也是人们喜爱的地方。游客可以品尝美食，参加现场音乐表演，享受热闹而充满活力的氛围。

此外，步英街还有许多商店，出售纪念品、服装、配饰和各种产品，供游客购物并保留旅行的回忆。

步英街是那些想品尝美食、体验夜生活和融入胡志明市充满活力娱乐场所的人们的理想目的地。', CAST(N'2023-07-14T00:00:00.000' AS DateTime), CAST(N'2023-07-14T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[PlaceDescription] ([Id], [PlaceId], [VoiceFile], [Name], [LanguageCode], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (69, 10, N'http://localhost:8002/etravel/live/hls/sapazhcn/playlist.m3u8', N'独立宫', N'zh-cn     ', N'独立宫殿（Dinh Độc Lập），又被称为独立宫，是越南胡志明市的一座重要历史建筑。它建于1962年至1966年间，在越南的历史和政治中扮演了重要的角色。

独立宫殿由建筑师Ngô Viết Thụ设计，展现了现代欧洲建筑风格，并融入了越南传统的独特元素。

独立宫殿曾是越南重要的历史事件场所，包括1973年签署的《巴黎和平协定》，标志着越南战争的结束。如今，它被改建成独立宫博物馆，展示了与战争和越南发展相关的展品和资料。

在独立宫殿内，游客可以探索展览室，展示了与越南历史相关的重要文物、照片和文件。这为游客提供了更深入地了解越南独立斗争和战后发展的机会。

独立宫殿是了解越南历史和文化的重要场所，对于寻求探索国家重要遗产和形象的游客来说是一个受欢迎的目的地。', CAST(N'2023-07-14T00:00:00.000' AS DateTime), CAST(N'2023-07-14T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[PlaceDescription] ([Id], [PlaceId], [VoiceFile], [Name], [LanguageCode], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (70, 11, N'http://localhost:8002/etravel/live/hls/sapazhcn/playlist.m3u8', N'胡志明市历史博物馆', N'zh-cn     ', N'胡志明市历史博物馆是越南胡志明市的一个重要文化目的地。它展示了该市从古代到现代的历史和文化。

博物馆展示了许多描绘该市发展和民族文化的文物、资料和记录。游客可以探索展厅，观赏绘画、景观模型和古代文物，并听取导游对重要历史遗产的详细解说。

胡志明市历史博物馆还举办临时展览和文化教育活动。这是一个让游客更深入了解胡志明市的过去和现在的地方。', CAST(N'2023-07-14T00:00:00.000' AS DateTime), CAST(N'2023-07-14T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[PlaceDescription] ([Id], [PlaceId], [VoiceFile], [Name], [LanguageCode], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (71, 12, N'http://localhost:8002/etravel/live/hls/sapazhcn/playlist.m3u8', N'本龙家 - 胡志明博物馆', N'zh-cn     ', N'Ngôi Nhà Rồng，也被称为胡志明博物馆，是越南胡志明市的一个重要历史景点，曾经是胡志明主席的居所。现在，它已经被改造成胡志明博物馆，以纪念越南伟大的领袖。

Ngôi Nhà Rồng位于4区，距离市中心不远。这是一座具有独特建筑风格的古老建筑，体现了越南南部的特色。在Ngôi Nhà Rồng内部，游客可以探索展览室，展示与胡志明主席的生活和事业相关的文物、照片和文件。

Ngôi Nhà Rồng的胡志明博物馆提供了对胡志明主席的生活和成就深入的洞察。游客可以通过展览和讲座了解他的生平、革命活动和思想。

此外，Ngôi Nhà Rồng还设有宁静宜人的花园和一艘停靠在河边的传统船只，为游客提供宁静的环境。

Ngôi Nhà Rồng的胡志明博物馆是对越南历史和文化感兴趣的人们的理想目的地，特别是对胡志明主席的生平和事业感兴趣的人。', CAST(N'2023-07-14T00:00:00.000' AS DateTime), CAST(N'2023-07-14T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[PlaceDescription] ([Id], [PlaceId], [VoiceFile], [Name], [LanguageCode], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (72, 14, N'http://localhost:8002/etravel/live/hls/sapazhcn/playlist.m3u8', N'玉林寺', N'zh-cn     ', N'玉林寺（Giác Lâm Pagoda）是越南胡志明市的一座古老寺庙。它是该城市最古老且最大的寺庙之一，具有重要的历史和宗教价值。

玉林寺建于18世纪，是禅宗寺庙的重要代表。寺庙的建筑设计采用印度支那和占婆风格，营造出庄严宁静的氛围。

在玉林寺的园区内，游客可以探索许多独特的建筑和结构，包括神殿、寺庙、钟楼和一座巨大的石制佛像。此外，寺庙还展示了一些重要的佛像和其他值得注意的艺术作品。

玉林寺也是佛教信徒和游客前来祈福、学习佛教宗教和哲学的神圣而典雅之地。此外，它还吸引了许多国际游客，他们希望探索和体验越南的文化和传统建筑。

玉林寺是那些想要了解越南独特文化、宗教和建筑，并了解佛教传统与当地文化和谐相融的人们的理想目的地。', CAST(N'2023-07-14T00:00:00.000' AS DateTime), CAST(N'2023-07-14T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[PlaceDescription] ([Id], [PlaceId], [VoiceFile], [Name], [LanguageCode], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (73, 15, N'http://localhost:8002/etravel/live/hls/sapazhcn/playlist.m3u8', N'胡志明市剧院', N'zh-cn     ', N'胡志明市剧院，也称为市政剧院，是越南胡志明市的一座著名的文化地标和重要旅游景点。凭借其独特的建筑风格和精美的美感，它是东南亚最大、最美丽的剧院之一。

胡志明市剧院建于1890年代，具有国家统一时期法国建筑风格的独特特色。这座剧院采用高品质材料建造，并装饰有精细的细节，营造出宏伟而优雅的氛围。

胡志明市剧院是各种艺术表演的场所，如音乐剧、歌剧、舞蹈和音乐会。它具有较大的座位容量和现代设施，包括音响、照明和服装，为高品质的表演提供优越的环境。

除了作为表演场所，胡志明市剧院也是一座美丽的建筑结构，吸引着游客。游客可以在这里观光，留下难忘的照片。

胡志明市剧院是一个重要的文化地点，提供卓越的艺术体验，并象征着胡志明市文化和艺术的发展。', CAST(N'2023-07-14T00:00:00.000' AS DateTime), CAST(N'2023-07-14T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[PlaceDescription] ([Id], [PlaceId], [VoiceFile], [Name], [LanguageCode], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (74, 16, N'http://localhost:8002/etravel/live/hls/sapazhcn/playlist.m3u8', N'9月23日公园', N'zh-cn     ', N'9月23日公园位于越南胡志明市，是一座公园。它是该市最大、最受欢迎的公园之一，以纪念越南的国庆日——9月23日。

该公园地理位置便利，靠近许多购物区、餐厅和酒店。它还靠近市政府广场和市政剧院等其他著名旅游景点。

9月23日公园拥有广阔的绿地，树木和草坪伸展开来。这是散步、散步和休闲的理想场所。有许多长凳供人们休息，提供安静和遮荫的地方。

此外，公园还设有湖泊、儿童游乐场、篮球场和羽毛球场等设施。这是家庭和朋友们享受户外运动和休闲活动的理想场所。

9月23日公园是当地居民和游客的热门目的地。它不仅提供绿色和放松的空间，还是休闲、休息和城市享受的中心。', CAST(N'2023-07-14T00:00:00.000' AS DateTime), CAST(N'2023-07-14T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[PlaceDescription] ([Id], [PlaceId], [VoiceFile], [Name], [LanguageCode], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (75, 17, N'http://localhost:8002/etravel/live/hls/sapazhcn/playlist.m3u8', N'丹森文化公园', N'zh-cn     ', N'丹森文化公园位于越南胡志明市，是一座著名的游乐园。位于市中心附近，这个公园是游客和当地居民的热门目的地。

丹森文化公园拥有广阔的绿地，有湖泊、树木和花园。这是一个放松、散步和享受自然环境的理想场所。

公园提供各种娱乐和教育活动，包括景观游戏、儿童游乐场、游泳池、电影院和其他户外活动。游客可以参与游戏，放松在人工沙滩上，或参加足球、羽毛球、排球等运动活动。

此外，公园还设有餐厅、咖啡馆和野餐区，游客可以品尝当地特色美食，探索后休息片刻。

丹森文化公园是家庭和朋友们的理想目的地，在绿色清新的环境中享受有趣的活动、娱乐和放松。', CAST(N'2023-07-14T00:00:00.000' AS DateTime), CAST(N'2023-07-14T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[PlaceDescription] ([Id], [PlaceId], [VoiceFile], [Name], [LanguageCode], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (76, 18, N'http://localhost:8002/etravel/live/hls/sapazhcn/playlist.m3u8', N'胡志明市美术馆', N'zh-cn     ', N'胡志明市艺术博物馆是艺术和文化爱好者的著名景点。该博物馆展示和保留了许多来自越南和国际艺术家的珍贵艺术作品。

胡志明市艺术博物馆位于胡志明市市中心，具有独特的建筑风格。它由多层楼组成，拥有宽敞而现代的展览空间。展示室经过精心设计，展示了绘画、雕塑、艺术摄影等多种类型的艺术作品。

艺术博物馆组织临时展览和常设展览，为游客提供多样化而丰富的体验。它还是举办文化活动、讲座和其他艺术活动的场所。

参观艺术博物馆的游客可以探索和了解越南艺术的历史和风格，同时体验现代艺术作品的多样性和创造力。', CAST(N'2023-07-14T00:00:00.000' AS DateTime), CAST(N'2023-07-14T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[PlaceDescription] ([Id], [PlaceId], [VoiceFile], [Name], [LanguageCode], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (77, 19, N'http://localhost:8002/etravel/live/hls/sapazhcn/playlist.m3u8', N'水仙文化公园', N'zh-cn     ', N'距离胡志明市中心约19公里的水仙公园不仅是一个引人入胜的游乐园，还是一个独特的文化目的地，拥有丰富多样的娱乐、艺术和教育活动。
当您踏入水仙公园时，您将沉浸在一个充满雄伟自然景观、清澈水流和葱郁绿草的空间中。这是家庭和朋友放松的理想场所。该公园以其广泛的河流系统和大型水湖而闻名。游客可以参与划船、观鱼，甚至探索一个独特的鳄鱼区域。水仙公园不仅是一个娱乐中心，还是一个展示越南人民生活、艺术和文化传统的民间文化博物馆。公园设有各种有趣而复杂的游戏，如沙漏王国、郁金香地和水上乐园区。为了品味多元化的烹饪体验，水仙公园提供了许多餐厅，供应传统的越南和国际美食。该公园定期举办特别活动和艺术展览，为游客创造了一个热闹而独特的氛围。此外，它还是教育计划和学校郊游的热门目的地。准备在水仙文化公园度过充满活力和奇妙的体验，那里文化、娱乐和大自然的完美融合等待着您。祝您在水仙度过美好的时光！', CAST(N'2023-07-14T00:00:00.000' AS DateTime), CAST(N'2023-07-14T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[PlaceDescription] ([Id], [PlaceId], [VoiceFile], [Name], [LanguageCode], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (78, 20, N'http://localhost:8002/etravel/live/hls/sapazhcn/playlist.m3u8', N'胡志明市邮局', N'zh-cn     ', N'胡志明市邮局，又称西贡中央邮局，是越南胡志明市的重要历史地标之一。该邮局建于1886年，采用了独特的欧洲和亚洲建筑风格的融合设计。
胡志明市邮局以其独特的建筑吸引着许多游客，他们前来欣赏其高耸的钟楼和精美的装饰。在建筑内部，您可以找到一个展示邮政服务历史和现代邮政设施的空间。', CAST(N'2023-07-14T00:00:00.000' AS DateTime), CAST(N'2023-07-14T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[PlaceDescription] ([Id], [PlaceId], [VoiceFile], [Name], [LanguageCode], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (79, 21, N'http://localhost:8002/etravel/live/hls/sapazhcn/playlist.m3u8', N'阮惠步行街', N'zh-cn     ', N'阮惠步行街（Nguyen Hue Pedestrian Street）是越南胡志明市最繁华和中心的地区之一。于2015年开通，该地区从东开广场一直延伸到统一宫，提供了一个引人入胜的娱乐和购物场所。
阮惠步行街装饰有多彩的LED灯光，并为市民和游客提供了各种便利设施。沿着步行街，您会发现许多商店、餐厅、酒吧以及各种娱乐活动。这里经常举办大型活动、艺术展和文化活动，吸引了许多游客。', CAST(N'2023-07-14T00:00:00.000' AS DateTime), CAST(N'2023-07-14T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[PlaceDescription] ([Id], [PlaceId], [VoiceFile], [Name], [LanguageCode], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (80, 22, N'http://localhost:8002/etravel/live/hls/sapazhcn/playlist.m3u8', N'Anh Sao桥', N'zh-cn     ', N'Anh Sao桥，又称为龙桥，是越南胡志明市的著名建筑地标之一。这座桥横跨胡志明市河，以其独特的建筑风格而闻名，夜晚时有一系列LED灯光营造出各种照明效果。

Anh Sao桥具有独特的设计，有三座高塔和流畅的线条，使其具有现代感和迷人的外观。夜晚，桥上照亮着数千颗彩色LED灯，营造出充满活力和浪漫的景色。这经常是情侣们寻求浪漫氛围并拍摄美丽照片的理想目的地。

Anh Sao桥还经常举办文化和艺术活动，并在桥上设有时尚的酒吧，您可以在那里放松身心，享受饮品。', CAST(N'2023-07-14T00:00:00.000' AS DateTime), CAST(N'2023-07-14T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[PlaceDescription] ([Id], [PlaceId], [VoiceFile], [Name], [LanguageCode], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (81, 23, N'http://localhost:8002/etravel/live/hls/sapazhcn/playlist.m3u8', N'宝隆寺位', N'zh-cn     ', N'宝隆寺是位于越南胡志明市的佛教寺庙。这是该地区重要而宁静的佛教寺庙之一，人们前来寻求宁静，并尊重佛教精神。

宝隆寺建于20世纪40年代，位于宝隆湖旁，绿树成荫和清澈的湖水营造出壮丽的景色。在寺庙里，您可以探索美丽的建筑和精美雕刻的佛像。宝隆寺不仅是一个精神场所，还定期举办宗教活动，是您学习佛教历史和哲学的地方。

宝隆寺经常吸引许多游客和朝圣者前来寻找精神上的平静和启发。它作为一个宁静的避难所，远离都市生活的喧嚣，人们在这里寻求与灵魂和大自然的联系。', CAST(N'2023-07-14T00:00:00.000' AS DateTime), CAST(N'2023-07-14T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[PlaceDescription] ([Id], [PlaceId], [VoiceFile], [Name], [LanguageCode], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (82, 24, N'http://localhost:8002/etravel/live/hls/sapazhcn/playlist.m3u8', N'古芝地道', N'zh-cn     ', N'Cu Chi隧道旅游区是越南胡志明市的一个重要历史目的地，游客可以探索越战时期的地下隧道。这是越南和世界宝贵的历史遗产之一。

Cu Chi隧道在战争中发挥了重要作用，被越共（越南共产主义力量）和平民用作地下防御和交通网络。这个旅游区帮助游客更深入地了解越南人民在战时的生活和斗争。

在Cu Chi的游览中，游客有机会', CAST(N'2023-07-14T00:00:00.000' AS DateTime), CAST(N'2023-07-14T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[PlaceDescription] ([Id], [PlaceId], [VoiceFile], [Name], [LanguageCode], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (83, 27, N'http://localhost:8002/etravel/live/hls/sapazhcn/playlist.m3u8', N'Thao Cam Vien', N'zh-cn     ', N'Thao Cam Vien，又被称为西贡动植物园，是越南胡志明市的一个大型公园和动物园。它是该市受欢迎和引人入胜的旅游景点之一，吸引了来自国内外的游客。

Thao Cam Vien包括一个郁郁葱葱的花园区，设有风景如画的池塘和多样化的植物区。值得注意的是，该公园设有一个热带花园，您可以在宁静的环境中放松身心。

此外，Thao Cam Vien拥有一个动物园，收容了来自世界各地的1000多种动物。游客有机会观察野生动物并了解自然世界的多样性。这里的动物得到了良好的照顾，参观Thao Cam Vien提供了一次既寓教又娱乐的体验。

此外，该公园还提供各种设施，如餐厅、咖啡馆和儿童游乐场，是城市中在自然环境中放松的理想场所。', CAST(N'2023-07-14T00:00:00.000' AS DateTime), CAST(N'2023-07-14T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[PlaceDescription] ([Id], [PlaceId], [VoiceFile], [Name], [LanguageCode], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (84, 28, N'http://localhost:8002/etravel/live/hls/sapazhcn/playlist.m3u8', N'FPT 大学 HCM', N'zh-cn     ', N'FPT University HCM 位于第 9 区高科技园区 D1 街 - 这是该地区的“黄金”地点之一，聚集了领先的公司和企业，例如：FPT Software、英特尔（美国）、Nidec（日本） ...和现代科学技术研究中心。', CAST(N'2023-07-14T00:00:00.000' AS DateTime), CAST(N'2023-07-14T00:00:00.000' AS DateTime), 2)
SET IDENTITY_INSERT [dbo].[PlaceDescription] OFF
GO
SET IDENTITY_INSERT [dbo].[PlaceImage] ON 

INSERT [dbo].[PlaceImage] ([Id], [PlaceId], [Url], [IsPrimary], [Status]) VALUES (1, 7, N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceImg%2FBaoTangChungTichChienTranh%2Fbao-tang-chung-tich-chien-tranh-1.jpg?alt=media&token=8b1c6763-3ff0-4c2c-b85c-348c6cd7ebde', 1, 1)
INSERT [dbo].[PlaceImage] ([Id], [PlaceId], [Url], [IsPrimary], [Status]) VALUES (2, 7, N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceImg%2FBaoTangChungTichChienTranh%2Fbao-tang-chung-tich-chien-tranh-3.jpg?alt=media&token=ddeda0db-640c-4aec-adac-d7044ee222cc', 0, 1)
INSERT [dbo].[PlaceImage] ([Id], [PlaceId], [Url], [IsPrimary], [Status]) VALUES (3, 7, N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceImg%2FBaoTangChungTichChienTranh%2Fbao-tang-chung-tich-chien-tranh-4.jpg?alt=media&token=6163975e-bc24-4fce-8395-1ca3f5e0b5dd', 0, 1)
INSERT [dbo].[PlaceImage] ([Id], [PlaceId], [Url], [IsPrimary], [Status]) VALUES (4, 18, N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceImg%2FBaoTangMyThuat%2Fbaotangmythuat1.jpg?alt=media&token=f26d9e37-f120-4b9e-9d2e-8b239acbbd6a', 1, 1)
INSERT [dbo].[PlaceImage] ([Id], [PlaceId], [Url], [IsPrimary], [Status]) VALUES (5, 18, N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceImg%2FBaoTangMyThuat%2Fbaotangmythuat2.jpg?alt=media&token=3d24cbf9-91da-4086-8037-139e370df035', 0, 1)
INSERT [dbo].[PlaceImage] ([Id], [PlaceId], [Url], [IsPrimary], [Status]) VALUES (6, 18, N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceImg%2FBaoTangMyThuat%2Fbaotangmythuat3.jpg?alt=media&token=d61e9c01-6716-48ea-a057-e9b88d82af75', 0, 1)
INSERT [dbo].[PlaceImage] ([Id], [PlaceId], [Url], [IsPrimary], [Status]) VALUES (7, 18, N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceImg%2FBaoTangMyThuat%2Fbaotangmythuat4.jpg?alt=media&token=6b221158-efc9-4c6b-b6f5-56a6fc6616a8', 0, 1)
INSERT [dbo].[PlaceImage] ([Id], [PlaceId], [Url], [IsPrimary], [Status]) VALUES (8, 12, N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceImg%2FBenNhaRong%2Fbennharong1.jpg?alt=media&token=5def5acf-88ad-4814-b12e-2e3b034d884c', 1, 1)
INSERT [dbo].[PlaceImage] ([Id], [PlaceId], [Url], [IsPrimary], [Status]) VALUES (9, 12, N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceImg%2FBenNhaRong%2Fbennharong2.jpg?alt=media&token=5523dff2-0735-43a1-a247-1c99c6e5c361', 0, 1)
INSERT [dbo].[PlaceImage] ([Id], [PlaceId], [Url], [IsPrimary], [Status]) VALUES (10, 12, N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceImg%2FBenNhaRong%2Fbennharong3.jpg?alt=media&token=6ca33d17-3c1b-4aab-82da-25b9d2fd9268', 0, 1)
INSERT [dbo].[PlaceImage] ([Id], [PlaceId], [Url], [IsPrimary], [Status]) VALUES (11, 12, N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceImg%2FBenNhaRong%2Fbennharong4.jpg?alt=media&token=0b1ce492-b09b-4b9e-a46e-85bf28e03e5b', 0, 1)
INSERT [dbo].[PlaceImage] ([Id], [PlaceId], [Url], [IsPrimary], [Status]) VALUES (12, 8, N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceImg%2FChoBenThanh%2FBen_Thanh_market_1.jpg?alt=media&token=721d337e-d744-4522-af5a-99fc43aab63b', 1, 1)
INSERT [dbo].[PlaceImage] ([Id], [PlaceId], [Url], [IsPrimary], [Status]) VALUES (13, 8, N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceImg%2FChoBenThanh%2FBen_Thanh_market_2.png?alt=media&token=d5a93930-c491-4d8e-9677-1fd1f7a2bbb6', 0, 1)
INSERT [dbo].[PlaceImage] ([Id], [PlaceId], [Url], [IsPrimary], [Status]) VALUES (14, 8, N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceImg%2FChoBenThanh%2Fcho-ben-thanh-ve-dem.jpg?alt=media&token=a757028f-2053-43be-932f-8a4ad1a1e74e', 0, 1)
INSERT [dbo].[PlaceImage] ([Id], [PlaceId], [Url], [IsPrimary], [Status]) VALUES (15, 14, N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceImg%2FChuaGiacLam%2Fchuagiaclam1.jpg?alt=media&token=3fedf533-04d8-4394-83af-8b67a8a731a6', 1, 1)
INSERT [dbo].[PlaceImage] ([Id], [PlaceId], [Url], [IsPrimary], [Status]) VALUES (16, 14, N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceImg%2FChuaGiacLam%2Fchuagiaclam2.jpg?alt=media&token=21042af4-5709-4561-b7b6-ef85923b5522', 0, 1)
INSERT [dbo].[PlaceImage] ([Id], [PlaceId], [Url], [IsPrimary], [Status]) VALUES (17, 14, N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceImg%2FChuaGiacLam%2Fcchuagiaclam3.jpg?alt=media&token=d6cd439b-fb14-4a5e-8372-52217582f5ba', 0, 1)
INSERT [dbo].[PlaceImage] ([Id], [PlaceId], [Url], [IsPrimary], [Status]) VALUES (18, 14, N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceImg%2FChuaGiacLam%2Fchuagiaclam4.jpg?alt=media&token=125d0e70-2875-4be9-9295-b69f1881e0f1', 0, 1)
INSERT [dbo].[PlaceImage] ([Id], [PlaceId], [Url], [IsPrimary], [Status]) VALUES (19, 16, N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceImg%2FCongVien23thang9%2Fcong-vien-23-9_1.jpg?alt=media&token=761e2dcb-0eaf-4096-821b-6e42abf3cb87', 1, 1)
INSERT [dbo].[PlaceImage] ([Id], [PlaceId], [Url], [IsPrimary], [Status]) VALUES (20, 16, N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceImg%2FCongVien23thang9%2Fcong-vien-23-9_2.jpg?alt=media&token=056656fd-6c41-4f97-b25d-d6dc06e7db75', 0, 1)
INSERT [dbo].[PlaceImage] ([Id], [PlaceId], [Url], [IsPrimary], [Status]) VALUES (21, 16, N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceImg%2FCongVien23thang9%2Fcong-vien-23-9_3.jpg?alt=media&token=0a3d5abf-768b-42a2-a972-476321e9306c', 0, 1)
INSERT [dbo].[PlaceImage] ([Id], [PlaceId], [Url], [IsPrimary], [Status]) VALUES (22, 6, N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceImg%2FCongVienTaoDan%2Fcongvientaodan1.jpg?alt=media&token=6f1a542a-2ecf-4808-9c73-c1f899559a04', 1, 1)
INSERT [dbo].[PlaceImage] ([Id], [PlaceId], [Url], [IsPrimary], [Status]) VALUES (23, 6, N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceImg%2FCongVienTaoDan%2Fcongvientaodan2.jpg?alt=media&token=6f616f13-c225-44d2-8ccc-12d7e5b54ce0', 0, 1)
INSERT [dbo].[PlaceImage] ([Id], [PlaceId], [Url], [IsPrimary], [Status]) VALUES (24, 6, N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceImg%2FCongVienTaoDan%2Fcongvientaodan3.jpg?alt=media&token=9559afde-1362-4851-bb14-8190bf986888', 0, 1)
INSERT [dbo].[PlaceImage] ([Id], [PlaceId], [Url], [IsPrimary], [Status]) VALUES (25, 6, N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceImg%2FCongVienTaoDan%2Fcongvientaodan4.jpg?alt=media&token=143d7078-f625-44d4-bdb2-6053f1649cbb', 0, 1)
INSERT [dbo].[PlaceImage] ([Id], [PlaceId], [Url], [IsPrimary], [Status]) VALUES (26, 17, N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceImg%2FDamSen%2Fdamsen1.jpg?alt=media&token=c48f99e1-4841-40a5-aa78-1b7089e14fda', 1, 1)
INSERT [dbo].[PlaceImage] ([Id], [PlaceId], [Url], [IsPrimary], [Status]) VALUES (27, 17, N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceImg%2FDamSen%2Fdamsen2.jpg?alt=media&token=d27e8076-4422-48b0-b089-c3a53ca67ff2', 0, 1)
INSERT [dbo].[PlaceImage] ([Id], [PlaceId], [Url], [IsPrimary], [Status]) VALUES (28, 17, N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceImg%2FDamSen%2Fdamsen3.jpg?alt=media&token=6434e761-3bb0-4c3d-8cca-c145fd22ca68', 0, 1)
INSERT [dbo].[PlaceImage] ([Id], [PlaceId], [Url], [IsPrimary], [Status]) VALUES (29, 17, N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceImg%2FDamSen%2Fdamsen4.jpg?alt=media&token=8d4511b8-6bf2-43f4-b2ea-05e74c09b14b', 0, 1)
INSERT [dbo].[PlaceImage] ([Id], [PlaceId], [Url], [IsPrimary], [Status]) VALUES (30, 24, N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceImg%2F%C4%90%E1%BB%8Ba%20%C4%91%E1%BA%A1o%20C%E1%BB%A7%20Chi%2FDiaDaoCuChi_01?alt=media&token=54a2b14f-bc6a-4a3e-96a7-482acb4bde84', 1, 1)
INSERT [dbo].[PlaceImage] ([Id], [PlaceId], [Url], [IsPrimary], [Status]) VALUES (31, 24, N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceImg%2F%C4%90%E1%BB%8Ba%20%C4%91%E1%BA%A1o%20C%E1%BB%A7%20Chi%2FDiaDaoCuChi_02?alt=media&token=9c28bf26-ca3d-49eb-8fba-6c8ab802f4fd', 0, 1)
INSERT [dbo].[PlaceImage] ([Id], [PlaceId], [Url], [IsPrimary], [Status]) VALUES (32, 24, N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceImg%2F%C4%90%E1%BB%8Ba%20%C4%91%E1%BA%A1o%20C%E1%BB%A7%20Chi%2FDiaDaoCuChi_03?alt=media&token=f498fbba-eee0-4960-80b6-4c961427b2e8', 0, 1)
INSERT [dbo].[PlaceImage] ([Id], [PlaceId], [Url], [IsPrimary], [Status]) VALUES (33, 10, N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceImg%2FDinhDocLap%2Fdinhdoclap1.jpg?alt=media&token=ac2b2526-eb13-48d0-b9c9-3d672d1b91be', 1, 1)
INSERT [dbo].[PlaceImage] ([Id], [PlaceId], [Url], [IsPrimary], [Status]) VALUES (34, 10, N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceImg%2FDinhDocLap%2Fdinhdoclap2.jpg?alt=media&token=264977ec-f171-491e-a3c8-7ba165e12e42', 0, 1)
INSERT [dbo].[PlaceImage] ([Id], [PlaceId], [Url], [IsPrimary], [Status]) VALUES (35, 10, N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceImg%2FDinhDocLap%2Fdinhdoclap3.jpg?alt=media&token=ffa62440-7cde-4f41-b145-312d7b195ec8', 0, 1)
INSERT [dbo].[PlaceImage] ([Id], [PlaceId], [Url], [IsPrimary], [Status]) VALUES (36, 28, N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceImg%2FFPTHCM%2Fdai-hoc-fpt-co-so-thanh-pho-ho-chi-minh.jpg?alt=media&token=fd68d411-4686-4069-9619-411a4b153990&_gl=1*sejmvl*_ga*MTYyNzY2MzU2NC4xNjgyNzcwNTY2*_ga_CW55HF8NVT*MTY5ODg0ODcyMC4zNy4xLjE2OTg4NDkwMDkuNS4wLjA.', 1, 1)
INSERT [dbo].[PlaceImage] ([Id], [PlaceId], [Url], [IsPrimary], [Status]) VALUES (37, 28, N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceImg%2FFPTHCM%2F4-1600585803_1200x0.jpg?alt=media&token=c91282ea-1f04-4fbb-b37e-7834116169da&_gl=1*7o28tc*_ga*MTYyNzY2MzU2NC4xNjgyNzcwNTY2*_ga_CW55HF8NVT*MTY5ODg0ODcyMC4zNy4xLjE2OTg4NDkwMTkuNjAuMC4w', 0, 1)
INSERT [dbo].[PlaceImage] ([Id], [PlaceId], [Url], [IsPrimary], [Status]) VALUES (38, 28, N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceImg%2FFPTHCM%2F2-1600585802_1200x0.jpg?alt=media&token=144cf659-3c68-4661-be5a-02fbe2e6cda1&_gl=1*sevpnw*_ga*MTYyNzY2MzU2NC4xNjgyNzcwNTY2*_ga_CW55HF8NVT*MTY5ODg0ODcyMC4zNy4xLjE2OTg4NDkwMjcuNTIuMC4w', 0, 1)
INSERT [dbo].[PlaceImage] ([Id], [PlaceId], [Url], [IsPrimary], [Status]) VALUES (39, 20, N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceImg%2FBuuDienHoChiMinh%2Fbuudienhcm_01.png?alt=media&token=6c9d9750-64e9-413f-8894-113ac0bccd5b', 1, 1)
INSERT [dbo].[PlaceImage] ([Id], [PlaceId], [Url], [IsPrimary], [Status]) VALUES (40, 20, N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceImg%2FBuuDienHoChiMinh%2Fbuudienhcm_02.jpg?alt=media&token=16a66750-4f03-4bf4-89a7-8a8baacfae0e', 0, 1)
INSERT [dbo].[PlaceImage] ([Id], [PlaceId], [Url], [IsPrimary], [Status]) VALUES (41, 20, N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceImg%2FBuuDienHoChiMinh%2Fbuudienhcm_03.jpg?alt=media&token=ccbb5e15-0c36-404a-ab22-423ee65cb96b', 0, 1)
INSERT [dbo].[PlaceImage] ([Id], [PlaceId], [Url], [IsPrimary], [Status]) VALUES (43, 23, N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceImg%2FCh%C3%B9a%20B%E1%BB%ADu%20Long%2FChuaBuuLong_01?alt=media&token=7176122e-7a16-45e2-a280-b99f19138ddb', 1, 1)
INSERT [dbo].[PlaceImage] ([Id], [PlaceId], [Url], [IsPrimary], [Status]) VALUES (44, 23, N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceImg%2FCh%C3%B9a%20B%E1%BB%ADu%20Long%2FChuaBuuLong_02?alt=media&token=12f86d3c-4755-4a78-ab33-70af7b1cbbf4', 0, 1)
INSERT [dbo].[PlaceImage] ([Id], [PlaceId], [Url], [IsPrimary], [Status]) VALUES (45, 23, N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceImg%2FCh%C3%B9a%20B%E1%BB%ADu%20Long%2FChuaBuuLong_03?alt=media&token=6079bfdc-d5b0-4ecf-b71c-8cceb154cb41', 0, 1)
INSERT [dbo].[PlaceImage] ([Id], [PlaceId], [Url], [IsPrimary], [Status]) VALUES (46, 9, N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceImg%2FBuiVien%2Fbuivien1.jpg?alt=media&token=e0878513-8427-46db-85be-f03bf267b973', 1, 1)
INSERT [dbo].[PlaceImage] ([Id], [PlaceId], [Url], [IsPrimary], [Status]) VALUES (48, 9, N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceImg%2FBuiVien%2Fbuivien2.jpg?alt=media&token=294f15e6-c7a0-420a-8af9-c4a41e3eae01', 0, 1)
INSERT [dbo].[PlaceImage] ([Id], [PlaceId], [Url], [IsPrimary], [Status]) VALUES (49, 9, N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceImg%2FBuiVien%2Fbuivien3.jpg?alt=media&token=cd422d51-307b-4e1d-9624-f1348d32add6', 0, 1)
INSERT [dbo].[PlaceImage] ([Id], [PlaceId], [Url], [IsPrimary], [Status]) VALUES (50, 9, N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceImg%2FBuiVien%2Fbuivien4.jpg?alt=media&token=31d6f599-15b7-4155-8ddd-64b347a1d4de', 0, 1)
INSERT [dbo].[PlaceImage] ([Id], [PlaceId], [Url], [IsPrimary], [Status]) VALUES (51, 15, N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceImg%2FNhaHatThanhPho%2Fnhahathcm1.jpg?alt=media&token=d467b2a9-4dfe-4d1d-bdfe-ca612ac8b393', 1, 1)
INSERT [dbo].[PlaceImage] ([Id], [PlaceId], [Url], [IsPrimary], [Status]) VALUES (52, 15, N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceImg%2FNhaHatThanhPho%2Fnhahathcm2.jpg?alt=media&token=23c37654-7ca8-497b-aee2-e4b70b62280f', 0, 1)
INSERT [dbo].[PlaceImage] ([Id], [PlaceId], [Url], [IsPrimary], [Status]) VALUES (53, 15, N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceImg%2FNhaHatThanhPho%2Fnhahathcm3.jpg?alt=media&token=80f310f2-ad90-4f71-bd8f-9d45ba3cc482', 0, 1)
INSERT [dbo].[PlaceImage] ([Id], [PlaceId], [Url], [IsPrimary], [Status]) VALUES (54, 15, N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceImg%2FNhaHatThanhPho%2Fnhahathcm4.jpg?alt=media&token=0a781052-bb66-4b66-a409-fdfdf9ab8473', 0, 1)
INSERT [dbo].[PlaceImage] ([Id], [PlaceId], [Url], [IsPrimary], [Status]) VALUES (55, 3, N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceImg%2FNhaThoDucBa%2Fnha-tho-duc-ba-2_1624854355.jpg?alt=media&token=cdc367ac-cac7-41e6-9af3-bf1db04d570f', 1, 1)
INSERT [dbo].[PlaceImage] ([Id], [PlaceId], [Url], [IsPrimary], [Status]) VALUES (56, 3, N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceImg%2FNhaThoDucBa%2Fnhatho2.jpg?alt=media&token=4ed8eb08-4eb2-4be0-bcc9-a11206ea3ddb', 0, 1)
INSERT [dbo].[PlaceImage] ([Id], [PlaceId], [Url], [IsPrimary], [Status]) VALUES (57, 3, N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceImg%2FNhaThoDucBa%2Fnhatho3.jpg?alt=media&token=a99e9414-5bae-43c7-a2f4-6578105736ef', 0, 1)
INSERT [dbo].[PlaceImage] ([Id], [PlaceId], [Url], [IsPrimary], [Status]) VALUES (58, 3, N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceImg%2FNhaThoDucBa%2Fnhatho4.jpg?alt=media&token=d111d545-8849-435d-a9ee-f98d74d2e3bc', 0, 1)
INSERT [dbo].[PlaceImage] ([Id], [PlaceId], [Url], [IsPrimary], [Status]) VALUES (59, 21, N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceImg%2FPhoDiBoNguyenHue%2Fphodibonguyenhue_01.jpg?alt=media&token=f52edbda-4a23-479a-a24b-dbe047788260', 1, 1)
INSERT [dbo].[PlaceImage] ([Id], [PlaceId], [Url], [IsPrimary], [Status]) VALUES (60, 21, N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceImg%2FPhoDiBoNguyenHue%2Fphodibonguyenhue_02.jpg?alt=media&token=433e1030-6074-4518-a26b-83b7925e4aaa', 0, 1)
INSERT [dbo].[PlaceImage] ([Id], [PlaceId], [Url], [IsPrimary], [Status]) VALUES (61, 21, N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceImg%2FPhoDiBoNguyenHue%2Fphodibonguyenhue_03.jpg?alt=media&token=be1872fb-bea8-431c-b16b-da58aedee597', 0, 1)
INSERT [dbo].[PlaceImage] ([Id], [PlaceId], [Url], [IsPrimary], [Status]) VALUES (62, 19, N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceImg%2FSuoiTien%2Fkhu-du-lich-suoi-tien-1.jpg?alt=media&token=60b1e491-d86f-4b90-85af-c5a00de5ae9b', 1, 1)
INSERT [dbo].[PlaceImage] ([Id], [PlaceId], [Url], [IsPrimary], [Status]) VALUES (63, 19, N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceImg%2FSuoiTien%2Fkhu-du-lich-suoi-tien-2.jpg?alt=media&token=e167dff6-986c-490c-8e3a-087083d5313a', 0, 1)
INSERT [dbo].[PlaceImage] ([Id], [PlaceId], [Url], [IsPrimary], [Status]) VALUES (64, 19, N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceImg%2FSuoiTien%2Fkhu-du-lich-suoi-tien-3.jpg?alt=media&token=9c9085b9-184f-40ea-a007-1fcb65e3dd33', 0, 1)
INSERT [dbo].[PlaceImage] ([Id], [PlaceId], [Url], [IsPrimary], [Status]) VALUES (65, 27, N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceImg%2FTh%E1%BA%A3o%20C%E1%BA%A7m%20Vi%C3%AAn%2FThaoCamVien_01.png?alt=media&token=fa8b555d-a528-4a81-8940-1151fd2f1e2f', 1, 1)
INSERT [dbo].[PlaceImage] ([Id], [PlaceId], [Url], [IsPrimary], [Status]) VALUES (66, 27, N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceImg%2FTh%E1%BA%A3o%20C%E1%BA%A7m%20Vi%C3%AAn%2FThaoCamVien_02.jpg?alt=media&token=bf3f2382-a233-4c35-b9f0-d6d7ba4b0f3e', 0, 1)
INSERT [dbo].[PlaceImage] ([Id], [PlaceId], [Url], [IsPrimary], [Status]) VALUES (67, 27, N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceImg%2FTh%E1%BA%A3o%20C%E1%BA%A7m%20Vi%C3%AAn%2FThaoCamVien_03.jpg?alt=media&token=0902a370-4689-4fbb-9c5f-5e7f05e76556', 0, 1)
INSERT [dbo].[PlaceImage] ([Id], [PlaceId], [Url], [IsPrimary], [Status]) VALUES (68, 22, N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceImg%2FC%E1%BA%A7u%20%C3%81nh%20Sao%2FCauAnhSao_01?alt=media&token=a6034b6f-cde3-40c7-a8c2-153f67f2c4f2', 1, 1)
INSERT [dbo].[PlaceImage] ([Id], [PlaceId], [Url], [IsPrimary], [Status]) VALUES (70, 22, N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceImg%2FC%E1%BA%A7u%20%C3%81nh%20Sao%2FCauAnhSao_02?alt=media&token=c2a86540-a92d-404e-97bc-5e724122e500', 0, 1)
INSERT [dbo].[PlaceImage] ([Id], [PlaceId], [Url], [IsPrimary], [Status]) VALUES (71, 22, N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceImg%2FC%E1%BA%A7u%20%C3%81nh%20Sao%2FCauAnhSao_03?alt=media&token=f49b17fa-6253-478b-987c-dc1d10705f31', 0, 1)
INSERT [dbo].[PlaceImage] ([Id], [PlaceId], [Url], [IsPrimary], [Status]) VALUES (72, 11, N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceImg%2FBaoTangLichSuTPHCM%2Fbao-tang-lich-su-thanh-pho-ho-chi-minh-1.jpg?alt=media&token=e3c870ba-3331-40e5-a782-ee9af6d958f8', 1, 1)
INSERT [dbo].[PlaceImage] ([Id], [PlaceId], [Url], [IsPrimary], [Status]) VALUES (73, 11, N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceImg%2FBaoTangLichSuTPHCM%2Fbao-tang-lich-su-thanh-pho-ho-chi-minh-2.jpg?alt=media&token=fe196c4e-74a6-413c-8b83-a735a706a2eb', 0, 1)
INSERT [dbo].[PlaceImage] ([Id], [PlaceId], [Url], [IsPrimary], [Status]) VALUES (74, 11, N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceImg%2FBaoTangLichSuTPHCM%2Fbao-tang-lich-su-thanh-pho-ho-chi-minh-3.jpg?alt=media&token=50220c42-9c37-41c0-980c-520abe3fb0b2', 0, 1)
INSERT [dbo].[PlaceImage] ([Id], [PlaceId], [Url], [IsPrimary], [Status]) VALUES (75, 27, N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceImg%2FTh%E1%BA%A3o%20C%E1%BA%A7m%20Vi%C3%AAn%2FThaoCamVien_04.jpg?alt=media&token=6c8eda2a-1702-4af7-a6e4-376ab980bcc1', 0, 1)
INSERT [dbo].[PlaceImage] ([Id], [PlaceId], [Url], [IsPrimary], [Status]) VALUES (76, 24, N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceImg%2F%C4%90%E1%BB%8Ba%20%C4%91%E1%BA%A1o%20C%E1%BB%A7%20Chi%2FDiaDaoCuChi_04?alt=media&token=584197c5-dbb4-4710-b132-fd56a244631d', 0, 1)
INSERT [dbo].[PlaceImage] ([Id], [PlaceId], [Url], [IsPrimary], [Status]) VALUES (77, 23, N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceImg%2FCh%C3%B9a%20B%E1%BB%ADu%20Long%2FChuaBuuLong_04?alt=media&token=66b80c8b-482c-428b-aef6-2475b1762ae9', 0, 1)
INSERT [dbo].[PlaceImage] ([Id], [PlaceId], [Url], [IsPrimary], [Status]) VALUES (78, 22, N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceImg%2FC%E1%BA%A7u%20%C3%81nh%20Sao%2FCauAnhSao_04?alt=media&token=b0a43185-da25-4a7f-8098-4c9016f44fe6', 0, 1)
INSERT [dbo].[PlaceImage] ([Id], [PlaceId], [Url], [IsPrimary], [Status]) VALUES (79, 19, N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceImg%2FSuoiTien%2Fkhu-du-lich-suoi-tien-4.jpg?alt=media&token=15b39922-0dcc-40c8-8a97-d426996706c7', 0, 1)
INSERT [dbo].[PlaceImage] ([Id], [PlaceId], [Url], [IsPrimary], [Status]) VALUES (80, 20, N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceImg%2FBuuDienHoChiMinh%2Fbuudienhcm_04.jpg?alt=media&token=b29cd04a-d3d8-4505-981b-2ff87a682fef', 0, 1)
INSERT [dbo].[PlaceImage] ([Id], [PlaceId], [Url], [IsPrimary], [Status]) VALUES (81, 21, N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceImg%2FPhoDiBoNguyenHue%2Fphodibonguyenhue_04.jpg?alt=media&token=21867e46-1479-4723-8ea4-43f4da0ed644', 0, 1)
SET IDENTITY_INSERT [dbo].[PlaceImage] OFF
GO
SET IDENTITY_INSERT [dbo].[PlaceItem] ON 

INSERT [dbo].[PlaceItem] ([Id], [PlaceId], [Name], [BeaconId], [BeaconMajorNumber], [BeaconMinorNumber], [StartTime], [EndTime], [Url], [Status]) VALUES (1, 3, N'The statue of Our Lady of Peace', N'8FFF4D4E-B2D5-4675-AE08-11766D031DB9', 1, 1, CAST(N'00:00:59' AS Time), CAST(N'00:01:30' AS Time), N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceImg%2FNhaThoDucBa%2FSaigon-Notre-Dame-cathedral-14_1652162955.jpeg?alt=media&token=da11a058-f550-4d7e-adec-d27dfa8a9588', 1)
INSERT [dbo].[PlaceItem] ([Id], [PlaceId], [Name], [BeaconId], [BeaconMajorNumber], [BeaconMinorNumber], [StartTime], [EndTime], [Url], [Status]) VALUES (2, 3, N'Trung tâm Nhà thờ', N'35896370-C702-4521-9C22-56D5AA673B6C', 1, 2, CAST(N'00:02:00' AS Time), CAST(N'00:03:00' AS Time), N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceImg%2FNhaThoDucBa%2F1280px-Cathedral_of_the_Sacred_Heart_Guangzhou_1.jpg?alt=media&token=909765be-6de0-4b79-955a-4d78a86c0cc4', 1)
INSERT [dbo].[PlaceItem] ([Id], [PlaceId], [Name], [BeaconId], [BeaconMajorNumber], [BeaconMinorNumber], [StartTime], [EndTime], [Url], [Status]) VALUES (3, 28, N'Tượng The Self Made Man', N'35896370-C702-4521-9C22-56D5AA673B6C', 1, 3, CAST(N'00:00:59' AS Time), CAST(N'00:01:30' AS Time), N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceImg%2FFPTHCM%2FIMG_7037-1.jpg?alt=media&token=678b1238-a809-48b8-b7fa-9547b498eb19', 1)
INSERT [dbo].[PlaceItem] ([Id], [PlaceId], [Name], [BeaconId], [BeaconMajorNumber], [BeaconMinorNumber], [StartTime], [EndTime], [Url], [Status]) VALUES (4, 28, N'Trống đồng', N'8FFF4D4E-B2D5-4675-AE08-11766D031DB9', 1, 1, CAST(N'00:02:00' AS Time), CAST(N'00:03:00' AS Time), N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceImg%2FFPTHCM%2F3-1-488x325.jpg?alt=media&token=7d39f402-a52e-46f8-9d12-5e5286b5d548', 1)
INSERT [dbo].[PlaceItem] ([Id], [PlaceId], [Name], [BeaconId], [BeaconMajorNumber], [BeaconMinorNumber], [StartTime], [EndTime], [Url], [Status]) VALUES (5, 11, N'Tủ trưng bày áo vua', N'8FFF4D4E-B2D5-4675-AE08-11766D031DB9', 1, 2, CAST(N'00:00:59' AS Time), CAST(N'00:01:30' AS Time), N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceImg%2FBaoTangLichSuTPHCM%2F%C3%81o_vua.jpg?alt=media&token=1dc9fd78-4be6-4ad4-8a61-b1f5489e1947', 1)
INSERT [dbo].[PlaceItem] ([Id], [PlaceId], [Name], [BeaconId], [BeaconMajorNumber], [BeaconMinorNumber], [StartTime], [EndTime], [Url], [Status]) VALUES (6, 11, N'Cọc gỗ Bạch Đằng', N'35896370-C702-4521-9C22-56D5AA673B6C', 1, 3, CAST(N'00:02:00' AS Time), CAST(N'00:03:00' AS Time), N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceImg%2FBaoTangLichSuTPHCM%2Fphu-song-bach-dang.jpg?alt=media&token=0c7ce1bb-272e-4565-967d-df051293d8f7', 1)
INSERT [dbo].[PlaceItem] ([Id], [PlaceId], [Name], [BeaconId], [BeaconMajorNumber], [BeaconMinorNumber], [StartTime], [EndTime], [Url], [Status]) VALUES (7, 11, N'Phòng trưng bày cổ vật thời Tây Sơn', N'14DE87AB-83E7-4C01-A3F9-FF4AD75B818D', 1, 1, CAST(N'00:03:10' AS Time), CAST(N'00:04:00' AS Time), N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceImg%2FBaoTangLichSuTPHCM%2F20190809-134025-lPyqEGSX.jpg?alt=media&token=c1ba5e64-40f9-47f3-81fc-057ccc8a0fd4', 1)
INSERT [dbo].[PlaceItem] ([Id], [PlaceId], [Name], [BeaconId], [BeaconMajorNumber], [BeaconMinorNumber], [StartTime], [EndTime], [Url], [Status]) VALUES (8, 3, N'Bên trong Nhà thờ Đức Bà', N'14DE87AB-83E7-4C01-A3F9-FF4AD75B818D', 1, 2, CAST(N'00:03:10' AS Time), CAST(N'00:04:00' AS Time), N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceImg%2FNhaThoDucBa%2F2-1499219546.jpg?alt=media&token=2c59de64-952d-4df6-8647-318015fb6a3c', 1)
INSERT [dbo].[PlaceItem] ([Id], [PlaceId], [Name], [BeaconId], [BeaconMajorNumber], [BeaconMinorNumber], [StartTime], [EndTime], [Url], [Status]) VALUES (9, 28, N'Khu hồ sen', N'14DE87AB-83E7-4C01-A3F9-FF4AD75B818D', 1, 3, CAST(N'00:03:10' AS Time), CAST(N'00:04:00' AS Time), N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceImg%2FNhaThoDucBa%2Fhosen.jpg?alt=media&token=44cc901a-608a-4721-9261-0f96cbead5fb', 1)
INSERT [dbo].[PlaceItem] ([Id], [PlaceId], [Name], [BeaconId], [BeaconMajorNumber], [BeaconMinorNumber], [StartTime], [EndTime], [Url], [Status]) VALUES (10, 10, N'Khu chuyên đề Dinh độc lập', N'8FFF4D4E-B2D5-4675-AE08-11766D031DB9', 1, 2, CAST(N'00:03:10' AS Time), CAST(N'00:04:00' AS Time), N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceImg%2FDinhDocLap%2Fkhu-chuyen-de-dinh-doc-lap-1692229792.jpg?alt=media&token=98a850b4-d44d-4b35-8121-b838f41a1f9a', 1)
INSERT [dbo].[PlaceItem] ([Id], [PlaceId], [Name], [BeaconId], [BeaconMajorNumber], [BeaconMinorNumber], [StartTime], [EndTime], [Url], [Status]) VALUES (11, 10, N'Khu bổ sung trong Dinh', N'35896370-C702-4521-9C22-56D5AA673B6C', 1, 3, CAST(N'00:02:00' AS Time), CAST(N'00:03:00' AS Time), N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceImg%2FDinhDocLap%2Fdinh-doc-lap11-1619677765.jpg?alt=media&token=40c06cea-ed95-493c-a748-d63786d720c4', 1)
INSERT [dbo].[PlaceItem] ([Id], [PlaceId], [Name], [BeaconId], [BeaconMajorNumber], [BeaconMinorNumber], [StartTime], [EndTime], [Url], [Status]) VALUES (12, 10, N'Khu vực cố định bên trong Dinh Độc Lập', N'14DE87AB-83E7-4C01-A3F9-FF4AD75B818D', 1, 1, CAST(N'00:00:59' AS Time), CAST(N'00:01:30' AS Time), N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceImg%2FDinhDocLap%2F278908699_3153637994849181_2134633712580614793_n.jpg?alt=media&token=2fd5bec3-0ef7-435c-bbb3-efabb6d38b8c', 1)
INSERT [dbo].[PlaceItem] ([Id], [PlaceId], [Name], [BeaconId], [BeaconMajorNumber], [BeaconMinorNumber], [StartTime], [EndTime], [Url], [Status]) VALUES (13, 27, N'Khu vực động vật hoang dã', N'8FFF4D4E-B2D5-4675-AE08-11766D031DB9', 1, 1, CAST(N'00:00:59' AS Time), CAST(N'00:01:50' AS Time), N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceItemImg%2FThaoCamVien%2Fdongvathoangda.jpg?alt=media&token=d28cc2aa-368e-4fce-9798-250d11cca0c3', 1)
INSERT [dbo].[PlaceItem] ([Id], [PlaceId], [Name], [BeaconId], [BeaconMajorNumber], [BeaconMinorNumber], [StartTime], [EndTime], [Url], [Status]) VALUES (14, 27, N'Khu vực động vật hoang dã châu Á', N'35896370-C702-4521-9C22-56D5AA673B6C', 1, 2, CAST(N'00:02:00' AS Time), CAST(N'00:02:50' AS Time), N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceItemImg%2FThaoCamVien%2Fdongvatchaua.jpg?alt=media&token=3bdafb30-31a0-42d9-8fac-3662444cb142', 1)
INSERT [dbo].[PlaceItem] ([Id], [PlaceId], [Name], [BeaconId], [BeaconMajorNumber], [BeaconMinorNumber], [StartTime], [EndTime], [Url], [Status]) VALUES (15, 27, N'Khu vực động vật có vú', N'14DE87AB-83E7-4C01-A3F9-FF4AD75B818D', 1, 3, CAST(N'00:03:10' AS Time), CAST(N'00:04:10' AS Time), N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceItemImg%2FThaoCamVien%2Fdongvatcovu.jpg?alt=media&token=fe1a2907-1fa7-4684-b786-bdfab8beebf3', 1)
INSERT [dbo].[PlaceItem] ([Id], [PlaceId], [Name], [BeaconId], [BeaconMajorNumber], [BeaconMinorNumber], [StartTime], [EndTime], [Url], [Status]) VALUES (16, 24, N'Nhà hầm', N'8FFF4D4E-B2D5-4675-AE08-11766D031DB9', 1, 1, CAST(N'00:00:30' AS Time), CAST(N'00:01:40' AS Time), N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceItemImg%2FDiaDaoCuChi%2Fnhaham.jpg?alt=media&token=b148e4c2-8a93-4445-a746-c9b2bd82f8f6', 1)
INSERT [dbo].[PlaceItem] ([Id], [PlaceId], [Name], [BeaconId], [BeaconMajorNumber], [BeaconMinorNumber], [StartTime], [EndTime], [Url], [Status]) VALUES (17, 24, N'Hệ thống địa đạo', N'35896370-C702-4521-9C22-56D5AA673B6C', 1, 2, CAST(N'00:02:00' AS Time), CAST(N'00:02:30' AS Time), N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceItemImg%2FDiaDaoCuChi%2Fhethongham.jpg?alt=media&token=d9b66425-94bf-4b2e-a827-5e4379be7fd6', 1)
INSERT [dbo].[PlaceItem] ([Id], [PlaceId], [Name], [BeaconId], [BeaconMajorNumber], [BeaconMinorNumber], [StartTime], [EndTime], [Url], [Status]) VALUES (18, 24, N'Lỗ châu mai', N'14DE87AB-83E7-4C01-A3F9-FF4AD75B818D', 1, 3, CAST(N'00:03:00' AS Time), CAST(N'00:04:10' AS Time), N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceItemImg%2FDiaDaoCuChi%2Flochaumai.JPG?alt=media&token=3ea03e35-2085-463c-b92a-f578b41ef25a', 1)
INSERT [dbo].[PlaceItem] ([Id], [PlaceId], [Name], [BeaconId], [BeaconMajorNumber], [BeaconMinorNumber], [StartTime], [EndTime], [Url], [Status]) VALUES (19, 23, N'Chánh điện', N'8FFF4D4E-B2D5-4675-AE08-11766D031DB9', 1, 1, CAST(N'00:00:59' AS Time), CAST(N'00:01:50' AS Time), N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceItemImg%2Fchuabuulong%2Fchanhdien.jpg?alt=media&token=c246be79-c4a8-4ca6-9bbb-b165d5a79e28', 1)
INSERT [dbo].[PlaceItem] ([Id], [PlaceId], [Name], [BeaconId], [BeaconMajorNumber], [BeaconMinorNumber], [StartTime], [EndTime], [Url], [Status]) VALUES (20, 23, N'Tháp chuông', N'35896370-C702-4521-9C22-56D5AA673B6C', 1, 2, CAST(N'00:02:00' AS Time), CAST(N'00:02:50' AS Time), N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceItemImg%2Fchuabuulong%2Fthapchuong2.jpg?alt=media&token=5ee8f600-89d9-4ad8-8fcd-a3375e1d4a83', 1)
INSERT [dbo].[PlaceItem] ([Id], [PlaceId], [Name], [BeaconId], [BeaconMajorNumber], [BeaconMinorNumber], [StartTime], [EndTime], [Url], [Status]) VALUES (21, 23, N'Thiền viện', N'14DE87AB-83E7-4C01-A3F9-FF4AD75B818D', 1, 3, CAST(N'00:03:10' AS Time), CAST(N'00:04:10' AS Time), N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceItemImg%2Fchuabuulong%2Fthienvien.jpg?alt=media&token=33cd96d6-4ca6-431d-8901-e93c9e7bf30d', 1)
INSERT [dbo].[PlaceItem] ([Id], [PlaceId], [Name], [BeaconId], [BeaconMajorNumber], [BeaconMinorNumber], [StartTime], [EndTime], [Url], [Status]) VALUES (22, 22, N'Công viên phía nam cầu', N'8FFF4D4E-B2D5-4675-AE08-11766D031DB9', 1, 1, CAST(N'00:00:40' AS Time), CAST(N'00:01:20' AS Time), N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceItemImg%2FCauAnhSao%2Fcongvien.jpg?alt=media&token=7a4b88f8-e2b7-4475-91f5-2e90b5b8e152', 1)
INSERT [dbo].[PlaceItem] ([Id], [PlaceId], [Name], [BeaconId], [BeaconMajorNumber], [BeaconMinorNumber], [StartTime], [EndTime], [Url], [Status]) VALUES (23, 22, N'Thân cầu', N'35896370-C702-4521-9C22-56D5AA673B6C', 1, 2, CAST(N'00:01:30' AS Time), CAST(N'00:02:20' AS Time), N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceItemImg%2FCauAnhSao%2FThancau.jpg?alt=media&token=b04f370e-dd8b-472c-a1bd-1a2b07d85e44', 1)
INSERT [dbo].[PlaceItem] ([Id], [PlaceId], [Name], [BeaconId], [BeaconMajorNumber], [BeaconMinorNumber], [StartTime], [EndTime], [Url], [Status]) VALUES (24, 22, N'Đài phun nước', N'14DE87AB-83E7-4C01-A3F9-FF4AD75B818D', 1, 3, CAST(N'00:02:40' AS Time), CAST(N'00:03:50' AS Time), N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceItemImg%2FCauAnhSao%2Fdaiphunnuoc.jpg?alt=media&token=8c9df786-02b1-4fdd-86ce-866bc7189a6a', 1)
INSERT [dbo].[PlaceItem] ([Id], [PlaceId], [Name], [BeaconId], [BeaconMajorNumber], [BeaconMinorNumber], [StartTime], [EndTime], [Url], [Status]) VALUES (25, 19, N'Thủy cung', N'8FFF4D4E-B2D5-4675-AE08-11766D031DB9', 1, 1, CAST(N'00:00:30' AS Time), CAST(N'00:01:30' AS Time), N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceItemImg%2FSuoiTien%2Fthuycung.jpg?alt=media&token=67711a72-2653-4ffb-9fc2-70f8891dd43b', 1)
INSERT [dbo].[PlaceItem] ([Id], [PlaceId], [Name], [BeaconId], [BeaconMajorNumber], [BeaconMinorNumber], [StartTime], [EndTime], [Url], [Status]) VALUES (26, 19, N'Biển tiên đồng ngọc nữ', N'35896370-C702-4521-9C22-56D5AA673B6C', 1, 2, CAST(N'00:01:40' AS Time), CAST(N'00:02:20' AS Time), N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceItemImg%2FSuoiTien%2Fbientiendong.jpg?alt=media&token=c1db5592-dcb0-4158-8227-177e0ba16ff7', 1)
INSERT [dbo].[PlaceItem] ([Id], [PlaceId], [Name], [BeaconId], [BeaconMajorNumber], [BeaconMinorNumber], [StartTime], [EndTime], [Url], [Status]) VALUES (27, 19, N'Lâu đài pháp thuật', N'14DE87AB-83E7-4C01-A3F9-FF4AD75B818D', 1, 3, CAST(N'00:02:30' AS Time), CAST(N'00:04:10' AS Time), N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceItemImg%2FSuoiTien%2Flaudaiphepthuat.png?alt=media&token=c98aa75f-5f9a-4a2a-a2f9-2f700447622d', 1)
INSERT [dbo].[PlaceItem] ([Id], [PlaceId], [Name], [BeaconId], [BeaconMajorNumber], [BeaconMinorNumber], [StartTime], [EndTime], [Url], [Status]) VALUES (28, 20, N'Bên trong bưu điện', N'8FFF4D4E-B2D5-4675-AE08-11766D031DB9', 1, 1, CAST(N'00:00:25' AS Time), CAST(N'00:01:20' AS Time), N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceItemImg%2FBuuDienHcm%2Fbuu-dien-thanh-pho-ho-chi-minh.jpg?alt=media&token=033357b3-bb3b-4d08-a97d-3dd87c798b5a', 1)
INSERT [dbo].[PlaceItem] ([Id], [PlaceId], [Name], [BeaconId], [BeaconMajorNumber], [BeaconMinorNumber], [StartTime], [EndTime], [Url], [Status]) VALUES (29, 20, N'Bốt điện thoại xưa', N'35896370-C702-4521-9C22-56D5AA673B6C', 1, 2, CAST(N'00:01:40' AS Time), CAST(N'00:02:30' AS Time), N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceItemImg%2FBuuDienHcm%2Fbotdienthoai.jpg?alt=media&token=6b52ca25-255f-45d6-8a9e-c30a7d773af4', 1)
INSERT [dbo].[PlaceItem] ([Id], [PlaceId], [Name], [BeaconId], [BeaconMajorNumber], [BeaconMinorNumber], [StartTime], [EndTime], [Url], [Status]) VALUES (30, 20, N'Cửa hàng lưu niệm', N'14DE87AB-83E7-4C01-A3F9-FF4AD75B818D', 1, 3, CAST(N'00:02:35' AS Time), CAST(N'00:04:10' AS Time), N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceItemImg%2FBuuDienHcm%2Fcuahangluunien.jpg?alt=media&token=a762ed0a-efda-4b6e-8405-1d4093d1abac', 1)
INSERT [dbo].[PlaceItem] ([Id], [PlaceId], [Name], [BeaconId], [BeaconMajorNumber], [BeaconMinorNumber], [StartTime], [EndTime], [Url], [Status]) VALUES (31, 21, N'Đài Phun Nước Nghệ Thuật', N'8FFF4D4E-B2D5-4675-AE08-11766D031DB9', 1, 1, CAST(N'00:00:30' AS Time), CAST(N'00:01:30' AS Time), N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceItemImg%2FPhoDiBoNguyenHue%2Fdaiphunnuoc.jpg?alt=media&token=17b2fcfb-63c1-476c-9b44-640e6c1312cb', 1)
INSERT [dbo].[PlaceItem] ([Id], [PlaceId], [Name], [BeaconId], [BeaconMajorNumber], [BeaconMinorNumber], [StartTime], [EndTime], [Url], [Status]) VALUES (32, 21, N'Quảng Trường Nguyễn Huệ', N'35896370-C702-4521-9C22-56D5AA673B6C', 1, 2, CAST(N'00:01:40' AS Time), CAST(N'00:02:20' AS Time), N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceItemImg%2FPhoDiBoNguyenHue%2Fquangtruong.jpg?alt=media&token=cc740e70-75ce-40d0-b0db-a1a4f7b4ea1c', 1)
INSERT [dbo].[PlaceItem] ([Id], [PlaceId], [Name], [BeaconId], [BeaconMajorNumber], [BeaconMinorNumber], [StartTime], [EndTime], [Url], [Status]) VALUES (33, 21, N'Chung cư 42 Nguyễn Huệ', N'14DE87AB-83E7-4C01-A3F9-FF4AD75B818D', 1, 3, CAST(N'00:02:30' AS Time), CAST(N'00:04:10' AS Time), N'https://firebasestorage.googleapis.com/v0/b/capstoneetravel-d42ad.appspot.com/o/place%2FPlaceItemImg%2FPhoDiBoNguyenHue%2Fchung-cu-pho-di-bo-nguyen-hue.jpg?alt=media&token=246b886b-d65c-4873-a31b-f6c10f6c63e4', 1)
SET IDENTITY_INSERT [dbo].[PlaceItem] OFF
GO
SET IDENTITY_INSERT [dbo].[PlaceTime] ON 

INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (1, 3, 1, CAST(N'05:30:00' AS Time), CAST(N'21:30:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (3, 3, 2, CAST(N'05:30:00' AS Time), CAST(N'21:30:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (4, 3, 3, CAST(N'05:30:00' AS Time), CAST(N'21:30:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (5, 3, 4, CAST(N'05:30:00' AS Time), CAST(N'21:30:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (6, 3, 5, CAST(N'05:30:00' AS Time), CAST(N'21:30:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (7, 3, 6, CAST(N'05:30:00' AS Time), CAST(N'21:30:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (8, 3, 7, CAST(N'05:30:00' AS Time), CAST(N'21:30:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (9, 6, 1, CAST(N'00:01:00' AS Time), CAST(N'00:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (10, 6, 2, CAST(N'00:01:00' AS Time), CAST(N'00:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (11, 6, 3, CAST(N'00:01:00' AS Time), CAST(N'00:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (12, 6, 4, CAST(N'00:01:00' AS Time), CAST(N'00:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (13, 6, 5, CAST(N'00:01:00' AS Time), CAST(N'00:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (14, 6, 6, CAST(N'00:01:00' AS Time), CAST(N'00:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (15, 6, 7, CAST(N'00:01:00' AS Time), CAST(N'00:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (18, 7, 1, CAST(N'07:30:00' AS Time), CAST(N'18:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (19, 7, 2, CAST(N'07:30:00' AS Time), CAST(N'18:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (20, 7, 3, CAST(N'07:30:00' AS Time), CAST(N'18:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (21, 7, 4, CAST(N'07:30:00' AS Time), CAST(N'18:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (22, 7, 5, CAST(N'07:30:00' AS Time), CAST(N'18:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (23, 7, 6, CAST(N'07:30:00' AS Time), CAST(N'18:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (24, 7, 7, CAST(N'07:30:00' AS Time), CAST(N'18:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (25, 8, 1, CAST(N'04:00:00' AS Time), CAST(N'22:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (26, 8, 2, CAST(N'04:00:00' AS Time), CAST(N'22:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (27, 8, 3, CAST(N'04:00:00' AS Time), CAST(N'22:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (28, 8, 4, CAST(N'04:00:00' AS Time), CAST(N'22:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (29, 8, 5, CAST(N'04:00:00' AS Time), CAST(N'22:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (30, 8, 6, CAST(N'04:00:00' AS Time), CAST(N'22:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (31, 8, 7, CAST(N'04:00:00' AS Time), CAST(N'22:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (33, 9, 1, CAST(N'19:00:00' AS Time), CAST(N'02:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (36, 9, 7, CAST(N'19:00:00' AS Time), CAST(N'02:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (37, 10, 1, CAST(N'08:00:00' AS Time), CAST(N'15:30:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (38, 10, 2, CAST(N'08:00:00' AS Time), CAST(N'15:30:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (39, 10, 3, CAST(N'08:00:00' AS Time), CAST(N'15:30:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (40, 10, 4, CAST(N'08:00:00' AS Time), CAST(N'15:30:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (41, 10, 5, CAST(N'08:00:00' AS Time), CAST(N'15:30:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (42, 10, 6, CAST(N'08:00:00' AS Time), CAST(N'15:30:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (43, 10, 7, CAST(N'08:00:00' AS Time), CAST(N'15:30:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (44, 11, 1, CAST(N'07:30:00' AS Time), CAST(N'18:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (45, 11, 2, CAST(N'07:30:00' AS Time), CAST(N'18:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (46, 11, 3, CAST(N'07:30:00' AS Time), CAST(N'18:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (47, 11, 4, CAST(N'07:30:00' AS Time), CAST(N'18:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (48, 11, 5, CAST(N'07:30:00' AS Time), CAST(N'18:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (49, 11, 6, CAST(N'07:30:00' AS Time), CAST(N'18:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (50, 11, 7, CAST(N'07:30:00' AS Time), CAST(N'18:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (51, 12, 1, CAST(N'07:30:00' AS Time), CAST(N'11:30:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (52, 12, 2, CAST(N'07:30:00' AS Time), CAST(N'11:30:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (53, 12, 3, CAST(N'07:30:00' AS Time), CAST(N'11:30:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (54, 12, 4, CAST(N'07:30:00' AS Time), CAST(N'11:30:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (55, 12, 5, CAST(N'07:30:00' AS Time), CAST(N'11:30:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (56, 12, 6, CAST(N'07:30:00' AS Time), CAST(N'11:30:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (57, 12, 7, CAST(N'07:30:00' AS Time), CAST(N'11:30:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (58, 12, 1, CAST(N'01:30:00' AS Time), CAST(N'05:30:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (59, 12, 2, CAST(N'01:30:00' AS Time), CAST(N'05:30:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (60, 12, 3, CAST(N'01:30:00' AS Time), CAST(N'05:30:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (61, 12, 4, CAST(N'01:30:00' AS Time), CAST(N'05:30:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (62, 12, 5, CAST(N'01:30:00' AS Time), CAST(N'05:30:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (63, 12, 6, CAST(N'01:30:00' AS Time), CAST(N'05:30:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (64, 12, 7, CAST(N'01:30:00' AS Time), CAST(N'05:30:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (66, 14, 1, CAST(N'07:00:00' AS Time), CAST(N'21:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (67, 14, 2, CAST(N'07:00:00' AS Time), CAST(N'21:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (68, 14, 3, CAST(N'07:00:00' AS Time), CAST(N'21:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (69, 14, 4, CAST(N'07:00:00' AS Time), CAST(N'21:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (70, 14, 5, CAST(N'07:00:00' AS Time), CAST(N'21:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (71, 14, 6, CAST(N'07:00:00' AS Time), CAST(N'21:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (72, 14, 7, CAST(N'07:00:00' AS Time), CAST(N'21:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (73, 15, 2, CAST(N'09:00:00' AS Time), CAST(N'16:30:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (74, 15, 3, CAST(N'09:00:00' AS Time), CAST(N'16:30:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (75, 15, 4, CAST(N'09:00:00' AS Time), CAST(N'16:30:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (76, 15, 5, CAST(N'09:00:00' AS Time), CAST(N'16:30:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (77, 15, 6, CAST(N'09:00:00' AS Time), CAST(N'16:30:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (78, 15, 7, CAST(N'09:00:00' AS Time), CAST(N'00:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (79, 15, 1, CAST(N'09:00:00' AS Time), CAST(N'00:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (80, 16, 1, CAST(N'00:01:00' AS Time), CAST(N'00:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (81, 16, 2, CAST(N'00:01:00' AS Time), CAST(N'00:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (82, 16, 3, CAST(N'00:01:00' AS Time), CAST(N'00:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (83, 16, 4, CAST(N'00:01:00' AS Time), CAST(N'00:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (84, 16, 5, CAST(N'00:01:00' AS Time), CAST(N'00:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (85, 16, 6, CAST(N'00:01:00' AS Time), CAST(N'00:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (86, 16, 7, CAST(N'00:01:00' AS Time), CAST(N'00:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (87, 17, 2, CAST(N'08:00:00' AS Time), CAST(N'18:30:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (89, 17, 3, CAST(N'08:00:00' AS Time), CAST(N'18:30:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (90, 17, 4, CAST(N'08:00:00' AS Time), CAST(N'18:30:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (91, 17, 5, CAST(N'08:00:00' AS Time), CAST(N'18:30:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (92, 17, 6, CAST(N'08:00:00' AS Time), CAST(N'18:30:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (93, 17, 7, CAST(N'07:30:00' AS Time), CAST(N'21:30:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (94, 17, 1, CAST(N'07:30:00' AS Time), CAST(N'21:30:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (95, 18, 1, CAST(N'08:00:00' AS Time), CAST(N'17:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (96, 18, 2, CAST(N'08:00:00' AS Time), CAST(N'17:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (97, 18, 3, CAST(N'08:00:00' AS Time), CAST(N'17:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (98, 18, 4, CAST(N'08:00:00' AS Time), CAST(N'17:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (99, 18, 5, CAST(N'08:00:00' AS Time), CAST(N'17:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (100, 18, 6, CAST(N'08:00:00' AS Time), CAST(N'17:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (101, 18, 7, CAST(N'08:00:00' AS Time), CAST(N'17:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (102, 19, 1, CAST(N'07:30:00' AS Time), CAST(N'17:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (103, 19, 2, CAST(N'07:30:00' AS Time), CAST(N'17:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (104, 19, 3, CAST(N'07:30:00' AS Time), CAST(N'17:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (105, 19, 4, CAST(N'07:30:00' AS Time), CAST(N'17:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (106, 19, 5, CAST(N'07:30:00' AS Time), CAST(N'17:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (107, 19, 6, CAST(N'07:30:00' AS Time), CAST(N'17:00:00' AS Time), 1)
GO
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (108, 19, 7, CAST(N'07:30:00' AS Time), CAST(N'17:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (109, 20, 1, CAST(N'07:00:00' AS Time), CAST(N'17:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (110, 20, 2, CAST(N'07:00:00' AS Time), CAST(N'17:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (111, 20, 3, CAST(N'07:00:00' AS Time), CAST(N'17:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (112, 20, 4, CAST(N'07:00:00' AS Time), CAST(N'17:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (113, 20, 5, CAST(N'07:00:00' AS Time), CAST(N'17:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (114, 20, 6, CAST(N'07:00:00' AS Time), CAST(N'17:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (115, 20, 7, CAST(N'07:00:00' AS Time), CAST(N'17:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (116, 21, 1, CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (117, 21, 2, CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (118, 21, 3, CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (119, 21, 4, CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (120, 21, 5, CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (121, 21, 6, CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (122, 21, 7, CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (123, 22, 1, CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (124, 22, 2, CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (125, 22, 3, CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (126, 22, 4, CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (127, 22, 5, CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (128, 22, 6, CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (129, 22, 7, CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (130, 23, 1, CAST(N'08:00:00' AS Time), CAST(N'18:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (131, 23, 2, CAST(N'08:00:00' AS Time), CAST(N'18:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (132, 23, 3, CAST(N'08:00:00' AS Time), CAST(N'18:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (133, 23, 4, CAST(N'08:00:00' AS Time), CAST(N'18:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (134, 23, 5, CAST(N'08:00:00' AS Time), CAST(N'18:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (135, 23, 6, CAST(N'08:00:00' AS Time), CAST(N'18:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (136, 23, 7, CAST(N'08:00:00' AS Time), CAST(N'18:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (137, 24, 1, CAST(N'07:00:00' AS Time), CAST(N'17:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (138, 24, 2, CAST(N'07:00:00' AS Time), CAST(N'17:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (139, 24, 3, CAST(N'07:00:00' AS Time), CAST(N'17:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (140, 24, 4, CAST(N'07:00:00' AS Time), CAST(N'17:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (141, 24, 5, CAST(N'07:00:00' AS Time), CAST(N'17:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (142, 24, 6, CAST(N'07:00:00' AS Time), CAST(N'17:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (143, 24, 7, CAST(N'07:00:00' AS Time), CAST(N'17:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (144, 27, 1, CAST(N'07:00:00' AS Time), CAST(N'17:30:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (145, 27, 2, CAST(N'07:00:00' AS Time), CAST(N'17:30:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (146, 27, 3, CAST(N'07:00:00' AS Time), CAST(N'17:30:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (147, 27, 4, CAST(N'07:00:00' AS Time), CAST(N'17:30:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (148, 27, 5, CAST(N'07:00:00' AS Time), CAST(N'17:30:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (149, 27, 6, CAST(N'07:00:00' AS Time), CAST(N'17:30:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (150, 27, 7, CAST(N'07:00:00' AS Time), CAST(N'17:30:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (151, 28, 1, CAST(N'07:00:00' AS Time), CAST(N'17:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (152, 28, 2, CAST(N'07:00:00' AS Time), CAST(N'17:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (153, 28, 3, CAST(N'07:00:00' AS Time), CAST(N'17:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (154, 28, 4, CAST(N'07:00:00' AS Time), CAST(N'17:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (155, 28, 5, CAST(N'07:00:00' AS Time), CAST(N'17:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (156, 28, 6, CAST(N'07:00:00' AS Time), CAST(N'17:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (157, 28, 7, CAST(N'07:00:00' AS Time), CAST(N'17:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (158, 9, 2, CAST(N'19:00:00' AS Time), CAST(N'02:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (159, 9, 3, CAST(N'19:00:00' AS Time), CAST(N'02:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (160, 9, 4, CAST(N'19:00:00' AS Time), CAST(N'02:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (161, 9, 5, CAST(N'19:00:00' AS Time), CAST(N'02:00:00' AS Time), 1)
INSERT [dbo].[PlaceTime] ([Id], [PlaceId], [DaysOfWeek], [OpenTime], [EndTime], [Status]) VALUES (162, 9, 6, CAST(N'19:00:00' AS Time), CAST(N'02:00:00' AS Time), 1)
SET IDENTITY_INSERT [dbo].[PlaceTime] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([Id], [RoleName], [Status]) VALUES (1, N'Administrator', 1)
INSERT [dbo].[Role] ([Id], [RoleName], [Status]) VALUES (2, N'Moderator', 1)
INSERT [dbo].[Role] ([Id], [RoleName], [Status]) VALUES (3, N'Visitor', 1)
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Transaction] ON 

INSERT [dbo].[Transaction] ([Id], [AccountId], [BookingId], [PaymentMethod], [Description], [Amount], [CreateTime], [UpdateTime], [Status]) VALUES (2, 17, 1, N'MasterCard', N'Thanh toán eTravel', CAST(21.00 AS Decimal(18, 2)), CAST(N'2023-11-24T10:03:00.000' AS DateTime), NULL, 2)
INSERT [dbo].[Transaction] ([Id], [AccountId], [BookingId], [PaymentMethod], [Description], [Amount], [CreateTime], [UpdateTime], [Status]) VALUES (3, 12, 2, N'Banking', N'Thanh toán eTravel', CAST(11.00 AS Decimal(18, 2)), CAST(N'2023-11-24T00:00:00.000' AS DateTime), NULL, 2)
INSERT [dbo].[Transaction] ([Id], [AccountId], [BookingId], [PaymentMethod], [Description], [Amount], [CreateTime], [UpdateTime], [Status]) VALUES (4, 12, 3, N'Paypal', N'Thanh Toan eTravel', CAST(10.00 AS Decimal(18, 2)), CAST(N'2023-10-01T00:00:00.000' AS DateTime), NULL, 2)
INSERT [dbo].[Transaction] ([Id], [AccountId], [BookingId], [PaymentMethod], [Description], [Amount], [CreateTime], [UpdateTime], [Status]) VALUES (5, 12, 4, N'Paypal', N'Thanh toan eTravel', CAST(20.00 AS Decimal(18, 2)), CAST(N'2023-11-24T00:00:00.000' AS DateTime), CAST(N'2023-11-24T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[Transaction] ([Id], [AccountId], [BookingId], [PaymentMethod], [Description], [Amount], [CreateTime], [UpdateTime], [Status]) VALUES (6, 11, 5, N'Paypal', N'Thanh toan Etravel', CAST(15.00 AS Decimal(18, 2)), CAST(N'2023-11-21T00:00:00.000' AS DateTime), CAST(N'2023-11-21T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[Transaction] ([Id], [AccountId], [BookingId], [PaymentMethod], [Description], [Amount], [CreateTime], [UpdateTime], [Status]) VALUES (7, 14, 6, N'Paypal', N'Thanh toan eTravel', CAST(16.00 AS Decimal(18, 2)), CAST(N'2023-11-14T00:00:00.000' AS DateTime), CAST(N'2023-11-14T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[Transaction] ([Id], [AccountId], [BookingId], [PaymentMethod], [Description], [Amount], [CreateTime], [UpdateTime], [Status]) VALUES (8, 19, 7, N'Paypal', N'Thanh toan eTravel', CAST(12.00 AS Decimal(18, 2)), CAST(N'2023-11-14T00:00:00.000' AS DateTime), CAST(N'2023-11-15T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[Transaction] ([Id], [AccountId], [BookingId], [PaymentMethod], [Description], [Amount], [CreateTime], [UpdateTime], [Status]) VALUES (9, 19, 8, N'Paypal', N'Thanh toan eTravel', CAST(7.00 AS Decimal(18, 2)), CAST(N'2023-11-14T00:00:00.000' AS DateTime), CAST(N'2023-11-14T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[Transaction] ([Id], [AccountId], [BookingId], [PaymentMethod], [Description], [Amount], [CreateTime], [UpdateTime], [Status]) VALUES (10, 17, 9, N'Paypal', N'Thanh toan etravel', CAST(16.00 AS Decimal(18, 2)), CAST(N'2023-11-15T00:00:00.000' AS DateTime), CAST(N'2023-11-15T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[Transaction] ([Id], [AccountId], [BookingId], [PaymentMethod], [Description], [Amount], [CreateTime], [UpdateTime], [Status]) VALUES (11, 14, 10, N'Paypal', N'Thanh toan eTravel', CAST(20.00 AS Decimal(18, 2)), CAST(N'2023-11-15T00:00:00.000' AS DateTime), CAST(N'2023-11-15T00:00:00.000' AS DateTime), 2)
INSERT [dbo].[Transaction] ([Id], [AccountId], [BookingId], [PaymentMethod], [Description], [Amount], [CreateTime], [UpdateTime], [Status]) VALUES (12, 4, 11, N'PayPal', N'Thanh toán eTravel - 11', CAST(17.00 AS Decimal(18, 2)), CAST(N'2023-11-25T22:17:51.950' AS DateTime), CAST(N'2023-11-25T22:17:58.000' AS DateTime), 2)
INSERT [dbo].[Transaction] ([Id], [AccountId], [BookingId], [PaymentMethod], [Description], [Amount], [CreateTime], [UpdateTime], [Status]) VALUES (13, 4, 12, N'PayPal', N'Thanh toán eTravel - 12', CAST(10.00 AS Decimal(18, 2)), CAST(N'2023-11-25T22:18:55.120' AS DateTime), CAST(N'2023-11-25T22:18:59.000' AS DateTime), 2)
INSERT [dbo].[Transaction] ([Id], [AccountId], [BookingId], [PaymentMethod], [Description], [Amount], [CreateTime], [UpdateTime], [Status]) VALUES (14, 4, 13, N'PayPal', N'Thanh toán eTravel - 13', CAST(13.00 AS Decimal(18, 2)), CAST(N'2023-11-25T22:19:51.447' AS DateTime), CAST(N'2023-11-27T22:20:01.000' AS DateTime), 2)
INSERT [dbo].[Transaction] ([Id], [AccountId], [BookingId], [PaymentMethod], [Description], [Amount], [CreateTime], [UpdateTime], [Status]) VALUES (15, 5, 14, N'PayPal', N'Thanh toán eTravel - 14', CAST(12.00 AS Decimal(18, 2)), CAST(N'2023-11-27T22:21:15.730' AS DateTime), CAST(N'2023-11-27T22:21:24.000' AS DateTime), 2)
INSERT [dbo].[Transaction] ([Id], [AccountId], [BookingId], [PaymentMethod], [Description], [Amount], [CreateTime], [UpdateTime], [Status]) VALUES (16, 5, 15, N'PayPal', N'Thanh toán eTravel - 15', CAST(12.00 AS Decimal(18, 2)), CAST(N'2023-11-27T22:22:20.830' AS DateTime), CAST(N'2023-11-27T22:22:24.000' AS DateTime), 2)
INSERT [dbo].[Transaction] ([Id], [AccountId], [BookingId], [PaymentMethod], [Description], [Amount], [CreateTime], [UpdateTime], [Status]) VALUES (17, 6, 16, N'PayPal', N'Thanh toán eTravel - 16', CAST(24.00 AS Decimal(18, 2)), CAST(N'2023-11-27T22:24:06.343' AS DateTime), CAST(N'2023-11-27T22:24:12.000' AS DateTime), 2)
INSERT [dbo].[Transaction] ([Id], [AccountId], [BookingId], [PaymentMethod], [Description], [Amount], [CreateTime], [UpdateTime], [Status]) VALUES (18, 8, 17, N'PayPal', N'Thanh toán eTravel - 17', CAST(21.00 AS Decimal(18, 2)), CAST(N'2023-11-27T22:25:31.690' AS DateTime), CAST(N'2023-11-27T22:25:38.000' AS DateTime), 2)
INSERT [dbo].[Transaction] ([Id], [AccountId], [BookingId], [PaymentMethod], [Description], [Amount], [CreateTime], [UpdateTime], [Status]) VALUES (19, 8, 18, N'PayPal', N'Thanh toán eTravel - 18', CAST(15.00 AS Decimal(18, 2)), CAST(N'2023-11-27T22:26:22.660' AS DateTime), CAST(N'2023-11-27T22:26:27.000' AS DateTime), 2)
INSERT [dbo].[Transaction] ([Id], [AccountId], [BookingId], [PaymentMethod], [Description], [Amount], [CreateTime], [UpdateTime], [Status]) VALUES (20, 8, 19, N'PayPal', N'Thanh toán eTravel - 19', CAST(17.00 AS Decimal(18, 2)), CAST(N'2023-11-27T22:27:40.480' AS DateTime), CAST(N'2023-11-27T22:27:45.000' AS DateTime), 2)
INSERT [dbo].[Transaction] ([Id], [AccountId], [BookingId], [PaymentMethod], [Description], [Amount], [CreateTime], [UpdateTime], [Status]) VALUES (21, 8, 20, N'PayPal', N'Thanh toán eTravel - 20', CAST(10.00 AS Decimal(18, 2)), CAST(N'2023-11-27T22:28:44.493' AS DateTime), CAST(N'2023-11-27T22:28:48.000' AS DateTime), 2)
INSERT [dbo].[Transaction] ([Id], [AccountId], [BookingId], [PaymentMethod], [Description], [Amount], [CreateTime], [UpdateTime], [Status]) VALUES (22, 8, 21, N'PayPal', N'Thanh toán eTravel - 21', CAST(8.00 AS Decimal(18, 2)), CAST(N'2023-11-27T22:29:27.810' AS DateTime), CAST(N'2023-11-27T22:29:31.000' AS DateTime), 2)
INSERT [dbo].[Transaction] ([Id], [AccountId], [BookingId], [PaymentMethod], [Description], [Amount], [CreateTime], [UpdateTime], [Status]) VALUES (23, 11, 22, N'PayPal', N'Thanh toán eTravel - 22', CAST(12.00 AS Decimal(18, 2)), CAST(N'2023-11-26T22:30:57.750' AS DateTime), CAST(N'2023-11-26T22:31:01.000' AS DateTime), 2)
INSERT [dbo].[Transaction] ([Id], [AccountId], [BookingId], [PaymentMethod], [Description], [Amount], [CreateTime], [UpdateTime], [Status]) VALUES (24, 11, 23, N'PayPal', N'Thanh toán eTravel - 23', CAST(24.00 AS Decimal(18, 2)), CAST(N'2023-11-26T22:31:25.320' AS DateTime), CAST(N'2023-11-26T22:31:29.000' AS DateTime), 2)
INSERT [dbo].[Transaction] ([Id], [AccountId], [BookingId], [PaymentMethod], [Description], [Amount], [CreateTime], [UpdateTime], [Status]) VALUES (25, 13, 24, N'PayPal', N'Thanh toán eTravel - 24', CAST(9.00 AS Decimal(18, 2)), CAST(N'2023-11-26T22:33:39.320' AS DateTime), CAST(N'2023-11-26T22:33:45.000' AS DateTime), 2)
INSERT [dbo].[Transaction] ([Id], [AccountId], [BookingId], [PaymentMethod], [Description], [Amount], [CreateTime], [UpdateTime], [Status]) VALUES (26, 13, 25, N'PayPal', N'Thanh toán eTravel - 25', CAST(17.00 AS Decimal(18, 2)), CAST(N'2023-11-26T22:34:07.350' AS DateTime), CAST(N'2023-11-26T22:34:11.000' AS DateTime), 2)
INSERT [dbo].[Transaction] ([Id], [AccountId], [BookingId], [PaymentMethod], [Description], [Amount], [CreateTime], [UpdateTime], [Status]) VALUES (27, 14, 26, N'PayPal', N'Thanh toán eTravel - 26', CAST(21.00 AS Decimal(18, 2)), CAST(N'2023-11-26T22:35:04.013' AS DateTime), CAST(N'2023-11-26T22:35:07.000' AS DateTime), 2)
INSERT [dbo].[Transaction] ([Id], [AccountId], [BookingId], [PaymentMethod], [Description], [Amount], [CreateTime], [UpdateTime], [Status]) VALUES (28, 15, 27, N'PayPal', N'Thanh toán eTravel - 27', CAST(9.00 AS Decimal(18, 2)), CAST(N'2023-11-26T22:37:02.387' AS DateTime), NULL, 1)
INSERT [dbo].[Transaction] ([Id], [AccountId], [BookingId], [PaymentMethod], [Description], [Amount], [CreateTime], [UpdateTime], [Status]) VALUES (29, 16, 28, N'PayPal', N'Thanh toán eTravel - 28', CAST(16.00 AS Decimal(18, 2)), CAST(N'2023-11-29T22:40:12.617' AS DateTime), CAST(N'2023-11-29T22:40:20.000' AS DateTime), 2)
INSERT [dbo].[Transaction] ([Id], [AccountId], [BookingId], [PaymentMethod], [Description], [Amount], [CreateTime], [UpdateTime], [Status]) VALUES (30, 16, 29, N'PayPal', N'Thanh toán eTravel - 29', CAST(17.00 AS Decimal(18, 2)), CAST(N'2023-11-29T22:41:14.693' AS DateTime), CAST(N'2023-11-29T22:41:18.000' AS DateTime), 2)
INSERT [dbo].[Transaction] ([Id], [AccountId], [BookingId], [PaymentMethod], [Description], [Amount], [CreateTime], [UpdateTime], [Status]) VALUES (31, 17, 30, N'PayPal', N'Thanh toán eTravel - 30', CAST(12.00 AS Decimal(18, 2)), CAST(N'2023-11-29T22:43:06.230' AS DateTime), CAST(N'2023-11-29T22:43:08.000' AS DateTime), 2)
INSERT [dbo].[Transaction] ([Id], [AccountId], [BookingId], [PaymentMethod], [Description], [Amount], [CreateTime], [UpdateTime], [Status]) VALUES (32, 18, 31, N'PayPal', N'Thanh toán eTravel - 31', CAST(12.00 AS Decimal(18, 2)), CAST(N'2023-11-29T22:44:50.250' AS DateTime), CAST(N'2023-11-29T22:44:54.000' AS DateTime), 2)
INSERT [dbo].[Transaction] ([Id], [AccountId], [BookingId], [PaymentMethod], [Description], [Amount], [CreateTime], [UpdateTime], [Status]) VALUES (33, 18, 32, N'PayPal', N'Thanh toán eTravel - 32', CAST(14.00 AS Decimal(18, 2)), CAST(N'2023-11-29T22:45:56.817' AS DateTime), CAST(N'2023-11-29T22:46:03.000' AS DateTime), 2)
INSERT [dbo].[Transaction] ([Id], [AccountId], [BookingId], [PaymentMethod], [Description], [Amount], [CreateTime], [UpdateTime], [Status]) VALUES (34, 20, 33, N'PayPal', N'Thanh toán eTravel - 33', CAST(9.00 AS Decimal(18, 2)), CAST(N'2023-11-29T22:47:25.880' AS DateTime), CAST(N'2023-11-29T22:47:30.000' AS DateTime), 2)
INSERT [dbo].[Transaction] ([Id], [AccountId], [BookingId], [PaymentMethod], [Description], [Amount], [CreateTime], [UpdateTime], [Status]) VALUES (35, 21, 34, N'PayPal', N'Thanh toán eTravel - 34', CAST(24.00 AS Decimal(18, 2)), CAST(N'2023-11-29T22:48:59.200' AS DateTime), CAST(N'2023-11-29T22:49:02.000' AS DateTime), 2)
INSERT [dbo].[Transaction] ([Id], [AccountId], [BookingId], [PaymentMethod], [Description], [Amount], [CreateTime], [UpdateTime], [Status]) VALUES (36, 21, 35, N'PayPal', N'Thanh toán eTravel - 35', CAST(9.00 AS Decimal(18, 2)), CAST(N'2023-11-24T22:50:08.517' AS DateTime), CAST(N'2023-11-24T22:50:21.000' AS DateTime), 2)
INSERT [dbo].[Transaction] ([Id], [AccountId], [BookingId], [PaymentMethod], [Description], [Amount], [CreateTime], [UpdateTime], [Status]) VALUES (37, 21, 36, N'PayPal', N'Thanh toán eTravel - 36', CAST(12.00 AS Decimal(18, 2)), CAST(N'2023-11-24T22:51:19.890' AS DateTime), CAST(N'2023-11-24T22:51:23.000' AS DateTime), 2)
INSERT [dbo].[Transaction] ([Id], [AccountId], [BookingId], [PaymentMethod], [Description], [Amount], [CreateTime], [UpdateTime], [Status]) VALUES (38, 22, 37, N'PayPal', N'Thanh toán eTravel - 37', CAST(12.00 AS Decimal(18, 2)), CAST(N'2023-11-24T22:54:11.540' AS DateTime), CAST(N'2023-11-24T22:54:16.000' AS DateTime), 2)
INSERT [dbo].[Transaction] ([Id], [AccountId], [BookingId], [PaymentMethod], [Description], [Amount], [CreateTime], [UpdateTime], [Status]) VALUES (39, 22, 38, N'PayPal', N'Thanh toán eTravel - 38', CAST(14.00 AS Decimal(18, 2)), CAST(N'2023-11-24T22:54:59.917' AS DateTime), CAST(N'2023-11-24T22:55:11.000' AS DateTime), 2)
SET IDENTITY_INSERT [dbo].[Transaction] OFF
GO
SET IDENTITY_INSERT [dbo].[TransactionDetail] ON 

INSERT [dbo].[TransactionDetail] ([Id], [TransactionId], [PaymentId], [CaptureId], [PaymentAccountId], [Amount], [Currency], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (1, 2, N'pm_1NwLb42eZvKYlo2Cc6YKElow', N'pi_1Gt0582eZvKYlo2CGSidzWqK_secret_oXf7YqqAuu7ZTT34ELNOKUgCB', N'73384854-40a9-4dc4-9b13-2be38b147ae2', CAST(21.00 AS Decimal(18, 2)), N'usd', N'Thanh toan Etravel', CAST(N'2023-11-24T00:00:00.000' AS DateTime), NULL, 1)
INSERT [dbo].[TransactionDetail] ([Id], [TransactionId], [PaymentId], [CaptureId], [PaymentAccountId], [Amount], [Currency], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (2, 3, N'pm_2NwLb42eZvKYlo2Cc6YKElow', N'pi_2Gt0582eZvKYlo2CGSidzWqK_secret_oXf7YqqAuu7ZTT34ELNOKUgCB', N'fed1cff5-4f25-40bf-aaca-bdb91f59c51e', CAST(11.00 AS Decimal(18, 2)), N'usd', N'Thanh toan Etravel', CAST(N'2023-11-24T00:00:00.000' AS DateTime), NULL, 1)
INSERT [dbo].[TransactionDetail] ([Id], [TransactionId], [PaymentId], [CaptureId], [PaymentAccountId], [Amount], [Currency], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (3, 4, N'pm_1NwLb42eZvKYlo2Cc6YKElow', N'pi_1Gt0582eZvKYlo2CGSidzWqK_secret_oXf7YqqAuu7ZTT34ELNOKUgCB', N'73384854-40a9-4dc4-9b13-2be38b147ae2', CAST(10.00 AS Decimal(18, 2)), N'usd', N'Thanh toan eTravel', CAST(N'2023-10-01T00:00:00.000' AS DateTime), CAST(N'2023-10-01T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[TransactionDetail] ([Id], [TransactionId], [PaymentId], [CaptureId], [PaymentAccountId], [Amount], [Currency], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (4, 5, N'pm_2NwLb42eZvKYlo2Cc6YKElow', N'pi_1Gt0582eZvKYlo2CGSidzWqK_secret_oXf7YqqAuu7ZTT34ELNOKUgCB', N'73384854-40a9-4dc4-9b13-2be38b147ae2', CAST(20.00 AS Decimal(18, 2)), N'usd', N'Thanh toan eTravel', CAST(N'2023-11-24T00:00:00.000' AS DateTime), CAST(N'2023-11-24T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[TransactionDetail] ([Id], [TransactionId], [PaymentId], [CaptureId], [PaymentAccountId], [Amount], [Currency], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (5, 6, N'pm_1NwLb42eZvKYlo2Cc6YKElow', N'pi_2Gt0582eZvKYlo2CGSidzWqK_secret_oXf7YqqAuu7ZTT34ELNOKUgCB', N'fed1cff5-4f25-40bf-aaca-bdb91f59c51e', CAST(15.00 AS Decimal(18, 2)), N'usd', N'Thanh toan eTravel', CAST(N'2023-11-21T00:00:00.000' AS DateTime), CAST(N'2023-11-21T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[TransactionDetail] ([Id], [TransactionId], [PaymentId], [CaptureId], [PaymentAccountId], [Amount], [Currency], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (6, 7, N'pm_2NwLb42eZvKYlo2Cc6YKElow', N'pi_1Gt0582eZvKYlo2CGSidzWqK_secret_oXf7YqqAuu7ZTT34ELNOKUgCB', N'73384854-40a9-4dc4-9b13-2be38b147ae2', CAST(16.00 AS Decimal(18, 2)), N'usd', N'Thanh toan eTravel', CAST(N'2023-11-14T00:00:00.000' AS DateTime), CAST(N'2023-11-14T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[TransactionDetail] ([Id], [TransactionId], [PaymentId], [CaptureId], [PaymentAccountId], [Amount], [Currency], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (7, 8, N'pm_1NwLb42eZvKYlo2Cc6YKElow', N'pi_2Gt0582eZvKYlo2CGSidzWqK_secret_oXf7YqqAuu7ZTT34ELNOKUgCB', N'fed1cff5-4f25-40bf-aaca-bdb91f59c51e', CAST(12.00 AS Decimal(18, 2)), N'usd', N'Thanh toan ETravel', CAST(N'2023-11-14T00:00:00.000' AS DateTime), CAST(N'2023-11-14T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[TransactionDetail] ([Id], [TransactionId], [PaymentId], [CaptureId], [PaymentAccountId], [Amount], [Currency], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (8, 9, N'pm_2NwLb42eZvKYlo2Cc6YKElow', N'pi_1Gt0582eZvKYlo2CGSidzWqK_secret_oXf7YqqAuu7ZTT34ELNOKUgCB', N'73384854-40a9-4dc4-9b13-2be38b147ae2', CAST(7.00 AS Decimal(18, 2)), N'usd', N'Thanh toan eTravel', CAST(N'2023-11-15T00:00:00.000' AS DateTime), CAST(N'2023-11-15T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[TransactionDetail] ([Id], [TransactionId], [PaymentId], [CaptureId], [PaymentAccountId], [Amount], [Currency], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (9, 10, N'pm_1NwLb42eZvKYlo2Cc6YKElow', N'pi_2Gt0582eZvKYlo2CGSidzWqK_secret_oXf7YqqAuu7ZTT34ELNOKUgCB', N'fed1cff5-4f25-40bf-aaca-bdb91f59c51e', CAST(16.00 AS Decimal(18, 2)), N'usd', N'Thanh toan eTravel', CAST(N'2023-11-15T00:00:00.000' AS DateTime), CAST(N'2023-11-15T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[TransactionDetail] ([Id], [TransactionId], [PaymentId], [CaptureId], [PaymentAccountId], [Amount], [Currency], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (10, 11, N'pm_2NwLb42eZvKYlo2Cc6YKElow', N'pi_1Gt0582eZvKYlo2CGSidzWqK_secret_oXf7YqqAuu7ZTT34ELNOKUgCB', N'73384854-40a9-4dc4-9b13-2be38b147ae2', CAST(20.00 AS Decimal(18, 2)), N'usd', N'Thanh toan eTravel', CAST(N'2023-11-15T00:00:00.000' AS DateTime), CAST(N'2023-11-15T00:00:00.000' AS DateTime), 1)
INSERT [dbo].[TransactionDetail] ([Id], [TransactionId], [PaymentId], [CaptureId], [PaymentAccountId], [Amount], [Currency], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (11, 12, N'4VS0608115463161W', N'8UB48020E10284242', N'6NGJJGV3CLRD8', CAST(17.00 AS Decimal(18, 2)), N'USD', N'Thanh toán eTravel - 11', CAST(N'2023-11-25T22:17:46.000' AS DateTime), CAST(N'2023-11-25T22:17:58.000' AS DateTime), 2)
INSERT [dbo].[TransactionDetail] ([Id], [TransactionId], [PaymentId], [CaptureId], [PaymentAccountId], [Amount], [Currency], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (12, 13, N'5RM18864GK978232N', N'9M498093HP527181R', N'6NGJJGV3CLRD8', CAST(10.00 AS Decimal(18, 2)), N'USD', N'Thanh toán eTravel - 12', CAST(N'2023-11-25T22:18:49.000' AS DateTime), CAST(N'2023-11-25T22:18:59.000' AS DateTime), 2)
INSERT [dbo].[TransactionDetail] ([Id], [TransactionId], [PaymentId], [CaptureId], [PaymentAccountId], [Amount], [Currency], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (13, 14, N'4GM33485YC150753C', N'94S670812U820614S', N'6NGJJGV3CLRD8', CAST(13.00 AS Decimal(18, 2)), N'USD', N'Thanh toán eTravel - 13', CAST(N'2023-11-25T22:19:45.000' AS DateTime), CAST(N'2023-11-27T22:20:01.000' AS DateTime), 2)
INSERT [dbo].[TransactionDetail] ([Id], [TransactionId], [PaymentId], [CaptureId], [PaymentAccountId], [Amount], [Currency], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (14, 15, N'1MH33589UX854880V', N'2TJ25937SD339393S', N'6NGJJGV3CLRD8', CAST(12.00 AS Decimal(18, 2)), N'USD', N'Thanh toán eTravel - 14', CAST(N'2023-11-27T22:21:10.000' AS DateTime), CAST(N'2023-11-27T22:21:24.000' AS DateTime), 2)
INSERT [dbo].[TransactionDetail] ([Id], [TransactionId], [PaymentId], [CaptureId], [PaymentAccountId], [Amount], [Currency], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (15, 16, N'0FU846894X918390U', N'5P971139L5548993X', N'6NGJJGV3CLRD8', CAST(12.00 AS Decimal(18, 2)), N'USD', N'Thanh toán eTravel - 15', CAST(N'2023-11-27T22:22:15.000' AS DateTime), CAST(N'2023-11-27T22:22:24.000' AS DateTime), 2)
INSERT [dbo].[TransactionDetail] ([Id], [TransactionId], [PaymentId], [CaptureId], [PaymentAccountId], [Amount], [Currency], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (16, 17, N'7DR871656T221260T', N'39H4652987567294S', N'6NGJJGV3CLRD8', CAST(24.00 AS Decimal(18, 2)), N'USD', N'Thanh toán eTravel - 16', CAST(N'2023-11-27T22:24:00.000' AS DateTime), CAST(N'2023-11-27T22:24:12.000' AS DateTime), 2)
INSERT [dbo].[TransactionDetail] ([Id], [TransactionId], [PaymentId], [CaptureId], [PaymentAccountId], [Amount], [Currency], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (17, 18, N'8MN20752T87050412', N'9B400899888286338', N'6NGJJGV3CLRD8', CAST(21.00 AS Decimal(18, 2)), N'USD', N'Thanh toán eTravel - 17', CAST(N'2023-11-27T22:25:26.000' AS DateTime), CAST(N'2023-11-27T22:25:38.000' AS DateTime), 2)
INSERT [dbo].[TransactionDetail] ([Id], [TransactionId], [PaymentId], [CaptureId], [PaymentAccountId], [Amount], [Currency], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (18, 19, N'0FB53437D83282738', N'1LM552784A661464C', N'6NGJJGV3CLRD8', CAST(15.00 AS Decimal(18, 2)), N'USD', N'Thanh toán eTravel - 18', CAST(N'2023-11-27T22:26:17.000' AS DateTime), CAST(N'2023-11-27T22:26:27.000' AS DateTime), 2)
INSERT [dbo].[TransactionDetail] ([Id], [TransactionId], [PaymentId], [CaptureId], [PaymentAccountId], [Amount], [Currency], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (19, 20, N'5WY593073P938115G', N'2PK88077FL814210L', N'6NGJJGV3CLRD8', CAST(17.00 AS Decimal(18, 2)), N'USD', N'Thanh toán eTravel - 19', CAST(N'2023-11-27T22:27:34.000' AS DateTime), CAST(N'2023-11-27T22:27:45.000' AS DateTime), 2)
INSERT [dbo].[TransactionDetail] ([Id], [TransactionId], [PaymentId], [CaptureId], [PaymentAccountId], [Amount], [Currency], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (20, 21, N'10998977K1093863N', N'12L593779X895674B', N'6NGJJGV3CLRD8', CAST(10.00 AS Decimal(18, 2)), N'USD', N'Thanh toán eTravel - 20', CAST(N'2023-11-27T22:28:38.000' AS DateTime), CAST(N'2023-11-27T22:28:48.000' AS DateTime), 2)
INSERT [dbo].[TransactionDetail] ([Id], [TransactionId], [PaymentId], [CaptureId], [PaymentAccountId], [Amount], [Currency], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (21, 22, N'9ET66220RU564413C', N'41M734059H869333R', N'6NGJJGV3CLRD8', CAST(8.00 AS Decimal(18, 2)), N'USD', N'Thanh toán eTravel - 21', CAST(N'2023-11-27T22:29:22.000' AS DateTime), CAST(N'2023-11-27T22:29:31.000' AS DateTime), 2)
INSERT [dbo].[TransactionDetail] ([Id], [TransactionId], [PaymentId], [CaptureId], [PaymentAccountId], [Amount], [Currency], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (22, 23, N'7VC14641GA753125G', N'29F27628HW919303R', N'6NGJJGV3CLRD8', CAST(12.00 AS Decimal(18, 2)), N'USD', N'Thanh toán eTravel - 22', CAST(N'2023-11-26T22:30:51.000' AS DateTime), CAST(N'2023-11-26T22:31:01.000' AS DateTime), 2)
INSERT [dbo].[TransactionDetail] ([Id], [TransactionId], [PaymentId], [CaptureId], [PaymentAccountId], [Amount], [Currency], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (23, 24, N'4J016373CN327150V', N'62J82036T42950904', N'6NGJJGV3CLRD8', CAST(24.00 AS Decimal(18, 2)), N'USD', N'Thanh toán eTravel - 23', CAST(N'2023-11-26T22:31:19.000' AS DateTime), CAST(N'2023-11-26T22:31:29.000' AS DateTime), 2)
INSERT [dbo].[TransactionDetail] ([Id], [TransactionId], [PaymentId], [CaptureId], [PaymentAccountId], [Amount], [Currency], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (24, 25, N'63C12476DG342445M', N'3PM56121V31357529', N'6NGJJGV3CLRD8', CAST(9.00 AS Decimal(18, 2)), N'USD', N'Thanh toán eTravel - 24', CAST(N'2023-11-26T22:33:33.000' AS DateTime), CAST(N'2023-11-26T22:33:45.000' AS DateTime), 2)
INSERT [dbo].[TransactionDetail] ([Id], [TransactionId], [PaymentId], [CaptureId], [PaymentAccountId], [Amount], [Currency], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (25, 26, N'0RB38175M3009715D', N'99K23443RP682472A', N'6NGJJGV3CLRD8', CAST(17.00 AS Decimal(18, 2)), N'USD', N'Thanh toán eTravel - 25', CAST(N'2023-11-26T22:34:02.000' AS DateTime), CAST(N'2023-11-26T22:34:11.000' AS DateTime), 2)
INSERT [dbo].[TransactionDetail] ([Id], [TransactionId], [PaymentId], [CaptureId], [PaymentAccountId], [Amount], [Currency], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (26, 27, N'5F802287012401133', N'03A47377V4736825P', N'6NGJJGV3CLRD8', CAST(21.00 AS Decimal(18, 2)), N'USD', N'Thanh toán eTravel - 26', CAST(N'2023-11-26T22:34:58.000' AS DateTime), CAST(N'2023-11-26T22:35:07.000' AS DateTime), 2)
INSERT [dbo].[TransactionDetail] ([Id], [TransactionId], [PaymentId], [CaptureId], [PaymentAccountId], [Amount], [Currency], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (27, 28, N'0RN17929T6336031H', NULL, NULL, CAST(9.00 AS Decimal(18, 2)), N'USD', N'Thanh toán eTravel - 27', CAST(N'2023-11-26T22:36:56.000' AS DateTime), NULL, 0)
INSERT [dbo].[TransactionDetail] ([Id], [TransactionId], [PaymentId], [CaptureId], [PaymentAccountId], [Amount], [Currency], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (28, 29, N'9N057926D0849371X', N'6AM4893074029873U', N'6NGJJGV3CLRD8', CAST(16.00 AS Decimal(18, 2)), N'USD', N'Thanh toán eTravel - 28', CAST(N'2023-11-29T22:40:07.000' AS DateTime), CAST(N'2023-11-29T22:40:20.000' AS DateTime), 2)
INSERT [dbo].[TransactionDetail] ([Id], [TransactionId], [PaymentId], [CaptureId], [PaymentAccountId], [Amount], [Currency], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (29, 30, N'18X22476TA946853M', N'3LB21552U1101904G', N'6NGJJGV3CLRD8', CAST(17.00 AS Decimal(18, 2)), N'USD', N'Thanh toán eTravel - 29', CAST(N'2023-11-29T22:41:08.000' AS DateTime), CAST(N'2023-11-29T22:41:18.000' AS DateTime), 2)
INSERT [dbo].[TransactionDetail] ([Id], [TransactionId], [PaymentId], [CaptureId], [PaymentAccountId], [Amount], [Currency], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (30, 31, N'3Y4072390A911550X', N'85T21266P6233144H', N'6NGJJGV3CLRD8', CAST(12.00 AS Decimal(18, 2)), N'USD', N'Thanh toán eTravel - 30', CAST(N'2023-11-29T22:43:00.000' AS DateTime), CAST(N'2023-11-29T22:43:08.000' AS DateTime), 2)
INSERT [dbo].[TransactionDetail] ([Id], [TransactionId], [PaymentId], [CaptureId], [PaymentAccountId], [Amount], [Currency], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (31, 32, N'8Y024712PV7176940', N'2TN349934E450761Y', N'6NGJJGV3CLRD8', CAST(12.00 AS Decimal(18, 2)), N'USD', N'Thanh toán eTravel - 31', CAST(N'2023-11-29T22:44:44.000' AS DateTime), CAST(N'2023-11-29T22:44:54.000' AS DateTime), 2)
INSERT [dbo].[TransactionDetail] ([Id], [TransactionId], [PaymentId], [CaptureId], [PaymentAccountId], [Amount], [Currency], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (32, 33, N'5KT17501TV9544304', N'58676549DB7462200', N'6NGJJGV3CLRD8', CAST(14.00 AS Decimal(18, 2)), N'USD', N'Thanh toán eTravel - 32', CAST(N'2023-11-29T22:45:51.000' AS DateTime), CAST(N'2023-11-29T22:46:03.000' AS DateTime), 2)
INSERT [dbo].[TransactionDetail] ([Id], [TransactionId], [PaymentId], [CaptureId], [PaymentAccountId], [Amount], [Currency], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (33, 34, N'6LG00523D8677642G', N'66A26790S2918282F', N'6NGJJGV3CLRD8', CAST(9.00 AS Decimal(18, 2)), N'USD', N'Thanh toán eTravel - 33', CAST(N'2023-11-29T22:47:19.000' AS DateTime), CAST(N'2023-11-29T22:47:30.000' AS DateTime), 2)
INSERT [dbo].[TransactionDetail] ([Id], [TransactionId], [PaymentId], [CaptureId], [PaymentAccountId], [Amount], [Currency], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (34, 35, N'3M1253099E647280L', N'7FU57979L1963991Y', N'6NGJJGV3CLRD8', CAST(24.00 AS Decimal(18, 2)), N'USD', N'Thanh toán eTravel - 34', CAST(N'2023-11-29T22:48:53.000' AS DateTime), CAST(N'2023-11-29T22:49:02.000' AS DateTime), 2)
INSERT [dbo].[TransactionDetail] ([Id], [TransactionId], [PaymentId], [CaptureId], [PaymentAccountId], [Amount], [Currency], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (35, 36, N'15926948AX891822H', N'1RM75317FM703453N', N'6NGJJGV3CLRD8', CAST(9.00 AS Decimal(18, 2)), N'USD', N'Thanh toán eTravel - 35', CAST(N'2023-11-24T22:50:02.000' AS DateTime), CAST(N'2023-11-24T22:50:21.000' AS DateTime), 2)
INSERT [dbo].[TransactionDetail] ([Id], [TransactionId], [PaymentId], [CaptureId], [PaymentAccountId], [Amount], [Currency], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (36, 37, N'8G660695S8108160H', N'1HD01019BE368532V', N'6NGJJGV3CLRD8', CAST(12.00 AS Decimal(18, 2)), N'USD', N'Thanh toán eTravel - 36', CAST(N'2023-11-24T22:51:13.000' AS DateTime), CAST(N'2023-11-24T22:51:23.000' AS DateTime), 2)
INSERT [dbo].[TransactionDetail] ([Id], [TransactionId], [PaymentId], [CaptureId], [PaymentAccountId], [Amount], [Currency], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (37, 38, N'3V86400226338432T', N'2VW740327G838925T', N'6NGJJGV3CLRD8', CAST(12.00 AS Decimal(18, 2)), N'USD', N'Thanh toán eTravel - 37', CAST(N'2023-11-24T22:54:06.000' AS DateTime), CAST(N'2023-11-24T22:54:16.000' AS DateTime), 2)
INSERT [dbo].[TransactionDetail] ([Id], [TransactionId], [PaymentId], [CaptureId], [PaymentAccountId], [Amount], [Currency], [Description], [CreateTime], [UpdateTime], [Status]) VALUES (38, 39, N'2Y327224FA7353116', N'81921105NL198344B', N'6NGJJGV3CLRD8', CAST(14.00 AS Decimal(18, 2)), N'USD', N'Thanh toán eTravel - 38', CAST(N'2023-11-24T22:54:54.000' AS DateTime), CAST(N'2023-11-24T22:55:11.000' AS DateTime), 2)
SET IDENTITY_INSERT [dbo].[TransactionDetail] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UC_Email]    Script Date: 12/9/2023 8:46:13 PM ******/
ALTER TABLE [dbo].[Account] ADD  CONSTRAINT [UC_Email] UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ_Phone]    Script Date: 12/9/2023 8:46:13 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UQ_Phone] ON [dbo].[Account]
(
	[Phone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ_ConfigLanguage]    Script Date: 12/9/2023 8:46:13 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UQ_ConfigLanguage] ON [dbo].[ConfigLanguage]
(
	[LanguageCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Conversation_1]    Script Date: 12/9/2023 8:46:13 PM ******/
ALTER TABLE [dbo].[Conversation] ADD  CONSTRAINT [IX_Conversation_1] UNIQUE NONCLUSTERED 
(
	[SessionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_ConfigLanguage] FOREIGN KEY([ConfigLanguageId])
REFERENCES [dbo].[ConfigLanguage] ([Id])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_ConfigLanguage]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_Nationality] FOREIGN KEY([NationalCode])
REFERENCES [dbo].[Nationality] ([NationalCode])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_Nationality]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_Role] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_Role]
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD  CONSTRAINT [FK_Booking_Account] FOREIGN KEY([AccountId])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Booking] CHECK CONSTRAINT [FK_Booking_Account]
GO
ALTER TABLE [dbo].[BookingPlace]  WITH CHECK ADD  CONSTRAINT [FK_BookingPlace_Booking] FOREIGN KEY([BookingId])
REFERENCES [dbo].[Booking] ([Id])
GO
ALTER TABLE [dbo].[BookingPlace] CHECK CONSTRAINT [FK_BookingPlace_Booking]
GO
ALTER TABLE [dbo].[BookingPlace]  WITH CHECK ADD  CONSTRAINT [FK_BookingPlace_Journey] FOREIGN KEY([JourneyId])
REFERENCES [dbo].[Journey] ([Id])
GO
ALTER TABLE [dbo].[BookingPlace] CHECK CONSTRAINT [FK_BookingPlace_Journey]
GO
ALTER TABLE [dbo].[BookingPlace]  WITH CHECK ADD  CONSTRAINT [FK_BookingPlace_Place] FOREIGN KEY([PlaceId])
REFERENCES [dbo].[Place] ([Id])
GO
ALTER TABLE [dbo].[BookingPlace] CHECK CONSTRAINT [FK_BookingPlace_Place]
GO
ALTER TABLE [dbo].[CategoryLanguage]  WITH CHECK ADD  CONSTRAINT [FK_CategoryLanguage_Category] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([Id])
GO
ALTER TABLE [dbo].[CategoryLanguage] CHECK CONSTRAINT [FK_CategoryLanguage_Category]
GO
ALTER TABLE [dbo].[CelebrateImage]  WITH CHECK ADD  CONSTRAINT [FK_CelebrateImage_BookingPlace] FOREIGN KEY([BookingDetailId])
REFERENCES [dbo].[BookingPlace] ([Id])
GO
ALTER TABLE [dbo].[CelebrateImage] CHECK CONSTRAINT [FK_CelebrateImage_BookingPlace]
GO
ALTER TABLE [dbo].[Conversation]  WITH CHECK ADD  CONSTRAINT [FK_Conversation_Account] FOREIGN KEY([Account_One_Id])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Conversation] CHECK CONSTRAINT [FK_Conversation_Account]
GO
ALTER TABLE [dbo].[Conversation]  WITH CHECK ADD  CONSTRAINT [FK_Conversation_Account1] FOREIGN KEY([Account_Two_Id])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Conversation] CHECK CONSTRAINT [FK_Conversation_Account1]
GO
ALTER TABLE [dbo].[FcmToken]  WITH CHECK ADD  CONSTRAINT [FK_FcmToken_Account] FOREIGN KEY([AccountId])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[FcmToken] CHECK CONSTRAINT [FK_FcmToken_Account]
GO
ALTER TABLE [dbo].[FeedBack]  WITH CHECK ADD  CONSTRAINT [FK_FeedBack_Account] FOREIGN KEY([AccountId])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[FeedBack] CHECK CONSTRAINT [FK_FeedBack_Account]
GO
ALTER TABLE [dbo].[FeedBack]  WITH CHECK ADD  CONSTRAINT [FK_FeedBack_Place1] FOREIGN KEY([PlaceId])
REFERENCES [dbo].[Place] ([Id])
GO
ALTER TABLE [dbo].[FeedBack] CHECK CONSTRAINT [FK_FeedBack_Place1]
GO
ALTER TABLE [dbo].[FeedBack]  WITH CHECK ADD  CONSTRAINT [FK_FeedBack_Tour1] FOREIGN KEY([ItineraryId])
REFERENCES [dbo].[Itinerary] ([Id])
GO
ALTER TABLE [dbo].[FeedBack] CHECK CONSTRAINT [FK_FeedBack_Tour1]
GO
ALTER TABLE [dbo].[ItemDescription]  WITH CHECK ADD  CONSTRAINT [FK_ItemDescription_PlaceItem] FOREIGN KEY([PlaceItemId])
REFERENCES [dbo].[PlaceItem] ([Id])
GO
ALTER TABLE [dbo].[ItemDescription] CHECK CONSTRAINT [FK_ItemDescription_PlaceItem]
GO
ALTER TABLE [dbo].[Itinerary]  WITH CHECK ADD  CONSTRAINT [FK_Tour_Account] FOREIGN KEY([CreateById])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Itinerary] CHECK CONSTRAINT [FK_Tour_Account]
GO
ALTER TABLE [dbo].[ItineraryDescription]  WITH CHECK ADD  CONSTRAINT [FK_TourDescription_Tour] FOREIGN KEY([ItineraryId])
REFERENCES [dbo].[Itinerary] ([Id])
GO
ALTER TABLE [dbo].[ItineraryDescription] CHECK CONSTRAINT [FK_TourDescription_Tour]
GO
ALTER TABLE [dbo].[ItineraryPlace]  WITH CHECK ADD  CONSTRAINT [FK_TourDetail_Place] FOREIGN KEY([PlaceId])
REFERENCES [dbo].[Place] ([Id])
GO
ALTER TABLE [dbo].[ItineraryPlace] CHECK CONSTRAINT [FK_TourDetail_Place]
GO
ALTER TABLE [dbo].[ItineraryPlace]  WITH CHECK ADD  CONSTRAINT [FK_TourDetail_Tour] FOREIGN KEY([ItineraryId])
REFERENCES [dbo].[Itinerary] ([Id])
GO
ALTER TABLE [dbo].[ItineraryPlace] CHECK CONSTRAINT [FK_TourDetail_Tour]
GO
ALTER TABLE [dbo].[MarkPlace]  WITH CHECK ADD  CONSTRAINT [FK_MarkPlace_Account] FOREIGN KEY([AccountId])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[MarkPlace] CHECK CONSTRAINT [FK_MarkPlace_Account]
GO
ALTER TABLE [dbo].[MarkPlace]  WITH CHECK ADD  CONSTRAINT [FK_MarkPlace_Place] FOREIGN KEY([PlaceId])
REFERENCES [dbo].[Place] ([Id])
GO
ALTER TABLE [dbo].[MarkPlace] CHECK CONSTRAINT [FK_MarkPlace_Place]
GO
ALTER TABLE [dbo].[PlaceCategory]  WITH CHECK ADD  CONSTRAINT [FK_PlaceCategory_Category] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([Id])
GO
ALTER TABLE [dbo].[PlaceCategory] CHECK CONSTRAINT [FK_PlaceCategory_Category]
GO
ALTER TABLE [dbo].[PlaceCategory]  WITH CHECK ADD  CONSTRAINT [FK_PlaceCategory_Place] FOREIGN KEY([PlaceId])
REFERENCES [dbo].[Place] ([Id])
GO
ALTER TABLE [dbo].[PlaceCategory] CHECK CONSTRAINT [FK_PlaceCategory_Place]
GO
ALTER TABLE [dbo].[PlaceDescription]  WITH CHECK ADD  CONSTRAINT [FK_PlaceDescription_Place] FOREIGN KEY([PlaceId])
REFERENCES [dbo].[Place] ([Id])
GO
ALTER TABLE [dbo].[PlaceDescription] CHECK CONSTRAINT [FK_PlaceDescription_Place]
GO
ALTER TABLE [dbo].[PlaceImage]  WITH CHECK ADD  CONSTRAINT [FK_PlaceImage_Place] FOREIGN KEY([PlaceId])
REFERENCES [dbo].[Place] ([Id])
GO
ALTER TABLE [dbo].[PlaceImage] CHECK CONSTRAINT [FK_PlaceImage_Place]
GO
ALTER TABLE [dbo].[PlaceItem]  WITH CHECK ADD  CONSTRAINT [FK_PlaceItem_Place] FOREIGN KEY([PlaceId])
REFERENCES [dbo].[Place] ([Id])
GO
ALTER TABLE [dbo].[PlaceItem] CHECK CONSTRAINT [FK_PlaceItem_Place]
GO
ALTER TABLE [dbo].[PlaceTime]  WITH CHECK ADD  CONSTRAINT [FK_PlaceTime_Place] FOREIGN KEY([PlaceId])
REFERENCES [dbo].[Place] ([Id])
GO
ALTER TABLE [dbo].[PlaceTime] CHECK CONSTRAINT [FK_PlaceTime_Place]
GO
ALTER TABLE [dbo].[Transaction]  WITH CHECK ADD  CONSTRAINT [FK_Payment_Booking] FOREIGN KEY([BookingId])
REFERENCES [dbo].[Booking] ([Id])
GO
ALTER TABLE [dbo].[Transaction] CHECK CONSTRAINT [FK_Payment_Booking]
GO
ALTER TABLE [dbo].[Transaction]  WITH CHECK ADD  CONSTRAINT [FK_Transaction_Account] FOREIGN KEY([AccountId])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Transaction] CHECK CONSTRAINT [FK_Transaction_Account]
GO
ALTER TABLE [dbo].[TransactionDetail]  WITH CHECK ADD  CONSTRAINT [FK_TransactionDetail_Transaction] FOREIGN KEY([TransactionId])
REFERENCES [dbo].[Transaction] ([Id])
GO
ALTER TABLE [dbo].[TransactionDetail] CHECK CONSTRAINT [FK_TransactionDetail_Transaction]
GO
USE [master]
GO
ALTER DATABASE [etraveldb] SET  READ_WRITE 
GO
