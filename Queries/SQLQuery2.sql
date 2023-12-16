-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE InsertNewAdminMember
(
@AdminId [int]  OUTPUT ,
@AdminFirstName [varchar] (50) ,
@AdminLastName [varchar] (50) ,
@AdminDOB [DATE] ,
@AdminEmail [NVARCHAR] (320) ,
@AdminMobileNumber [varchar] (10) ,
@AdminAddress [varchar] (320) ,
@AdminState [varchar] (50) ,
@AdminCity [varchar] (50) ,
@AdminPostalCode [varchar] (10) )

AS

BEGIN

SET NOCOUNT ON

INSERT INTO ADMINDATA
(AdminFirstName,AdminLastName,AdminDOB,AdminEmail,AdminMobileNumber,AdminAddress,AdminState,AdminCity,AdminPostalCode )
VALUES(@AdminFirstName,@AdminLastName,@AdminDOB,@AdminEmail ,@AdminMobileNumber,@AdminAddress,@AdminState,@AdminCity,@AdminPostalCode)

SELECT @AdminId = SCOPE_IDENTITY()


END
GO
