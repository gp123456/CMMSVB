CREATE TABLE [cause](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[type] [bigint] NOT NULL,
	[department] [bigint] NOT NULL,
	[enable] [bit] NOT NULL CONSTRAINT [DF__cause__enable__208CD6FA]  DEFAULT ((1)),
	[code] [varchar](10) NULL CONSTRAINT [DF__cause__code__2180FB33]  DEFAULT (NULL),
	[description] [varchar](45) NULL CONSTRAINT [DF__cause__descripti__22751F6C]  DEFAULT (NULL),
 CONSTRAINT [PK__cause__3213E83F1EA48E88] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

CREATE TABLE [cause_type](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [varchar](45) NOT NULL,
	[view_name] [varchar](5) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

CREATE TABLE [Delays_Fields](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DRKEY_ID] [int] NULL,
	[DRLOCNKEY] [bigint] NULL,
	[FL_USE] [smallint] NULL
) ON [PRIMARY]

CREATE TABLE [F57780](
	[Q9UKID] [int] IDENTITY(1,1) NOT NULL,
	[Q9TRDJ] [datetime] NOT NULL,
	[Q9USER] [varchar](10) NOT NULL,
	[Q9$IDELM] [int] NOT NULL,
	[Q9LOCN] [varchar](10) NOT NULL,
	[Q9$STEP] [varchar](10) NOT NULL,
	[Q9$FAAL1] [varchar](10) NOT NULL,
	[Q9$LINE] [varchar](10) NOT NULL,
	[Q9SOCN] [float] NULL,
	[Q9$STA] [int] NULL,
	[Q9UKIDP] [int] NULL,
	[Q9UPMJ] [datetime] NULL,
	[Q9UPID] [varchar](13) NULL,
	[Q9UPMB] [varchar](15) NULL,
	[Q9$SPEED] [float] NULL,
 CONSTRAINT [PK_F57780] PRIMARY KEY CLUSTERED 
(
	[Q9UKID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_F57780_UNIQUE_Q9UKID] UNIQUE NONCLUSTERED 
(
	[Q9UKID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

CREATE TABLE [F57790](
	[Q32UKID] [bigint] IDENTITY(1,1) NOT NULL,
	[Q32TRDJ] [datetime] NOT NULL,
	[Q32USER] [varchar](10) NOT NULL,
	[Q32LOCNKEY] [bigint] NOT NULL,
	[Q32LOCN] [varchar](10) NOT NULL,
	[Q32$STEP] [varchar](10) NOT NULL,
	[Q32MCU] [varchar](12) NOT NULL,
	[Q32KEYTYPE] [bigint] NOT NULL,
	[Q32KEY] [bigint] NOT NULL,
	[Q32$IDFAC] [bigint] NOT NULL,
	[Q32$FAAL1] [varchar](10) NOT NULL,
	[Q32$LINE] [varchar](10) NOT NULL,
	[Q32$SHFT] [varchar](1) NOT NULL,
	[Q32$IDDLR] [varchar](10) NOT NULL,
	[Q32UORG] [bigint] NULL,
	[Q32UKIDP] [bigint] NOT NULL,
	[Q32$STA] [varchar](10) NOT NULL,
	[Q32UPMJ] [datetime] NOT NULL,
	[Q32UPID] [varchar](13) NOT NULL,
	[Q32UPMB] [varchar](40) NOT NULL,
	[Q32NOTE] [varchar](1024) NOT NULL,
	[Q32DELETED] [bit] NOT NULL CONSTRAINT [DF__F57790__Q32DELET__47A6A41B]  DEFAULT ((0)),
 CONSTRAINT [PK__F57790__005091D53F115E1A] PRIMARY KEY CLUSTERED 
(
	[Q32UKID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

CREATE TABLE [log](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[machine] [smallint] NOT NULL,
	[created] [datetime] NOT NULL,
	[routine] [text] NOT NULL,
	[logtext] [text] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

CREATE TABLE [run_stop](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[status] [smallint] NOT NULL,
	[machine] [bigint] NOT NULL,
	[created] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [PRIMARY]
) ON [PRIMARY]

CREATE TABLE [subcause](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[cause] [bigint] NOT NULL,
	[enable] [bit] NOT NULL CONSTRAINT [DF__subcause__enable__2EDAF651]  DEFAULT ((1)),
	[code] [varchar](10) NULL CONSTRAINT [DF__subcause__code__2FCF1A8A]  DEFAULT (NULL),
	[description] [varchar](150) NULL CONSTRAINT [DF__subcause__descri__30C33EC3]  DEFAULT (NULL),
 CONSTRAINT [PK__subcause__3213E83F2CF2ADDF] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

CREATE TABLE [user_department](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[users] [varchar](10) NOT NULL,
	[department] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

CREATE TABLE [user_type](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [varchar](45) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

CREATE TABLE [dbo].[vDelays](
	[DRKEY] [int] NOT NULL,
	DRKY [varchar](10) NULL,
	DRDL01 [varchar](60) NULL,
	DRLOCN [varchar](10) NULL,
	DR$STEP [varchar](10) NULL,
	DRRT [varchar](2) NULL, 
	DRLOCNKEY [bigint] NULL,
	DRTYPE [smallint] NULL
)

GO
/****** Object:  View [dbo].[vLocations]    Script Date: 2018-03-29 16:56:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vLocations](
	Q3LOCN [varchar](10) NULL,
	Q3DSC1 [varchar](50) NULL, 
	Q3DSC3 [varchar](50) NULL, 
	Q3DSC2 [varchar](50) NULL, 
	Q3DSC4 [varchar](50) NULL, 
	Q3$STEP [varchar](10) NULL, 
	Q3MCU [varchar](12) NULL, 
	Q3$OFFSET_STOP [int](10) NOT NULL, 
	Q3$OFFSET_START [int](10) NOT NULL, 
	Q3KEY [bigint] NOT NULL, 
	Q3KEY_NEW [int](10) NOT NULL, 
	Q3DSC5 [varchar](128) NULL)

CREATE TABLE [dbo].[vMachine](
	IW$IDFAC [varchar](10) NOT NULL, 
	IW$FAAL1 [varchar](10) NOT NULL, 
	IW$LINE [varchar](10) NOT NULL, 
	IWDSC1 [varchar](50) NULL, 
	IWLOCN [varchar](10) NOT NULL, 
	IW$STEP [varchar](10) NOT NULL, 
	IWUKIDP [varchar](10) NOT NULL, 
	IWMCU [varchar](12) NULL, 
	IWLOCNKEY [bigint] NULL, 
	IW$CODE [varchar](10) NULL)

CREATE TABLE [dbo].[vUSERS](
	ABALKY [varchar](11) NULL, 
	ABALPH [varchar](40) NOT NULL, 
	ABLOCN [varchar](12) NULL, 
	AB$ROLE [int] NOT NULL, 
	AB$USERNAME [varchar](50) NOT NULL, 
	AB$PASSWORD [varchar](50) NOT NULL, 
	ABALPH2 [varchar](1024) NOT NULL)