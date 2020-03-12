CREATE TABLE TMP_CONCURSO_RDB (
    TCR_MATRICULA               NUMBER(7)
,   TCR_DATA_EDITAL		DATE
,   TCR_CLASSIFICACAO           NUMBER(4) 
)
/


ALTER TABLE TMP_CONCURSO_RDB
ADD CONSTRAINT TCR_PK PRIMARY KEY (TCR_MATRICULA)
USING INDEX
TABLESPACE TS_INDICE
/ 

grant SELECT,DELETE,INSERT, UPDATE ON TMP_CONCURSO_RDB TO RH_PERFIL_99;

CREATE PUBLIC SYNONYM TMP_CONCURSO_RDB FOR IFRSRH.TMP_CONCURSO_RDB
/

INSERT INTO TABELAS VALUES ('SRHSFP', 'TMP_CONCURSO_RDB', 'IFRSRH', 'TABELA')
/


