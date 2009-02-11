CREATE TABLE "ORGANIZATION_AUDIT" 
   (	"ORGANIZATION_ID" VARCHAR2(8) constraint ORGANIZATION_AUDITN1 NOT NULL ENABLE, 
	"FISCAL_YEAR" CHAR(4) constraint ORGANIZATION_AUDITN2 NOT NULL ENABLE, 
	"AUDIT_ACCEPTED" CHAR(1), 
	"AUDIT_COMMENT" VARCHAR2(300), 
	"UPDATE_TIMESTAMP" DATE constraint ORGANIZATION_AUDITN3 NOT NULL ENABLE, 
	"UPDATE_USER" VARCHAR2(60) constraint ORGANIZATION_AUDITN4 NOT NULL ENABLE, 
	 "VER_NBR" NUMBER(8,0) DEFAULT 1  constraint  ORGANIZATION_AUDITN5  NOT NULL ENABLE,
	"OBJ_ID" VARCHAR2(36) DEFAULT SYS_GUID()  constraint  ORGANIZATION_AUDITN6  NOT NULL ENABLE,
	CONSTRAINT "PK_ORGANIZATION_AUDIT_KRA" PRIMARY KEY ("ORGANIZATION_ID", "FISCAL_YEAR") ENABLE
);
ALTER TABLE ORGANIZATION_AUDIT ADD (CONSTRAINT "FK_ORGANIZATION_AUDIT_KRA" FOREIGN KEY ("ORGANIZATION_ID")
	  REFERENCES "ORGANIZATION" ("ORGANIZATION_ID") ON DELETE CASCADE );