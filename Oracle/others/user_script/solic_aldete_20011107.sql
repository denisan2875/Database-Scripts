ALTER TABLE DOCUMENTOS_COBRANCA
DROP CONSTRAINT DOCCOB_CK_1
/

ALTER TABLE DOCUMENTOS_COBRANCA
ADD CONSTRAINT DOCCOB_CK_1 CHECK (DOC_TIPO IN (1,2,3,4,5,6))
/