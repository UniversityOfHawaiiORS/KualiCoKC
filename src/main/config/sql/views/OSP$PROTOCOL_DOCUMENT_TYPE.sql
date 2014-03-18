CREATE OR REPLACE VIEW OSP$PROTOCOL_DOCUMENT_TYPE AS 
    SELECT t.TYPE_CD, t.DESCRIPTION, t.UPDATE_TIMESTAMP, t.UPDATE_USER, g.GROUP_CD
    FROM PROTOCOL_ATTACHMENT_TYPE t, PROTOCOL_ATTACHMENT_GROUP g, PROTOCOL_ATTACHMENT_TYPE_GROUP tg
    WHERE t.TYPE_CD = tg.TYPE_CD AND g.GROUP_CD = tg.GROUP_CD;