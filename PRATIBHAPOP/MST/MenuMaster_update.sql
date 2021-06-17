CREATE PROCEDURE [MST].[MenuMaster_update]
	@P_1 VarChar(15),
	@P_2 VarChar(2),
	@P_3 VarChar(2),
	@P_4 VarChar(10),
	@P_5 VarChar(4),
	@P_6 VarChar(6),
	@P_7 VarChar(5),
	@P_8 VarChar(10),
	@P_9 VarChar(20),
	@P_10 Bit,
	@P_11 VarChar(250),
	@P_12 VarChar(250),
	@P_13 Bit,
	@P_14 Bit,
	@P_15 VarChar(30),
	@P_16 DateTime,
	@P_17 VarChar(15),
	@P_18 VarChar(30),
	@P_19 DateTime,
	@P_20 VarChar(15),
	@sync_force_write Int,
	@sync_min_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; UPDATE [MST].[MenuMaster] SET [ModuleId] = @P_2, [SubModuleId] = @P_3, [MenuId] = @P_4, [MenuFrameId] = @P_5, [MenuGroupId] = @P_6, [MenuSubGroupId] = @P_7, [MenuItemId] = @P_8, [PanelName] = @P_9, [IsExternalMenu] = @P_10, [Description] = @P_11, [Remarks] = @P_12, [Active] = @P_13, [Archive] = @P_14, [AddedBy] = @P_15, [AddedDate] = @P_16, [AddedFromIP] = @P_17, [UpdatedBy] = @P_18, [UpdatedDate] = @P_19, [UpdatedFromIP] = @P_20 FROM [MST].[MenuMaster] [base] JOIN [MST].[MenuMaster_tracking] [side] ON [base].[Id] = [side].[Id] WHERE ([side].[local_update_peer_timestamp] <= @sync_min_timestamp OR @sync_force_write = 1) AND ([base].[Id] = @P_1); SET @sync_row_count = @@ROWCOUNT;
END
