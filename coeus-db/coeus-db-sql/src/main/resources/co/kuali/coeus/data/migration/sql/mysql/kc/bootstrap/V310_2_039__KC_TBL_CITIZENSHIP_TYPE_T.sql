--
-- Kuali Coeus, a comprehensive research administration system for higher education.
-- 
-- Copyright 2005-2015 Kuali, Inc.
-- 
-- This program is free software: you can redistribute it and/or modify
-- it under the terms of the GNU Affero General Public License as
-- published by the Free Software Foundation, either version 3 of the
-- License, or (at your option) any later version.
-- 
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU Affero General Public License for more details.
-- 
-- You should have received a copy of the GNU Affero General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.
--

ALTER TABLE PERSON_EXT_T DROP FOREIGN KEY PERSON_EXT_FK1;

ALTER TABLE CITIZENSHIP_TYPE_T MODIFY CITIZENSHIP_TYPE_CODE DECIMAL(15,0);

ALTER TABLE PERSON_EXT_T
    ADD ( CONSTRAINT PERSON_EXT_FK1
    FOREIGN KEY(CITIZENSHIP_TYPE_CODE)
    REFERENCES CITIZENSHIP_TYPE_T(CITIZENSHIP_TYPE_CODE)
     );
     