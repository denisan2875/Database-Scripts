USE [GEACupax]
GO
/****** Object:  StoredProcedure [dbo].[usp_ins_upla_hist]    Script Date: 12/18/2010 10:03:14 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** Object:  Stored Procedure dbo.usp_ins_upla_hist    Script Date: 19/09/2008 15:20:43 ******/


if exists(select * from sysobjects where name = 'usp_ins_upla_hist')
   drop procedure usp_ins_upla_hist
go


Create PROCEDURE [dbo].[usp_ins_upla_hist] 
    ( @p_chg_trans            char(8),  
      @p_chg_type             char(1),  
      @p_col_id               int,  
      @p_data_chg_from        varchar(255),  
      @p_data_chg_to          varchar(255),  
      @p_user_id              char(10),  
      @p_cd_aerop             char(4),  
      @p_cd_terminal          char(10),  
      @p_dt_mov               datetime,  
      @p_cd_cia_aerea         char(3), 
      @p_voo_rea              char(4),      
      @p_nro_selo_electronico char(14) ) 
AS 
    DECLARE @ret int 
    EXEC @ret = sp_dbs_authenticate 
 
    IF @ret != 0 RETURN 
 
    INSERT INTO pax_selo_electroni_history_u VALUES
         ( @p_user_id,  
           getdate(), 
           @p_cd_aerop,  
           @p_cd_terminal,  
           @p_dt_mov,  
           @p_nro_selo_electronico,  
           @p_chg_trans,  
           @p_chg_type,  
           @p_col_id,  
           @p_data_chg_from,  
           @p_data_chg_to )
