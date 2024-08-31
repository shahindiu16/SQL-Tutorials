SELECT
	0 as Id
	,'00' as ProductCode
      ,p.[ProductName]
	  ,'na' as shortName
	  --,g.[GenericName] as GenericName
      ,p.[Description]
	  ,pp.[MRP] as Price
	  ,1 as BrandId
	  ,1 as productType
	  ,0 as clint
	  ,0 as isDelete
	  ,0 as createBy
	  ,getdate() as createDate
	  ,0 as updateby
      ,p.[LastUpdate]
 FROM [DeltaDB].[dbo].[SET_Product] p
  --join [DeltaDB].[dbo].[SET_ProductGeneric] g on g.GenericId=p.GenericId
  join [DeltaDB].[dbo].[SET_ProductPrice] pp on pp.PPSID=p.ProductId
 

 select * from [DeltaDB].[dbo].[SET_ProductGeneric]
SELECT TOP (1000) [PPID]
      ,[PPSID]
      ,[MRP]
      ,[Vat]
      ,[TP]
      ,[SP]
      ,[IsActive]
      ,[LastUpdate]
  FROM [DeltaDB].[dbo].[SET_ProductPrice]
