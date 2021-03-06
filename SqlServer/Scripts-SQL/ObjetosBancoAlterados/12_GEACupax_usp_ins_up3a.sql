USE [GEACupax]
GO
/****** Object:  StoredProcedure [dbo].[usp_ins_up3a]    Script Date: 12/15/2010 10:30:15 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
/****** Object:  Stored Procedure dbo.usp_ins_up3a    Script Date: 19/09/2008 15:20:38 ******/


if exists(select * from sysobjects where name = 'usp_ins_up3a')
   drop procedure usp_ins_up3a
go

 
Create PROCEDURE [dbo].[usp_ins_up3a] 
               ( @p_serial                  char(9), 
                 @p_dependencia             char(3), 
                 @p_sigla                   char(4),
                 @p_date_created        	datetime, 
				 @p_user_id_created     	char(30), 
				 @p_date_changed        	datetime, 
				 @p_user_id_changed     	char(30), 
				 @p_inactive_ind        	char(1), 
				 @p_active_date         	datetime )
AS
    DECLARE @ret int 
    EXEC @ret = sp_dbs_authenticate 

    IF @ret != 0 RETURN 
 
    IF @p_active_date = ''
	    SET @p_active_date = GETDATE()

    INSERT INTO pax_coletor_u 
         ( serial, 
           dependencia, 
           sigla, 
           date_created, 
           user_id_created, 
           date_changed, 
           user_id_changed, 
           inactive_ind, 
           active_date,
           chgstamp ) 
    VALUES
         ( @p_serial, 
           @p_dependencia, 
           @p_sigla, 
           getdate(), 
           suser_sname(), 
           @p_date_changed, 
           @p_user_id_changed, 
           '0', 
           @p_active_date,
           0 )
