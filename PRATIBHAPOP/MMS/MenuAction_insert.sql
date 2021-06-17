CREATE PROCEDURE [MMS].[MenuAction_insert]
	@P_1 VarChar(50),
	@P_2 VarChar(10),
	@P_3 VarChar(80),
	@P_4 VarChar(80),
	@P_5 VarChar(250),
	@P_6 Bit,
	@P_7 Bit,
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; IF NOT EXISTS (SELECT * FROM [MMS].[MenuAction_tracking] WHERE [Id] = @P_1) BEGIN INSERT INTO [MMS].[MenuAction]([Id], [MenuId], [Action], [UserName], [Description], [Active], [Archive]) VALUES (@P_1, @P_2, @P_3, @P_4, @P_5, @P_6, @P_7);  SET @sync_row_count = @@rowcount;  END 
END
