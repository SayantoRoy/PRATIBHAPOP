CREATE PROCEDURE [HKP].[CivilStatus_update]
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
	@P_11 Bit,
	@P_12 VarChar(30),
	@P_13 DateTime,
	@P_14 VarChar(15),
	@P_15 VarChar(30),
	@P_16 DateTime,
	@P_17 VarChar(15),
	@sync_force_write Int,
	@sync_min_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; UPDATE [HKP].[CivilStatus] SET [Sequence] = @P_2, [Code] = @P_3, [ShortName] = @P_4, [StandardName] = @P_5, [UserName] = @P_6, [Description] = @P_7, [Remarks] = @P_8, [HasPartner] = @P_9, [Active] = @P_10, [Archive] = @P_11, [AddedBy] = @P_12, [AddedDate] = @P_13, [AddedFromIP] = @P_14, [UpdatedBy] = @P_15, [UpdatedDate] = @P_16, [UpdatedFromIP] = @P_17 FROM [HKP].[CivilStatus] [base] JOIN [HKP].[CivilStatus_tracking] [side] ON [base].[Id] = [side].[Id] WHERE ([side].[local_update_peer_timestamp] <= @sync_min_timestamp OR @sync_force_write = 1) AND ([base].[Id] = @P_1); SET @sync_row_count = @@ROWCOUNT;
END
