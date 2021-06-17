CREATE FUNCTION [dbo].[ftEmployeeJobLocationDateWiseEmp]
(
@FromDate DATETIME,
@ToDate DATETIME,
@EmpSysId VARCHAR(max),
@PlantID VARCHAR(30)
)
RETURNS @GetTable TABLE (EmpSystemID VARCHAR(30), JobLcSystemID  VARCHAR(30), WorkDate DATETIME)
As
BEGIN
DECLARE @StartDate DATETIME
DECLARE @EndDate DATETIME
DECLARE @EmpSystemID VARCHAR(30)
DECLARE @JobLcSystemID  VARCHAR(30)

SET @StartDate = @FromDate
SET @EndDate = @ToDate

DECLARE EmpJbLocDtWise Cursor
FOR
SELECT DISTINCT JL.EmpSystemID
FROM EmpDateWiseJobLocation JL
INNER JOIN (SELECT * FROM EmployeeInformation WHERE ((DOS >= @FromDate OR DOS IS NULL) and doj<=@ToDate) AND
DOJ <= @FromDate AND ',' + Convert(varchar(max), @EmpSysId) + ',' Like '%,' + Convert(varchar(max), SystemId) + ',%') E ON JL.EmpSystemID = E.SystemID
WHERE JL.JobLcSystemID IN (SELECT SystemID FROM JobLocation WHERE PlantID = @PlantID)
GROUP BY EmpSystemID
OPEN  EmpJbLocDtWise
FETCH NEXT From  EmpJbLocDtWise INTO @EmpSystemID
WHILE @@FETCH_STATUS = 0
BEGIN
WHILE @StartDate <= @EndDate
BEGIN
SET @JobLcSystemID = (SELECT TOP(1) JobLcSystemID FROM EmpDateWiseJobLocation
WHERE EmpSystemID = @EmpSystemID AND EffectiveDate <= @StartDate
ORDER BY EffectiveDate DESC)
IF EXISTS (SELECT SystemID FROM [dbo].[JobLocation] WHERE PlantID = @PlantID AND SystemID = @JobLcSystemID)
BEGIN
INSERT INTO @GetTable(EmpSystemID, JobLcSystemID, WorkDate)
VALUES(@EmpSystemID, @JobLcSystemID, @StartDate)
END
SET @StartDate = DATEADD(D, 1, @StartDate)
END
SET @StartDate = @FromDate
FETCH NEXT From  EmpJbLocDtWise INTO @EmpSystemID
END
CLOSE  EmpJbLocDtWise
DEALLOCATE  EmpJbLocDtWise
RETURN
END
