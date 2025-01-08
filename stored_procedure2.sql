# Create and execute a stored procedure to write/modify data in a table on MySQL using SQL.

# You will create a stored procedure routine named UPDATE_SALEPRICE with parameters Animal_ID and Animal_Health.

#     This UPDATE_SALEPRICE routine will contain SQL queries to update the sale price of the animals 
#     in the PETSALE table depending on their health conditions, BAD or WORSE.

#     This procedure routine will take animal ID and health conditon as parameters which will be used 
#     to update the sale price of animal in the PETSALE table by an amount depending on their health condition. 
#     Suppose that:
#         For animal with ID XX having BAD health condition, the sale price will be reduced further by 25%.
#         For animal with ID YY having WORSE health condition, the sale price will be reduced further by 50%.
#         For animal with ID ZZ having other health condition, the sale price won't change.

# To create the stored procedure routine, copy the code below and paste it to the textarea of the SQL page. Click Go.
DELIMITER @
CREATE PROCEDURE UPDATE_SALEPRICE (IN Animal_ID INTEGER, IN Animal_Health VARCHAR(5))
BEGIN
    IF Animal_Health = 'BAD' THEN
        UPDATE PETSALE
        SET SALEPRICE = SALEPRICE - (SALEPRICE * 0.25)
        WHERE ID = Animal_ID;
    ELSEIF Animal_Health = 'WORSE' THEN
        UPDATE PETSALE
        SET SALEPRICE = SALEPRICE - (SALEPRICE * 0.5)
        WHERE ID = Animal_ID;
    ELSE
        UPDATE PETSALE
        SET SALEPRICE = SALEPRICE
        WHERE ID = Animal_ID;
    END IF;
END @

DELIMITER ;
# MySQL returned an empty result set (i.e. zero rows).

# Let's call the UPDATE_SALEPRICE routine. We want to update the sale price of animal with ID 1 having 
# BAD health condition in the PETSALE table. open another SQL tab by clicking Open in new Tab

# Delete the default line which appears so that you will get a blank window.
# Copy the code below and paste it to the textarea of the SQL page. Click Go
CALL RETRIEVE_ALL;

CALL UPDATE_SALEPRICE(1, 'BAD');

CALL RETRIEVE_ALL;

# Let's call the UPDATE_SALEPRICE routine once again. 
# We want to update the sale price of animal with ID 3 having WORSE health condition in the PETSALE table. 
# Copy the code below and paste it to the textarea of the SQL page. Click Go. 
# You will have all the records retrieved from the PETSALE table.
CALL RETRIEVE_ALL;

CALL UPDATE_SALEPRICE(3, 'WORSE');

CALL RETRIEVE_ALL;

# You can view the created stored procedure routine UPDATE_SALEPRICE. Click on the Routines and view the procedure.
# If you wish to drop the stored procedure routine UPDATE_SALEPRICE, copy the code below and paste it to the 
# textarea of the SQL page. Click Go.
DROP PROCEDURE UPDATE_SALEPRICE;

CALL UPDATE_SALEPRICE;