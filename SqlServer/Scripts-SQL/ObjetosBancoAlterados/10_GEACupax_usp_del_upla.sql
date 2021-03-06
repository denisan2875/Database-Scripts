USE [GEACupax]
GO
/****** Object:  StoredProcedure [dbo].[usp_del_upla]    Script Date: 12/16/2010 17:18:28 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** Object:  Stored Procedure dbo.usp_del_upla    Script Date: 19/09/2008 15:20:33 ******/


if exists(select * from sysobjects where name = 'usp_del_upla')
   drop procedure usp_del_upla
go


Create   PROCEDURE [dbo].[usp_del_upla] 
               ( @p_cd_aerop               char(4), 
                 @p_cd_terminal            char(10), 
                 @p_dt_mov                 datetime, 
                 @p_cd_cia_aerea_key       char(3),
                 @p_voo_rea_key            char(4),
                 @p_nro_selo_electronico   char(14), 
                 @p_old_chgstamp           smallint ) 
AS 
  DECLARE @ret int 
     EXEC @ret = sp_dbs_authenticate 
 
  IF @ret != 0 RETURN 
 
  DELETE pax_selo_electronico_u 
   WHERE cd_aerop               	= @p_cd_aerop 
     AND cd_terminal            	= @p_cd_terminal 
     AND CONVERT(VARCHAR,dt_mov,112)= @p_dt_mov 
     AND nro_selo_electronico   	= @p_nro_selo_electronico 
     AND chgstamp               	= @p_old_chgstamp 
 
  IF @@rowcount = 0 
  BEGIN 
      IF EXISTS ( SELECT * 
                    FROM pax_selo_electronico_u 
                   WHERE cd_aerop               	= @p_cd_aerop 
                     AND cd_terminal            	= @p_cd_terminal 
                     AND CONVERT(VARCHAR,dt_mov,112)= @p_dt_mov 
                     AND nro_selo_electronico   	= @p_nro_selo_electronico ) 
          RAISERROR 20001 'Row updated by another user.'
      ELSE 
          RAISERROR 20002 'Row does not exist.'
      RETURN 
  END
