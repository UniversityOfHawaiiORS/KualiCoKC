CREATE TABLE PERSON_SIGNATURE_MODULE ( 
    PERSON_SIGN_MODULE_ID NUMBER(12,0) NOT NULL, 
    MODULE_CODE	VARCHAR2(5) NOT NULL,
    PERSON_SIGNATURE_ID NUMBER(12,0) NOT NULL, 
    DEFAULT_SIGNATURE VARCHAR2(1) NOT NULL,
    SIGNATURE_ACTIVE	VARCHAR2(1) NOT NULL,
    UPDATE_TIMESTAMP DATE NOT NULL, 
    UPDATE_USER VARCHAR2(60) NOT NULL, 
    VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
    OBJ_ID VARCHAR2(36) NOT NULL) 
/


ALTER TABLE PERSON_SIGNATURE_MODULE 
ADD CONSTRAINT PK_PERSON_SIGN_MODULE 
PRIMARY KEY (PERSON_SIGN_MODULE_ID) 
/
