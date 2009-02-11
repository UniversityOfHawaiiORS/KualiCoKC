#
# $Id: EPS_PROP_PERSON.sql,v 1.14 2008-07-23 19:16:49 gmcgrego Exp $
#
 CREATE TABLE EPS_PROP_PERSON (
    PROPOSAL_NUMBER         number(12,0)   constraint EPS_PROP_PERSON_N1 not null,
    PROP_PERSON_NUMBER      NUMBER(12,0)   constraint EPS_PROP_PERSON_N2 NOT NULL ENABLE,
    PROP_PERSON_ROLE_ID     VARCHAR2(12),
    PERSON_ID               VARCHAR2(10), 
    ROLODEX_ID              NUMBER(6,0),
	SSN VARCHAR2(9),
	LAST_NAME VARCHAR2(30),
	FIRST_NAME VARCHAR2(30),
	MIDDLE_NAME VARCHAR2(30),
	FULL_NAME VARCHAR2(90),
	PRIOR_NAME VARCHAR2(30),
	USER_NAME VARCHAR2(60),
	EMAIL_ADDRESS VARCHAR2(60),
	DATE_OF_BIRTH DATE,
	AGE NUMBER(3,0),
	AGE_BY_FISCAL_YEAR NUMBER(3,0),
	GENDER VARCHAR2(30),
	RACE VARCHAR2(30),
	EDUCATION_LEVEL VARCHAR2(30),
	DEGREE VARCHAR2(11),
	MAJOR VARCHAR2(30),
	IS_HANDICAPPED CHAR(1),
	HANDICAP_TYPE VARCHAR2(30),
	IS_VETERAN CHAR(1),
	VETERAN_TYPE VARCHAR2(30),
	VISA_CODE VARCHAR2(20),
	VISA_TYPE VARCHAR2(30),
	VISA_RENEWAL_DATE DATE,
	HAS_VISA CHAR(1),
	OFFICE_LOCATION VARCHAR2(30),
	OFFICE_PHONE VARCHAR2(20),
	SECONDRY_OFFICE_LOCATION VARCHAR2(30),
	SECONDRY_OFFICE_PHONE VARCHAR2(20),
	SCHOOL VARCHAR2(50),
	YEAR_GRADUATED VARCHAR2(30),
	DIRECTORY_DEPARTMENT VARCHAR2(30),
	SALUTATION VARCHAR2(30),
	COUNTRY_OF_CITIZENSHIP VARCHAR2(30),
	PRIMARY_TITLE VARCHAR2(51),
	DIRECTORY_TITLE VARCHAR2(50),
	HOME_UNIT VARCHAR2(8),
	IS_FACULTY CHAR(1),
    IS_OSC CHAR(1),
	IS_GRADUATE_STUDENT_STAFF CHAR(1),
	IS_RESEARCH_STAFF CHAR(1),
	IS_SERVICE_STAFF CHAR(1),
	IS_SUPPORT_STAFF CHAR(1),
	IS_OTHER_ACCADEMIC_GROUP CHAR(1),
	IS_MEDICAL_STAFF CHAR(1),
	VACATION_ACCURAL CHAR(1),
	IS_ON_SABBATICAL CHAR(1),
	ID_PROVIDED VARCHAR2(30),
	ID_VERIFIED VARCHAR2(30),
	ADDRESS_LINE_1 VARCHAR2(80),
	ADDRESS_LINE_2 VARCHAR2(80),
	ADDRESS_LINE_3 VARCHAR2(80),
	CITY VARCHAR2(30),
	COUNTY VARCHAR2(30),
	STATE VARCHAR2(30),
	POSTAL_CODE VARCHAR2(15),
	COUNTRY_CODE CHAR(3),
	FAX_NUMBER VARCHAR2(20),
	PAGER_NUMBER VARCHAR2(20),
	MOBILE_PHONE_NUMBER VARCHAR2(20),
	ERA_COMMONS_USER_NAME VARCHAR2(20),
    CONFLICT_OF_INTEREST_FLAG     CHAR(1),
    PERCENTAGE_EFFORT             NUMBER(5,2),
    FEDR_DEBR_FLAG                CHAR(1),
    FEDR_DELQ_FLAG                CHAR(1),
	UPDATE_TIMESTAMP DATE constraint EPS_PROP_PERSON_N3 NOT NULL ENABLE,
	UPDATE_USER VARCHAR2(60) constraint EPS_PROP_PERSON_N4 NOT NULL ENABLE,
	VER_NBR NUMBER(8,0) DEFAULT 1  constraint  EPS_PROP_PERSON_N5  NOT NULL ENABLE,
	OBJ_ID VARCHAR2(36) DEFAULT SYS_GUID() NOT NULL,
    CONSTRAINT EPS_PROP_PERSON_C0 UNIQUE (OBJ_ID) NOT DEFERRABLE INITIALLY IMMEDIATE,
	CONSTRAINT EPS_PROP_PERSON_P1 PRIMARY KEY (PROPOSAL_NUMBER, PROP_PERSON_NUMBER) ENABLE
);
ALTER TABLE EPS_PROP_PERSON ADD (CONSTRAINT FK_EPS_PROP_PERSON_UNITS_KRA FOREIGN KEY (PROPOSAL_NUMBER, PROP_PERSON_NUMBER)
	  REFERENCES EPS_PROP_PERSON_UNITS (PROPOSAL_NUMBER, PROP_PERSON_NUMBER) ON DELETE CASCADE);
ALTER TABLE EPS_PROP_PERSON ADD (CONSTRAINT FK_EPS_PROP_PERSON_DEGREE_KRA FOREIGN KEY (PROPOSAL_NUMBER, PROP_PERSON_NUMBER)
	  REFERENCES EPS_PROP_PERSON_DEGREE (PROPOSAL_NUMBER, PROP_PERSON_NUMBER) ON DELETE CASCADE) 
