CREATE TABLE ADMINDATA(
AdminId [int] PRIMARY KEY IDENTITY (1000,1)  NOT NULL,
AdminFirstName [varchar] (50) NOT NULL,
AdminLastName [varchar] (50)  NOT NULL,
AdminDOB [DATE] NOT NULL,
AdminEmail [NVARCHAR] (320) NOT NULL,
AdminMobileNumber [varchar] (10) NOT NULL,
AdminAddress [varchar] (320) NOT NULL,
AdminState [varchar] (50) NOT NULL,
AdminCity [varchar] (50) NOT NULL,
AdminPostalCode [varchar] (10) NOT NULL,

);


ALTER TABLE ADMINDATA
ALTER COLUMN ADMINDOB [DATE]; 


CREATE TABLE USERDATA(
UserId [int] PRIMARY KEY IDENTITY (1000,1) NOT NULL,
UserFirstName [varchar] (50) NOT NULL,
UserLastName [varchar] (50) NOT NULL,
UserDOB [DATE] NOT NULL,
UserEmail [NVARCHAR] (320) NOT NULL,
UserMobileNumber [varchar] (10) NOT NULL,
UserAddress [varchar] (320) NOT NULL,
UserState [varchar] (50) NOT NULL,
UserCity [varchar] (50) NOT NULL,
UserPostalCode [varchar] (10) NOT NULL,
UserGroupAssign [varchar] (50) NOT NULL,
UserUploadPhoto [Varbinary] (max) NOT NULL, 
UserKycUpload [varbinary] (max) NOT NULL,
UserStatus [BIT] NOT NULL
);

CREATE TABLE ADMINLOGINDATA(
AdminLoginId [int] IDENTITY(1,1) NOT NULL,
AdminId [int] NOT NULL,
Email [NVARCHAR] (320) NOT NULL,
Password [varchar] (50) NOT NULL,

FOREIGN KEY (AdminId) REFERENCES ADMINDATA(AdminId)
);

CREATE TABLE USERLOGINDATA(
UserLoginId [int] IDENTITY (1,1) NOT NULL,
UserId [int]  NOT NULL,
Email [NVARCHAR] (320) NOT NULL,
Password [varchar] (50) NOT NULL,

FOREIGN KEY (UserId) REFERENCES USERDATA(UserId)
);

CREATE TABLE USERDELETEDDATA(
UserDeletedId [int] IDENTITY (1,1) NOT NULL,
UserId [int] NOT NULL,
UserLoginId [int] NOT NULL,
UserFirstName [varchar] (50) NOT NULL,
UserLastName [varchar] (50) NOT NULL,
UserDOB [DATE] NOT NULL,
UserEmail [NVARCHAR] (320) NOT NULL,
UserMobileNumber [varchar] (10) NOT NULL,
UserAddress [varchar] (320) NOT NULL,
UserState [varchar] (50) NOT NULL,
UserCity [varchar] (50) NOT NULL,
UserPostalCode [varchar] (10) NOT NULL,
UserGroupAssign [varchar] (50) NOT NULL,
UserUploadPhoto [Varbinary] (max) NOT NULL, 
UserKycUpload [varbinary] (max) NOT NULL,
UserStatus [BIT] NOT NULL,

FOREIGN KEY (UserId) REFERENCES USERDATA(UserId),
FOREIGN KEY (UserLoginId) REFERENCES USERLOGINDATA(UserLoginId),
);

CREATE TABLE ADMINDELETEDDATA (
AdminDeletedId [int] IDENTITY (1,1) NOT NULL,
AdminLoginId [int] NOT NULL,
AdminId [int] NOT NULL,
AdminFirstName [varchar] (50) NOT NULL,
AdminLastName [varchar] (50) NOT NULL,
AdminDOB [DATE] NOT NULL,
AdminEmail [NVARCHAR] (320) NOT NULL,
AdminMobileNumber [varchar] (10) NOT NULL,
AdminAddress [varchar] (320) NOT NULL,
AdminState [varchar] (50) NOT NULL,
AdminCity [varchar] (50) NOT NULL,
AdminPostalCode [varchar] (10) NOT NULL,

FOREIGN KEY (AdminId) REFERENCES ADMINDATA(AdminId),
);


CREATE TABLE USERGROUPDATA
(
UserGroupId [int] IDENTITY (1,1) NOT NULL,
UserGroupName [varchar] (50) NOT NULL,
UserGroupDescription [Varchar] (360) NOT NULL,
UserStatus [BIT] NOT NULL,
UserId [int]  NOT NULL,
 
FOREIGN KEY (UserId) REFERENCES USERDATA(UserId)
);

CREATE TABLE SURVEYDATA
(
SurveyQuestion [Varchar] (520) NOT NULL,
SurveyAnswer [Varchar] (520) NOT NULL,

);

CREATE TABLE CMSPAGEDATA 
(
PageTitle [varchar] (520) NOT NULL,
PageContent [Varchar] (1000) NOT NULL,
PageStatus [BIT] NOT NULL,

);

