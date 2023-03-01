SELECT        Sales.SalesOrderHeader.SalesPersonID AS IdPerson, Person.Person.FirstName COLLATE SQL_Latin1_General_CP1_CI_AS AS FirstName, Person.Person.LastName COLLATE SQL_Latin1_General_CP1_CI_AS
 AS LastName, Person.Address.City, 
                         Person.StateProvince.Name COLLATE SQL_Latin1_General_CP1_CI_AS AS State, Person.CountryRegion.Name COLLATE SQL_Latin1_General_CP1_CI_AS AS Country, Sales.SalesOrderHeader.OrderDate, 
                         Sales.SalesOrderHeader.SubTotal
FROM            Person.CountryRegion INNER JOIN
                         Person.StateProvince INNER JOIN
                         Person.Person INNER JOIN
                         Sales.SalesOrderHeader ON Person.Person.BusinessEntityID = Sales.SalesOrderHeader.SalesPersonID INNER JOIN
                         Person.BusinessEntityAddress ON Person.Person.BusinessEntityID = Person.BusinessEntityAddress.BusinessEntityID INNER JOIN
                         Person.Address ON Person.BusinessEntityAddress.AddressID = Person.Address.AddressID ON Person.StateProvince.StateProvinceID = Person.Address.StateProvinceID ON 
                         Person.CountryRegion.CountryRegionCode = Person.StateProvince.CountryRegionCode
WHERE        (Sales.SalesOrderHeader.SalesPersonID IS NOT NULL)



