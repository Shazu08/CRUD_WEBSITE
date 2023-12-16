EXEC GetallAdminMembers

EXEC GetAllAdminMemberThroughAdminID

declare @AdminId INT

EXEC InsertNewAdminMember 'kim','taer','1997-12-08','kim@gmail.com','hijk','south korea','busan','553321','kim123','9876516732' , @AdminId OUTPUT 
Select @AdminId
