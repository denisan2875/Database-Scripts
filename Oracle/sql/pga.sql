select username, name, value
from v$statname n, v$session s, v$sesstat t
where s.sid=t.sid
and n.statistic#=t.statistic#
and s.type = 'USER'
and s.username is not null
and n.name = 'session pga memory'
and t.value > 1048576
/
