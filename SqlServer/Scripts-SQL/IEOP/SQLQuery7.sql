/*PRINT 'EMBARQUE'
SELECT	COUNT(1)
--delete 
  FROM	[IEOP].[dbo].[IEOP_EMBARQUE]
 WHERE	DTH_NORMAL_DECOLAGEM > '20131001'

PRINT 'DESEMBARQUE'
SELECT	COUNT(1)
--delete 
  FROM	[IEOP].[dbo].[IEOP_DESEMBARQUE]
 WHERE	DTH_NORMAL_POUSO > '20131001'

PRINT 'MOVIMENTACAO'
SELECT	COUNT(1)
--delete  l
  FROM	[IEOP].[dbo].[IEOP_MOVIMENTACAO]
 WHERE	DTH_MOVIMENTO > '20130701'*/


PRINT 'EMBARQUE'
SELECT	COUNT(1)
  FROM	[IEOP].[dbo].[IEOP_EMBARQUE_TEMP]
 WHERE	FLG_MIGRADO = 22

PRINT 'DESEMBARQUE'
SELECT	COUNT(1)
  FROM	[IEOP].[dbo].[IEOP_DESEMBARQUE_TEMP]
 WHERE	FLG_MIGRADO = 22

PRINT 'MOVIMENTACAO'
SELECT	COUNT(1)
  FROM	[IEOP].[dbo].[IEOP_MOVIMENTACAO_TEMP]
 WHERE	FLG_MIGRADO = 22


SELECT	COUNT(1)
  FROM	[IEOP].[dbo].[IEOP_EMBARQUE_TEMP]
 WHERE	FLG_MIGRADO = 33

PRINT 'DESEMBARQUE'
SELECT	COUNT(1)
  FROM	[IEOP].[dbo].[IEOP_DESEMBARQUE_TEMP]
 WHERE	FLG_MIGRADO = 33

PRINT 'MOVIMENTACAO'
SELECT	COUNT(1)
  FROM	[IEOP].[dbo].[IEOP_MOVIMENTACAO_TEMP]
 WHERE	FLG_MIGRADO = 33

 /*

EXEC [IEOP].[dbo].[PRC_MERGE_MOV_NOVO_BIOGER];

EXEC [IEOP].[dbo].[PRC_MERGE_DES_NOVO_BIOGER];

EXEC [IEOP].[dbo].[PRC_MERGE_EMB_NOVO_BIOGER];

*/

 /*
 
UPDATE [IEOP].[dbo].[IEOP_EMBARQUE_TEMP] 
   SET FLG_MIGRADO = 22
 WHERE [DTH_ATUALIZACAO] >= '20131001' 
   AND [DTH_EFETIVA_DECOLAGEM] >= '20131001'

UPDATE [IEOP].[dbo].[IEOP_DESEMBARQUE_TEMP] 
   SET FLG_MIGRADO = 22
 WHERE [DTH_ATUALIZACAO] >= '20131001' 
   AND [DTH_EFETIVA_POUSO] >= '20131001'

UPDATE [IEOP].[dbo].[IEOP_MOVIMENTACAO_TEMP] 
   SET FLG_MIGRADO = 22
 WHERE [DTH_ATUALIZACAO] >= '20131001' 
   AND [DTH_MOVIMENTO] >= '20131001'


UPDATE [IEOP].[dbo].[IEOP_EMBARQUE_TEMP] 
   SET FLG_MIGRADO = 22
 WHERE FLG_MIGRADO = 33

UPDATE [IEOP].[dbo].[IEOP_DESEMBARQUE_TEMP] 
   SET FLG_MIGRADO = 22
 WHERE FLG_MIGRADO = 33

UPDATE [IEOP].[dbo].[IEOP_MOVIMENTACAO_TEMP] 
   SET FLG_MIGRADO = 22
 WHERE FLG_MIGRADO = 33

DELETE
  FROM	[IEOP].[dbo].[IEOP_EMBARQUE] 
 WHERE	[DTH_NORMAL_DECOLAGEM] >= '20130701' 

DELETE
  FROM	[IEOP].[dbo].[IEOP_DESEMBARQUE] 
 WHERE	[DTH_NORMAL_POUSO] >= '20130701' 

DELETE
  FROM	[IEOP].[dbo].[IEOP_MOVIMENTACAO] 
 WHERE	[DTH_MOVIMENTO] >= '20130701' 
*/