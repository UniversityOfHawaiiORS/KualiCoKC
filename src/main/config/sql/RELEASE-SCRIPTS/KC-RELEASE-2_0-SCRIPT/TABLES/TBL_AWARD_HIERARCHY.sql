-- Table Script 
CREATE TABLE AWARD_HIERARCHY ( 
    ROOT_AWARD_NUMBER VARCHAR2(12) NOT NULL, 
    AWARD_NUMBER VARCHAR2(12) NOT NULL, 
    PARENT_AWARD_NUMBER VARCHAR2(12) NOT NULL, 
    UPDATE_TIMESTAMP DATE NOT NULL, 
    UPDATE_USER VARCHAR2(60) NOT NULL, 
    VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
    OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL);


-- Primary Key Constraint 
ALTER TABLE AWARD_HIERARCHY 
ADD CONSTRAINT PK_AWARD_HIERARCHY 
PRIMARY KEY (AWARD_NUMBER);

