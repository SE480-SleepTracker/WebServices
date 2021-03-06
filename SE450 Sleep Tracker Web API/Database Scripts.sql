USE [master]
GO
/****** Object:  Database [SleepMonitor]    Script Date: 11/5/2014 9:03:53 PM ******/
CREATE DATABASE [SleepMonitor]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SleepMonitor', FILENAME = N'C:\Users\Ethanpc\SleepMonitor.mdf' , SIZE = 3136KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'SleepMonitor_log', FILENAME = N'C:\Users\Ethanpc\SleepMonitor_log.ldf' , SIZE = 784KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [SleepMonitor] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SleepMonitor].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SleepMonitor] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SleepMonitor] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SleepMonitor] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SleepMonitor] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SleepMonitor] SET ARITHABORT OFF 
GO
ALTER DATABASE [SleepMonitor] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SleepMonitor] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [SleepMonitor] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SleepMonitor] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SleepMonitor] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SleepMonitor] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SleepMonitor] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SleepMonitor] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SleepMonitor] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SleepMonitor] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SleepMonitor] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SleepMonitor] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SleepMonitor] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SleepMonitor] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SleepMonitor] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SleepMonitor] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SleepMonitor] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SleepMonitor] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SleepMonitor] SET RECOVERY FULL 
GO
ALTER DATABASE [SleepMonitor] SET  MULTI_USER 
GO
ALTER DATABASE [SleepMonitor] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SleepMonitor] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SleepMonitor] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SleepMonitor] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [SleepMonitor]
GO
/****** Object:  StoredProcedure [dbo].[usr_GetAllUsers]    Script Date: 11/5/2014 9:03:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usr_GetAllUsers]
AS
BEGIN
	SELECT *
	FROM usr_User
END


GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 11/5/2014 9:03:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 11/5/2014 9:03:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 11/5/2014 9:03:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 11/5/2014 9:03:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 11/5/2014 9:03:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 11/5/2014 9:03:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Hometown] [nvarchar](max) NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[awk_NighttimeAwakenings]    Script Date: 11/5/2014 9:03:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[awk_NighttimeAwakenings](
	[awk_ID] [int] IDENTITY(1,1) NOT NULL,
	[awk_start] [datetime] NOT NULL,
	[awk_end] [datetime] NULL,
	[awk_slp_ID] [int] NOT NULL,
 CONSTRAINT [PK_awk_NighttimeAwakenings] PRIMARY KEY CLUSTERED 
(
	[awk_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[bhv_Behavior]    Script Date: 11/5/2014 9:03:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[bhv_Behavior](
	[bhv_order] [int] NOT NULL,
	[bhv_chn_id] [int] NOT NULL,
	[bhv_BehaviorDesc] [varchar](max) NOT NULL,
 CONSTRAINT [PK_bhv_Behavior_1] PRIMARY KEY CLUSTERED 
(
	[bhv_order] ASC,
	[bhv_chn_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[cfn_CaffeineConsumption]    Script Date: 11/5/2014 9:03:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cfn_CaffeineConsumption](
	[cfn_ID] [int] IDENTITY(1,1) NOT NULL,
	[cfn_DateTime] [datetime] NOT NULL,
	[cfn_cft_ID] [int] NOT NULL,
	[cfn_usr_ID] [int] NOT NULL,
	[cfn_number] [int] NOT NULL,
 CONSTRAINT [PK_cfn_CaffeineConsumption] PRIMARY KEY CLUSTERED 
(
	[cfn_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[cft_CaffeineType]    Script Date: 11/5/2014 9:03:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cft_CaffeineType](
	[cft_id] [int] IDENTITY(1,1) NOT NULL,
	[cft_amount] [float] NOT NULL,
	[cft_size] [float] NOT NULL,
	[prd_Product] [int] NOT NULL,
 CONSTRAINT [PK_cft_CaffeineType] PRIMARY KEY CLUSTERED 
(
	[cft_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[chn_ChainAnalysis]    Script Date: 11/5/2014 9:03:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[chn_ChainAnalysis](
	[chn_ID] [int] IDENTITY(1,1) NOT NULL,
	[chn_usr_ID] [int] NOT NULL,
	[chn_ProblemBehavior] [varchar](max) NOT NULL,
	[chn_DateAndTime] [datetime] NOT NULL,
	[chn_Location] [varchar](max) NULL,
 CONSTRAINT [PK_chn_ChainAnalysis] PRIMARY KEY CLUSTERED 
(
	[chn_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ctr_ConcentrationLog]    Script Date: 11/5/2014 9:03:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ctr_ConcentrationLog](
	[ctr_id] [int] IDENTITY(1,1) NOT NULL,
	[ctr_logDate] [datetime] NOT NULL,
	[ctr_usr_id] [int] NOT NULL,
	[ctr_concentrationLevels] [smallint] NOT NULL,
 CONSTRAINT [PK_ctr_ConcentrationLog] PRIMARY KEY CLUSTERED 
(
	[ctr_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[eml_EmotionLog]    Script Date: 11/5/2014 9:03:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[eml_EmotionLog](
	[eml_ID] [int] IDENTITY(1,1) NOT NULL,
	[eml_logTime] [datetime] NOT NULL,
	[eml_usr_id] [int] NOT NULL,
	[eml_pre_id] [int] NOT NULL,
	[eml_intensity] [smallint] NOT NULL,
	[eml_trigger] [varchar](max) NULL,
 CONSTRAINT [PK_eml_EmotionLog] PRIMARY KEY CLUSTERED 
(
	[eml_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[emt_Emotions]    Script Date: 11/5/2014 9:03:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[emt_Emotions](
	[emt_order] [int] NOT NULL,
	[emt_pre_id] [int] NOT NULL,
	[emt_chn_id] [int] NOT NULL,
 CONSTRAINT [PK_emt_Emotions] PRIMARY KEY CLUSTERED 
(
	[emt_order] ASC,
	[emt_chn_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[exi_ExerciseIntensity]    Script Date: 11/5/2014 9:03:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[exi_ExerciseIntensity](
	[exi_id] [int] IDENTITY(1,1) NOT NULL,
	[exi_intensity] [varchar](max) NOT NULL,
 CONSTRAINT [PK_exi_ExerciseIntensity] PRIMARY KEY CLUSTERED 
(
	[exi_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[exr_Exercise]    Script Date: 11/5/2014 9:03:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[exr_Exercise](
	[exr_ID] [int] IDENTITY(1,1) NOT NULL,
	[exr_usr_ID] [int] NOT NULL,
	[exr_exi_ID] [int] NOT NULL,
	[exr_start] [datetime] NOT NULL,
	[exr_end] [datetime] NOT NULL,
	[exr_ext_id] [int] NOT NULL,
 CONSTRAINT [PK_exr_Exercise] PRIMARY KEY CLUSTERED 
(
	[exr_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ext_ExerciseTypes]    Script Date: 11/5/2014 9:03:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ext_ExerciseTypes](
	[ext_ID] [int] IDENTITY(1,1) NOT NULL,
	[ext_exi_intensity] [int] NOT NULL,
	[ext_calories_per_hour] [float] NOT NULL,
	[ext_name] [varchar](max) NOT NULL,
 CONSTRAINT [PK_ext_ExerciseTypes] PRIMARY KEY CLUSTERED 
(
	[ext_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ftg_FatigueLevels]    Script Date: 11/5/2014 9:03:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ftg_FatigueLevels](
	[ftg_ID] [int] IDENTITY(1,1) NOT NULL,
	[ftg_level] [smallint] NOT NULL,
	[ftg_logTime] [datetime] NOT NULL,
	[ftg_usr_id] [int] NOT NULL,
 CONSTRAINT [PK_ftg_FatigueLevels] PRIMARY KEY CLUSTERED 
(
	[ftg_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[gft_GoalsForTomorrow]    Script Date: 11/5/2014 9:03:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gft_GoalsForTomorrow](
	[gft_order] [int] NOT NULL,
	[gft_chn_id] [int] NOT NULL,
	[gft_Goal] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_gft_GoalsForTomorrow] PRIMARY KEY CLUSTERED 
(
	[gft_order] ASC,
	[gft_chn_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[gsr_GlobalSuggestions]    Script Date: 11/5/2014 9:03:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[gsr_GlobalSuggestions](
	[gsr_id] [int] IDENTITY(1,1) NOT NULL,
	[gsr_RewardName] [varchar](max) NOT NULL,
	[gsr_CheckMarksNeeded] [int] NOT NULL,
 CONSTRAINT [PK_gsr_GlobalSuggestions] PRIMARY KEY CLUSTERED 
(
	[gsr_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[imc_ImmediateConsequences]    Script Date: 11/5/2014 9:03:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[imc_ImmediateConsequences](
	[imc_order] [int] NOT NULL,
	[imc_chn_id] [int] NOT NULL,
	[imc_Consequence] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_imc_ImmediateConsequences] PRIMARY KEY CLUSTERED 
(
	[imc_order] ASC,
	[imc_chn_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ltc_LongTermConsequences]    Script Date: 11/5/2014 9:03:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ltc_LongTermConsequences](
	[ltc_order] [int] NOT NULL,
	[ltc_chn_id] [int] NOT NULL,
	[ltc_Consequence] [varchar](max) NOT NULL,
 CONSTRAINT [PK_ltc_LongTermConsequences] PRIMARY KEY CLUSTERED 
(
	[ltc_order] ASC,
	[ltc_chn_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ltg_LongTermGoal]    Script Date: 11/5/2014 9:03:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ltg_LongTermGoal](
	[ltg_order] [int] NOT NULL,
	[ltg_chn_id] [int] NOT NULL,
	[ltg_Goal] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_ltg_LongTermGoal] PRIMARY KEY CLUSTERED 
(
	[ltg_order] ASC,
	[ltg_chn_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[prd_Product]    Script Date: 11/5/2014 9:03:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[prd_Product](
	[prd_ID] [int] IDENTITY(1,1) NOT NULL,
	[prd_Name] [varchar](max) NOT NULL,
 CONSTRAINT [PK_prd_Product] PRIMARY KEY CLUSTERED 
(
	[prd_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[pre_PredefinedEmotion]    Script Date: 11/5/2014 9:03:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[pre_PredefinedEmotion](
	[pre_ID] [int] IDENTITY(1,1) NOT NULL,
	[pre_Emotion] [varchar](max) NOT NULL,
 CONSTRAINT [PK_pre_PredefinedEmotion] PRIMARY KEY CLUSTERED 
(
	[pre_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[rwd_Rewards]    Script Date: 11/5/2014 9:03:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[rwd_Rewards](
	[rwd_usr_ID] [int] NOT NULL,
	[rwd_RewardName] [varchar](max) NULL,
	[rwd_gsr_id] [int] NULL,
	[rwd_NumCheckMarksRequired] [int] NULL,
	[rwd_ID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_rwd_Rewards] PRIMARY KEY CLUSTERED 
(
	[rwd_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[slp_SleepLog]    Script Date: 11/5/2014 9:03:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[slp_SleepLog](
	[slp_ID] [int] NOT NULL,
	[slp_usr_ID] [int] NOT NULL,
	[slp_date] [date] NOT NULL,
	[slp_TimeToSleepUserLogged] [time](7) NULL,
	[slp_TimeToBed] [time](7) NOT NULL,
	[slp_SleepQuality] [smallint] NULL,
	[slp_FatigueLevel] [smallint] NULL,
 CONSTRAINT [PK_slp_SleepLog] PRIMARY KEY CLUSTERED 
(
	[slp_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[stg_ShortTermGoals]    Script Date: 11/5/2014 9:03:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[stg_ShortTermGoals](
	[stg_order] [int] NOT NULL,
	[stg_chn_id] [int] NOT NULL,
	[stg_Goal] [varchar](max) NOT NULL,
 CONSTRAINT [PK_stg_ShortTermGoals] PRIMARY KEY CLUSTERED 
(
	[stg_order] ASC,
	[stg_chn_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tht_Thought]    Script Date: 11/5/2014 9:03:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tht_Thought](
	[tht_order] [int] NOT NULL,
	[tht_chn_ID] [int] NOT NULL,
	[tht_Thought] [varchar](max) NOT NULL,
 CONSTRAINT [PK_tht_Thought] PRIMARY KEY CLUSTERED 
(
	[tht_order] ASC,
	[tht_chn_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[usr_User]    Script Date: 11/5/2014 9:03:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[usr_User](
	[usr_ID] [int] IDENTITY(1,1) NOT NULL,
	[usr_FirstName] [varchar](max) NULL,
	[usr_LastName] [varchar](max) NULL,
	[usr_CurrentChecks] [int] NOT NULL,
 CONSTRAINT [PK_usr_User] PRIMARY KEY CLUSTERED 
(
	[usr_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[vul_Vulnerability]    Script Date: 11/5/2014 9:03:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vul_Vulnerability](
	[vul_order] [int] NOT NULL,
	[vul_chn_id] [int] NOT NULL,
	[vul_Vulnerability] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_vul_Vulnerability] PRIMARY KEY CLUSTERED 
(
	[vul_order] ASC,
	[vul_chn_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[wtp_WaysToPrevent]    Script Date: 11/5/2014 9:03:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[wtp_WaysToPrevent](
	[wtp_order] [int] NOT NULL,
	[wtp_chn_id] [int] NOT NULL,
	[wtp_WayToPrevent] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_wtp_WaysToPrevent_1] PRIMARY KEY CLUSTERED 
(
	[wtp_order] ASC,
	[wtp_chn_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 11/5/2014 9:03:53 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 11/5/2014 9:03:53 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 11/5/2014 9:03:53 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_RoleId]    Script Date: 11/5/2014 9:03:53 PM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 11/5/2014 9:03:53 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 11/5/2014 9:03:53 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[cfn_CaffeineConsumption] ADD  CONSTRAINT [DF_cfn_CaffeineConsumption_cfn_number]  DEFAULT ((1)) FOR [cfn_number]
GO
ALTER TABLE [dbo].[usr_User] ADD  CONSTRAINT [DF_usr_User_usr_CurrentChecks]  DEFAULT ((0)) FOR [usr_CurrentChecks]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[awk_NighttimeAwakenings]  WITH CHECK ADD  CONSTRAINT [FK_awk_NighttimeAwakenings_slp_SleepLog] FOREIGN KEY([awk_ID])
REFERENCES [dbo].[slp_SleepLog] ([slp_ID])
GO
ALTER TABLE [dbo].[awk_NighttimeAwakenings] CHECK CONSTRAINT [FK_awk_NighttimeAwakenings_slp_SleepLog]
GO
ALTER TABLE [dbo].[bhv_Behavior]  WITH CHECK ADD  CONSTRAINT [FK_bhv_Behavior_chn_ChainAnalysis] FOREIGN KEY([bhv_chn_id])
REFERENCES [dbo].[chn_ChainAnalysis] ([chn_ID])
GO
ALTER TABLE [dbo].[bhv_Behavior] CHECK CONSTRAINT [FK_bhv_Behavior_chn_ChainAnalysis]
GO
ALTER TABLE [dbo].[cft_CaffeineType]  WITH CHECK ADD  CONSTRAINT [FK_cft_CaffeineType_prd_Product] FOREIGN KEY([cft_id])
REFERENCES [dbo].[prd_Product] ([prd_ID])
GO
ALTER TABLE [dbo].[cft_CaffeineType] CHECK CONSTRAINT [FK_cft_CaffeineType_prd_Product]
GO
ALTER TABLE [dbo].[chn_ChainAnalysis]  WITH CHECK ADD  CONSTRAINT [FK_chn_ChainAnalysis_usr_User] FOREIGN KEY([chn_usr_ID])
REFERENCES [dbo].[usr_User] ([usr_ID])
GO
ALTER TABLE [dbo].[chn_ChainAnalysis] CHECK CONSTRAINT [FK_chn_ChainAnalysis_usr_User]
GO
ALTER TABLE [dbo].[ctr_ConcentrationLog]  WITH CHECK ADD  CONSTRAINT [FK_ctr_ConcentrationLog_usr_User] FOREIGN KEY([ctr_usr_id])
REFERENCES [dbo].[usr_User] ([usr_ID])
GO
ALTER TABLE [dbo].[ctr_ConcentrationLog] CHECK CONSTRAINT [FK_ctr_ConcentrationLog_usr_User]
GO
ALTER TABLE [dbo].[eml_EmotionLog]  WITH CHECK ADD  CONSTRAINT [FK_eml_EmotionLog_pre_PredefinedEmotion] FOREIGN KEY([eml_pre_id])
REFERENCES [dbo].[pre_PredefinedEmotion] ([pre_ID])
GO
ALTER TABLE [dbo].[eml_EmotionLog] CHECK CONSTRAINT [FK_eml_EmotionLog_pre_PredefinedEmotion]
GO
ALTER TABLE [dbo].[eml_EmotionLog]  WITH CHECK ADD  CONSTRAINT [FK_eml_EmotionLog_usr_User] FOREIGN KEY([eml_usr_id])
REFERENCES [dbo].[usr_User] ([usr_ID])
GO
ALTER TABLE [dbo].[eml_EmotionLog] CHECK CONSTRAINT [FK_eml_EmotionLog_usr_User]
GO
ALTER TABLE [dbo].[emt_Emotions]  WITH CHECK ADD  CONSTRAINT [FK_emt_Emotions_chn_ChainAnalysis] FOREIGN KEY([emt_chn_id])
REFERENCES [dbo].[chn_ChainAnalysis] ([chn_ID])
GO
ALTER TABLE [dbo].[emt_Emotions] CHECK CONSTRAINT [FK_emt_Emotions_chn_ChainAnalysis]
GO
ALTER TABLE [dbo].[emt_Emotions]  WITH CHECK ADD  CONSTRAINT [FK_emt_Emotions_pre_PredefinedEmotion] FOREIGN KEY([emt_pre_id])
REFERENCES [dbo].[pre_PredefinedEmotion] ([pre_ID])
GO
ALTER TABLE [dbo].[emt_Emotions] CHECK CONSTRAINT [FK_emt_Emotions_pre_PredefinedEmotion]
GO
ALTER TABLE [dbo].[exr_Exercise]  WITH CHECK ADD  CONSTRAINT [FK_exr_Exercise_exi_ExerciseIntensity] FOREIGN KEY([exr_exi_ID])
REFERENCES [dbo].[exi_ExerciseIntensity] ([exi_id])
GO
ALTER TABLE [dbo].[exr_Exercise] CHECK CONSTRAINT [FK_exr_Exercise_exi_ExerciseIntensity]
GO
ALTER TABLE [dbo].[exr_Exercise]  WITH CHECK ADD  CONSTRAINT [FK_exr_Exercise_ext_ExerciseTypes] FOREIGN KEY([exr_ext_id])
REFERENCES [dbo].[ext_ExerciseTypes] ([ext_ID])
GO
ALTER TABLE [dbo].[exr_Exercise] CHECK CONSTRAINT [FK_exr_Exercise_ext_ExerciseTypes]
GO
ALTER TABLE [dbo].[exr_Exercise]  WITH CHECK ADD  CONSTRAINT [FK_exr_Exercise_usr_User] FOREIGN KEY([exr_usr_ID])
REFERENCES [dbo].[usr_User] ([usr_ID])
GO
ALTER TABLE [dbo].[exr_Exercise] CHECK CONSTRAINT [FK_exr_Exercise_usr_User]
GO
ALTER TABLE [dbo].[ftg_FatigueLevels]  WITH CHECK ADD  CONSTRAINT [FK_ftg_FatigueLevels_usr_User] FOREIGN KEY([ftg_usr_id])
REFERENCES [dbo].[usr_User] ([usr_ID])
GO
ALTER TABLE [dbo].[ftg_FatigueLevels] CHECK CONSTRAINT [FK_ftg_FatigueLevels_usr_User]
GO
ALTER TABLE [dbo].[gft_GoalsForTomorrow]  WITH CHECK ADD  CONSTRAINT [FK_gft_GoalsForTomorrow_chn_ChainAnalysis] FOREIGN KEY([gft_chn_id])
REFERENCES [dbo].[chn_ChainAnalysis] ([chn_ID])
GO
ALTER TABLE [dbo].[gft_GoalsForTomorrow] CHECK CONSTRAINT [FK_gft_GoalsForTomorrow_chn_ChainAnalysis]
GO
ALTER TABLE [dbo].[imc_ImmediateConsequences]  WITH CHECK ADD  CONSTRAINT [FK_imc_ImmediateConsequences_chn_ChainAnalysis] FOREIGN KEY([imc_chn_id])
REFERENCES [dbo].[chn_ChainAnalysis] ([chn_ID])
GO
ALTER TABLE [dbo].[imc_ImmediateConsequences] CHECK CONSTRAINT [FK_imc_ImmediateConsequences_chn_ChainAnalysis]
GO
ALTER TABLE [dbo].[ltc_LongTermConsequences]  WITH CHECK ADD  CONSTRAINT [FK_ltc_LongTermConsequences_chn_ChainAnalysis] FOREIGN KEY([ltc_chn_id])
REFERENCES [dbo].[chn_ChainAnalysis] ([chn_ID])
GO
ALTER TABLE [dbo].[ltc_LongTermConsequences] CHECK CONSTRAINT [FK_ltc_LongTermConsequences_chn_ChainAnalysis]
GO
ALTER TABLE [dbo].[ltg_LongTermGoal]  WITH CHECK ADD  CONSTRAINT [FK_ltg_LongTermGoal_chn_ChainAnalysis] FOREIGN KEY([ltg_chn_id])
REFERENCES [dbo].[chn_ChainAnalysis] ([chn_ID])
GO
ALTER TABLE [dbo].[ltg_LongTermGoal] CHECK CONSTRAINT [FK_ltg_LongTermGoal_chn_ChainAnalysis]
GO
ALTER TABLE [dbo].[rwd_Rewards]  WITH CHECK ADD  CONSTRAINT [FK_rwd_Rewards_rwd_Rewards] FOREIGN KEY([rwd_ID])
REFERENCES [dbo].[rwd_Rewards] ([rwd_ID])
GO
ALTER TABLE [dbo].[rwd_Rewards] CHECK CONSTRAINT [FK_rwd_Rewards_rwd_Rewards]
GO
ALTER TABLE [dbo].[rwd_Rewards]  WITH CHECK ADD  CONSTRAINT [FK_rwd_Rewards_usr_User] FOREIGN KEY([rwd_gsr_id])
REFERENCES [dbo].[gsr_GlobalSuggestions] ([gsr_id])
GO
ALTER TABLE [dbo].[rwd_Rewards] CHECK CONSTRAINT [FK_rwd_Rewards_usr_User]
GO
ALTER TABLE [dbo].[stg_ShortTermGoals]  WITH CHECK ADD  CONSTRAINT [FK_stg_ShortTermGoals_chn_ChainAnalysis] FOREIGN KEY([stg_chn_id])
REFERENCES [dbo].[chn_ChainAnalysis] ([chn_ID])
GO
ALTER TABLE [dbo].[stg_ShortTermGoals] CHECK CONSTRAINT [FK_stg_ShortTermGoals_chn_ChainAnalysis]
GO
ALTER TABLE [dbo].[tht_Thought]  WITH CHECK ADD  CONSTRAINT [FK_tht_Thought_chn_ChainAnalysis] FOREIGN KEY([tht_chn_ID])
REFERENCES [dbo].[chn_ChainAnalysis] ([chn_ID])
GO
ALTER TABLE [dbo].[tht_Thought] CHECK CONSTRAINT [FK_tht_Thought_chn_ChainAnalysis]
GO
ALTER TABLE [dbo].[vul_Vulnerability]  WITH CHECK ADD  CONSTRAINT [FK_vul_Vulnerability_chn_ChainAnalysis] FOREIGN KEY([vul_chn_id])
REFERENCES [dbo].[chn_ChainAnalysis] ([chn_ID])
GO
ALTER TABLE [dbo].[vul_Vulnerability] CHECK CONSTRAINT [FK_vul_Vulnerability_chn_ChainAnalysis]
GO
ALTER TABLE [dbo].[wtp_WaysToPrevent]  WITH CHECK ADD  CONSTRAINT [FK_wtp_WaysToPrevent_chn_ChainAnalysis] FOREIGN KEY([wtp_chn_id])
REFERENCES [dbo].[chn_ChainAnalysis] ([chn_ID])
GO
ALTER TABLE [dbo].[wtp_WaysToPrevent] CHECK CONSTRAINT [FK_wtp_WaysToPrevent_chn_ChainAnalysis]
GO
ALTER TABLE [dbo].[slp_SleepLog]  WITH CHECK ADD  CONSTRAINT [CK_slp_SleepLog] CHECK  (([slp_SleepQuality]>=(1)))
GO
ALTER TABLE [dbo].[slp_SleepLog] CHECK CONSTRAINT [CK_slp_SleepLog]
GO
ALTER TABLE [dbo].[slp_SleepLog]  WITH CHECK ADD  CONSTRAINT [CK_slp_SleepLog_1] CHECK  (([slp_SleepQuality]<=(10)))
GO
ALTER TABLE [dbo].[slp_SleepLog] CHECK CONSTRAINT [CK_slp_SleepLog_1]
GO
ALTER TABLE [dbo].[slp_SleepLog]  WITH CHECK ADD  CONSTRAINT [CK_slp_SleepLog_2] CHECK  (([slp_FatigueLevel]>=(1)))
GO
ALTER TABLE [dbo].[slp_SleepLog] CHECK CONSTRAINT [CK_slp_SleepLog_2]
GO
ALTER TABLE [dbo].[slp_SleepLog]  WITH CHECK ADD  CONSTRAINT [CK_slp_SleepLog_3] CHECK  (([slp_FatigueLevel]<=(10)))
GO
ALTER TABLE [dbo].[slp_SleepLog] CHECK CONSTRAINT [CK_slp_SleepLog_3]
GO
ALTER TABLE [dbo].[slp_SleepLog]  WITH CHECK ADD  CONSTRAINT [CK_slp_SleepLog_4] CHECK  (([slp_TimeToBed]<=[slp_TimeToSleepUserLogged]))
GO
ALTER TABLE [dbo].[slp_SleepLog] CHECK CONSTRAINT [CK_slp_SleepLog_4]
GO
USE [master]
GO
ALTER DATABASE [SleepMonitor] SET  READ_WRITE 
GO
