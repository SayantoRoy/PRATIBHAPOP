CREATE FUNCTION [TRN].[GetLastPostingDate](
@companyGroupId AS VARCHAR(10)
, @companyId AS VARCHAR(10)
, @plantId AS VARCHAR(10)
, @voucherTypeId AS VARCHAR(10)
)
RETURNS DATETIME
AS   
BEGIN  
    DECLARE @lastPostedDatet DATETIME;  
    SELECT TOP(1) @lastPostedDatet=PostingDate FROM [TRN].[Voucher]
    WHERE IsPark=0 AND Archive=0 AND CompanyGroupId=@companyGroupId AND CompanyId=@companyId AND PlantId=@plantId 
    AND VoucherTypeId=@voucherTypeId ORDER BY PostingDate DESC
    RETURN @lastPostedDatet;  
END; 
