CREATE TABLE CADASTRO_ASSINFRA(
	CAS_CNPJ		NUMBER(14)
,	CAS_CODIGO		NUMBER(05)
,	CAS_NOME		VARCHAR2(50)
,	CAS_BAN_CODIGO 	 	VARCHAR2(03)
,	CAS_ABA_BAN_CODIGO 	VARCHAR2(05)
)
/

ALTER TABLE CADASTRO_ASSINFRA
ADD CONSTRAINT CAS_PK PRIMARY KEY(CAS_CNPJ)
/

CREATE TABLE ASSINFRA_DEPENDENCIA(
	ADE_CAS_CNPJ	NUMBER(14)
,	ADE_DEP_CODIGO	NUMBER(04)
)
/

ALTER TABLE ASSINFRA_DEPENDENCIA
ADD CONSTRAINT ADE_PK PRIMARY KEY(ADE_CAS_CNPJ, ADE_DEP_CODIGO)
/

ALTER TABLE ASSINFRA_DEPENDENCIA
ADD CONSTRAINT ADE_CAS_FK FOREIGN KEY(ADE_CAS_CNPJ)
REFERENCES CADASTRO_ASSINFRA (CAS_CNPJ)
/

ALTER TABLE ASSINFRA_DEPENDENCIA
ADD CONSTRAINT ADE_DEP_FK FOREIGN KEY(ADE_DEP_CODIGO)
REFERENCES DEPENDENCIAS (DEP_CODIGO)
/

CREATE TABLE ASSINFRA_MOVIMENTACAO(
	AMO_ADE_CAS_CNPJ	NUMBER(14)
,	AMO_ADE_DEP_CODIGO   	NUMBER(04)
,	AMO_VERSAO	        NUMBER(02)
,	AMO_MES_REFERENCIA   	NUMBER(02)
,	AMO_ANO_REFERENCIA   	NUMBER(04)
,	AMO_VALOR		NUMBER(11,2)
)
/

ALTER TABLE ASSINFRA_MOVIMENTACAO
ADD CONSTRAINT AMO_PK PRIMARY KEY(AMO_MES_REFERENCIA, AMO_ANO_REFERENCIA, AMO_VERSAO,AMO_ADE_CAS_CNPJ,AMO_ADE_DEP_CODIGO)
/

ALTER TABLE ASSINFRA_MOVIMENTACAO
ADD CONSTRAINT AMO_ADE_CAS_FK FOREIGN KEY(AMO_ADE_CAS_CNPJ, AMO_ADE_DEP_CODIGO)
REFERENCES ASSINFRA_DEPENDENCIA (ADE_CAS_CNPJ, ADE_DEP_CODIGO)
/

GRANT SELECT, UPDATE, DELETE, INSERT ON CADASTRO_ASSINFRA TO RH_PERFIL_99
/

GRANT SELECT, UPDATE, DELETE, INSERT ON ASSINFRA_DEPENDENCIA TO RH_PERFIL_99
/

GRANT SELECT, UPDATE, DELETE, INSERT ON ASSINFRA_MOVIMENTACAO TO RH_PERFIL_99
/

INSERT INTO TABELAS VALUES  ('SRHCAD', 'CADASTRO_ASSINFRA', 'IFRSRH', 'TABELA')
/

INSERT INTO TABELAS VALUES  ('SRHCAD', 'ASSINFRA_DEPENDENCIA', 'IFRSRH', 'TABELA')
/

INSERT INTO TABELAS VALUES  ('SRHCAD', 'ASSINFRA_MOVIMENTACAO', 'IFRSRH', 'TABELA')
/

CREATE PUBLIC SYNONYM CADASTRO_ASSINFRA FOR IFRSRH.CADASTRO_ASSINFRA
/

CREATE PUBLIC SYNONYM ASSINFRA_DEPENDENCIA FOR IFRSRH.ASSINFRA_DEPENDENCIA
/

CREATE PUBLIC SYNONYM ASSINFRA_MOVIMENTACAO FOR IFRSRH.ASSINFRA_MOVIMENTACAO
/


/*
EXECUTADO NO HOMOLOG

INSERT INTO TABELAS VALUES  ('GESTORH', 'CADASTRO_ASSINFRA', 'DBA_INFRAERO', 'TABELA')
/

INSERT INTO TABELAS VALUES  ('GESTORH', 'ASSINFRA_DEPENDENCIA', 'DBA_INFRAERO', 'TABELA')
/

INSERT INTO TABELAS VALUES  ('GESTORH', 'ASSINFRA_MOVIMENTACAO', 'DBA_INFRAERO', 'TABELA')
/

CREATE PUBLIC SYNONYM CADASTRO_ASSINFRA FOR DBA_INFRAERO.CADASTRO_ASSINFRA
/

CREATE PUBLIC SYNONYM ASSINFRA_DEPENDENCIA FOR DBA_INFRAERO.ASSINFRA_DEPENDENCIA
/

CREATE PUBLIC SYNONYM ASSINFRA_MOVIMENTACAO FOR DBA_INFRAERO.ASSINFRA_MOVIMENTACAO
/

*/