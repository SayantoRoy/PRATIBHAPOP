﻿CREATE FUNCTION [dbo].[INSERT_SPACE_BEFORE_CAPITAL_LETTERS]
(
    @String VARCHAR(MAX)  -- Variable for string
)
RETURNS VARCHAR(MAX)
BEGIN
DECLARE @RETURN_STRING VARCHAR(MAX)
 
;WITH N1 (n) AS (SELECT 1 UNION ALL SELECT 1),
N2 (n) AS (SELECT 1 FROM N1 AS X, N1 AS Y),
N3 (n) AS (SELECT 1 FROM N2 AS X, N2 AS Y),
N4 (n) AS (SELECT ROW_NUMBER() OVER(ORDER BY X.n)
FROM N3 AS X, N3 AS Y)
 
SELECT @RETURN_STRING=ISNULL(@RETURN_STRING,'')+
(CASE WHEN SUBSTRING(@String,Nums.n,1)=
UPPER(SUBSTRING(@String,Nums.n,1)) collate Latin1_General_CS_As
AND Nums.n >1
THEN SPACE(1) + SUBSTRING(@String,Nums.n,1)
ELSE SUBSTRING(@String,Nums.n,1) END)
 
FROM N4 Nums
WHERE Nums.n<=LEN(@String)
 
RETURN @RETURN_STRING
END



