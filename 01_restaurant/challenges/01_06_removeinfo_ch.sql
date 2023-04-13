-- Remove incorrect information from the database.

-- A customer named Norby has notified us he won't 
-- be able to keep his Friday reservation. 
-- Today is July 24, 2022.

SELECT * FROM CUSTOMERS WHERE FIRSTNAME='Norby';
SELECT * FROM RESERVATIONS WHERE CUSTOMERID=64 AND DATE>'2022-07-24';

DELETE FROM RESERVATIONS WHERE ReservationID=2000;