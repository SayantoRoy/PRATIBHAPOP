
create proc [dbo].[sp_Proposed_ManPower_UnAloc]
(@CompanyGroupId varchar(50))
as
select CompanyId,count(*) unalloc from dbo.EmployeeInformation
	where BudgetCode is null and GroupID=@CompanyGroupId
	group by CompanyId



