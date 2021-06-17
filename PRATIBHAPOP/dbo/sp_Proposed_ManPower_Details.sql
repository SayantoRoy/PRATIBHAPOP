

CREATE proc [dbo].[sp_Proposed_ManPower_Details]
(@CompanyGroupId varchar(50)='CG20171',
@EmployeeType bit=null
)
as
begin
declare @Company table ( CompanyID varchar(50) ,isvisited bit)
insert into @Company
select id as CompanyID,0 as isvisited  from org.Company where CompanyGroupId=@CompanyGroupId
order by [Sequence]

while EXISTS  (select * from @Company where isvisited=0)
begin
declare @companyID varchar(50)
declare @groupByList varchar(500)
	select top 1 @companyID=CompanyID from @Company where isvisited=0
	update @Company set isvisited=1 where CompanyID=@companyID

	declare @postionRelation varchar(max)='join org.PositionRelation pr on pb.PositionRelationId=pr.ID'
	declare @entityRelation varchar(max)=' join org.Entity en on pb.EntityId=en.ID'

	declare @tempEnRel varchar(max)
	declare @tempEnSelection varchar(max)

	declare @tempRel varchar(max)
	declare @tempSelection varchar(max)
	set @tempRel=STUFF((
	select ' JOIN '+ SchemaName+'.'+StandardName+' '+StandardName +' on '+StandardName+'.id=pr.'+StandardName+'id' from org.StructureRelationship where RType='Position'
	and CompanyGroupId=@CompanyGroupId
	and StandardName not in (select StandardName from org.StructureRelationship where RType='Entity' and CompanyId=@companyID)
	 FOR XML PATH(''), TYPE
	  ).value('.', 'NVARCHAR(MAX)') 
			,1,1,'')

	select @tempSelection= STUFF((
	select 'pr.'+StandardName+'id ,'+StandardName+'.UserName ['+UserName+'], ' from 
	org.StructureRelationship where RType='Position'
	and CompanyGroupId=@CompanyGroupId
	and StandardName not in (select StandardName from org.StructureRelationship where RType='Entity' and CompanyId=@companyID)
	order by[Sequence]
	 FOR XML PATH(''), TYPE
	  ).value('.', 'NVARCHAR(MAX)') 
		   ,1,0,'')
	SELECT @tempSelection= STUFF(@tempSelection, LEN(@tempSelection), 1, '')
	select @tempSelection=' '+@tempSelection

	 select @groupByList= STUFF((
	select 'Pr.'+StandardName+'id ,'+StandardName+'.UserName, ' from 
	org.StructureRelationship where RType='Position'
	and CompanyGroupId=@CompanyGroupId
	and StandardName not in (select StandardName from org.StructureRelationship where RType='Entity' and CompanyId=@companyID)
	 FOR XML PATH(''), TYPE
	  ).value('.', 'NVARCHAR(MAX)') 
		   ,1,0,'')
	------------------Entity----------------------

	set @tempEnRel=STUFF((
	select ' JOIN '+ SchemaName+'.'+StandardName+' '+StandardName +' on '+StandardName+'.id=en.'+StandardName+'id' from org.StructureRelationship where RType='Entity'
	and CompanyGroupId=@CompanyGroupId and CompanyId=@companyID
	 FOR XML PATH(''), TYPE
	  ).value('.', 'NVARCHAR(MAX)') 
			,1,1,'')

	select @tempEnSelection= STUFF((
	select 'en.'+StandardName+'id ,'+StandardName+'.UserName ['+UserName+'], ' from 
	org.StructureRelationship where RType='Entity'
	and CompanyGroupId=@CompanyGroupId
	order by [Sequence]
	 FOR XML PATH(''), TYPE
	  ).value('.', 'NVARCHAR(MAX)') 
		   ,1,0,'')

	declare @groupByList1 varchar(500)
	select @groupByList1= STUFF((
	select 'en.'+StandardName+'id ,'+StandardName+'.UserName, ' from 
	org.StructureRelationship where RType='Entity'
	and CompanyGroupId=@CompanyGroupId
	 FOR XML PATH(''), TYPE
	  ).value('.', 'NVARCHAR(MAX)') 
		   ,1,0,'')
		   select @groupByList= @groupByList1+@groupByList
select @groupByList= STUFF(@groupByList, LEN(@groupByList), 1, '')

	SELECT @tempEnSelection= STUFF(@tempEnSelection, LEN(@tempEnSelection), 1, '')
	select @tempEnSelection=' '+@tempEnSelection
	----------------------------------------
	print @EmployeeType
	declare @conditionEmployeeType varchar(500)
	select @conditionEmployeeType= case when @EmployeeType=null then '' else 'and pr.IsDirect='+cast(@EmployeeType as varchar) end
	exec ('select cg.id CompanyGroupID,cg.UserName CompanyGroup,c.id CompanyID,c.ShortName Company,'+@tempEnSelection+' ,'+@tempSelection+',pb.id BudgetCode, 
	Sum(TotalNumber) FinalProposed 
	from mst.PositionManpowerBudget pb '
	+@entityRelation+' '+@tempEnRel+' '+@postionRelation +' '+@tempRel
	+' join org.Company c on pb.CompanyId=c.Id
join org.CompanyGroup cg on pb.CompanyGroupId=cg.Id
where cg.id='''+@CompanyGroupID+''' and c.id='''+@CompanyID+''' '+@conditionEmployeeType +'
group by cg.id,cg.UserName,c.id,c.ShortName,'+@groupByList+',pb.id
')

end
end





