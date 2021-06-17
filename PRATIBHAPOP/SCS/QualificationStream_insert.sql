CREATE PROCEDURE [SCS].[QualificationStream_insert]
	@P_1 VarChar(10),
	@P_2 VarChar(10),
	@P_3 VarChar(15),
	@P_4 VarChar(50),
	@P_5 VarChar(50),
	@P_6 VarChar(250),
	@P_7 VarChar(250),
	@P_8 VarChar(30),
	@P_9 VarChar(15),
	@P_10 DateTime,
	@P_11 VarChar(30),
	@P_12 DateTime,
	@P_13 VarChar(15),
	@P_14 Decimal(18,2),
	@P_15 Bit,
	@P_16 Bit,
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; IF NOT EXISTS (SELECT * FROM [SCS].[QualificationStream_tracking] WHERE [Id] = @P_1) BEGIN INSERT INTO [SCS].[QualificationStream]([Id], [Code], [ShortName], [StandardName], [UserName], [Description], [Remarks], [AddedBy], [AddedFromIP], [AddedDate], [UpdatedBy], [UpdatedDate], [UpdatedFromIP], [Sequence], [Active], [Archive]) VALUES (@P_1, @P_2, @P_3, @P_4, @P_5, @P_6, @P_7, @P_8, @P_9, @P_10, @P_11, @P_12, @P_13, @P_14, @P_15, @P_16);  SET @sync_row_count = @@rowcount;  END 
END
