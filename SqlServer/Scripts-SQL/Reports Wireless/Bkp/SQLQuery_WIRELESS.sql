--1
SELECT	CASE 
			WHEN SUBSTRING(Client_IP_Address, 1, 5) = '10.6.' THEN 'SBBR - BRASÍLIA'
			WHEN SUBSTRING(Client_IP_Address, 1, 5) = '10.7.' THEN 'SBBE - BELÉM'
			WHEN SUBSTRING(Client_IP_Address, 1, 5) = '10.4.' THEN 'SBPA - PORTO ALEGRE'
			WHEN SUBSTRING(Client_IP_Address, 1, 6) = '10.70.' THEN 'SBSV - SALVADOR'
			WHEN SUBSTRING(Client_IP_Address, 1, 6) = '10.38.' THEN 'SBCF - CONFINS'
			WHEN SUBSTRING(Client_IP_Address, 1, 5) = '10.2.' THEN 'SBGR - GUARULHOS'
			ELSE 'OUTRO AEROPORTO'
		END AS LOCAL_OPERACAO
,		Substring(Called_Station_Id, 19, 30) as Operadora
,       SUM(Acct_Input_Octets/1024/1024) AS Total_Input_MB
,		SUM(Acct_Output_Octets/1024/1024) AS Total_Output_MB
,		SUM((Acct_Output_Octets/1024/1024) + (Acct_Input_Octets/1024/1024)) AS Total_MB
FROM	[IASODBC].[dbo].[accounting_data]
WHERE	Acct_Session_Id IS NOT NULL
AND		Acct_Status_Type = 2
AND		month(timestamp) = @Mes
AND		year(timestamp) = @Ano
AND		SUBSTRING(Client_IP_Address, 1, 5) != '10.0.'
GROUP BY 
		Client_IP_Address
,		Substring(Called_Station_Id, 19, 30)
ORDER BY 1, 2
		
--2
SELECT	CASE 
			WHEN SUBSTRING(Client_IP_Address, 1, 5) = '10.6.' THEN 'SBBR - BRASÍLIA'
			WHEN SUBSTRING(Client_IP_Address, 1, 5) = '10.7.' THEN 'SBBE - BELÉM'
			WHEN SUBSTRING(Client_IP_Address, 1, 5) = '10.4.' THEN 'SBPA - PORTO ALEGRE'
			WHEN SUBSTRING(Client_IP_Address, 1, 6) = '10.70.' THEN 'SBSV - SALVADOR'
			WHEN SUBSTRING(Client_IP_Address, 1, 6) = '10.38.' THEN 'SBCF - CONFINS'
			WHEN SUBSTRING(Client_IP_Address, 1, 5) = '10.2.' THEN 'SBGR - GUARULHOS'
			ELSE 'OUTRO AEROPORTO'
		END AS LOCAL_OPERACAO
,		Substring(Called_Station_Id, 19, 30) as Operadora
,       COUNT(1) AS Total_Sessoes
FROM	[IASODBC].[dbo].[accounting_data]
WHERE	Acct_Session_Id IS NOT NULL
AND		Acct_Status_Type = 2
AND		month(timestamp) = @Mes
AND		year(timestamp) = @Ano
AND		SUBSTRING(Client_IP_Address, 1, 5) != '10.0.'
GROUP BY 
		Client_IP_Address
,		Substring(Called_Station_Id, 19, 30)
ORDER BY 1, 2		
		
--3
SELECT	CASE 
			WHEN SUBSTRING(Client_IP_Address, 1, 5) = '10.6.' THEN 'SBBR - BRASÍLIA'
			WHEN SUBSTRING(Client_IP_Address, 1, 5) = '10.7.' THEN 'SBBE - BELÉM'
			WHEN SUBSTRING(Client_IP_Address, 1, 5) = '10.4.' THEN 'SBPA - PORTO ALEGRE'
			WHEN SUBSTRING(Client_IP_Address, 1, 6) = '10.70.' THEN 'SBSV - SALVADOR'
			WHEN SUBSTRING(Client_IP_Address, 1, 6) = '10.38.' THEN 'SBCF - CONFINS'
			WHEN SUBSTRING(Client_IP_Address, 1, 5) = '10.2.' THEN 'SBGR - GUARULHOS'
			ELSE 'OUTRO AEROPORTO'
		END AS LOCAL_OPERACAO
,		Substring(Called_Station_Id, 19, 30) as Operadora
,       ROUND(SUM(convert(float,Acct_Session_Time)/60), 2) AS Total_Tempo_Sessoes_Minutos
,       ROUND(SUM(convert(float,Acct_Session_Time)/60/60), 2) AS Total_Tempo_Sessoes_Horas
FROM	[IASODBC].[dbo].[accounting_data]
WHERE	Acct_Session_Id IS NOT NULL
AND		Acct_Status_Type = 2
AND		month(timestamp) = @Mes
AND		year(timestamp) = @Ano
AND		SUBSTRING(Client_IP_Address, 1, 5) != '10.0.'
GROUP BY 
		Client_IP_Address
,		Substring(Called_Station_Id, 19, 30)
ORDER BY 1, 2	


--4 => ENTRADA
DECLARE @REL TABLE (
	AEROPORTO VARCHAR(40)
,	OPERADORA VARCHAR(40)
,	ANO INT
,	MES INT
,	DIA INT
,	TOTAL_INPUT_MB NUMERIC(12,2)
,	TOTAL_OUTPUT_MB NUMERIC(12,2)
,	TOTAL_MB NUMERIC(12,2)
)

DECLARE	
	@AEROPORTO VARCHAR(40)
,	@OPERADORA VARCHAR(40)
,	@AEROPORTO_OLD VARCHAR(40)
,	@OPERADORA_OLD VARCHAR(40)
,	@ANO INT
,	@MES INT
,	@DIA INT
,	@TOTAL_INPUT_MB BIGINT
,	@TOTAL_OUTPUT_MB BIGINT
,	@TOTAL_MB BIGINT

DECLARE C1 CURSOR FOR
SELECT	CASE 
			WHEN SUBSTRING(Client_IP_Address, 1, 5) = '10.6.' THEN 'SBBR - BRASÍLIA'
			WHEN SUBSTRING(Client_IP_Address, 1, 5) = '10.7.' THEN 'SBBE - BELÉM'
			WHEN SUBSTRING(Client_IP_Address, 1, 5) = '10.4.' THEN 'SBPA - PORTO ALEGRE'
			WHEN SUBSTRING(Client_IP_Address, 1, 6) = '10.70.' THEN 'SBSV - SALVADOR'
			WHEN SUBSTRING(Client_IP_Address, 1, 6) = '10.38.' THEN 'SBCF - CONFINS'
			WHEN SUBSTRING(Client_IP_Address, 1, 5) = '10.2.' THEN 'SBGR - GUARULHOS'
			ELSE 'OUTRO AEROPORTO'
		END AS LOCAL_OPERACAO
,		Substring(Called_Station_Id, 19, 30) as Operadora
,		YEAR(timestamp) as ANO
,		MONTH(timestamp) AS MES
,		DAY(timestamp) AS DIA
,       SUM(Acct_Input_Octets/1024/1024) AS Total_Input_MB
,		SUM(Acct_Output_Octets/1024/1024) AS Total_Output_MB
,		SUM((Acct_Output_Octets/1024/1024) + (Acct_Input_Octets/1024/1024)) AS Total_MB
FROM	[IASODBC].[dbo].[accounting_data]
WHERE	Acct_Session_Id IS NOT NULL
AND		Acct_Status_Type = 2
AND		timestamp between '20090901' and '20090930'
AND		SUBSTRING(Client_IP_Address, 1, 5) != '10.0.'
GROUP BY 
		Client_IP_Address
,		Substring(Called_Station_Id, 19, 30)
,		YEAR(timestamp)
,		MONTH(timestamp)
,		DAY(timestamp)
ORDER BY 1,2, 6 DESC

OPEN C1
FETCH NEXT FROM C1 
INTO @AEROPORTO
,	@OPERADORA
,	@ANO
,	@MES
,	@DIA
,	@TOTAL_INPUT_MB
,	@TOTAL_OUTPUT_MB
,	@TOTAL_MB

SELECT	@AEROPORTO_OLD = ''
,		@OPERADORA_OLD = ''

WHILE @@FETCH_STATUS = 0
BEGIN
	IF (@AEROPORTO_OLD != @AEROPORTO) OR (@OPERADORA_OLD != @OPERADORA) BEGIN
		INSERT INTO @REL VALUES (@AEROPORTO,@OPERADORA,@ANO,@MES,@DIA,@TOTAL_INPUT_MB,@TOTAL_OUTPUT_MB,@TOTAL_MB)
	END
	
	SET @AEROPORTO_OLD = @AEROPORTO
	
	SET @OPERADORA_OLD = @OPERADORA
	
	FETCH NEXT FROM C1 
	INTO @AEROPORTO
	,	@OPERADORA
	,	@ANO
	,	@MES
	,	@DIA
	,	@TOTAL_INPUT_MB
	,	@TOTAL_OUTPUT_MB
	,	@TOTAL_MB

END

CLOSE C1
DEALLOCATE C1

SELECT * FROM @REL

--4 => SAÍDA
DECLARE @REL TABLE (
	AEROPORTO VARCHAR(40)
,	OPERADORA VARCHAR(40)
,	ANO INT
,	MES INT
,	DIA INT
,	TOTAL_INPUT_MB NUMERIC(12,2)
,	TOTAL_OUTPUT_MB NUMERIC(12,2)
,	TOTAL_MB NUMERIC(12,2)
)

DECLARE	
	@AEROPORTO VARCHAR(40)
,	@OPERADORA VARCHAR(40)
,	@AEROPORTO_OLD VARCHAR(40)
,	@OPERADORA_OLD VARCHAR(40)
,	@ANO INT
,	@MES INT
,	@DIA INT
,	@TOTAL_INPUT_MB BIGINT
,	@TOTAL_OUTPUT_MB BIGINT
,	@TOTAL_MB BIGINT

DECLARE C1 CURSOR FOR
SELECT	CASE 
			WHEN SUBSTRING(Client_IP_Address, 1, 5) = '10.6.' THEN 'SBBR - BRASÍLIA'
			WHEN SUBSTRING(Client_IP_Address, 1, 5) = '10.7.' THEN 'SBBE - BELÉM'
			WHEN SUBSTRING(Client_IP_Address, 1, 5) = '10.4.' THEN 'SBPA - PORTO ALEGRE'
			WHEN SUBSTRING(Client_IP_Address, 1, 6) = '10.70.' THEN 'SBSV - SALVADOR'
			WHEN SUBSTRING(Client_IP_Address, 1, 6) = '10.38.' THEN 'SBCF - CONFINS'
			WHEN SUBSTRING(Client_IP_Address, 1, 5) = '10.2.' THEN 'SBGR - GUARULHOS'
			ELSE 'OUTRO AEROPORTO'
		END AS LOCAL_OPERACAO
,		Substring(Called_Station_Id, 19, 30) as Operadora
,		YEAR(timestamp) as ANO
,		MONTH(timestamp) AS MES
,		DAY(timestamp) AS DIA
,       SUM(Acct_Input_Octets/1024/1024) AS Total_Input_MB
,		SUM(Acct_Output_Octets/1024/1024) AS Total_Output_MB
,		SUM((Acct_Output_Octets/1024/1024) + (Acct_Input_Octets/1024/1024)) AS Total_MB
FROM	[IASODBC].[dbo].[accounting_data]
WHERE	Acct_Session_Id IS NOT NULL
AND		Acct_Status_Type = 2
AND		timestamp between '20090901' and '20090930'
AND		SUBSTRING(Client_IP_Address, 1, 5) != '10.0.'
GROUP BY 
		Client_IP_Address
,		Substring(Called_Station_Id, 19, 30)
,		YEAR(timestamp)
,		MONTH(timestamp)
,		DAY(timestamp)
ORDER BY 1,2,7 DESC

OPEN C1
FETCH NEXT FROM C1 
INTO @AEROPORTO
,	@OPERADORA
,	@ANO
,	@MES
,	@DIA
,	@TOTAL_INPUT_MB
,	@TOTAL_OUTPUT_MB
,	@TOTAL_MB

SELECT	@AEROPORTO_OLD = ''
,		@OPERADORA_OLD = ''

WHILE @@FETCH_STATUS = 0
BEGIN
	IF (@AEROPORTO_OLD != @AEROPORTO) OR (@OPERADORA_OLD != @OPERADORA) BEGIN
		INSERT INTO @REL VALUES (@AEROPORTO,@OPERADORA,@ANO,@MES,@DIA,@TOTAL_INPUT_MB,@TOTAL_OUTPUT_MB,@TOTAL_MB)
	END
	
	SET @AEROPORTO_OLD = @AEROPORTO
	
	SET @OPERADORA_OLD = @OPERADORA
	
	FETCH NEXT FROM C1 
	INTO @AEROPORTO
	,	@OPERADORA
	,	@ANO
	,	@MES
	,	@DIA
	,	@TOTAL_INPUT_MB
	,	@TOTAL_OUTPUT_MB
	,	@TOTAL_MB

END

CLOSE C1
DEALLOCATE C1

SELECT * FROM @REL

--4 => TOTAL
DECLARE @REL TABLE (
	AEROPORTO VARCHAR(40)
,	OPERADORA VARCHAR(40)
,	ANO INT
,	MES INT
,	DIA INT
,	TOTAL_INPUT_MB NUMERIC(12,2)
,	TOTAL_OUTPUT_MB NUMERIC(12,2)
,	TOTAL_MB NUMERIC(12,2)
)

DECLARE	
	@AEROPORTO VARCHAR(40)
,	@OPERADORA VARCHAR(40)
,	@AEROPORTO_OLD VARCHAR(40)
,	@OPERADORA_OLD VARCHAR(40)
,	@ANO INT
,	@MES INT
,	@DIA INT
,	@TOTAL_INPUT_MB BIGINT
,	@TOTAL_OUTPUT_MB BIGINT
,	@TOTAL_MB BIGINT

DECLARE C1 CURSOR FOR
SELECT	CASE 
			WHEN SUBSTRING(Client_IP_Address, 1, 5) = '10.6.' THEN 'SBBR - BRASÍLIA'
			WHEN SUBSTRING(Client_IP_Address, 1, 5) = '10.7.' THEN 'SBBE - BELÉM'
			WHEN SUBSTRING(Client_IP_Address, 1, 5) = '10.4.' THEN 'SBPA - PORTO ALEGRE'
			WHEN SUBSTRING(Client_IP_Address, 1, 6) = '10.70.' THEN 'SBSV - SALVADOR'
			WHEN SUBSTRING(Client_IP_Address, 1, 6) = '10.38.' THEN 'SBCF - CONFINS'
			WHEN SUBSTRING(Client_IP_Address, 1, 5) = '10.2.' THEN 'SBGR - GUARULHOS'
			ELSE 'OUTRO AEROPORTO'
		END AS LOCAL_OPERACAO
,		Substring(Called_Station_Id, 19, 30) as Operadora
,		YEAR(timestamp) as ANO
,		MONTH(timestamp) AS MES
,		DAY(timestamp) AS DIA
,       SUM(Acct_Input_Octets/1024/1024) AS Total_Input_MB
,		SUM(Acct_Output_Octets/1024/1024) AS Total_Output_MB
,		SUM((Acct_Output_Octets/1024/1024) + (Acct_Input_Octets/1024/1024)) AS Total_MB
FROM	[IASODBC].[dbo].[accounting_data]
WHERE	Acct_Session_Id IS NOT NULL
AND		Acct_Status_Type = 2
AND		timestamp between '20090901' and '20090930'
AND		SUBSTRING(Client_IP_Address, 1, 5) != '10.0.'
GROUP BY 
		Client_IP_Address
,		Substring(Called_Station_Id, 19, 30)
,		YEAR(timestamp)
,		MONTH(timestamp)
,		DAY(timestamp)
ORDER BY 1,2,8 DESC

OPEN C1
FETCH NEXT FROM C1 
INTO @AEROPORTO
,	@OPERADORA
,	@ANO
,	@MES
,	@DIA
,	@TOTAL_INPUT_MB
,	@TOTAL_OUTPUT_MB
,	@TOTAL_MB

SELECT	@AEROPORTO_OLD = ''
,		@OPERADORA_OLD = ''

WHILE @@FETCH_STATUS = 0
BEGIN
	IF (@AEROPORTO_OLD != @AEROPORTO) OR (@OPERADORA_OLD != @OPERADORA) BEGIN
		INSERT INTO @REL VALUES (@AEROPORTO,@OPERADORA,@ANO,@MES,@DIA,@TOTAL_INPUT_MB,@TOTAL_OUTPUT_MB,@TOTAL_MB)
	END
	
	SET @AEROPORTO_OLD = @AEROPORTO
	
	SET @OPERADORA_OLD = @OPERADORA
	
	FETCH NEXT FROM C1 
	INTO @AEROPORTO
	,	@OPERADORA
	,	@ANO
	,	@MES
	,	@DIA
	,	@TOTAL_INPUT_MB
	,	@TOTAL_OUTPUT_MB
	,	@TOTAL_MB

END

CLOSE C1
DEALLOCATE C1

SELECT * FROM @REL

------------------
SELECT	Client_IP_Address
,		Substring(Called_Station_Id, 19, 30) as Operadora
,       ROUND(SUM(convert(float,Acct_Session_Time)/60), 2) AS Total_Tempo_Sessoes_Minutos
,       ROUND(SUM(convert(float,Acct_Session_Time)/60/60), 2) AS Total_Tempo_Sessoes_Horas
FROM	[IASODBC].[dbo].[accounting_data]
WHERE	Acct_Session_Id IS NOT NULL
AND		Acct_Status_Type = 2
AND		timestamp between '20090901' and '20090930'
GROUP BY 
		Client_IP_Address
,		Substring(Called_Station_Id, 19, 30)
ORDER BY 1	

-------------------------------------------
