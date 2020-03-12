SELECT 'ALTER INDEX IFRGCO.' || INDEX_NAME || ' REBUILD ONLINE TABLESPACE TSI_MAXIMO;'
FROM DBA_INDEXES
WHERE OWNER = 'IFRGCO'
AND TABLESPACE_NAME != 'TSI_MAXIMO'
/

SELECT 'ALTER INDEX ' || owner || '.' || INDEX_NAME || ' REBUILD ONLINE TABLESPACE TSD_INDICE;'
FROM DBA_INDEXES
WHERE OWNER like 'IFR%' AND OWNER NOT like 'IFRSRH%'
AND TABLESPACE_NAME != 'TSD_INDICE'
/


SELECT DISTINCT OWNER
FROM DBA_INDEXES
WHERE TABLESPACE_NAME = 'TSI_PESSOAL'
/

SELECT 'GRANT ' || PRIVILEGE || ' ON ' || TABLE_NAME || ' TO ' || GRANTEE || ';'
FROM DBA_TAB_PRIVS
WHERE GRANTEE IN ('BDE_GERAL')


SELECT 'ALTER TABLE IFRSELO.' || TABLE_NAME || ' MOVE TABLESPACE TSD_TEMP;'
FROM DBA_TABLES
WHERE OWNER = 'IFRSELO'
/

SELECT DISTINCT OWNER
FROM DBA_TABLES
WHERE TABLESPACE_NAME = 'TSD_FINAN'
/
