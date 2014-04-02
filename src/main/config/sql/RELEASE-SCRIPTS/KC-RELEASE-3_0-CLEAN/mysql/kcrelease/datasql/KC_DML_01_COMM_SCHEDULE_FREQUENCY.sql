delimiter /
TRUNCATE TABLE COMM_SCHEDULE_FREQUENCY
/
INSERT INTO COMM_SCHEDULE_FREQUENCY (FREQUENCY_CODE,DESCRIPTION,NO_OF_DAYS,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (1,'Daily',1,'admin',NOW(),UUID(),1)
/
INSERT INTO COMM_SCHEDULE_FREQUENCY (FREQUENCY_CODE,DESCRIPTION,NO_OF_DAYS,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (2,'Weekly',7,'admin',NOW(),UUID(),1)
/
INSERT INTO COMM_SCHEDULE_FREQUENCY (FREQUENCY_CODE,DESCRIPTION,NO_OF_DAYS,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (3,'Yearly',null,'admin',NOW(),UUID(),1)
/
INSERT INTO COMM_SCHEDULE_FREQUENCY (FREQUENCY_CODE,DESCRIPTION,NO_OF_DAYS,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (4,'Monthly',null,'admin',NOW(),UUID(),1)
/
INSERT INTO COMM_SCHEDULE_FREQUENCY (FREQUENCY_CODE,DESCRIPTION,NO_OF_DAYS,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (5,'BiWeekly',14,'admin',NOW(),UUID(),1)
/
INSERT INTO COMM_SCHEDULE_FREQUENCY (FREQUENCY_CODE,DESCRIPTION,NO_OF_DAYS,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (6,'BiWeekly- 1st 3rd',null,'admin',NOW(),UUID(),1)
/
INSERT INTO COMM_SCHEDULE_FREQUENCY (FREQUENCY_CODE,DESCRIPTION,NO_OF_DAYS,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (7,'BiWeekly- 2d  4th',null,'admin',NOW(),UUID(),1)
/
INSERT INTO COMM_SCHEDULE_FREQUENCY (FREQUENCY_CODE,DESCRIPTION,NO_OF_DAYS,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (8,'Monthly- 1st',null,'admin',NOW(),UUID(),1)
/
INSERT INTO COMM_SCHEDULE_FREQUENCY (FREQUENCY_CODE,DESCRIPTION,NO_OF_DAYS,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (9,'Monthly- 2d',null,'admin',NOW(),UUID(),1)
/
INSERT INTO COMM_SCHEDULE_FREQUENCY (FREQUENCY_CODE,DESCRIPTION,NO_OF_DAYS,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (10,'Monthly- 3d',null,'admin',NOW(),UUID(),1)
/
INSERT INTO COMM_SCHEDULE_FREQUENCY (FREQUENCY_CODE,DESCRIPTION,NO_OF_DAYS,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES (11,'Monthly- 4th',null,'admin',NOW(),UUID(),1)
/
delimiter ;