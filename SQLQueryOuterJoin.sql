SELECT e.EmployeeId, e.FirstName, e.LastName, c.Phone, c.Email
FROM Employee e
LEFT OUTER JOIN Contact c on e.EmployeeId = c.EmployeeId
