# You will create a stored procedure routine named RETRIEVE_ALL.

#     This RETRIEVE_ALL routine will contain an SQL query to retrieve all the records from the PETSALE table,
#     so you don't need to write the same query over and over again. You just call the stored procedure routine
#     to execute the query everytime.
#     To create the stored procedure routine, copy the code below and paste it to the textarea of the SQL page. Click Go.

DELIMITER //

CREATE PROCEDURE RETRIEVE_ALL()

BEGIN
   SELECT *  FROM PETSALE;
END //
DELIMITER ;
# MySQL returned an empty result set (i.e. zero rows).

# To call the RETRIEVE_ALL routine, open another SQL tab by clicking Open in new Tab
# Delete the default line which appears so that you will get a blank window.
# Copy the code below and paste it to the textarea of the SQL page. Click Go.
CALL RETRIEVE_ALL;

# You can view the created stored procedure routine RETRIEVE_ALL. On the left panel, expand the PETS database option 
# and click on Procedures to view the procedure.

# If you wish to drop the stored procedure routine RETRIEVE_ALL, copy the code below and paste it to the 
# textarea of the SQL page. Click Go.

DROP PROCEDURE RETRIEVE_ALL;
CALL RETRIEVE_ALL;
# MySQL said: Documentation
# 1305 - PROCEDURE PETS.RETRIEVE_ALL does not exist