-- Create a reservation for a customer who may or may not
-- already be listed in our Customers table.

-- Use the following information:
-- Sam McAdams (smac@kinetecoinc.com), for 5 people
-- on August 12, 2022 at 6PM (18:00)
SELECT * FROM RESERVATIONS where customerid=102;
SELECT * FROM CUSTOMERS;
SELECT *
FROM CUSTOMERS 
WHERE EMAIL='smac@kinetecoinc.com';

SELECT COUNT(*) 
FROM CUSTOMERS 
WHERE EMAIL='smac@kinetecoinc.com';
INSERT INTO CUSTOMERS(FIRSTNAME,LASTNAME,EMAIL) VALUES ('Sam', 'Adams', 'smac@kinetecoinc.com');
INSERT INTO RESERVATIONS(CUSTOMERID,DATE,PARTYSIZE) 
VALUES ((SELECT CUSTOMERID FROM CUSTOMERS WHERE EMAIL='smac@kinetecoinc.com'), '2022-08-12 18:00:00', 5);
