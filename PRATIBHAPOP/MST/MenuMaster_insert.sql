CREATE PROCEDURE [MST].[MenuMaster_insert]
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
	@sync_row_count Int OUTPUT
AS
BEGIN
SET @sync_row_count = 0; IF NOT EXISTS (SELECT * FROM [MST].[MenuMaster_tracking] WHERE [Id] = @P_1) BEGIN INSERT INTO [MST].[MenuMaster]([Id], [ModuleId], [SubModuleId], [MenuId], [MenuFrameId], [MenuGroupId], [MenuSubGroupId], [MenuItemId], [PanelName], [IsExternalMenu], [Description], [Remarks], [Active], [Archive], [AddedBy], [AddedDate], [AddedFromIP], [UpdatedBy], [UpdatedDate], [UpdatedFromIP]) VALUES (@P_1, @P_2, @P_3, @P_4, @P_5, @P_6, @P_7, @P_8, @P_9, @P_10, @P_11, @P_12, @P_13, @P_14, @P_15, @P_16, @P_17, @P_18, @P_19, @P_20);  SET @sync_row_count = @@rowcount;  END 
END
