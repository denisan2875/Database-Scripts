select decode(inst_id, 1, (SELECT UPPER(INSTANCE_NAME) FROM GV$INSTANCE WHERE INSTANCE_NUMBER = 1), 2, (SELECT UPPER(INSTANCE_NAME) FROM GV$INSTANCE WHERE INSTANCE_NUMBER = 2), 3, (SELECT UPPER(INSTANCE_NAME) FROM GV$INSTANCE WHERE INSTANCE_NUMBER = 3), 5, (SELECT UPPER(INSTANCE_NAME) FROM GV$INSTANCE WHERE INSTANCE_NUMBER = 5), 'IFRx') as "Inst�ia"
,      count(1) as "Total"
from gv$session
group by INST_ID
/
