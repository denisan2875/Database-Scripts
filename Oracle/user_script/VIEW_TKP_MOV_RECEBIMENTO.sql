-- Start of DDL Script for View IFRTECA.TKP_MOV_RECEBIMENTO
-- Generated 11-fev-2004 16:56:49 from IFRTECA@SEBN07.WORLD

CREATE OR REPLACE VIEW TKP_MOV_RECEBIMENTO (
   id_tempo,
   id_modulo,
   cod_tc,
   aer_cod,
   timestamp,
   idt_alteracao,
   quantidade,
   peso,
   volume )
AS
SELECT ID_TEMPO, ID_MODULO, COD_TC, AER_COD, TIMESTAMP, IDT_ALTERACAO,QUANTIDADE,PESO,VOLUME
FROM IFRTECA.TKPTBL_MOV_RECEBIMENTO
UNION ALL
SELECT ID_TEMPO, ID_MODULO, COD_TC, AER_COD, TIMESTAMP, IDT_ALTERACAO,QUANTIDADE,PESO,VOLUME
FROM IFRTECA.TKPSANPRJ_MOV_RECEBIMENTO
UNION ALL
SELECT ID_TEMPO, ID_MODULO, COD_TC, AER_COD, TIMESTAMP, IDT_ALTERACAO,QUANTIDADE,PESO,VOLUME
FROM IFRTECA.TKPSANPRF_MOV_RECEBIMENTO
UNION ALL
SELECT ID_TEMPO, ID_MODULO, COD_TC, AER_COD, TIMESTAMP, IDT_ALTERACAO,QUANTIDADE,PESO,VOLUME
FROM IFRTECA.TKPSANPMN_MOV_RECEBIMENTO
UNION ALL
SELECT ID_TEMPO, ID_MODULO, COD_TC, AER_COD, TIMESTAMP, IDT_ALTERACAO,QUANTIDADE,PESO,VOLUME
FROM IFRTECA.TKPSANPBR_MOV_RECEBIMENTO
UNION ALL
SELECT ID_TEMPO, ID_MODULO, COD_TC, AER_COD, TIMESTAMP, IDT_ALTERACAO,QUANTIDADE,PESO,VOLUME
FROM IFRTECA.TKPSANPPA_MOV_RECEBIMENTO
UNION ALL
SELECT ID_TEMPO, ID_MODULO, COD_TC, AER_COD, TIMESTAMP, IDT_ALTERACAO,QUANTIDADE,PESO,VOLUME
FROM IFRTECA.TKPSANPSP_MOV_RECEBIMENTO
UNION ALL
SELECT ID_TEMPO, ID_MODULO, COD_TC, AER_COD, TIMESTAMP, IDT_ALTERACAO,QUANTIDADE,PESO,VOLUME
FROM IFRTECA.TKPSANPKP_MOV_RECEBIMENTO
UNION ALL
SELECT ID_TEMPO, ID_MODULO, COD_TC, AER_COD, TIMESTAMP, IDT_ALTERACAO,QUANTIDADE,PESO,VOLUME
FROM IFRTECA.TKPSANPFI_MOV_RECEBIMENTO
UNION ALL
SELECT ID_TEMPO, ID_MODULO, COD_TC, AER_COD, TIMESTAMP, IDT_ALTERACAO,QUANTIDADE,PESO,VOLUME
FROM IFRTECA.TKPSANPCT_MOV_RECEBIMENTO
UNION ALL
SELECT ID_TEMPO, ID_MODULO, COD_TC, AER_COD, TIMESTAMP, IDT_ALTERACAO,QUANTIDADE,PESO,VOLUME
FROM IFRTECA.TKPSANPBE_MOV_RECEBIMENTO
/

-- Grants for View
GRANT SELECT ON tkp_mov_recebimento TO role_dclc
/

-- End of DDL Script for View IFRTECA.TKP_MOV_RECEBIMENTO

