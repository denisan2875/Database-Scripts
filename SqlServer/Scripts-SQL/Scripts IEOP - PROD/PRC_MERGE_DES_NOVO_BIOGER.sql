USE [IEOP]
GO

/****** Object:  StoredProcedure [dbo].[PRC_MERGE_DES_NOVO_BIOGER]    Script Date: 27/08/2013 09:12:03 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[PRC_MERGE_DES_NOVO_BIOGER]
AS
SET NOCOUNT ON;

declare	@SIG_AEROPORTO varchar(4),
	@NUM_VOO varchar(10),
	@DTH_NORMAL_POUSO datetime,
	@DTH_EFETIVA_POUSO datetime,
	@COD_CIA_AEREA int,
	@SIG_CIA_AEREA_IATA varchar(3),
	@NME_CIA_AEREA varchar(30),
	@COD_MATRICULA_AERONAVE varchar(10),
	@NUM_GRUPO_VOO_DESEMB int,
	@NUM_NATUREZA_VOO_DESEMB varchar(1),
	@NUM_CLASSE_VOO_DESEMB varchar(1),
	@NUM_CATEGORIA_VOO_DESEMB varchar(2),
	@NUM_CATEGORIA_VOO_DESEMB_VINCULADO varchar(2),
	@SIG_EQUIPAMENTO varchar(10),
	@NME_EQUIPAMENTO varchar(20),
	@QTD_PAX_DESEMB_DOM int,
	@QTD_PAX_DESEMB_INT int,
	@QTD_BAG_DESEMB_DOM int,
	@QTD_BAG_DESEMB_INT int,
	@QTD_CAR_DESEMB_DOM int,
	@QTD_CAR_DESEMB_INT int,
	@QTD_COR_DESEMB_DOM int,
	@QTD_COR_DESEMB_INT int,
	@QTD_BAG_TRANSITO_DOM int,
	@QTD_BAG_TRANSITO_INT int,
	@QTD_CAR_TRANSITO_DOM int,
	@QTD_CAR_TRANSITO_INT int,
	@QTD_COR_TRANSITO_DOM int,
	@QTD_COR_TRANSITO_INT int,
	@QTD_CON_TRANSITO_DOM int,
	@QTD_CON_TRANSITO_INT int,
	@COD_VOO_CHEGADA varchar(10),
	@COD_DESEMB_VINCULADO varchar(10),
	@SIG_AEROPORTO_PROCEDENCIA varchar(4),
	@NUM_BOX varchar(10),
	@TIP_BOX varchar(10),
	@NME_PONTE varchar(40),
	@NUM_ESTEIRA varchar(30),
	@DSC_PISTA_POUSO varchar(10),
	@DSC_PISTA_DECOLAGEM varchar(10),
	@COD_STATUS int,
	@COD_STATUS_ANT int,
	@COD_STATUS_POS int,
	@TIP_STATUS tinyint,
	@FLG_STATUS int,
	@FLG_ISENTO int,
	@FLG_AVISTA int,
	@FLG_TAXI_AEREO tinyint,
	@FLG_EQUIP_HELICOP tinyint,
	@DTH_PRI_MOV smalldatetime,
	@DTH_PRI_ENT_MOV smalldatetime,
	@DTH_ULT_MOV smalldatetime,
	@DTH_ATUALIZACAO datetime,
	@QTD_ATUALIZACAO smallint,
	@FLG_MIGRADO tinyint,
	@DTH_MIGRACAO datetime;

UPDATE [IEOP].[dbo].[IEOP_DESEMBARQUE_TEMP] 
SET FLG_MIGRADO = 2
WHERE FLG_MIGRADO = 1;

DECLARE des_cursor CURSOR FOR 
	SELECT	[SIG_AEROPORTO]
			,ISNULL([NUM_VOO],0) NUM_VOO
			,[DTH_NORMAL_POUSO]
			,[DTH_EFETIVA_POUSO]
			,[COD_CIA_AEREA]
			,[SIG_CIA_AEREA_IATA]
			,[NME_CIA_AEREA]
			,[COD_MATRICULA_AERONAVE]
			,[NUM_GRUPO_VOO_DESEMB]
			,[NUM_NATUREZA_VOO_DESEMB]
			,[NUM_CLASSE_VOO_DESEMB]
			,[NUM_CATEGORIA_VOO_DESEMB]
			,[NUM_CATEGORIA_VOO_DESEMB_VINCULADO]
			,[SIG_EQUIPAMENTO]
			,[NME_EQUIPAMENTO]
			,[QTD_PAX_DESEMB_DOM]
			,[QTD_PAX_DESEMB_INT]
			,[QTD_BAG_DESEMB_DOM]
			,[QTD_BAG_DESEMB_INT]
			,[QTD_CAR_DESEMB_DOM]
			,[QTD_CAR_DESEMB_INT]
			,[QTD_COR_DESEMB_DOM]
			,[QTD_COR_DESEMB_INT]
			,[QTD_BAG_TRANSITO_DOM]
			,[QTD_BAG_TRANSITO_INT]
			,[QTD_CAR_TRANSITO_DOM]
			,[QTD_CAR_TRANSITO_INT]
			,[QTD_COR_TRANSITO_DOM]
			,[QTD_COR_TRANSITO_INT]
			,[QTD_CON_TRANSITO_DOM]
			,[QTD_CON_TRANSITO_INT]
			,[COD_VOO_CHEGADA]
			,[COD_DESEMB_VINCULADO]
			,[SIG_AEROPORTO_PROCEDENCIA]
			,[NUM_BOX]
			,[TIP_BOX]
			,[NME_PONTE]
			,[NUM_ESTEIRA]
			,[DSC_PISTA_POUSO]
			,[DSC_PISTA_DECOLAGEM]
			,[COD_STATUS]
			,[COD_STATUS_ANT]
			,[COD_STATUS_POS]
			,[TIP_STATUS]
			,[FLG_STATUS]
			,[FLG_ISENTO]
			,[FLG_AVISTA]
			,[FLG_TAXI_AEREO]
			,[FLG_EQUIP_HELICOP]
			,[DTH_PRI_MOV]
			,[DTH_PRI_ENT_MOV]
			,[DTH_ULT_MOV]
			,[DTH_ATUALIZACAO]
			,[QTD_ATUALIZACAO]
			,[FLG_MIGRADO]
			,[DTH_MIGRACAO]
	FROM	[IEOP].[dbo].[IEOP_DESEMBARQUE_TEMP] 
   WHERE	FLG_MIGRADO = 2 
   ORDER 
      BY	 SIG_AEROPORTO ASC
            ,COD_STATUS ASC
			,[DTH_MIGRACAO] ASC;

OPEN des_cursor

FETCH NEXT FROM des_cursor
INTO @SIG_AEROPORTO,
	@NUM_VOO,
	@DTH_NORMAL_POUSO,
	@DTH_EFETIVA_POUSO,
	@COD_CIA_AEREA,
	@SIG_CIA_AEREA_IATA,
	@NME_CIA_AEREA,
	@COD_MATRICULA_AERONAVE,
	@NUM_GRUPO_VOO_DESEMB,
	@NUM_NATUREZA_VOO_DESEMB,
	@NUM_CLASSE_VOO_DESEMB,
	@NUM_CATEGORIA_VOO_DESEMB,
	@NUM_CATEGORIA_VOO_DESEMB_VINCULADO,
	@SIG_EQUIPAMENTO,
	@NME_EQUIPAMENTO,
	@QTD_PAX_DESEMB_DOM,
	@QTD_PAX_DESEMB_INT,
	@QTD_BAG_DESEMB_DOM,
	@QTD_BAG_DESEMB_INT,
	@QTD_CAR_DESEMB_DOM,
	@QTD_CAR_DESEMB_INT,
	@QTD_COR_DESEMB_DOM,
	@QTD_COR_DESEMB_INT,
	@QTD_BAG_TRANSITO_DOM,
	@QTD_BAG_TRANSITO_INT,
	@QTD_CAR_TRANSITO_DOM,
	@QTD_CAR_TRANSITO_INT,
	@QTD_COR_TRANSITO_DOM,
	@QTD_COR_TRANSITO_INT,
	@QTD_CON_TRANSITO_DOM,
	@QTD_CON_TRANSITO_INT,
	@COD_VOO_CHEGADA,
	@COD_DESEMB_VINCULADO,
	@SIG_AEROPORTO_PROCEDENCIA,
	@NUM_BOX,
	@TIP_BOX,
	@NME_PONTE,
	@NUM_ESTEIRA,
	@DSC_PISTA_POUSO,
	@DSC_PISTA_DECOLAGEM,
	@COD_STATUS,
	@COD_STATUS_ANT,
	@COD_STATUS_POS,
	@TIP_STATUS,
	@FLG_STATUS,
	@FLG_ISENTO,
	@FLG_AVISTA,
	@FLG_TAXI_AEREO,
	@FLG_EQUIP_HELICOP,
	@DTH_PRI_MOV,
	@DTH_PRI_ENT_MOV,
	@DTH_ULT_MOV,
	@DTH_ATUALIZACAO,
	@QTD_ATUALIZACAO,
	@FLG_MIGRADO,
	@DTH_MIGRACAO

WHILE @@FETCH_STATUS = 0
BEGIN
		
	DELETE	IEOP.DBO.IEOP_DESEMBARQUE
	 WHERE	SIG_AEROPORTO = @SIG_AEROPORTO
	   AND	COD_STATUS = @COD_STATUS
	   AND  ISNULL(NUM_VOO,0) = @NUM_VOO
	   --AND  DTH_EFETIVA_POUSO = @DTH_EFETIVA_POUSO;

    BEGIN TRY
		INSERT 
		  INTO	IEOP.dbo.IEOP_DESEMBARQUE 
		VALUES (@SIG_AEROPORTO,
				@NUM_VOO,
				@DTH_NORMAL_POUSO,
				@DTH_EFETIVA_POUSO,
				@COD_CIA_AEREA,
				@SIG_CIA_AEREA_IATA,
				@NME_CIA_AEREA,
				@COD_MATRICULA_AERONAVE,
				@NUM_GRUPO_VOO_DESEMB,
				@NUM_NATUREZA_VOO_DESEMB,
				@NUM_CLASSE_VOO_DESEMB,
				@NUM_CATEGORIA_VOO_DESEMB,
				@NUM_CATEGORIA_VOO_DESEMB_VINCULADO,
				@SIG_EQUIPAMENTO,
				@NME_EQUIPAMENTO,
				@QTD_PAX_DESEMB_DOM,
				@QTD_PAX_DESEMB_INT,
				@QTD_BAG_DESEMB_DOM,
				@QTD_BAG_DESEMB_INT,
				@QTD_CAR_DESEMB_DOM,
				@QTD_CAR_DESEMB_INT,
				@QTD_COR_DESEMB_DOM,
				@QTD_COR_DESEMB_INT,
				@QTD_BAG_TRANSITO_DOM,
				@QTD_BAG_TRANSITO_INT,
				@QTD_CAR_TRANSITO_DOM,
				@QTD_CAR_TRANSITO_INT,
				@QTD_COR_TRANSITO_DOM,
				@QTD_COR_TRANSITO_INT,
				@QTD_CON_TRANSITO_DOM,
				@QTD_CON_TRANSITO_INT,
				@COD_VOO_CHEGADA,
				@COD_DESEMB_VINCULADO,
				@SIG_AEROPORTO_PROCEDENCIA,
				@NUM_BOX,
				@TIP_BOX,
				@NME_PONTE,
				@NUM_ESTEIRA,
				@DSC_PISTA_POUSO,
				@DSC_PISTA_DECOLAGEM,
				@COD_STATUS,
				@COD_STATUS_ANT,
				@COD_STATUS_POS,
				@TIP_STATUS,
				@FLG_STATUS,
				@FLG_ISENTO,
				@FLG_AVISTA,
				@FLG_TAXI_AEREO,
				@FLG_EQUIP_HELICOP,
				@DTH_PRI_MOV,
				@DTH_PRI_ENT_MOV,
				@DTH_ULT_MOV,
				@DTH_ATUALIZACAO,
				0,
				1,
				@DTH_MIGRACAO );
	END TRY

	BEGIN CATCH
		PRINT @SIG_AEROPORTO
	    PRINT @COD_STATUS
	    PRINT @NUM_VOO
	    PRINT @DTH_EFETIVA_POUSO
	END CATCH

	IF (@TIP_STATUS = 3) BEGIN

		UPDATE	IEOP.[dbo].[IEOP_EMBARQUE] 
		   SET	TIP_STATUS = 3
		 WHERE	SIG_AEROPORTO = @SIG_AEROPORTO
		   AND	COD_STATUS = @COD_STATUS		

		DELETE	
		  FROM	IEOP.[dbo].[IEOP_MOVIMENTACAO]
		 WHERE	SIG_AEROPORTO = @SIG_AEROPORTO
		   AND	COD_STATUS = @COD_STATUS		
	END


	FETCH NEXT FROM des_cursor
	INTO @SIG_AEROPORTO,
		@NUM_VOO,
		@DTH_NORMAL_POUSO,
		@DTH_EFETIVA_POUSO,
		@COD_CIA_AEREA,
		@SIG_CIA_AEREA_IATA,
		@NME_CIA_AEREA,
		@COD_MATRICULA_AERONAVE,
		@NUM_GRUPO_VOO_DESEMB,
		@NUM_NATUREZA_VOO_DESEMB,
		@NUM_CLASSE_VOO_DESEMB,
		@NUM_CATEGORIA_VOO_DESEMB,
		@NUM_CATEGORIA_VOO_DESEMB_VINCULADO,
		@SIG_EQUIPAMENTO,
		@NME_EQUIPAMENTO,
		@QTD_PAX_DESEMB_DOM,
		@QTD_PAX_DESEMB_INT,
		@QTD_BAG_DESEMB_DOM,
		@QTD_BAG_DESEMB_INT,
		@QTD_CAR_DESEMB_DOM,
		@QTD_CAR_DESEMB_INT,
		@QTD_COR_DESEMB_DOM,
		@QTD_COR_DESEMB_INT,
		@QTD_BAG_TRANSITO_DOM,
		@QTD_BAG_TRANSITO_INT,
		@QTD_CAR_TRANSITO_DOM,
		@QTD_CAR_TRANSITO_INT,
		@QTD_COR_TRANSITO_DOM,
		@QTD_COR_TRANSITO_INT,
		@QTD_CON_TRANSITO_DOM,
		@QTD_CON_TRANSITO_INT,
		@COD_VOO_CHEGADA,
		@COD_DESEMB_VINCULADO,
		@SIG_AEROPORTO_PROCEDENCIA,
		@NUM_BOX,
		@TIP_BOX,
		@NME_PONTE,
		@NUM_ESTEIRA,
		@DSC_PISTA_POUSO,
		@DSC_PISTA_DECOLAGEM,
		@COD_STATUS,
		@COD_STATUS_ANT,
		@COD_STATUS_POS,
		@TIP_STATUS,
		@FLG_STATUS,
		@FLG_ISENTO,
		@FLG_AVISTA,
		@FLG_TAXI_AEREO,
		@FLG_EQUIP_HELICOP,
		@DTH_PRI_MOV,
		@DTH_PRI_ENT_MOV,
		@DTH_ULT_MOV,
		@DTH_ATUALIZACAO,
		@QTD_ATUALIZACAO,
		@FLG_MIGRADO,
		@DTH_MIGRACAO
END;

UPDATE [IEOP].[dbo].[IEOP_DESEMBARQUE_TEMP] 
SET FLG_MIGRADO = 3
WHERE FLG_MIGRADO = 2;

CLOSE des_cursor;
DEALLOCATE des_cursor;
GO

