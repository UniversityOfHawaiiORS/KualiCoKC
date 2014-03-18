DELIMITER /
CREATE TABLE IACUC_PROTOCOL_LOCATION ( 
    IACUC_PROTOCOL_LOCATION_ID DECIMAL(12,0) NOT NULL, 
    PROTOCOL_ID DECIMAL(12,0) NOT NULL, 
    PROTOCOL_NUMBER VARCHAR(20) NOT NULL, 
    SEQUENCE_NUMBER DECIMAL(4,0) NOT NULL, 
    PROTOCOL_ORG_TYPE_CODE VARCHAR(3) NOT NULL, 
    ORGANIZATION_ID VARCHAR(8) NOT NULL, 
    ROLODEX_ID DECIMAL(6,0), 
    UPDATE_TIMESTAMP DATE NOT NULL, 
    UPDATE_USER VARCHAR(60) NOT NULL, 
    VER_NBR DECIMAL(8,0) DEFAULT 1 NOT NULL, 
    OBJ_ID VARCHAR(36) NOT NULL) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin 
/


ALTER TABLE IACUC_PROTOCOL_LOCATION 
ADD CONSTRAINT PK_IACUC_PROTOCOL_LOCATION 
PRIMARY KEY (IACUC_PROTOCOL_LOCATION_ID) 
/

DELIMITER ;