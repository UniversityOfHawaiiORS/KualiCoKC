DECLARE temp NUMBER;
BEGIN
        SELECT COUNT(*) INTO temp FROM user_sequences WHERE sequence_name = 'SEQ_FIN_OBJECT_CODE_MAPPING_ID';
        IF temp > 0 THEN EXECUTE IMMEDIATE 'DROP SEQUENCE SEQ_FIN_OBJECT_CODE_MAPPING_ID'; END IF;
END;
/

CREATE SEQUENCE SEQ_FIN_OBJECT_CODE_MAPPING_ID  MINVALUE 1 MAXVALUE 999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  ORDER  NOCYCLE
/
DECLARE temp NUMBER;maxAttributeId NUMBER;
BEGIN
        SELECT COUNT(*) INTO temp FROM user_sequences WHERE sequence_name = 'SEQ_CUSTOM_ATTRIBUTE';
        IF temp = 0 THEN 
        	select max(ID) into maxAttributeId from CUSTOM_ATTRIBUTE; 
        	EXECUTE IMMEDIATE 'CREATE SEQUENCE SEQ_CUSTOM_ATTRIBUTE  MINVALUE 1 MAXVALUE 999999999999 INCREMENT BY 1 START WITH '||(maxAttributeId+1)||' NOCACHE  ORDER  NOCYCLE'; 
		END IF;
END;
/
