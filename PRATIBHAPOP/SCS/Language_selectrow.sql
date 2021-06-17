﻿CREATE PROCEDURE [SCS].[Language_selectrow]
	@P_1 VarChar(5),
	@sync_scope_local_id Int,
	@sync_scope_restore_count Int
AS
BEGIN
SELECT [side].[Id], [base].[CountryId], [base].[Sequence], [base].[Code], [base].[ShortName], [base].[StandardName], [base].[CultureInfoCode], [base].[UserName], [base].[Description], [base].[Remarks], [base].[Active], [base].[Archive], [base].[AddedBy], [base].[AddedDate], [base].[AddedFromIP], [base].[UpdatedBy], [base].[UpdatedDate], [base].[UpdatedFromIP], [side].[sync_row_is_tombstone], [side].[local_update_peer_timestamp] as sync_row_timestamp, case when ([side].[update_scope_local_id] is null or [side].[update_scope_local_id] <> @sync_scope_local_id) then COALESCE([side].[restore_timestamp], [side].[local_update_peer_timestamp]) else [side].[scope_update_peer_timestamp] end as sync_update_peer_timestamp, case when ([side].[update_scope_local_id] is null or [side].[update_scope_local_id] <> @sync_scope_local_id) then case when ([side].[local_update_peer_key] > @sync_scope_restore_count) then @sync_scope_restore_count else [side].[local_update_peer_key] end else [side].[scope_update_peer_key] end as sync_update_peer_key, case when ([side].[create_scope_local_id] is null or [side].[create_scope_local_id] <> @sync_scope_local_id) then [side].[local_create_peer_timestamp] else [side].[scope_create_peer_timestamp] end as sync_create_peer_timestamp, case when ([side].[create_scope_local_id] is null or [side].[create_scope_local_id] <> @sync_scope_local_id) then case when ([side].[local_create_peer_key] > @sync_scope_restore_count) then @sync_scope_restore_count else [side].[local_create_peer_key] end else [side].[scope_create_peer_key] end as sync_create_peer_key from [SCS].[Language] [base] right join [SCS].[Language_tracking] [side] on [base].[Id] = [side].[Id] WHERE [side].[Id] = @P_1
END
