CREATE PROCEDURE [HKP].[BloodGroup_insert]
	@P_1 VarChar(10),
	@P_2 Decimal(18,2),
	@P_3 VarChar(10),
	@P_4 VarChar(15),
	@P_5 VarChar(50),
	@P_6 VarChar(50),
	@P_7 VarChar(250),
	@P_8 VarChar(250),
	@P_9 Bit,
	@P_10 Bit,
	@P_11 VarChar(30),
	@P_12 DateTime,
	@P_13 VarChar(15),
	@P_14 VarChar(30),
	@P_15 DateTime,
	@P_16 VarChar(15),
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; IF NOT EXISTS (SELECT * FROM [HKP].[BloodGroup_tracking] WHERE [Id] = @P_1) BEGIN INSERT INTO [HKP].[BloodGroup]([Id], [Sequence], [Code], [ShortName], [StandardName], [UserName], [Description], [Remarks], [Active], [Archive], [AddedBy], [AddedDate], [AddedFromIP], [UpdatedBy], [UpdatedDate], [UpdatedFromIP]) VALUES (@P_1, @P_2, @P_3, @P_4, @P_5, @P_6, @P_7, @P_8, @P_9, @P_10, @P_11, @P_12, @P_13, @P_14, @P_15, @P_16);  SET @sync_row_count = @@rowcount;  END 
END
