


CREATE proc [dbo].[sp_Current_ManPower_Details]
(@CompanyGroupId varchar(50)='CG20171',
@EmployeeType bit=null)
as
begin
select id as CompanyID,0 as isvisited into #Company from org.Company where CompanyGroupId=@CompanyGroupId
order by [Sequence]

while EXISTS  (select * from #Company where isvisited=0)
begin
declare @companyID varchar(50)
	select top 1 @companyID=CompanyID from #Company where isvisited=0
	update #Company set isvisited=1 where CompanyID=@companyID

	declare @postionRelation varchar(max)='join org.PositionRelation pr on pb.PositionRelationId=pr.ID'
	declare @entityRelation varchar(max)=' join org.Entity en on pb.EntityId=en.ID'

	declare @tempEnRel varchar(max)
	declare @tempEnSelection varchar(max)
	declare @groupByList varchar(max)
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

		   select @groupByList= STUFF((
	select 't.'+StandardName+'id ,' from 
	org.StructureRelationship where RType='Position'
	and CompanyGroupId=@CompanyGroupId
	and StandardName not in (select StandardName from org.StructureRelationship where RType='Entity' and CompanyId=@companyID)
	order by[Sequence]
	 FOR XML PATH(''), TYPE
	  ).value('.', 'NVARCHAR(MAX)') 
		   ,1,0,'')

		   
	SELECT @tempSelection= STUFF(@tempSelection, LEN(@tempSelection), 1, '')
	select @tempSelection=' '+@tempSelection

	------------------Entity----------------------

	set @tempEnRel=STUFF((
	select ' JOIN '+ SchemaName+'.'+StandardName+' '+StandardName +' on '+StandardName+'.id=en.'+StandardName+'id' from org.StructureRelationship where RType='Entity'
	and CompanyGroupId=@CompanyGroupId and CompanyId=@companyID
	order by[Sequence]
	 FOR XML PATH(''), TYPE
	  ).value('.', 'NVARCHAR(MAX)') 
			,1,1,'')

	select @tempEnSelection= STUFF((
	select 'en.'+StandardName+'id ,'+StandardName+'.UserName ['+UserName+'], ' from 
	org.StructureRelationship where RType='Entity'
	and CompanyGroupId=@CompanyGroupId
	order by[Sequence]
	 FOR XML PATH(''), TYPE
	  ).value('.', 'NVARCHAR(MAX)') 
		   ,1,0,'')
	declare @groupByList1 varchar(500)
	select @groupByList1= STUFF((
	select 't.'+StandardName+'id ,' from 
	org.StructureRelationship where RType='Entity'
	and CompanyGroupId=@CompanyGroupId
	order by [Sequence]
	 FOR XML PATH(''), TYPE
	  ).value('.', 'NVARCHAR(MAX)') 
		   ,1,0,'')
		   select @groupByList= @groupByList1+@groupByList
select @groupByList= STUFF(@groupByList, LEN(@groupByList), 1, '')
	SELECT @tempEnSelection= STUFF(@tempEnSelection, LEN(@tempEnSelection), 1, '')
	select @tempEnSelection=' '+@tempEnSelection
	----------------------------------------
	declare @conditionEmployeeType varchar(500)
	select @conditionEmployeeType= case when isnull(@EmployeeType,'')='' then '' else 'where emp.IsDirect='+cast(@EmployeeType as varchar) end

	declare @selectList varchar(500)='cg.id CompanyGroupID,cg.ShortName CompanyGroupName,c.id CompanyID,c.UserName Company,'+@tempEnSelection
	+' ,'+@tempSelection+',pb.id BudgetCode'
	 declare @Qry varchar(max)= 'select '+@selectList+' into #temp from mst.PositionManpowerBudget pb '
	+@entityRelation+' '+@tempEnRel+' '+@postionRelation +' '+@tempRel
	+' join org.Company c on pb.CompanyId=c.Id
join org.CompanyGroup cg on pb.CompanyGroupId=cg.Id
where cg.id='''+@CompanyGroupID+''' and c.id='''+@CompanyID+'''

select CompanyGroupID,t.CompanyID,'+@groupByList+',t.BudgetCode,Count(*) TotalManPower  from dbo.EmployeeInformation emp join 
#temp t on emp.BudgetCode=t.BudgetCode  '+@conditionEmployeeType+' 
group by CompanyGroupID,CompanyGroupName,t.CompanyID,Company,'+@groupByList+',t.BudgetCode'
exec (@Qry)
end
end




