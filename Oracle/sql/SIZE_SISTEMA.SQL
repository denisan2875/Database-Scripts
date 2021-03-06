set verify off
COL SEGMENT_NAME FORMAT A45
COL TABLESPACE_NAME FORMAT A30
ACCEPT SISTEMA CHAR PROMPT 'ENTRE COM O SISTEMA: '
ACCEPT OWNER CHAR PROMPT 'ENTRE COM O OWNER: '


SELECT SEGMENT_NAME, TABLESPACE_NAME, (SUM(BYTES)/1024/1024) AS "TOTAL EM MB"
FROM DBA_EXTENTS
WHERE OWNER = UPPER('&OWNER')
AND SEGMENT_NAME IN (	SELECT TABELA
			FROM IFRBANCO.TABELAS
			WHERE APLICACAO = '&SISTEMA'
		   	AND TIPO = 'TABLE')
AND SEGMENT_TYPE = 'TABLE'
GROUP BY SEGMENT_NAME, TABLESPACE_NAME;


SELECT TABLESPACE_NAME, (SUM(BYTES)/1024/1024) AS "TOTAL GERAL EM MB"
FROM DBA_EXTENTS
WHERE OWNER = UPPER('&OWNER')
AND SEGMENT_NAME IN (	SELECT TABELA
			FROM IFRBANCO.TABELAS
			WHERE APLICACAO = '&SISTEMA'
		   	AND TIPO = 'TABLE')
AND SEGMENT_TYPE = 'TABLE'
GROUP BY TABLESPACE_NAME;

SELECT SEGMENT_NAME, TABLESPACE_NAME, (SUM(BYTES)/1024/1024) AS "TOTAL EM MB"
FROM DBA_EXTENTS
WHERE OWNER = UPPER('&OWNER')
AND SEGMENT_NAME IN (	SELECT CONSTRAINT_NAME
			FROM DBA_CONSTRAINTS
			WHERE TABLE_NAME IN (SELECT TABELA
						FROM IFRBANCO.TABELAS
						WHERE APLICACAO = '&SISTEMA'
						AND TIPO = 'TABLE'
						))
AND SEGMENT_TYPE = 'INDEX'
GROUP BY SEGMENT_NAME, TABLESPACE_NAME;

SELECT TABLESPACE_NAME, (SUM(BYTES)/1024/1024) AS "TOTAL GERAL EM MB"
FROM DBA_EXTENTS
WHERE OWNER = UPPER('&OWNER')
AND SEGMENT_NAME IN (	SELECT CONSTRAINT_NAME
			FROM DBA_CONSTRAINTS
			WHERE TABLE_NAME IN (SELECT TABELA
						FROM IFRBANCO.TABELAS
						WHERE APLICACAO = '&SISTEMA'
						AND TIPO = 'TABLE'
						))
AND SEGMENT_TYPE = 'INDEX'
GROUP BY TABLESPACE_NAME;
	

set verify on