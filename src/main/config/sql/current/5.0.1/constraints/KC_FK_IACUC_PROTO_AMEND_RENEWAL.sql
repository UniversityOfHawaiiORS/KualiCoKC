ALTER TABLE IACUC_PROTO_AMEND_RENEWAL 
ADD CONSTRAINT FK_IACUC_PROTO_AMEND_RENEWAL 
FOREIGN KEY (PROTOCOL_ID) 
REFERENCES IACUC_PROTOCOL (PROTOCOL_ID)
/
