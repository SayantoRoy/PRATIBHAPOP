CREATE PROCEDURE [SCS].[Religion_update]
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
	@sync_force_write Int,
	@sync_min_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; UPDATE [SCS].[Religion] SET [Sequence] = @P_2, [Code] = @P_3, [ShortName] = @P_4, [StandardName] = @P_5, [UserName] = @P_6, [Description] = @P_7, [Remarks] = @P_8, [AddedBy] = @P_9, [AddedDate] = @P_10, [AddedFromIP] = @P_11, [UpdatedBy] = @P_12, [UpdatedDate] = @P_13, [UpdatedFromIP] = @P_14, [Active] = @P_15, [Archive] = @P_16 FROM [SCS].[Religion] [base] JOIN [SCS].[Religion_tracking] [side] ON [base].[Id] = [side].[Id] WHERE ([side].[local_update_peer_timestamp] <= @sync_min_timestamp OR @sync_force_write = 1) AND ([base].[Id] = @P_1); SET @sync_row_count = @@ROWCOUNT;
END
