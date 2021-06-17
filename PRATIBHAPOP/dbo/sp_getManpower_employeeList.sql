CREATE proc [dbo].[sp_getManpower_employeeList]
(
	@CompanyGroupId varchar(50)='CG20171',
	@EmployeeType bit=null
)
as
if(isnull(@EmployeeType,'') ='')
select EmployeeName,EmployeeCode,BudgetCode,DOJ,d.StandardName Designation
 from dbo.EmployeeInformation emp
 left join hkp.Designation d on emp.GivenDesignationId=d.Id
where GroupID=@CompanyGroupId 
else
select EmployeeName,EmployeeCode,BudgetCode,DOJ,d.StandardName Designation
 from dbo.EmployeeInformation emp
 left join hkp.Designation d on emp.GivenDesignationId=d.Id
where GroupID=@CompanyGroupId and IsDirect=@EmployeeType




