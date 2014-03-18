delimiter /
INSERT INTO KRIM_ROLE_RSP_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_ROLE_RSP_T (ROLE_RSP_ID,ROLE_ID,RSP_ID,ACTV_IND,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ROLE_RSP_ID_BS_S),(SELECT ROLE_ID FROM KRIM_ROLE_T WHERE NMSPC_CD = 'KC-WKFLW' AND ROLE_NM = 'IRBApprover'),(SELECT RSP_ID FROM KRIM_RSP_T WHERE NMSPC_CD = 'KC-WKFLW' AND NM = 'IRB Approve'),'Y',UUID(),1)
/
INSERT INTO KRIM_ROLE_RSP_ACTN_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_ROLE_RSP_ACTN_T (ROLE_RSP_ACTN_ID,ROLE_RSP_ID,ROLE_MBR_ID,ACTN_TYP_CD,ACTN_PLCY_CD,FRC_ACTN,PRIORITY_NBR,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ROLE_RSP_ACTN_ID_BS_S),(SELECT MAX(ID) FROM KRIM_ROLE_RSP_ID_BS_S),'*','A','F','Y',1,UUID(),1)
/

INSERT INTO KRIM_ROLE_RSP_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_ROLE_RSP_T (ROLE_RSP_ID,ROLE_ID,RSP_ID,ACTV_IND,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ROLE_RSP_ID_BS_S),(SELECT ROLE_ID FROM KRIM_ROLE_T WHERE NMSPC_CD = 'KC-WKFLW' AND ROLE_NM = 'IRBApprover'),(SELECT RSP_ID FROM KRIM_RSP_T WHERE NMSPC_CD = 'KC-WKFLW' AND NM = 'IRB AssignedToCommittee'),'Y',UUID(),1)
/
INSERT INTO KRIM_ROLE_RSP_ACTN_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_ROLE_RSP_ACTN_T (ROLE_RSP_ACTN_ID,ROLE_RSP_ID,ROLE_MBR_ID,ACTN_TYP_CD,ACTN_PLCY_CD,FRC_ACTN,PRIORITY_NBR,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ROLE_RSP_ACTN_ID_BS_S),(SELECT MAX(ID) FROM KRIM_ROLE_RSP_ID_BS_S),'*','A','F','Y',1,UUID(),1)
/

INSERT INTO KRIM_ROLE_RSP_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_ROLE_RSP_T (ROLE_RSP_ID,ROLE_ID,RSP_ID,ACTV_IND,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ROLE_RSP_ID_BS_S),(SELECT ROLE_ID FROM KRIM_ROLE_T WHERE NMSPC_CD = 'KC-WKFLW' AND ROLE_NM = 'IRBApprover'),(SELECT RSP_ID FROM KRIM_RSP_T WHERE NMSPC_CD = 'KC-WKFLW' AND NM = 'IRB AssignedToAgenda'),'Y',UUID(),1)
/
INSERT INTO KRIM_ROLE_RSP_ACTN_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_ROLE_RSP_ACTN_T (ROLE_RSP_ACTN_ID,ROLE_RSP_ID,ROLE_MBR_ID,ACTN_TYP_CD,ACTN_PLCY_CD,FRC_ACTN,PRIORITY_NBR,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ROLE_RSP_ACTN_ID_BS_S),(SELECT MAX(ID) FROM KRIM_ROLE_RSP_ID_BS_S),'*','A','F','Y',1,UUID(),1)
/

INSERT INTO KRIM_ROLE_RSP_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_ROLE_RSP_T (ROLE_RSP_ID,ROLE_ID,RSP_ID,ACTV_IND,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ROLE_RSP_ID_BS_S),(SELECT ROLE_ID FROM KRIM_ROLE_T WHERE NMSPC_CD = 'KC-WKFLW' AND ROLE_NM = 'IRBApprover'),(SELECT RSP_ID FROM KRIM_RSP_T WHERE NMSPC_CD = 'KC-WKFLW' AND NM = 'IRB Review'),'Y',UUID(),1)
/
INSERT INTO KRIM_ROLE_RSP_ACTN_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_ROLE_RSP_ACTN_T (ROLE_RSP_ACTN_ID,ROLE_RSP_ID,ROLE_MBR_ID,ACTN_TYP_CD,ACTN_PLCY_CD,FRC_ACTN,PRIORITY_NBR,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ROLE_RSP_ACTN_ID_BS_S),(SELECT MAX(ID) FROM KRIM_ROLE_RSP_ID_BS_S),'*','A','F','Y',1,UUID(),1)
/

INSERT INTO KRIM_ROLE_RSP_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_ROLE_RSP_T (ROLE_RSP_ID,ROLE_ID,RSP_ID,ACTV_IND,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ROLE_RSP_ID_BS_S),(SELECT ROLE_ID FROM KRIM_ROLE_T WHERE NMSPC_CD = 'KC-WKFLW' AND ROLE_NM = 'OSPApprover'),(SELECT RSP_ID FROM KRIM_RSP_T WHERE NMSPC_CD = 'KC-WKFLW' AND NM = 'Proposal Initial Approval'),'Y',UUID(),1)
/
INSERT INTO KRIM_ROLE_RSP_ACTN_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_ROLE_RSP_ACTN_T (ROLE_RSP_ACTN_ID,ROLE_RSP_ID,ROLE_MBR_ID,ACTN_TYP_CD,ACTN_PLCY_CD,FRC_ACTN,PRIORITY_NBR,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ROLE_RSP_ACTN_ID_BS_S),(SELECT MAX(ID) FROM KRIM_ROLE_RSP_ID_BS_S),'*','A','F','N',1,UUID(),1)
/

INSERT INTO KRIM_ROLE_RSP_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_ROLE_RSP_T (ROLE_RSP_ID,ROLE_ID,RSP_ID,ACTV_IND,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ROLE_RSP_ID_BS_S),(SELECT ROLE_ID FROM KRIM_ROLE_T WHERE NMSPC_CD = 'KC-WKFLW' AND ROLE_NM = 'OSPApprover'),(SELECT RSP_ID FROM KRIM_RSP_T WHERE NMSPC_CD = 'KC-WKFLW' AND NM = 'Proposal OSP Office Approval'),'Y',UUID(),1)
/
INSERT INTO KRIM_ROLE_RSP_ACTN_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_ROLE_RSP_ACTN_T (ROLE_RSP_ACTN_ID,ROLE_RSP_ID,ROLE_MBR_ID,ACTN_TYP_CD,ACTN_PLCY_CD,FRC_ACTN,PRIORITY_NBR,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ROLE_RSP_ACTN_ID_BS_S),(SELECT MAX(ID) FROM KRIM_ROLE_RSP_ID_BS_S),'*','A','F','N',1,UUID(),1)
/

INSERT INTO KRIM_ROLE_RSP_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_ROLE_RSP_T (ROLE_RSP_ID,ROLE_ID,RSP_ID,ACTV_IND,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ROLE_RSP_ID_BS_S),(SELECT ROLE_ID FROM KRIM_ROLE_T WHERE NMSPC_CD = 'KC-AB' AND ROLE_NM = 'Award Budget Approver'),(SELECT RSP_ID FROM KRIM_RSP_T WHERE NMSPC_CD = 'KC-WKFLW' AND NM = 'Award Budget InitialApproval'),'Y',UUID(),1)
/
INSERT INTO KRIM_ROLE_RSP_ACTN_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_ROLE_RSP_ACTN_T (ROLE_RSP_ACTN_ID,ROLE_RSP_ID,ROLE_MBR_ID,ACTN_TYP_CD,ACTN_PLCY_CD,FRC_ACTN,PRIORITY_NBR,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ROLE_RSP_ACTN_ID_BS_S),(SELECT MAX(ID) FROM KRIM_ROLE_RSP_ID_BS_S),'*','A','F','N',1,UUID(),1)
/

INSERT INTO KRIM_ROLE_RSP_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_ROLE_RSP_T (ROLE_RSP_ID,ROLE_ID,RSP_ID,ACTV_IND,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ROLE_RSP_ID_BS_S),(SELECT ROLE_ID FROM KRIM_ROLE_T WHERE NMSPC_CD = 'KC-AB' AND ROLE_NM = 'Award Budget Approver'),(SELECT RSP_ID FROM KRIM_RSP_T WHERE NMSPC_CD = 'KC-WKFLW' AND NM = 'Award Budget OSPApproval'),'Y',UUID(),1)
/
INSERT INTO KRIM_ROLE_RSP_ACTN_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_ROLE_RSP_ACTN_T (ROLE_RSP_ACTN_ID,ROLE_RSP_ID,ROLE_MBR_ID,ACTN_TYP_CD,ACTN_PLCY_CD,FRC_ACTN,PRIORITY_NBR,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ROLE_RSP_ACTN_ID_BS_S),(SELECT MAX(ID) FROM KRIM_ROLE_RSP_ID_BS_S),'*','A','F','N',1,UUID(),1)
/

INSERT INTO KRIM_ROLE_RSP_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_ROLE_RSP_T (ROLE_RSP_ID,ROLE_ID,RSP_ID,ACTV_IND,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ROLE_RSP_ID_BS_S),(SELECT ROLE_ID FROM KRIM_ROLE_T WHERE NMSPC_CD = 'KC-UNT' AND ROLE_NM = 'IRB Administrator'),(SELECT RSP_ID FROM KRIM_RSP_T WHERE NMSPC_CD = 'KC-WKFLW' AND NM = 'IRB Admin Approve Online Review'),'Y',UUID(),1)
/
INSERT INTO KRIM_ROLE_RSP_ACTN_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_ROLE_RSP_ACTN_T (ROLE_RSP_ACTN_ID,ROLE_RSP_ID,ROLE_MBR_ID,ACTN_TYP_CD,ACTN_PLCY_CD,FRC_ACTN,PRIORITY_NBR,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ROLE_RSP_ACTN_ID_BS_S),(SELECT MAX(ID) FROM KRIM_ROLE_RSP_ID_BS_S),'*','A','F','Y',1,UUID(),1)
/

INSERT INTO KRIM_ROLE_RSP_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_ROLE_RSP_T (ROLE_RSP_ID,ROLE_ID,RSP_ID,ACTV_IND,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ROLE_RSP_ID_BS_S),(SELECT ROLE_ID FROM KRIM_ROLE_T WHERE NMSPC_CD = 'KC-UNT' AND ROLE_NM = 'IRB Administrator'),(SELECT RSP_ID FROM KRIM_RSP_T WHERE NMSPC_CD = 'KC-WKFLW' AND NM = 'IRB Admin Approve Review Request'),'Y',UUID(),1)
/
INSERT INTO KRIM_ROLE_RSP_ACTN_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_ROLE_RSP_ACTN_T (ROLE_RSP_ACTN_ID,ROLE_RSP_ID,ROLE_MBR_ID,ACTN_TYP_CD,ACTN_PLCY_CD,FRC_ACTN,PRIORITY_NBR,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ROLE_RSP_ACTN_ID_BS_S),(SELECT MAX(ID) FROM KRIM_ROLE_RSP_ID_BS_S),'*','A','F','N',1,UUID(),1)
/

INSERT INTO KRIM_ROLE_RSP_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_ROLE_RSP_T (ROLE_RSP_ID,ROLE_ID,RSP_ID,ACTV_IND,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ROLE_RSP_ID_BS_S),(SELECT ROLE_ID FROM KRIM_ROLE_T WHERE NMSPC_CD = 'KC-WKFLW' AND ROLE_NM = 'PI'),(SELECT RSP_ID FROM KRIM_RSP_T WHERE NMSPC_CD = 'KC-WKFLW' AND NM = 'Proposal Persons Approval'),'Y',UUID(),1)
/
INSERT INTO KRIM_ROLE_RSP_ACTN_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_ROLE_RSP_ACTN_T (ROLE_RSP_ACTN_ID,ROLE_RSP_ID,ROLE_MBR_ID,ACTN_TYP_CD,ACTN_PLCY_CD,FRC_ACTN,PRIORITY_NBR,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ROLE_RSP_ACTN_ID_BS_S),(SELECT MAX(ID) FROM KRIM_ROLE_RSP_ID_BS_S),'*','A','A','N',1,UUID(),1)
/

INSERT INTO KRIM_ROLE_RSP_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_ROLE_RSP_T (ROLE_RSP_ID,ROLE_ID,RSP_ID,ACTV_IND,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ROLE_RSP_ID_BS_S),(SELECT ROLE_ID FROM KRIM_ROLE_T WHERE NMSPC_CD = 'KC-WKFLW' AND ROLE_NM = 'COI'),(SELECT RSP_ID FROM KRIM_RSP_T WHERE NMSPC_CD = 'KC-WKFLW' AND NM = 'Proposal Persons Approval'),'Y',UUID(),1)
/
INSERT INTO KRIM_ROLE_RSP_ACTN_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_ROLE_RSP_ACTN_T (ROLE_RSP_ACTN_ID,ROLE_RSP_ID,ROLE_MBR_ID,ACTN_TYP_CD,ACTN_PLCY_CD,FRC_ACTN,PRIORITY_NBR,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ROLE_RSP_ACTN_ID_BS_S),(SELECT MAX(ID) FROM KRIM_ROLE_RSP_ID_BS_S),'*','A','A','N',1,UUID(),1)
/

INSERT INTO KRIM_ROLE_RSP_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_ROLE_RSP_T (ROLE_RSP_ID,ROLE_ID,RSP_ID,ACTV_IND,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ROLE_RSP_ID_BS_S),(SELECT ROLE_ID FROM KRIM_ROLE_T WHERE NMSPC_CD = 'KC-WKFLW' AND ROLE_NM = 'DepartmentReviewer'),(SELECT RSP_ID FROM KRIM_RSP_T WHERE NMSPC_CD = 'KC-WKFLW' AND NM = 'Proposal Departmental Approval'),'Y',UUID(),1)
/
INSERT INTO KRIM_ROLE_RSP_ACTN_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_ROLE_RSP_ACTN_T (ROLE_RSP_ACTN_ID,ROLE_RSP_ID,ROLE_MBR_ID,ACTN_TYP_CD,ACTN_PLCY_CD,FRC_ACTN,PRIORITY_NBR,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ROLE_RSP_ACTN_ID_BS_S),(SELECT MAX(ID) FROM KRIM_ROLE_RSP_ID_BS_S),'*','A','F','N',1,UUID(),1)
/

INSERT INTO KRIM_ROLE_RSP_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_ROLE_RSP_T (ROLE_RSP_ID,ROLE_ID,RSP_ID,ACTV_IND,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ROLE_RSP_ID_BS_S),(SELECT ROLE_ID FROM KRIM_ROLE_T WHERE NMSPC_CD = 'KC-WKFLW' AND ROLE_NM = 'CustomReviewer'),(SELECT RSP_ID FROM KRIM_RSP_T WHERE NMSPC_CD = 'KC-WKFLW' AND NM = 'Proposal Custom Approval'),'Y',UUID(),1)
/
INSERT INTO KRIM_ROLE_RSP_ACTN_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_ROLE_RSP_ACTN_T (ROLE_RSP_ACTN_ID,ROLE_RSP_ID,ROLE_MBR_ID,ACTN_TYP_CD,ACTN_PLCY_CD,FRC_ACTN,PRIORITY_NBR,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ROLE_RSP_ACTN_ID_BS_S),(SELECT MAX(ID) FROM KRIM_ROLE_RSP_ID_BS_S),'*','A','F','N',1,UUID(),1)
/

INSERT INTO KRIM_ROLE_RSP_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_ROLE_RSP_T (ROLE_RSP_ID,ROLE_ID,RSP_ID,ACTV_IND,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ROLE_RSP_ID_BS_S),(SELECT ROLE_ID FROM KRIM_ROLE_T WHERE NMSPC_CD = 'KC-WKFLW' AND ROLE_NM = 'KP'),(SELECT RSP_ID FROM KRIM_RSP_T WHERE NMSPC_CD = 'KC-WKFLW' AND NM = 'Proposal Persons Approval'),'Y',UUID(),1)
/
INSERT INTO KRIM_ROLE_RSP_ACTN_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_ROLE_RSP_ACTN_T (ROLE_RSP_ACTN_ID,ROLE_RSP_ID,ROLE_MBR_ID,ACTN_TYP_CD,ACTN_PLCY_CD,FRC_ACTN,PRIORITY_NBR,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ROLE_RSP_ACTN_ID_BS_S),(SELECT MAX(ID) FROM KRIM_ROLE_RSP_ID_BS_S),'*','A','A','N',1,UUID(),1)
/

INSERT INTO KRIM_ROLE_RSP_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_ROLE_RSP_T (ROLE_RSP_ID,ROLE_ID,RSP_ID,ACTV_IND,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ROLE_RSP_ID_BS_S),(SELECT ROLE_ID FROM KRIM_ROLE_T WHERE NMSPC_CD = 'KC-WKFLW' AND ROLE_NM = 'Unit Administrator'),(SELECT RSP_ID FROM KRIM_RSP_T WHERE NMSPC_CD = 'KC-WKFLW' AND NM = 'ProtocolUnitApprovalResponsibility'),'Y',UUID(),1)
/
INSERT INTO KRIM_ROLE_RSP_ACTN_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_ROLE_RSP_ACTN_T (ROLE_RSP_ACTN_ID,ROLE_RSP_ID,ROLE_MBR_ID,ACTN_TYP_CD,ACTN_PLCY_CD,FRC_ACTN,PRIORITY_NBR,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ROLE_RSP_ACTN_ID_BS_S),(SELECT MAX(ID) FROM KRIM_ROLE_RSP_ID_BS_S),'*','A','F','N',1,UUID(),1)
/

INSERT INTO KRIM_ROLE_RSP_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_ROLE_RSP_T (ROLE_RSP_ID,ROLE_ID,RSP_ID,ACTV_IND,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ROLE_RSP_ID_BS_S),(SELECT ROLE_ID FROM KRIM_ROLE_T WHERE NMSPC_CD = 'KC-PROTOCOL' AND ROLE_NM = 'IRB Online Reviewer'),(SELECT RSP_ID FROM KRIM_RSP_T WHERE NMSPC_CD = 'KC-WKFLW' AND NM = 'IRB Reviewer Approve Online Review'),'Y',UUID(),1)
/
INSERT INTO KRIM_ROLE_RSP_ACTN_ID_BS_S VALUES (null)
/
INSERT INTO KRIM_ROLE_RSP_ACTN_T (ROLE_RSP_ACTN_ID,ROLE_RSP_ID,ROLE_MBR_ID,ACTN_TYP_CD,ACTN_PLCY_CD,FRC_ACTN,PRIORITY_NBR,OBJ_ID,VER_NBR) 
    VALUES ((SELECT MAX(ID) FROM KRIM_ROLE_RSP_ACTN_ID_BS_S),(SELECT MAX(ID) FROM KRIM_ROLE_RSP_ID_BS_S),'*','A','F','N',1,UUID(),1)
/
delimiter ;