-- Register a customer for our Anniversary event.

-- The customer 'atapley2j@kinetecoinc.com' will be in
-- attendance, and will bring 3 friends.
SELECT * FROM CUSTOMER_RESPONSE;
DELETE FROM CUSTOMER_RESPONSE WHERE PARTYSIZE=3;
INSERT INTO CUSTOMER_RESPONSE VALUES ((SELECT CUSTOMERID FROM CUSTOMERS WHERE EMAIL='atapley2j@kinetecoinc.com'), 3);