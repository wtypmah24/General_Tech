-- Вывести клиентов не из Germany, имена которых начинаются на букву A

SELECT CustomerName
FROM Customers
WHERE CustomerName LIKE 'A%'
  AND Country <> 'Germany';

-- Вывести данные о заказах клиентов 1, 2, 5 (проекция: номерзаказа, названиекомпании_перевозчика)

SELECT t3.ShipperName,
       t2.OrderID
from Customers t1
         inner join Orders t2 on t1.CustomerID = t2.CustomerID
         inner join Shippers t3 on t2.ShipperID = t3.ShipperID;

-- Вывести данные о заказах клиентов не из France (проекция: номерзаказа, имяклиента, фамилия_менеджера)

SELECT t2.OrderID,
       t1.CustomerName,
       t3.FirstName
from Customers t1
         inner join Orders t2 on t1.CustomerID = t2.CustomerID
         inner join Employees t3 on t2.EmployeeID = t3.EmployeeID
Where t1.Country <> 'France';

-- Вывести ср/стоимость товаров от поставщика 4

SELECT avg(Price) as average_price
from Products
where SupplierID = 4;

-- Вывести один самый дешевый товар от поставщика 1

SELECT min(Price) as min_price
from Products
where SupplierID = 1;

-- Зачем нужна проекция в БД. Дайте короткий ответ: сократить объём выводимой информации для большей информативности,
-- сокращения обрабатываемой информации и т.д.
