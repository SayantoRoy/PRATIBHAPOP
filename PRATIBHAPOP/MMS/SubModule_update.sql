﻿CREATE PROCEDURE [MMS].[SubModule_update]
	@P_1 VarChar(2),
	@P_2 VarChar(2),
	@P_3 Decimal(18,2),
	@P_4 VarChar(15),
	@P_5 VarChar(15),
	@P_6 VarChar(100),
	@P_7 VarChar(100),
	@P_8 VarChar(20),
	@P_9 VarChar(250),
	@P_10 VarChar(250),
	@P_11 Bit,
	@P_12 Bit,
	@P_13 VarChar(30),
	@P_14 DateTime,
	@P_15 VarChar(15),
	@P_16 VarChar(30),
	@P_17 DateTime,
	@P_18 VarChar(15),
	@sync_force_write Int,
	@sync_min_timestamp BigInt,
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; UPDATE [MMS].[SubModule] SET [ModuleId] = @P_2, [Sequence] = @P_3, [Code] = @P_4, [ShortName] = @P_5, [StandardName] = @P_6, [UserName] = @P_7, [Image] = @P_8, [Description] = @P_9, [Remarks] = @P_10, [Active] = @P_11, [Archive] = @P_12, [AddedBy] = @P_13, [AddedDate] = @P_14, [AddedFromIP] = @P_15, [UpdatedBy] = @P_16, [UpdatedDate] = @P_17, [UpdatedFromIP] = @P_18 FROM [MMS].[SubModule] [base] JOIN [MMS].[SubModule_tracking] [side] ON [base].[Id] = [side].[Id] WHERE ([side].[local_update_peer_timestamp] <= @sync_min_timestamp OR @sync_force_write = 1) AND ([base].[Id] = @P_1); SET @sync_row_count = @@ROWCOUNT;
END
