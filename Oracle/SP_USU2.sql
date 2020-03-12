SET LINESIZE 180
set verify off
COL CMD_KILL_ORACLE FORMAT A60
COL CMD_KILL_UNIX FORMAT A15
COL USERNAME FORMAT A15
COL OSUSER FORMAT A15

select 	DISTINCT
	s.INST_ID
,	S.USERNAME
, 	'alter system DISCONNECT session '''||s.SID||','||s.SERIAL#||''' IMMEDIATE;' CMD_KILL_ORACLE
from Gv$session s, Gv$process p 
where p.addr = s.paddr 
and   (s.INST_ID, s.username) IN (
SELECT 	inst_id
,	USERNAME
FROM 	GV$SESSION
WHERE	USERNAME IS NOT NULL
AND     USERNAME NOT IN ('SYS','DBSNMP','SYSMAN', 'IFRDBA')
AND	USERNAME NOT LIKE 'USR%'
GROUP BY Inst_id, USERNAME
HAVING COUNT(1) > 2
)
ORDER BY 1,2
/

set verify oN