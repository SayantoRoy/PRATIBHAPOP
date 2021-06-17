CREATE PROCEDURE [MMS].[MenuAction_update]
	@P_1 VarChar(50),
	@P_2 VarChar(10),
	@P_3 VarChar(80),
	@P_4 VarChar(80),
	@P_5 VarChar(250),
	@P_6 Bit,
	@P_7 Bit,
	@sync_force_write Int,
	@sync_min_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; UPDATE [MMS].[MenuAction] SET [MenuId] = @P_2, [Action] = @P_3, [UserName] = @P_4, [Description] = @P_5, [Active] = @P_6, [Archive] = @P_7 FROM [MMS].[MenuAction] [base] JOIN [MMS].[MenuAction_tracking] [side] ON [base].[Id] = [side].[Id] WHERE ([side].[local_update_peer_timestamp] <= @sync_min_timestamp OR @sync_force_write = 1) AND ([base].[Id] = @P_1); SET @sync_row_count = @@ROWCOUNT;
END
