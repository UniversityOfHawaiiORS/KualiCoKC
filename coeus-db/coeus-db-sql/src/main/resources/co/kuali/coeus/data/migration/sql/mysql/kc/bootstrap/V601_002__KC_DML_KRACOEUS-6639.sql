DELIMITER /
INSERT INTO SEQ_PERSON_EDITABLE_FIELD VALUES (NULL)
/
INSERT INTO PERSON_EDITABLE_FIELDS (PERSON_EDITABLE_FIELD_ID,MODULE_CODE,FIELD_NAME,ACTIVE_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR)
VALUES ((SELECT MAX(ID) FROM SEQ_PERSON_EDITABLE_FIELD),3,'calendarYearEffort','Y','admin',NOW(),UUID(),1)
/
INSERT INTO SEQ_PERSON_EDITABLE_FIELD VALUES (NULL)
/
INSERT INTO PERSON_EDITABLE_FIELDS (PERSON_EDITABLE_FIELD_ID,MODULE_CODE,FIELD_NAME,ACTIVE_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR)
VALUES ((SELECT MAX(ID) FROM SEQ_PERSON_EDITABLE_FIELD),3,'summerEffort','Y','admin',NOW(),UUID(),1)
/
INSERT INTO SEQ_PERSON_EDITABLE_FIELD VALUES (NULL)
/
INSERT INTO PERSON_EDITABLE_FIELDS (PERSON_EDITABLE_FIELD_ID,MODULE_CODE,FIELD_NAME,ACTIVE_FLAG,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR)
VALUES ((SELECT MAX(ID) FROM SEQ_PERSON_EDITABLE_FIELD),3,'academicYearEffort','Y','admin',NOW(),UUID(),1)
/
DELIMITER ;
