CREATE PROCEDURE [SCS].[QualificationStream_update]
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
	@sync_force_write Int,
	@sync_min_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; UPDATE [SCS].[QualificationStream] SET [Code] = @P_2, [ShortName] = @P_3, [StandardName] = @P_4, [UserName] = @P_5, [Description] = @P_6, [Remarks] = @P_7, [AddedBy] = @P_8, [AddedFromIP] = @P_9, [AddedDate] = @P_10, [UpdatedBy] = @P_11, [UpdatedDate] = @P_12, [UpdatedFromIP] = @P_13, [Sequence] = @P_14, [Active] = @P_15, [Archive] = @P_16 FROM [SCS].[QualificationStream] [base] JOIN [SCS].[QualificationStream_tracking] [side] ON [base].[Id] = [side].[Id] WHERE ([side].[local_update_peer_timestamp] <= @sync_min_timestamp OR @sync_force_write = 1) AND ([base].[Id] = @P_1); SET @sync_row_count = @@ROWCOUNT;
END
