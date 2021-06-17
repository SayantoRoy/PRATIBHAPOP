CREATE PROCEDURE [MMS].[MenuSubGroup_delete]
	@P_1 VarChar(5),
	@sync_force_write Int,
	@sync_min_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; DELETE [MMS].[MenuSubGroup] FROM [MMS].[MenuSubGroup] [base] JOIN [MMS].[MenuSubGroup_tracking] [side] ON [base].[Id] = [side].[Id] WHERE ([side].[local_update_peer_timestamp] <= @sync_min_timestamp OR @sync_force_write = 1) AND ([base].[Id] = @P_1); SET @sync_row_count = @@ROWCOUNT;
END
