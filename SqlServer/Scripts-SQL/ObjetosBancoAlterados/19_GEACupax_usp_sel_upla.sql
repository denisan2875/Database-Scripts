USE [GEACupax]
GO
/****** Object:  StoredProcedure [dbo].[usp_sel_upla]    Script Date: 12/15/2010 18:01:11 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** Object:  Stored Procedure dbo.usp_sel_upla    Script Date: 19/09/2008 15:21:01 ******/


-- exec GEACupax..usp_sel_upla 'SBBR', '1', '20081001', ''


if exists(select * from sysobjects where name = 'usp_sel_upla')
   drop procedure usp_sel_upla
go


Create      PROCEDURE [dbo].[usp_sel_upla] 
               ( @p_cd_aerop               char(4), 
                 @p_cd_terminal            char(10), 
                 @p_dt_mov                 datetime, 
                 @p_cd_cia_aerea           char(3),
                 @p_voo_rea                char(4), 
                 @p_nro_selo_electronico   char(14) ) 
AS 
DECLARE        @w_com_flg                char(1) 
 
IF EXISTS ( SELECT * 
            FROM pax_selo_electronico_comnt_u 
           WHERE cd_aerop               		= @p_cd_aerop 
             AND cd_terminal            		= @p_cd_terminal 
             AND CONVERT(VARCHAR,dt_mov,112)	= @p_dt_mov 
             AND nro_selo_electronico   		= @p_nro_selo_electronico) 
	SELECT @w_com_flg = 'Y' 
ELSE 
	SELECT @w_com_flg = 'N' 
 
SELECT nro_selo_electronico, 
	tp_natureza, 
	selo_status, 
	cd_motivo, 
	tp_fat, 
	cd_cia_aerea, 
	tp_unid, 
	dt_confirma, 
	cd_aerop_utilizacao, 
	cd_terminal_utilizacao, 
	tp_coletor, 
	item_fat, 
	billing_line_id, 
	billing_int_date, 
	billing_int_type, 
	billing_user_1, 
	voo_rea,
	dt_voo_rea,
	hh_voo_rea,
	hh_mov,
	date_created, 
	user_id_created, 
	date_changed, 
	user_id_changed, 
	inactive_ind, 
	active_date, 
	chgstamp, 
	@w_com_flg 
FROM pax_selo_electronico_u (NOLOCK INDEX = P_pax_selo_electronico_u)
WHERE cd_aerop               		= @p_cd_aerop 
	AND cd_terminal            		= @p_cd_terminal 
	AND CONVERT(VARCHAR,dt_mov,112)	= @p_dt_mov 
	AND nro_selo_electronico   		= @p_nro_selo_electronico
