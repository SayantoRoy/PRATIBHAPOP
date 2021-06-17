CREATE PROCEDURE [MMS].[Menu_insert]
	@P_1 VarChar(10),
	@P_2 VarChar(50),
	@P_3 VarChar(100),
	@P_4 VarChar(80),
	@P_5 VarChar(150),
	@P_6 VarChar(3000),
	@P_7 VarChar(250),
	@P_8 Bit,
	@P_9 Bit,
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; IF NOT EXISTS (SELECT * FROM [MMS].[Menu_tracking] WHERE [Id] = @P_1) BEGIN INSERT INTO [MMS].[Menu]([Id], [Area], [UserName], [Controller], [Href], [IFCodes], [Description], [Active], [Archive]) VALUES (@P_1, @P_2, @P_3, @P_4, @P_5, @P_6, @P_7, @P_8, @P_9);  SET @sync_row_count = @@rowcount;  END 
END
