SELECT  DISTINCT 'CREATE ROLE ROL_' || OWNER || '_CON;'
  FROM  DBA_OBJECTS
 WHERE  OWNER = 'CORRENTISTA'
   AND  OBJECT_TYPE IN ('TABLE', 'VIEW')
/

SELECT  'GRANT SELECT ON ' || OBJECT_NAME || ' TO ROL_' || OWNER || '_CON;'
  FROM  DBA_OBJECTS
 WHERE  OWNER = 'CORRENTISTA'
   AND  OBJECT_TYPE IN ('TABLE', 'VIEW')
/