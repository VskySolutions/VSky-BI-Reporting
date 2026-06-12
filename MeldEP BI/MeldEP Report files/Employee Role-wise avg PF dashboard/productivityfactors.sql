SELECT  
    pr.firstname + ' ' + pr.lastname AS Employee,
    dd.dropdownvalue AS Role,
    AVG(pem.productivityfactor) AS AvgProductivity
FROM PROJECT_EMPLOYEE_MAPPING pem
JOIN employeedesignation ed 
    ON ed.employeedesignationid = pem.employeedesignationid
JOIN dropdown dd 
    ON ed.employeedesignationid = dd.id
JOIN employee e 
    ON pem.employeeid = e.id
JOIN person pr 
    ON e.personid = pr.id
GROUP BY 
    pr.firstname,
    pr.lastname,
    dd.dropdownvalue

    order by Employee