


CREATE OR REPLACE VIEW ocorrencias_funcionais (
   ofu_codigo,
   ofu_descricao,
   ofu_sigla,
   ofu_indicador_tipo,
   ofu_in_ocorrencia_paralela,
   ofu_indicador_prazo_maximo,
   ofu_indicador_sexo,
   ofu_indicador_aposentadoria,
   ofu_indicador_estabilidade,
   ofu_indicador_orgao,
   ofu_in_assist_medica_odont,
   ofu_indicador_vale_alimentacao,
   ofu_indicador_vale_transporte,
   ofu_indicador_folha_pagamento,
   ofu_in_privativo_sistema,
   ofu_indicador_ferias,
   ofu_indicador_anuenio,
   ofu_indicador_licenca_premio,
   ofu_in_avaliacao_desempenho,
   ofu_ofu_codigo,
   ofu_indicador_matricula,
   ofu_in_meses_indicador,
   ofu_in_meses_estabilidade,
   ofu_codigo_caged,
   ofu_indicador_onus,
   ofu_indicador_cargo_funcao,
   ofu_in_assist_odont,
   ofu_indicador_promocao,
   ofu_status,
   ofu_codigo_caged_saida,
   ofu_indicador_frequencia,
   ofu_indicador_rct,
   ofu_indicador_demonstra_freq,
   ofu_ind_substituicao,
   ofu_in_afastamento_viagem,
   ofu_flg_ocorrencia_ppp )
AS
select
"OFU_CODIGO",
"OFU_DESCRICAO",
"OFU_SIGLA",
"OFU_INDICADOR_TIPO",
"OFU_IN_OCORRENCIA_PARALELA",
"OFU_INDICADOR_PRAZO_MAXIMO",
"OFU_INDICADOR_SEXO",
"OFU_INDICADOR_APOSENTADORIA",
"OFU_INDICADOR_ESTABILIDADE",
"OFU_INDICADOR_ORGAO",
"OFU_IN_ASSIST_MEDICA_ODONT",
"OFU_INDICADOR_VALE_ALIMENTACAO",
"OFU_INDICADOR_VALE_TRANSPORTE",
"OFU_INDICADOR_FOLHA_PAGAMENTO",
"OFU_IN_PRIVATIVO_SISTEMA",
"OFU_INDICADOR_FERIAS",
"OFU_INDICADOR_ANUENIO",
"OFU_INDICADOR_LICENCA_PREMIO",
"OFU_IN_AVALIACAO_DESEMPENHO",
"OFU_OFU_CODIGO",
"OFU_INDICADOR_MATRICULA",
"OFU_IN_MESES_INDICADOR",
"OFU_IN_MESES_ESTABILIDADE",
"OFU_CODIGO_CAGED",
"OFU_INDICADOR_ONUS",
"OFU_INDICADOR_CARGO_FUNCAO",
"OFU_IN_ASSIST_ODONT",
"OFU_INDICADOR_PROMOCAO",
"OFU_STATUS",
"OFU_CODIGO_CAGED_SAIDA",
"OFU_INDICADOR_FREQUENCIA",
"OFU_INDICADOR_RCT",
"OFU_INDICADOR_DEMONSTRA_FREQ",
"OFU_IND_SUBSTITUICAO",
"OFU_IN_AFASTAMENTO_VIAGEM",
"OFU_FLG_OCORRENCIA_PPP"
from tipos_ocorrencias toc
  where toc.ofu_codigo in
        (select cuo.ofu_codigo
           from CONTROLE_USUARIOS_OCORRENCIAS cuo
          where cuo.sgu_id_usuario = (select user from dual))
/


