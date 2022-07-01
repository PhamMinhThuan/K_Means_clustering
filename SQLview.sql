
/*
CREATE VIEW vSales AS
SELECT SOD.SalesOrderID
	, SOH.OrderDate
	, SOD.ProductID
	, PS.[Name] AS SubCategory
	, PC.[Name] AS Category
	, P.ListPrice AS Price
	, SOH.CustomerID
	, C.PersonID
	, C.StoreID 
	, ST.[Group]
	, SOD.UnitPriceDiscount
	, SO.SpecialOfferID
	, SO.[Type] AS CouponType
	, SO.StartDate AS VoucherStartDate 
	, SO.EndDate AS VoucherEndDate 
	, SOD.OrderQty
	, SOD.LineTotal
FROM Sales.SalesOrderDetail SOD
INNER JOIN Sales.SalesOrderHeader SOH
ON SOD.SalesOrderID = SOH.SalesOrderID
INNER JOIN Sales.SalesTerritory ST
ON SOH.TerritoryID = ST.TerritoryID
INNER JOIN Production.Product P
ON SOD.ProductID = P.ProductID
INNER JOIN Production.ProductSubcategory PS
ON P.ProductSubcategoryID = PS.ProductSubcategoryID
INNER JOIN Production.ProductCategory PC
ON PC.ProductCategoryID = PS.ProductCategoryID
INNER JOIN Sales.SpecialOfferProduct SOP
ON SOD.ProductID = SOP.ProductID
INNER JOIN Sales.SpecialOffer SO
ON SOP.SpecialOfferID = SO.SpecialOfferID
INNER JOIN Sales.Customer C
ON SOH.CustomerID = C.CustomerID
*/

IF OBJECT_ID('vSales' ,'v') IS NOT NULL
DROP VIEW vSales;
GO

CREATE VIEW vSales AS
SELECT FIS.OrderDateKey
	, D.CalendarYear
	, D.EnglishMonthName
	, FIS.OrderDate
	, FIS.SalesOrderNumber
	, DP.EnglishPromotionType
	, DPS.EnglishProductSubcategoryName
	, DPC.EnglishProductCategoryName
	, DC.CustomerKey
	, DC.BirthDate
	, DC.Gender
	, DC.YearlyIncome
	, DT.SalesTerritoryGroup
	, FIS.DiscountAmount
	, FIS.SalesAmount
FROM FactInternetSales FIS
INNER JOIN DimCustomer DC
ON DC.CustomerKey = FIS.CustomerKey
INNER JOIN DimSalesTerritory DT
ON DT.SalesTerritoryKey = FIS.SalesTerritoryKey
INNER JOIN DimPromotion DP
ON DP.PromotionKey = FIS.PromotionKey
INNER JOIN DimProduct DPT
ON DPT.ProductKey = FIS.ProductKey
INNER JOIN DimProductSubcategory DPS
ON DPS.ProductSubcategoryKey = DPT.ProductSubcategoryKey
INNER JOIN DimProductCategory DPC
ON DPS.ProductCategoryKey = DPC.ProductCategoryKey
INNER JOIN DimDate D
ON D.DateKey = FIS.OrderDateKey
WHERE DP.EnglishPromotionCategory != 'Reseller'
