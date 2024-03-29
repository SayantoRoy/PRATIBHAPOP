﻿CREATE PROCEDURE [MMS].[Menu_update]
	@P_1 VarChar(10),
	@P_2 VarChar(50),
	@P_3 VarChar(100),
	@P_4 VarChar(80),
	@P_5 VarChar(150),
	@P_6 VarChar(3000),
	@P_7 VarChar(250),
	@P_8 Bit,
	@P_9 Bit,
	@sync_force_write Int,
	@sync_min_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; UPDATE [MMS].[Menu] SET [Area] = @P_2, [UserName] = @P_3, [Controller] = @P_4, [Href] = @P_5, [IFCodes] = @P_6, [Description] = @P_7, [Active] = @P_8, [Archive] = @P_9 FROM [MMS].[Menu] [base] JOIN [MMS].[Menu_tracking] [side] ON [base].[Id] = [side].[Id] WHERE ([side].[local_update_peer_timestamp] <= @sync_min_timestamp OR @sync_force_write = 1) AND ([base].[Id] = @P_1); SET @sync_row_count = @@ROWCOUNT;
END
