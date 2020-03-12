COL USERNAME FORMAT A20
COL OSUSER FORMAT A20
col Program format A20
SELECT s.inst_id, s.SID, s.SERIAL#, s.USERNAME, s.OSUSER, s.STATUS, s.SERVER, s.Program --,s.TERMINAL
FROM gv$session s
WHERE s.USERNAME NOT IN (' ')
AND   s.STATUS = 'ACTIVE'
ORDER BY
	s.SERVER
,	s.OSUSER
,	s.USERNAME
/
