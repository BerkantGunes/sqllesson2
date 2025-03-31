use Northwind

select * from Customers
select * from Products
select * from [Order Details]

-- hangi musteri hangi urunden kac tane aldi?
select
C.ContactName, -- hangi musteri
P.ProductName, -- hangi urun
SUM(OD.Quantity) as TotalQuantity -- kac tane (miktar)

from Customers C
inner join Orders O on C.CustomerID = O.CustomerID
inner join [Order Details] OD on O.OrderID = OD.OrderID
inner join Products P on P.ProductID = OD.ProductID

GROUP BY -- musteri ve urunu gruplandirdi
C.ContactName,
P.ProductName

ORDER BY -- urun miktarini AZALAN sekilde siraladi
C.ContactName,
TotalQuantity DESC