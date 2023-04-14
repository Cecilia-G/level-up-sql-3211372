-- Find the reservation information for a customer whose
-- name we aren't quite sure how to spell.

-- Variations of the name include:
-- Stevensen, Stephensen, Stevenson, Stephenson, Stuyvesant

-- There are four people in the party. Today is June 14th.

SELECT A.FIRSTNAME,A.LASTNAME,B.DATE,B.PARTYSIZE 
FROM CUSTOMERS A, RESERVATIONS B 
WHERE A.CUSTOMERID=B.CUSTOMERID 
AND A.LASTNAME LIKE 'St%' 
AND B.DATE>='2022-06-14'
AND B.PARTYSIZE=4;