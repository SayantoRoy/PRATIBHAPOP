CREATE PROCEDURE [SCS].[Religion_insert]
	@P_1 VarChar(10),
	@P_2 Decimal(18,2),
	@P_3 VarChar(10),
	@P_4 VarChar(15),
	@P_5 VarChar(50),
	@P_6 VarChar(50),
	@P_7 VarChar(250),
	@P_8 VarChar(250),
	@P_9 VarChar(30),
	@P_10 DateTime,
	@P_11 VarChar(15),
	@P_12 VarChar(30),
	@P_13 DateTime,
	@P_14 VarChar(15),
	@P_15 Bit,
	@P_16 Bit,
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; IF NOT EXISTS (SELECT * FROM [SCS].[Religion_tracking] WHERE [Id] = @P_1) BEGIN INSERT INTO [SCS].[Religion]([Id], [Sequence], [Code], [ShortName], [StandardName], [UserName], [Description], [Remarks], [AddedBy], [AddedDate], [AddedFromIP], [UpdatedBy], [UpdatedDate], [UpdatedFromIP], [Active], [Archive]) VALUES (@P_1, @P_2, @P_3, @P_4, @P_5, @P_6, @P_7, @P_8, @P_9, @P_10, @P_11, @P_12, @P_13, @P_14, @P_15, @P_16);  SET @sync_row_count = @@rowcount;  END 
END
