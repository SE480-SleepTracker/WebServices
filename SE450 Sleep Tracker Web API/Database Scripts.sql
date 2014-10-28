USE [master]
GO
/****** Object:  Database [SleepMonitor]    Script Date: 10/27/2014 9:02:46 PM ******/
CREATE DATABASE [SleepMonitor]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SleepMonitor', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.WORKDB\MSSQL\DATA\SleepMonitor.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'SleepMonitor_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.WORKDB\MSSQL\DATA\SleepMonitor_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
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
/****** Object:  StoredProcedure [dbo].[usr_GetAllUsers]    Script Date: 10/27/2014 9:02:46 PM ******/
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
/****** Object:  Table [dbo].[bhv_Behavior]    Script Date: 10/27/2014 9:02:46 PM ******/
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
/****** Object:  Table [dbo].[chn_ChainAnalysis]    Script Date: 10/27/2014 9:02:46 PM ******/
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
/****** Object:  Table [dbo].[emt_Emotions]    Script Date: 10/27/2014 9:02:46 PM ******/
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
/****** Object:  Table [dbo].[gft_GoalsForTomorrow]    Script Date: 10/27/2014 9:02:46 PM ******/
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
/****** Object:  Table [dbo].[gsr_GlobalSuggestions]    Script Date: 10/27/2014 9:02:46 PM ******/
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
/****** Object:  Table [dbo].[imc_ImmediateConsequences]    Script Date: 10/27/2014 9:02:46 PM ******/
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
/****** Object:  Table [dbo].[ltc_LongTermConsequences]    Script Date: 10/27/2014 9:02:46 PM ******/
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
/****** Object:  Table [dbo].[ltg_LongTermGoal]    Script Date: 10/27/2014 9:02:46 PM ******/
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
/****** Object:  Table [dbo].[pre_PredefinedEmotion]    Script Date: 10/27/2014 9:02:46 PM ******/
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
/****** Object:  Table [dbo].[rwd_Rewards]    Script Date: 10/27/2014 9:02:46 PM ******/
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
/****** Object:  Table [dbo].[stg_ShortTermGoals]    Script Date: 10/27/2014 9:02:46 PM ******/
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
/****** Object:  Table [dbo].[tht_Thought]    Script Date: 10/27/2014 9:02:46 PM ******/
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
/****** Object:  Table [dbo].[usr_User]    Script Date: 10/27/2014 9:02:46 PM ******/
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
/****** Object:  Table [dbo].[vul_Vulnerability]    Script Date: 10/27/2014 9:02:46 PM ******/
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
/****** Object:  Table [dbo].[wtp_WaysToPrevent]    Script Date: 10/27/2014 9:02:46 PM ******/
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
ALTER TABLE [dbo].[usr_User] ADD  CONSTRAINT [DF_usr_User_usr_CurrentChecks]  DEFAULT ((0)) FOR [usr_CurrentChecks]
GO
ALTER TABLE [dbo].[bhv_Behavior]  WITH CHECK ADD  CONSTRAINT [FK_bhv_Behavior_chn_ChainAnalysis] FOREIGN KEY([bhv_chn_id])
REFERENCES [dbo].[chn_ChainAnalysis] ([chn_ID])
GO
ALTER TABLE [dbo].[bhv_Behavior] CHECK CONSTRAINT [FK_bhv_Behavior_chn_ChainAnalysis]
GO
ALTER TABLE [dbo].[chn_ChainAnalysis]  WITH CHECK ADD  CONSTRAINT [FK_chn_ChainAnalysis_usr_User] FOREIGN KEY([chn_usr_ID])
REFERENCES [dbo].[usr_User] ([usr_ID])
GO
ALTER TABLE [dbo].[chn_ChainAnalysis] CHECK CONSTRAINT [FK_chn_ChainAnalysis_usr_User]
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
USE [master]
GO
ALTER DATABASE [SleepMonitor] SET  READ_WRITE 
GO
