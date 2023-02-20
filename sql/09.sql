/*
 * Use a JOIN to display the total amount rung up by each staff member in January of 2020.
 * Use tables staff and payment.
 */

SELECT first_name,last_name, SUM(amount) AS sum 
FROM staff JOIN payment USING (staff_id) 
WHERE payment.payment_date<='2020-02-01' 
GROUP BY staff_id;
