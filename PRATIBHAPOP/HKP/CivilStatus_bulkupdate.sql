CREATE PROCEDURE [HKP].[CivilStatus_bulkupdate]
	@sync_min_timestamp BigInt,
	@sync_scope_local_id Int,
	@changeTable [HKP].[CivilStatus_BulkType] READONLY
AS
BEGIN
-- use a temp table to store the list of PKs that successfully got updated
declare @changed TABLE ([Id] varchar(10), PRIMARY KEY ([Id]));

-- update the base table
MERGE [HKP].[CivilStatus] AS base USING
-- join done here against the side table to get the local timestamp for concurrency check
(SELECT p.*, t.update_scope_local_id, t.scope_update_peer_key, t.local_update_peer_timestamp FROM @changeTable p LEFT JOIN [HKP].[CivilStatus_tracking] t ON p.[Id] = t.[Id]) as changes ON changes.[Id] = base.[Id]
WHEN MATCHED AND (changes.update_scope_local_id = @sync_scope_local_id AND changes.scope_update_peer_key = changes.sync_update_peer_key) OR changes.local_update_peer_timestamp <= @sync_min_timestamp THEN
UPDATE SET [Sequence] = changes.[Sequence], [Code] = changes.[Code], [ShortName] = changes.[ShortName], [StandardName] = changes.[StandardName], [UserName] = changes.[UserName], [Description] = changes.[Description], [Remarks] = changes.[Remarks], [HasPartner] = changes.[HasPartner], [Active] = changes.[Active], [Archive] = changes.[Archive], [AddedBy] = changes.[AddedBy], [AddedDate] = changes.[AddedDate], [AddedFromIP] = changes.[AddedFromIP], [UpdatedBy] = changes.[UpdatedBy], [UpdatedDate] = changes.[UpdatedDate], [UpdatedFromIP] = changes.[UpdatedFromIP]
OUTPUT INSERTED.[Id] into @changed; -- populates the temp table with successful PKs

UPDATE side SET
update_scope_local_id = @sync_scope_local_id, 
scope_update_peer_key = changes.sync_update_peer_key, 
scope_update_peer_timestamp = changes.sync_update_peer_timestamp,
local_update_peer_key = 0
FROM 
[HKP].[CivilStatus_tracking] side JOIN 
(SELECT p.[Id], p.sync_update_peer_timestamp, p.sync_update_peer_key, p.sync_create_peer_key, p.sync_create_peer_timestamp FROM @changed t JOIN @changeTable p ON p.[Id] = t.[Id]) as changes ON changes.[Id] = side.[Id]
SELECT [Id] FROM @changeTable t WHERE NOT EXISTS (SELECT [Id] from @changed i WHERE t.[Id] = i.[Id])
END
