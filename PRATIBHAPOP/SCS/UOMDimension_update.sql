CREATE PROCEDURE [SCS].[UOMDimension_update]
	@P_1 VarChar(10),
	@P_2 Decimal(18,2),
	@P_3 VarChar(15),
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
	@sync_force_write Int,
	@sync_min_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; UPDATE [SCS].[UOMDimension] SET [Sequence] = @P_2, [Code] = @P_3, [ShortName] = @P_4, [StandardName] = @P_5, [UserName] = @P_6, [Description] = @P_7, [Remarks] = @P_8, [Active] = @P_9, [Archive] = @P_10, [AddedBy] = @P_11, [AddedDate] = @P_12, [AddedFromIP] = @P_13, [UpdatedBy] = @P_14, [UpdatedDate] = @P_15, [UpdatedFromIP] = @P_16 FROM [SCS].[UOMDimension] [base] JOIN [SCS].[UOMDimension_tracking] [side] ON [base].[Id] = [side].[Id] WHERE ([side].[local_update_peer_timestamp] <= @sync_min_timestamp OR @sync_force_write = 1) AND ([base].[Id] = @P_1); SET @sync_row_count = @@ROWCOUNT;
END
