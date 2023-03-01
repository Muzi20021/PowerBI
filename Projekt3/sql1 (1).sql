

SELECT dbo.DimCustomer.GeographyKey, dbo.DimCustomer.CustomerKey, dbo.DimCustomer.CustomerAlternateKey, dbo.DimCustomer.Title, dbo.DimCustomer.FirstName, dbo.DimCustomer.MiddleName, dbo.DimCustomer.LastName, 
                  dbo.DimCustomer.NameStyle, dbo.DimCustomer.MaritalStatus, dbo.DimCustomer.BirthDate, dbo.DimCustomer.Suffix, dbo.DimCustomer.Gender, dbo.DimCustomer.EmailAddress, dbo.DimCustomer.YearlyIncome, 
                  dbo.DimCustomer.TotalChildren, dbo.DimCustomer.NumberChildrenAtHome, dbo.DimCustomer.EnglishEducation, dbo.DimCustomer.SpanishEducation, dbo.DimCustomer.FrenchEducation, dbo.DimCustomer.EnglishOccupation, 
                  dbo.DimCustomer.SpanishOccupation, dbo.DimCustomer.FrenchOccupation, dbo.DimCustomer.HouseOwnerFlag, dbo.DimCustomer.NumberCarsOwned, dbo.DimCustomer.AddressLine1, dbo.DimCustomer.AddressLine2, 
                  dbo.DimCustomer.Phone, dbo.DimCustomer.DateFirstPurchase, dbo.DimCustomer.CommuteDistance, dbo.DimGeography.EnglishCountryRegionName,
				  CASE
				  WHEN 
				  COUNT (dbo.FactInternetSales.SalesOrderNumber) = 1 THEN 'Jedna'
				  ELSE 'Wiele'
				  END AS 'TRANSAKCJE'
FROM     dbo.DimCustomer INNER JOIN
               dbo.FactInternetSales ON dbo.DimCustomer.CustomerKey = FactInternetSales.CustomerKey INNER JOIN
			   dbo.DimGeography ON dbo.DimCustomer.GeographyKey = dbo.DimGeography.GeographyKey
GROUP BY dbo.DimCustomer.GeographyKey, dbo.DimCustomer.CustomerKey, dbo.DimCustomer.CustomerAlternateKey, dbo.DimCustomer.Title, dbo.DimCustomer.FirstName, dbo.DimCustomer.MiddleName, dbo.DimCustomer.LastName, 
                  dbo.DimCustomer.NameStyle, dbo.DimCustomer.MaritalStatus, dbo.DimCustomer.BirthDate, dbo.DimCustomer.Suffix, dbo.DimCustomer.Gender, dbo.DimCustomer.EmailAddress, dbo.DimCustomer.YearlyIncome, 
                  dbo.DimCustomer.TotalChildren, dbo.DimCustomer.NumberChildrenAtHome, dbo.DimCustomer.EnglishEducation, dbo.DimCustomer.SpanishEducation, dbo.DimCustomer.FrenchEducation, dbo.DimCustomer.EnglishOccupation, 
                  dbo.DimCustomer.SpanishOccupation, dbo.DimCustomer.FrenchOccupation, dbo.DimCustomer.HouseOwnerFlag, dbo.DimCustomer.NumberCarsOwned, dbo.DimCustomer.AddressLine1, dbo.DimCustomer.AddressLine2, 
                  dbo.DimCustomer.Phone, dbo.DimCustomer.DateFirstPurchase, dbo.DimCustomer.CommuteDistance, dbo.DimGeography.EnglishCountryRegionName