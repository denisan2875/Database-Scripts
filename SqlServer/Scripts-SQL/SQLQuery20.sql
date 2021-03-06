/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP 1000 [payable_entity_id]
      ,[contract_id]
      ,[contract_versao]
      ,[vendor_id]
      ,[vendor_loc_code]
      ,[pmt_rqst_nbr]
      ,[pmt_rqst_date]
      ,[schld_pmt_nbr]
      ,[apprvl_level]
      ,[apprvr_type_code]
      ,[apprvr_id]
      ,[apprvl_status_code]
      ,[apprvl_status_date]
      ,[actual_apprvr_id]
      ,[chgstamp]
  FROM [GEACufcx].[dbo].[conf_sol_pag_hea_appvl_trk_u]
 WHERE [payable_entity_id] = '01001'
   AND [contract_id] = 'TC0073-PS/2009/0001'
   AND [contract_versao] = '00'
   AND [vendor_id] = '425636920'
   AND [vendor_loc_code] = '001'
   AND [pmt_rqst_nbr] = '017678'