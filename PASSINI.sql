prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_default_workspace_id=>7622500172864059
);
end;
/
prompt  WORKSPACE 7622500172864059
--
-- Workspace, User Group, User, and Team Development Export:
--   Date and Time:   14:33 Quarta-Feira Abril 2, 2025
--   Exported By:     ADMIN
--   Export Type:     Workspace Export
--   Version:         24.1.7
--   Instance ID:     7622352694203644
--
-- Import:
--   Using Instance Administration / Manage Workspaces
--   or
--   Using SQL*Plus as the Oracle user APEX_240100
 
begin
    wwv_flow_imp.set_security_group_id(p_security_group_id=>7622500172864059);
end;
/
----------------
-- W O R K S P A C E
-- Creating a workspace will not create database schemas or objects.
-- This API creates only the meta data for this APEX workspace
prompt  Creating workspace PASSINI...
begin
wwv_flow_fnd_user_api.create_company (
  p_id => 7622941108864255
 ,p_provisioning_company_id => 7622500172864059
 ,p_short_name => 'PASSINI'
 ,p_display_name => 'PASSINI'
 ,p_first_schema_provisioned => 'WKSP_PASSINI'
 ,p_company_schemas => 'WKSP_PASSINI'
 ,p_account_status => 'ASSIGNED'
 ,p_allow_plsql_editing => 'Y'
 ,p_allow_app_building_yn => 'Y'
 ,p_allow_packaged_app_ins_yn => 'Y'
 ,p_allow_sql_workshop_yn => 'Y'
 ,p_allow_team_development_yn => 'Y'
 ,p_allow_to_be_purged_yn => 'Y'
 ,p_allow_restful_services_yn => 'Y'
 ,p_source_identifier => 'PASSINI'
 ,p_webservice_logging_yn => 'Y'
 ,p_path_prefix => 'PASSINI'
 ,p_files_version => 1
 ,p_is_extension_yn => 'N'
 ,p_env_banner_yn => 'N'
 ,p_env_banner_pos => 'LEFT'
);
end;
/
----------------
-- G R O U P S
--
prompt  Creating Groups...
begin
wwv_flow_fnd_user_api.create_user_group (
  p_id => 1405898031030452,
  p_GROUP_NAME => 'OAuth2 Client Developer',
  p_SECURITY_GROUP_ID => 10,
  p_GROUP_DESC => 'Users authorized to register OAuth2 Client Applications');
end;
/
begin
wwv_flow_fnd_user_api.create_user_group (
  p_id => 1405745204030452,
  p_GROUP_NAME => 'RESTful Services',
  p_SECURITY_GROUP_ID => 10,
  p_GROUP_DESC => 'Users authorized to use RESTful Services with this workspace');
end;
/
begin
wwv_flow_fnd_user_api.create_user_group (
  p_id => 1405683304030451,
  p_GROUP_NAME => 'SQL Developer',
  p_SECURITY_GROUP_ID => 10,
  p_GROUP_DESC => 'Users authorized to use SQL Developer with this workspace');
end;
/
prompt  Creating group grants...
----------------
-- U S E R S
-- User repository for use with APEX cookie-based authentication.
--
prompt  Creating Users...
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '7622765462864059',
  p_user_name                    => 'JOAOPBLUME',
  p_first_name                   => '',
  p_last_name                    => '',
  p_description                  => '',
  p_email_address                => '',
  p_web_password                 => '5D7C320A148DE462D27D682D66F63324E0CDF52897CC52D6366EA277220AA2DCA334AB6D1728439F674D7B0FE04E9C04E8AFC60380C96E7ABA0A6DE2BF2CD4BD',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '',
  p_developer_privs              => 'ADMIN:CREATE:DATA_LOADER:EDIT:HELP:MONITOR:SQL',
  p_default_schema               => 'WKSP_PASSINI',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202412262029','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'N',
  p_first_password_use_occurred  => 'Y',
  p_allow_app_building_yn        => 'Y',
  p_allow_sql_workshop_yn        => 'Y',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => '');
end;
/
---------------------------
-- D G  B L U E P R I N T S
-- Creating Data Generator Blueprints...
----------------
--Click Count Logs
--
----------------
--mail
--
----------------
--mail log
--
----------------
--app models
--
----------------
--password history
--
begin
  wwv_imp_workspace.create_password_history (
    p_id => 7623122107864303,
    p_user_id => 7622765462864059,
    p_password => '5D7C320A148DE462D27D682D66F63324E0CDF52897CC52D6366EA277220AA2DCA334AB6D1728439F674D7B0FE04E9C04E8AFC60380C96E7ABA0A6DE2BF2CD4BD');
end;
/
----------------
--preferences
--
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 9397535825534254,
    p_user_id => 'JOAOPBLUME',
    p_preference_name => 'FSP_IR_100_P8_W9393127166533255',
    p_attribute_value => '9397071890534228____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 11796431596879224,
    p_user_id => 'JOAOPBLUME',
    p_preference_name => 'FSP4500_P3100_R82702857605738101_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 8986685109410015,
    p_user_id => 'JOAOPBLUME',
    p_preference_name => 'F4000_1157687726908338238_SPLITTER_STATE',
    p_attribute_value => '300:false',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 9387989167481058,
    p_user_id => 'JOAOPBLUME',
    p_preference_name => 'FSP_IR_4000_P40_W48117227188266087',
    p_attribute_value => '48118623144274016____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10204913860470476,
    p_user_id => 'JOAOPBLUME',
    p_preference_name => 'CODE_LANGUAGE',
    p_attribute_value => 'JAVASCRIPT',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 11013157731774679,
    p_user_id => 'JOAOPBLUME',
    p_preference_name => 'APEX_IG_11000665701773584_CURRENT_REPORT',
    p_attribute_value => '11001512412773588:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 11586659295341698,
    p_user_id => 'JOAOPBLUME',
    p_preference_name => 'FSP_IR_100_P10021_W7943828499944302',
    p_attribute_value => '7946904891944329____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 9403332581679321,
    p_user_id => 'JOAOPBLUME',
    p_preference_name => 'F4500_1157686386582338224_SPLITTER_STATE',
    p_attribute_value => '436:false',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 9788232565006562,
    p_user_id => 'JOAOPBLUME',
    p_preference_name => 'F4000_203906404237009921_SPLITTER_STATE',
    p_attribute_value => '346:false',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 11236139152583644,
    p_user_id => 'JOAOPBLUME',
    p_preference_name => 'FSP_IR_4000_P4445_W14886206368621919',
    p_attribute_value => '14887631485621929____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 11401738869485419,
    p_user_id => 'JOAOPBLUME',
    p_preference_name => 'APEX_IG_20915676136405505_CURRENT_REPORT',
    p_attribute_value => '21352313571544338:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 11401820300485440,
    p_user_id => 'JOAOPBLUME',
    p_preference_name => 'APEX_IG_266470409881026219_CURRENT_REPORT',
    p_attribute_value => '6462635633527704:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 7986297158364552,
    p_user_id => 'JOAOPBLUME',
    p_preference_name => 'FSP_IR_4350_P25_W9307709001462905',
    p_attribute_value => '9309908769463151____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 7986654493364624,
    p_user_id => 'JOAOPBLUME',
    p_preference_name => 'PERSISTENT_ITEM_P25_DATE',
    p_attribute_value => '.125',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 7986882207365293,
    p_user_id => 'JOAOPBLUME',
    p_preference_name => 'FSP_IR_4000_P1500_W3519715528105919',
    p_attribute_value => '3521529006112497____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 8806379088068177,
    p_user_id => 'JOAOPBLUME',
    p_preference_name => 'PD_GAL_CUR_TAB',
    p_attribute_value => '1',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 11236303677585964,
    p_user_id => 'JOAOPBLUME',
    p_preference_name => 'FSP_IR_4000_P4447_W14970325211141289',
    p_attribute_value => '14971132696141290____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 11236566809589244,
    p_user_id => 'JOAOPBLUME',
    p_preference_name => 'FSP_IR_4000_P273_W48571614952501952',
    p_attribute_value => '48572307979502610____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 11786337318179412,
    p_user_id => 'JOAOPBLUME',
    p_preference_name => 'FSP_IR_4000_P1620_W312277037396040233',
    p_attribute_value => '312279461465115193____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 11790235320691846,
    p_user_id => 'JOAOPBLUME',
    p_preference_name => 'FSP4000_P1921_R310374200946241813_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 11790397688693438,
    p_user_id => 'JOAOPBLUME',
    p_preference_name => 'FSP4000_P1922_R922351464945024904_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 9387597470469595,
    p_user_id => 'JOAOPBLUME',
    p_preference_name => 'FSP_IR_4000_P4850_W663191354226602129',
    p_attribute_value => '663193778295677089____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 11786925708678654,
    p_user_id => 'JOAOPBLUME',
    p_preference_name => 'FSP_IR_4000_P1901_W3290607658489431',
    p_attribute_value => '3451665554620404____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 11986427811334778,
    p_user_id => 'JOAOPBLUME',
    p_preference_name => 'APEX_IG_18005186450209933_CURRENT_REPORT',
    p_attribute_value => '18414497664150974:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 12386303480112728,
    p_user_id => 'JOAOPBLUME',
    p_preference_name => 'FSP_IR_4350_P55_W10236304983033455',
    p_attribute_value => '10238325656034902____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 8786645837906547,
    p_user_id => 'JOAOPBLUME',
    p_preference_name => 'FSP_IR_4350_P29_W9294827650405715',
    p_attribute_value => '9296821143409975____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10204338916425776,
    p_user_id => 'JOAOPBLUME',
    p_preference_name => 'APEX_IG_665073618803777080_CURRENT_REPORT',
    p_attribute_value => '665079563548779201:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 11014328933936796,
    p_user_id => 'JOAOPBLUME',
    p_preference_name => 'APEX_IG_9499495849275742_CURRENT_REPORT',
    p_attribute_value => '23204494782337413:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 8587328445440463,
    p_user_id => 'JOAOPBLUME',
    p_preference_name => 'APEX_IG_2500606111718504_CURRENT_REPORT',
    p_attribute_value => '5306711573062761:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 11835155804435944,
    p_user_id => 'JOAOPBLUME',
    p_preference_name => 'FSP_IR_4350_P24_W370332345019891192',
    p_attribute_value => '370342431106891204____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 12039772081294101,
    p_user_id => 'JOAOPBLUME',
    p_preference_name => 'APEX_IG_12001895344348889_CURRENT_REPORT',
    p_attribute_value => '12033868322292970:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 9387778984480000,
    p_user_id => 'JOAOPBLUME',
    p_preference_name => 'FSP_IR_4000_P4110_W1548412223182178',
    p_attribute_value => '1550029190194632____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 7985720833944618,
    p_user_id => 'JOAOPBLUME',
    p_preference_name => 'PERSISTENT_ITEM_P1_DISPLAY_MODE',
    p_attribute_value => 'ICONS',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 7985970908944668,
    p_user_id => 'JOAOPBLUME',
    p_preference_name => 'FSP_IR_4000_P1_W3326806401130228',
    p_attribute_value => '3328003692130542____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 7986083314944704,
    p_user_id => 'JOAOPBLUME',
    p_preference_name => 'FB_FLOW_ID',
    p_attribute_value => '100',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 11386575372007879,
    p_user_id => 'JOAOPBLUME',
    p_preference_name => 'FSP4000_P197_R935666971301945228_SORT',
    p_attribute_value => 'sort_2_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 12055264049367348,
    p_user_id => 'JOAOPBLUME',
    p_preference_name => 'APEX_IG_12029005268287712_CURRENT_REPORT',
    p_attribute_value => '12046552612366707:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 10825049133168546,
    p_user_id => 'JOAOPBLUME',
    p_preference_name => 'FSP100_P7_R10820032735167443_SORT',
    p_attribute_value => 'sort_2_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 11200568650739425,
    p_user_id => 'JOAOPBLUME',
    p_preference_name => 'APEX_IG_11193826789731242_CURRENT_REPORT',
    p_attribute_value => '11194710663731246:GRID',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 11828400696630638,
    p_user_id => 'JOAOPBLUME',
    p_preference_name => 'FSP4000_P1927_R468891038148100778_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 11018526318077819,
    p_user_id => 'JOAOPBLUME',
    p_preference_name => 'F4000_203904827661009901_SPLITTER_STATE',
    p_attribute_value => '348:false',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 11214630257109961,
    p_user_id => 'JOAOPBLUME',
    p_preference_name => 'FSP_IR_4500_P1004_W467833818073240350',
    p_attribute_value => '467836414517307027____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 11833090021809969,
    p_user_id => 'JOAOPBLUME',
    p_preference_name => 'FSP_IR_4000_P939_W451352700445603348',
    p_attribute_value => '451353909559603360____',
    p_tenant_id => '');
end;
/
----------------
--query builder
--
----------------
--sql scripts
--
----------------
--sql commands
--
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 9398987080552920
 ,p_command => 
'SELECT * FROM CONTATO_CLIENTE'||wwv_flow.LF||
''
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202412280211','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 9399027786557803
 ,p_command => 
'SELECT C.NOME, C.CPF, C.RG, C.DATA_NASCIMENTO, C.NOME_MAE, C.NOME_PAI,'||wwv_flow.LF||
'CC.EMAIL, CC.TELEFONE'||wwv_flow.LF||
'FROM CLIENTE C, CONTATO_CLIENTE CC'||wwv_flow.LF||
'WHERE C.ID = CC.ID_CLIENTE'||wwv_flow.LF||
''||wwv_flow.LF||
'SELECT * FROM CONTATO_CLIENTE'||wwv_flow.LF||
''||wwv_flow.LF||
'DELETE FROM CONTATO_CLIENTE;'||wwv_flow.LF||
'DELETE FROM CLIENTE;'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
'select * from cliente;'
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202412280211','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10200597121381920
 ,p_command => 
'select * from endereco_clientel'
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202412300342','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 11214959768137022
 ,p_command => 
'select * from clientes;'
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202501021708','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 11215689042171174
 ,p_command => 
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 1, 1, 81, TO_DATE(''2024-08-08'', ''YYYY-MM-DD''), 5, 1495.2, ''Dinheiro'');'
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202501021714','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 11215972574172287
 ,p_command => 
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 1, 1, 81, TO_DATE(''2024-08-23'', ''YYYY-MM-DD''), 18, 1495.2, ''Cartão'');'
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202501021714','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 11216297610173212
 ,p_command => 
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 1, 1, 81, TO_DATE(''2024-09-27'', ''YYYY-MM-DD''), 12, 1935.7, ''Cartão'');'
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202501021714','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 11216508173176138
 ,p_command => 
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 1, 1, 81, TO_DATE(''2024-09-19'', ''YYYY-MM-DD''), 20, 1935.7, ''Boleto'');'
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202501021715','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 11217130639177912
 ,p_command => 
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 1, 1, 81, TO_DATE(''2024-10-15'', ''YYYY-MM-DD''), 16, 2312.6, ''Cartão'');'
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202501021715','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 11217376415178550
 ,p_command => 
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 1, 1, 81, TO_DATE(''2024-11-15'', ''YYYY-MM-DD''), 6, 3162.1, ''Dinheiro'');'
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202501021715','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 11217762843180563
 ,p_command => 
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 1, 1, 81, TO_DATE(''2024-12-27'', ''YYYY-MM-DD''), 18, 4228.9, ''Boleto'');'
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202501021715','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 11217815983180951
 ,p_command => 
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 1, 1, 81, TO_DATE(''2024-12-22'', ''YYYY-MM-DD''), 4, 4228.9, ''Boleto'');'
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202501021715','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 11218081562181810
 ,p_command => 
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 1, 1, 81, TO_DATE(''2024-12-17'', ''YYYY-MM-DD''), 19, 4228.9, ''Dinheiro'');'
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202501021715','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 11218286169182671
 ,p_command => 
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 1, 1, 81, TO_DATE(''2025-01-26'', ''YYYY-MM-DD''), 20, 5213.8, ''Dinheiro'');'
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202501021716','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 11218556997183564
 ,p_command => 
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 1, 1, 81, TO_DATE(''2025-01-15'', ''YYYY-MM-DD''), 8, 5213.8, ''Boleto'');'
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202501021716','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 9397709890538529
 ,p_command => 
'SELECT C.NOME, C.CPF, C.RG, C.DATA_NASCIMENTO, C.NOME_MAE, C.NOME_PAI,'||wwv_flow.LF||
'CC.EMAIL, CC.TELEFONE'||wwv_flow.LF||
'FROM CLIENTE C'||wwv_flow.LF||
'INNER JOIN CONTATO_CLIENTE CC'||wwv_flow.LF||
'ON C.ID = CC.ID_CLIENTE'||wwv_flow.LF||
'WHERE PRINCIPAL=1;'
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202412280208','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 9398242714550739
 ,p_command => 
'SELECT C.NOME, C.CPF, C.RG, C.DATA_NASCIMENTO, C.NOME_MAE, C.NOME_PAI,'||wwv_flow.LF||
'CC.EMAIL, CC.TELEFONE'||wwv_flow.LF||
'FROM CLIENTE C, CONTATO_CLIENTE CC'||wwv_flow.LF||
'WHERE C.ID = CC.ID_CLIENTE'||wwv_flow.LF||
''||wwv_flow.LF||
'SELECT * FROM CONTATO_CLIENTE'||wwv_flow.LF||
''||wwv_flow.LF||
'DELETE FROM CONTATO_CLIENTE'||wwv_flow.LF||
'DELETE FROM CLIENTE;'||wwv_flow.LF||
''
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202412280210','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 9398432418551128
 ,p_command => 
'DELETE FROM CONTATO_CLIENTE;'
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202412280210','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 9398865751552704
 ,p_command => 
'SELECT C.NOME, C.CPF, C.RG, C.DATA_NASCIMENTO, C.NOME_MAE, C.NOME_PAI,'||wwv_flow.LF||
'CC.EMAIL, CC.TELEFONE'||wwv_flow.LF||
'FROM CLIENTE C, CONTATO_CLIENTE CC'||wwv_flow.LF||
'WHERE C.ID = CC.ID_CLIENTE'||wwv_flow.LF||
''||wwv_flow.LF||
'SELECT * FROM CONTATO_CLIENTE'||wwv_flow.LF||
''||wwv_flow.LF||
'DELETE FROM CONTATO_CLIENTE;'||wwv_flow.LF||
'DELETE FROM CLIENTE;'||wwv_flow.LF||
''||wwv_flow.LF||
''
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202412280211','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 9403056223666038
 ,p_command => 
'select * from cliente;'
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202412280229','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10200308752307508
 ,p_command => 
'delete from cliente;'
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202412300330','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10200445288308083
 ,p_command => 
'delete from contato_cliente;'
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202412300330','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 11214073833061260
 ,p_command => 
'INSERT INTO VENDAS (ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) VALUES'||wwv_flow.LF||
'(1, 9, 4, TO_DATE(''2024-08-08'', ''YYYY-MM-DD''), 5, 1495.2, ''Dinheiro''),'||wwv_flow.LF||
'(2, 18, 2, TO_DATE(''2024-08-19'', ''YYYY-MM-DD''), 14, 1495.2, ''Boleto''),'||wwv_flow.LF||
'(1, 3, 4, TO_DATE(''2024-08-08'', ''YYYY-MM-DD''), 17, 1495.2, ''Dinheiro''),'||wwv_flow.LF||
'(1, 18, 4, TO_DATE(''2024-08-23'', ''YYYY-MM-DD''), 18, 1495.2, ''Cartão''),'||wwv_flow.LF||
'(4'||
', 15, 10, TO_DATE(''2024-08-09'', ''YYYY-MM-DD''), 1, 1495.2, ''Boleto''),'||wwv_flow.LF||
'(9, 12, 12, TO_DATE(''2024-09-03'', ''YYYY-MM-DD''), 15, 1935.7, ''Cartão''),'||wwv_flow.LF||
'(3, 15, 9, TO_DATE(''2024-09-27'', ''YYYY-MM-DD''), 12, 1935.7, ''Cartão''),'||wwv_flow.LF||
'(6, 7, 8, TO_DATE(''2024-09-20'', ''YYYY-MM-DD''), 12, 1935.7, ''Cartão''),'||wwv_flow.LF||
'(1, 3, 6, TO_DATE(''2024-09-19'', ''YYYY-MM-DD''), 20, 1935.7, ''Boleto''),'||wwv_flow.LF||
'(2, 16, 3, TO_DATE(''2024-09-18'', ''YYYY-MM-DD''), '||
'18, 1935.7, ''Boleto''),'||wwv_flow.LF||
'(6, 8, 10, TO_DATE(''2024-10-01'', ''YYYY-MM-DD''), 16, 2312.6, ''Cartão''),'||wwv_flow.LF||
'(4, 20, 15, TO_DATE(''2024-10-27'', ''YYYY-MM-DD''), 3, 2312.6, ''Cartão''),'||wwv_flow.LF||
'(7, 18, 6, TO_DATE(''2024-10-09'', ''YYYY-MM-DD''), 4, 2312.6, ''Cartão''),'||wwv_flow.LF||
'(7, 8, 6, TO_DATE(''2024-10-26'', ''YYYY-MM-DD''), 13, 2312.6, ''Boleto''),'||wwv_flow.LF||
'(8, 9, 13, TO_DATE(''2024-10-15'', ''YYYY-MM-DD''), 16, 2312.6, ''Cartão''),'||wwv_flow.LF||
'(5, 7, 10, TO_DATE(''2024'||
'-11-08'', ''YYYY-MM-DD''), 10, 3162.1, ''Dinheiro''),'||wwv_flow.LF||
'(6, 5, 2, TO_DATE(''2024-11-15'', ''YYYY-MM-DD''), 6, 3162.1, ''Dinheiro''),'||wwv_flow.LF||
'(9, 6, 10, TO_DATE(''2024-11-01'', ''YYYY-MM-DD''), 18, 3162.1, ''Dinheiro''),'||wwv_flow.LF||
'(3, 20, 12, TO_DATE(''2024-11-25'', ''YYYY-MM-DD''), 8, 3162.1, ''Dinheiro''),'||wwv_flow.LF||
'(8, 8, 1, TO_DATE(''2024-11-05'', ''YYYY-MM-DD''), 20, 3162.1, ''Boleto''),'||wwv_flow.LF||
'(6, 5, 7, TO_DATE(''2024-12-27'', ''YYYY-MM-DD''), 18, 4228.9, ''Bole'||
'to''),'||wwv_flow.LF||
'(2, 16, 14, TO_DATE(''2024-12-22'', ''YYYY-MM-DD''), 4, 4228.9, ''Boleto''),'||wwv_flow.LF||
'(4, 4, 10, TO_DATE(''2024-12-07'', ''YYYY-MM-DD''), 20, 4228.9, ''Dinheiro''),'||wwv_flow.LF||
'(8, 1, 15, TO_DATE(''2024-12-17'', ''YYYY-MM-DD''), 19, 4228.9, ''Dinheiro''),'||wwv_flow.LF||
'(5, 20, 10, TO_DATE(''2024-12-13'', ''YYYY-MM-DD''), 19, 4228.9, ''Cartão''),'||wwv_flow.LF||
'(1, 8, 3, TO_DATE(''2025-01-26'', ''YYYY-MM-DD''), 20, 5213.8, ''Dinheiro''),'||wwv_flow.LF||
'(7, 5, 8, TO_DATE(''2025-01-03'', '''||
'YYYY-MM-DD''), 11, 5213.8, ''Cartão''),'||wwv_flow.LF||
'(8, 6, 14, TO_DATE(''2025-01-02'', ''YYYY-MM-DD''), 13, 5213.8, ''Cartão''),'||wwv_flow.LF||
'(9, 19, 15, TO_DATE(''2025-01-15'', ''YYYY-MM-DD''), 8, 5213.8, ''Boleto''),'||wwv_flow.LF||
'(5, 20, 10, TO_DATE(''2025-01-21'', ''YYYY-MM-DD''), 5, 5213.8, ''Cartão'');'||wwv_flow.LF||
''
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202501021655','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 11214208588105238
 ,p_command => 
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 1, 9, 4, TO_DATE(''2024-08-08'', ''YYYY-MM-DD''), 5, 1495.2, ''Dinheiro'');'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 2, 18, 2, TO'||
'_DATE(''2024-08-19'', ''YYYY-MM-DD''), 14, 1495.2, ''Boleto'');'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 1, 3, 4, TO_DATE(''2024-08-08'', ''YYYY-MM-DD''), 17, 1495.2, ''Dinheiro'');'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'V'||
'ALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 1, 18, 4, TO_DATE(''2024-08-23'', ''YYYY-MM-DD''), 18, 1495.2, ''Cartão'');'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 4, 15, 10, TO_DATE(''2024-08-09'', ''YYYY-MM-DD''), 1, 1495.2, ''Boleto'');'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CL'||
'IENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 9, 12, 12, TO_DATE(''2024-09-03'', ''YYYY-MM-DD''), 15, 1935.7, ''Cartão'');'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 3, 15, 9, TO_DATE(''2024-09-27'', ''YYYY-MM-DD''), 12, 1935.7, ''Cartã'||
'o'');'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 6, 7, 8, TO_DATE(''2024-09-20'', ''YYYY-MM-DD''), 12, 1935.7, ''Cartão'');'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 1, 3, 6,'||
' TO_DATE(''2024-09-19'', ''YYYY-MM-DD''), 20, 1935.7, ''Boleto'');'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 2, 16, 3, TO_DATE(''2024-09-18'', ''YYYY-MM-DD''), 18, 1935.7, ''Boleto'');'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||
''||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 6, 8, 10, TO_DATE(''2024-10-01'', ''YYYY-MM-DD''), 16, 2312.6, ''Cartão'');'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 4, 20, 15, TO_DATE(''2024-10-27'', ''YYYY-MM-DD''), 3, 2312.6, ''Cartão'');'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_'||
'CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 7, 18, 6, TO_DATE(''2024-10-09'', ''YYYY-MM-DD''), 4, 2312.6, ''Cartão'');'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 7, 8, 6, TO_DATE(''2024-10-26'', ''YYYY-MM-DD''), 13, 2312.6, ''Boleto'||
''');'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 8, 9, 13, TO_DATE(''2024-10-15'', ''YYYY-MM-DD''), 16, 2312.6, ''Cartão'');'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 5, 7, 10'||
', TO_DATE(''2024-11-08'', ''YYYY-MM-DD''), 10, 3162.1, ''Dinheiro'');'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 6, 5, 2, TO_DATE(''2024-11-15'', ''YYYY-MM-DD''), 6, 3162.1, ''Dinheiro'');'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENT'||
'O) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 9, 6, 10, TO_DATE(''2024-11-01'', ''YYYY-MM-DD''), 18, 3162.1, ''Dinheiro'');'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 3, 20, 12, TO_DATE(''2024-11-25'', ''YYYY-MM-DD''), 8, 3162.1, ''Dinheiro'');'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODU'||
'TO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 8, 8, 1, TO_DATE(''2024-11-05'', ''YYYY-MM-DD''), 20, 3162.1, ''Boleto'');'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 6, 5, 7, TO_DATE(''2024-12-27'', ''YYYY-MM-DD''), 18, 4228.9, '||
'''Boleto'');'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 2, 16, 14, TO_DATE(''2024-12-22'', ''YYYY-MM-DD''), 4, 4228.9, ''Boleto'');'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 4'||
', 4, 10, TO_DATE(''2024-12-07'', ''YYYY-MM-DD''), 20, 4228.9, ''Dinheiro'');'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 8, 1, 15, TO_DATE(''2024-12-17'', ''YYYY-MM-DD''), 19, 4228.9, ''Dinheiro'');'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO'||
'_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 5, 20, 10, TO_DATE(''2024-12-13'', ''YYYY-MM-DD''), 19, 4228.9, ''Cartão'');'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 1, 8, 3, TO_DATE(''2025-01-26'', ''YYYY-MM-DD''), 20, 5213.8, ''Dinheiro'');'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, I'||
'D_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 7, 5, 8, TO_DATE(''2025-01-03'', ''YYYY-MM-DD''), 11, 5213.8, ''Cartão'');'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 8, 6, 14, TO_DATE(''2025-01-02'', ''YYYY-MM-DD''), 13, '||
'5213.8, ''Cartão'');'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 9, 19, 15, TO_DATE(''2025-01-15'', ''YYYY-MM-DD''), 8, 5213.8, ''Boleto'');'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".ne'||
'xtval, 5, 20, 10, TO_DATE(''2025-01-21'', ''YYYY-MM-DD''), 5, 5213.8, ''Cartão'');'||wwv_flow.LF||
''
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202501021703','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 11215163295138793
 ,p_command => 
'select * from cliente;'||wwv_flow.LF||
''||wwv_flow.LF||
'update cliente set id = 1 where id = 81;'
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202501021708','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 11215303546143442
 ,p_command => 
'select * from produto;'
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202501021709','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 11215873877172001
 ,p_command => 
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 1, 1, 81, TO_DATE(''2024-08-08'', ''YYYY-MM-DD''), 17, 1495.2, ''Dinheiro'');'
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202501021714','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 11216006021172626
 ,p_command => 
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 1, 1, 81, TO_DATE(''2024-08-09'', ''YYYY-MM-DD''), 1, 1495.2, ''Boleto'');'
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202501021714','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 11216937504177315
 ,p_command => 
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 1, 1, 81, TO_DATE(''2024-10-09'', ''YYYY-MM-DD''), 4, 2312.6, ''Cartão'');'
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202501021715','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 11217419538178874
 ,p_command => 
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 1, 1, 81, TO_DATE(''2024-11-01'', ''YYYY-MM-DD''), 18, 3162.1, ''Dinheiro'');'
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202501021715','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 11217565500179180
 ,p_command => 
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 1, 1, 81, TO_DATE(''2024-11-25'', ''YYYY-MM-DD''), 8, 3162.1, ''Dinheiro'');'
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202501021715','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 11217680460179508
 ,p_command => 
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 1, 1, 81, TO_DATE(''2024-11-05'', ''YYYY-MM-DD''), 20, 3162.1, ''Boleto'');'
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202501021715','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 11217995173181339
 ,p_command => 
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 1, 1, 81, TO_DATE(''2024-12-07'', ''YYYY-MM-DD''), 20, 4228.9, ''Dinheiro'');'
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202501021715','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 11218181335182137
 ,p_command => 
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 1, 1, 81, TO_DATE(''2024-12-13'', ''YYYY-MM-DD''), 19, 4228.9, ''Cartão'');'
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202501021716','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 9397972912540344
 ,p_command => 
'SELECT C.NOME, C.CPF, C.RG, C.DATA_NASCIMENTO, C.NOME_MAE, C.NOME_PAI,'||wwv_flow.LF||
'CC.EMAIL, CC.TELEFONE'||wwv_flow.LF||
'FROM CLIENTE C'
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202412280209','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 9398182788548337
 ,p_command => 
'SELECT * FROM CONTATO_CLIENTE'||wwv_flow.LF||
''
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202412280210','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 11216161157172934
 ,p_command => 
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 1, 1, 81, TO_DATE(''2024-09-03'', ''YYYY-MM-DD''), 15, 1935.7, ''Cartão'');'
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202501021714','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 11216650135176404
 ,p_command => 
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 1, 1, 81, TO_DATE(''2024-09-18'', ''YYYY-MM-DD''), 18, 1935.7, ''Boleto'');'
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202501021715','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 11216737476176670
 ,p_command => 
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 1, 1, 81, TO_DATE(''2024-10-01'', ''YYYY-MM-DD''), 16, 2312.6, ''Cartão'');'
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202501021715','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 11216879444177071
 ,p_command => 
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 1, 1, 81, TO_DATE(''2024-10-27'', ''YYYY-MM-DD''), 3, 2312.6, ''Cartão'');'
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202501021715','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 11218336067182990
 ,p_command => 
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 1, 1, 81, TO_DATE(''2025-01-03'', ''YYYY-MM-DD''), 11, 5213.8, ''Cartão'');'
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202501021716','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 11218492837183277
 ,p_command => 
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 1, 1, 81, TO_DATE(''2025-01-02'', ''YYYY-MM-DD''), 13, 5213.8, ''Cartão'');'
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202501021716','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 11218645866183830
 ,p_command => 
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 1, 1, 81, TO_DATE(''2025-01-21'', ''YYYY-MM-DD''), 5, 5213.8, ''Cartão'');'
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202501021716','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 11237623728892265
 ,p_command => 
'delete from vendas;'
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202501021914','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 11246452243987911
 ,p_command => 
';'
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202501021930','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 11246565366988554
 ,p_command => 
'select * from vendas;'||wwv_flow.LF||
''
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202501021930','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 11246614226989536
 ,p_command => 
'update vendas set valor = 3800.90 where id = 84'
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202501021930','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 11266451837137313
 ,p_command => 
'SELECT * FROM ENDERECO_CLIENTE;'
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202501021955','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 11803998207070926
 ,p_command => 
'select * from produto;'
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202501031757','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 11812187330204866
 ,p_command => 
'select * from SM_POSTS;'
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202501031819','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 11813669842312416
 ,p_command => 
'select replace(replace(apex_web_service.blob2clobbase64(BLOB_IMG), chr(10),''''),chr(13),'''')'||wwv_flow.LF||
' from PRODUTO'||wwv_flow.LF||
' where ID = 81;'
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202501031837','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 11827300948545192
 ,p_command => 
'SELECT * FROM PRODUTO;'
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202501031916','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 11827468048546819
 ,p_command => 
'select replace(replace(apex_web_service.blob2clobbase64(BLOB_IMG), chr(10),''''),chr(13),'''')'||wwv_flow.LF||
' from PRODUTO'||wwv_flow.LF||
' where ID = 21'
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202501031916','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 11829483193678678
 ,p_command => 
'select replace(replace(apex_web_service.blob2clobbase64(BLOB_IMG), chr(10),''''),chr(13),'''')'||wwv_flow.LF||
' from PRODUTO'||wwv_flow.LF||
' where ID = 41'||wwv_flow.LF||
''||wwv_flow.LF||
' select * from produto;'
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202501031938','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 11829511809678943
 ,p_command => 
' select * from produto;'
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202501031938','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 11829687603679755
 ,p_command => 
'select replace(replace(apex_web_service.blob2clobbase64(BLOB_IMG), chr(10),''''),chr(13),'''')'||wwv_flow.LF||
' from PRODUTO'||wwv_flow.LF||
' where ID = 21'||wwv_flow.LF||
' ;'||wwv_flow.LF||
''||wwv_flow.LF||
' select * from produto;'
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202501031938','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 11833357080940889
 ,p_command => 
' select * from produto;'
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202501032022','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 9397692148536653
 ,p_command => 
'SELECT * FROM CLIENTE;'
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202412280208','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 9397811215539485
 ,p_command => 
'SELECT C.NOME, C.CPF, C.RG, C.DATA_NASCIMENTO, C.NOME_MAE, C.NOME_PAI,'||wwv_flow.LF||
'CC.EMAIL, CC.TELEFONE'||wwv_flow.LF||
'FROM CLIENTE C'||wwv_flow.LF||
'INNER JOIN CONTATO_CLIENTE CC'||wwv_flow.LF||
'ON C.ID = CC.ID_CLIENTE;'||wwv_flow.LF||
''
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202412280208','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 9398003373546911
 ,p_command => 
'SELECT C.NOME, C.CPF, C.RG, C.DATA_NASCIMENTO, C.NOME_MAE, C.NOME_PAI,'||wwv_flow.LF||
'CC.EMAIL, CC.TELEFONE'||wwv_flow.LF||
'FROM CLIENTE C, CONTATO_CLIENTE CC'||wwv_flow.LF||
'WHERE C.ID = CC.ID_CLIENTE'||wwv_flow.LF||
''
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202412280210','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 9398707163551936
 ,p_command => 
'COMMIT;'
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202412280210','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 9399149702558060
 ,p_command => 
'select * from cliente;'
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202412280211','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 9399298324560104
 ,p_command => 
'SELECT * FROM CONTATO_CLIENTE'||wwv_flow.LF||
''
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202412280212','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 9399364296560752
 ,p_command => 
'DELETE FROM CONTATO_CLIENTE;'||wwv_flow.LF||
''
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202412280212','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 9401420258645410
 ,p_command => 
'SELECT C.NOME, C.CPF, C.RG, C.DATA_NASCIMENTO, C.NOME_MAE, C.NOME_PAI,'||wwv_flow.LF||
'CC.EMAIL, CC.TELEFONE'||wwv_flow.LF||
'FROM CLIENTE C, CONTATO_CLIENTE CC'||wwv_flow.LF||
'WHERE C.ID = CC.ID_CLIENTE'||wwv_flow.LF||
''||wwv_flow.LF||
'SELECT * FROM CONTATO_CLIENTE'||wwv_flow.LF||
''||wwv_flow.LF||
'DELETE FROM CONTATO_CLIENTE;'||wwv_flow.LF||
'DELETE FROM CLIENTE;'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
'select * from cliente;'||wwv_flow.LF||
''||wwv_flow.LF||
'ALTER TABLE CONTATO_CLIENTE ADD CONSTRAINT PK_CLIENTE PRIMARY KEY (ID);'
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202412280226','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 9401500453645577
 ,p_command => 
'ALTER TABLE CONTATO_CLIENTE ADD CONSTRAINT PK_CLIENTE PRIMARY KEY (ID);'
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202412280226','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 9403182817667647
 ,p_command => 
'select * from cliente;'||wwv_flow.LF||
'select * from contato_cliente;'
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202412280230','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 9403259983667821
 ,p_command => 
'select * from contato_cliente;'
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202412280230','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 9406901012791177
 ,p_command => 
'select * from cliente;'||wwv_flow.LF||
''
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202412280250','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 9407033828791880
 ,p_command => 
'select * from contato_cliente;'
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202412280250','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 9800440760084311
 ,p_command => 
'select * from cliente;'
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202412291833','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 9801252119141591
 ,p_command => 
'select * from contato_cliente where id_cliente is not null;'
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202412291842','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10200626460382081
 ,p_command => 
'select * from endereco_cliente;'
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202412300342','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 11215024633137206
 ,p_command => 
'select * from cliente;'
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202501021708','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 11237715615922658
 ,p_command => 
'delete from produto where cod_produto = 313213;'
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202501021919','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 11812038250204204
 ,p_command => 
'select * from SM_POSTS;'
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202501031819','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 11827567901547451
 ,p_command => 
'select replace(replace(apex_web_service.blob2clobbase64(BLOB_IMG), chr(10),''''),chr(13),'''')'||wwv_flow.LF||
' from PRODUTO'||wwv_flow.LF||
' where ID = 41'
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202501031916','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 11829721220680048
 ,p_command => 
'select replace(replace(apex_web_service.blob2clobbase64(BLOB_IMG), chr(10),''''),chr(13),'''')'||wwv_flow.LF||
' from PRODUTO'||wwv_flow.LF||
' where ID = 21'||wwv_flow.LF||
' ;'
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202501031938','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 9398320541550948
 ,p_command => 
'SELECT C.NOME, C.CPF, C.RG, C.DATA_NASCIMENTO, C.NOME_MAE, C.NOME_PAI,'||wwv_flow.LF||
'CC.EMAIL, CC.TELEFONE'||wwv_flow.LF||
'FROM CLIENTE C, CONTATO_CLIENTE CC'||wwv_flow.LF||
'WHERE C.ID = CC.ID_CLIENTE'||wwv_flow.LF||
''||wwv_flow.LF||
'SELECT * FROM CONTATO_CLIENTE'||wwv_flow.LF||
''||wwv_flow.LF||
'DELETE FROM CONTATO_CLIENTE;'||wwv_flow.LF||
'DELETE FROM CLIENTE;'||wwv_flow.LF||
''
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202412280210','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 9398551309551352
 ,p_command => 
'DELETE FROM CLIENTE;'||wwv_flow.LF||
''
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202412280210','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 9398656254551725
 ,p_command => 
'SELECT C.NOME, C.CPF, C.RG, C.DATA_NASCIMENTO, C.NOME_MAE, C.NOME_PAI,'||wwv_flow.LF||
'CC.EMAIL, CC.TELEFONE'||wwv_flow.LF||
'FROM CLIENTE C, CONTATO_CLIENTE CC'||wwv_flow.LF||
'WHERE C.ID = CC.ID_CLIENTE'||wwv_flow.LF||
''||wwv_flow.LF||
'SELECT * FROM CONTATO_CLIENTE'||wwv_flow.LF||
''||wwv_flow.LF||
'DELETE FROM CONTATO_CLIENTE;'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
'COMMIT;'
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202412280210','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 9400152080619230
 ,p_command => 
'select * from cliente;'
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202412280222','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 9400728663628387
 ,p_command => 
'SELECT * FROM CONTATO_CLIENTE'||wwv_flow.LF||
''
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202412280223','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 9401259355643191
 ,p_command => 
'SELECT C.NOME, C.CPF, C.RG, C.DATA_NASCIMENTO, C.NOME_MAE, C.NOME_PAI,'||wwv_flow.LF||
'CC.EMAIL, CC.TELEFONE'||wwv_flow.LF||
'FROM CLIENTE C, CONTATO_CLIENTE CC'||wwv_flow.LF||
'WHERE C.ID = CC.ID_CLIENTE'||wwv_flow.LF||
''||wwv_flow.LF||
'SELECT * FROM CONTATO_CLIENTE'||wwv_flow.LF||
''||wwv_flow.LF||
'DELETE FROM CONTATO_CLIENTE;'||wwv_flow.LF||
'DELETE FROM CLIENTE;'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
'select * from cliente;'||wwv_flow.LF||
''||wwv_flow.LF||
''
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202412280226','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 9401397241643488
 ,p_command => 
''||wwv_flow.LF||
'ALTER TABLE CLIENTE ADD CONSTRAINT PK_CLIENTE PRIMARY KEY (ID);'
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202412280226','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 9800541147085985
 ,p_command => 
'select * from contato_cliente;'
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202412291833','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10200069938304226
 ,p_command => 
'delete * from cliente;'
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202412300329','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10200189907304871
 ,p_command => 
'delete * from contato_cliente;'
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202412300329','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 10200283669306056
 ,p_command => 
'delete * from cliente;'
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202412300329','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 11213908706053899
 ,p_command => 
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) VALUES'||wwv_flow.LF||
'(1, 1, 9, 4, TO_DATE(''2024-08-08'', ''YYYY-MM-DD''), 5, 1495.2, ''Dinheiro''),'||wwv_flow.LF||
'(2, 2, 18, 2, TO_DATE(''2024-08-19'', ''YYYY-MM-DD''), 14, 1495.2, ''Boleto''),'||wwv_flow.LF||
'(3, 1, 3, 4, TO_DATE(''2024-08-08'', ''YYYY-MM-DD''), 17, 1495.2, ''Dinheiro''),'||wwv_flow.LF||
'(4, 1, 18, 4, TO_DATE(''2024-08-23'', ''YYYY-MM-DD''), 18, 1495.'||
'2, ''Cartão''),'||wwv_flow.LF||
'(5, 4, 15, 10, TO_DATE(''2024-08-09'', ''YYYY-MM-DD''), 1, 1495.2, ''Boleto''),'||wwv_flow.LF||
'(6, 9, 12, 12, TO_DATE(''2024-09-03'', ''YYYY-MM-DD''), 15, 1935.7, ''Cartão''),'||wwv_flow.LF||
'(7, 3, 15, 9, TO_DATE(''2024-09-27'', ''YYYY-MM-DD''), 12, 1935.7, ''Cartão''),'||wwv_flow.LF||
'(8, 6, 7, 8, TO_DATE(''2024-09-20'', ''YYYY-MM-DD''), 12, 1935.7, ''Cartão''),'||wwv_flow.LF||
'(9, 1, 3, 6, TO_DATE(''2024-09-19'', ''YYYY-MM-DD''), 20, 1935.7, ''Boleto''),'||wwv_flow.LF||
'(10, 2, 16, 3, TO'||
'_DATE(''2024-09-18'', ''YYYY-MM-DD''), 18, 1935.7, ''Boleto''),'||wwv_flow.LF||
'(11, 6, 8, 10, TO_DATE(''2024-10-01'', ''YYYY-MM-DD''), 16, 2312.6, ''Cartão''),'||wwv_flow.LF||
'(12, 4, 20, 15, TO_DATE(''2024-10-27'', ''YYYY-MM-DD''), 3, 2312.6, ''Cartão''),'||wwv_flow.LF||
'(13, 7, 18, 6, TO_DATE(''2024-10-09'', ''YYYY-MM-DD''), 4, 2312.6, ''Cartão''),'||wwv_flow.LF||
'(14, 7, 8, 6, TO_DATE(''2024-10-26'', ''YYYY-MM-DD''), 13, 2312.6, ''Boleto''),'||wwv_flow.LF||
'(15, 8, 9, 13, TO_DATE(''2024-10-15'', ''YYYY-M'||
'M-DD''), 16, 2312.6, ''Cartão''),'||wwv_flow.LF||
'(16, 5, 7, 10, TO_DATE(''2024-11-08'', ''YYYY-MM-DD''), 10, 3162.1, ''Dinheiro''),'||wwv_flow.LF||
'(17, 6, 5, 2, TO_DATE(''2024-11-15'', ''YYYY-MM-DD''), 6, 3162.1, ''Dinheiro''),'||wwv_flow.LF||
'(18, 9, 6, 10, TO_DATE(''2024-11-01'', ''YYYY-MM-DD''), 18, 3162.1, ''Dinheiro''),'||wwv_flow.LF||
'(19, 3, 20, 12, TO_DATE(''2024-11-25'', ''YYYY-MM-DD''), 8, 3162.1, ''Dinheiro''),'||wwv_flow.LF||
'(20, 8, 8, 1, TO_DATE(''2024-11-05'', ''YYYY-MM-DD''), 20, 3162.1, '||
'''Boleto''),'||wwv_flow.LF||
'(21, 6, 5, 7, TO_DATE(''2024-12-27'', ''YYYY-MM-DD''), 18, 4228.9, ''Boleto''),'||wwv_flow.LF||
'(22, 2, 16, 14, TO_DATE(''2024-12-22'', ''YYYY-MM-DD''), 4, 4228.9, ''Boleto''),'||wwv_flow.LF||
'(23, 4, 4, 10, TO_DATE(''2024-12-07'', ''YYYY-MM-DD''), 20, 4228.9, ''Dinheiro''),'||wwv_flow.LF||
'(24, 8, 1, 15, TO_DATE(''2024-12-17'', ''YYYY-MM-DD''), 19, 4228.9, ''Dinheiro''),'||wwv_flow.LF||
'(25, 5, 20, 10, TO_DATE(''2024-12-13'', ''YYYY-MM-DD''), 19, 4228.9, ''Cartão''),'||wwv_flow.LF||
'(26, 1, 8,'||
' 3, TO_DATE(''2025-01-26'', ''YYYY-MM-DD''), 20, 5213.8, ''Dinheiro''),'||wwv_flow.LF||
'(27, 7, 5, 8, TO_DATE(''2025-01-03'', ''YYYY-MM-DD''), 11, 5213.8, ''Cartão''),'||wwv_flow.LF||
'(28, 8, 6, 14, TO_DATE(''2025-01-02'', ''YYYY-MM-DD''), 13, 5213.8, ''Cartão''),'||wwv_flow.LF||
'(29, 9, 19, 15, TO_DATE(''2025-01-15'', ''YYYY-MM-DD''), 8, 5213.8, ''Boleto''),'||wwv_flow.LF||
'(30, 5, 20, 10, TO_DATE(''2025-01-21'', ''YYYY-MM-DD''), 5, 5213.8, ''Cartão'');'||wwv_flow.LF||
''
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202501021654','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 11214147016076669
 ,p_command => 
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) VALUES'||wwv_flow.LF||
'("WKSP_PASSINI"."ISEQ$$_103818".nextval, 1, 9, 4, TO_DATE(''2024-08-08'', ''YYYY-MM-DD''), 5, 1495.2, ''Dinheiro''),'||wwv_flow.LF||
'("WKSP_PASSINI"."ISEQ$$_103818".nextval, 2, 18, 2, TO_DATE(''2024-08-19'', ''YYYY-MM-DD''), 14, 1495.2, ''Boleto''),'||wwv_flow.LF||
'("WKSP_PASSINI"."ISEQ$$_103818".nextval, 1, 3, 4, TO_DATE(''20'||
'24-08-08'', ''YYYY-MM-DD''), 17, 1495.2, ''Dinheiro''),'||wwv_flow.LF||
'("WKSP_PASSINI"."ISEQ$$_103818".nextval, 1, 18, 4, TO_DATE(''2024-08-23'', ''YYYY-MM-DD''), 18, 1495.2, ''Cartão''),'||wwv_flow.LF||
'("WKSP_PASSINI"."ISEQ$$_103818".nextval, 4, 15, 10, TO_DATE(''2024-08-09'', ''YYYY-MM-DD''), 1, 1495.2, ''Boleto''),'||wwv_flow.LF||
'("WKSP_PASSINI"."ISEQ$$_103818".nextval, 9, 12, 12, TO_DATE(''2024-09-03'', ''YYYY-MM-DD''), 15, 1935.7, ''Cartão''),'||wwv_flow.LF||
'("WKSP_PASSINI"'||
'."ISEQ$$_103818".nextval, 3, 15, 9, TO_DATE(''2024-09-27'', ''YYYY-MM-DD''), 12, 1935.7, ''Cartão''),'||wwv_flow.LF||
'("WKSP_PASSINI"."ISEQ$$_103818".nextval, 6, 7, 8, TO_DATE(''2024-09-20'', ''YYYY-MM-DD''), 12, 1935.7, ''Cartão''),'||wwv_flow.LF||
'("WKSP_PASSINI"."ISEQ$$_103818".nextval, 1, 3, 6, TO_DATE(''2024-09-19'', ''YYYY-MM-DD''), 20, 1935.7, ''Boleto''),'||wwv_flow.LF||
'("WKSP_PASSINI"."ISEQ$$_103818".nextval, 2, 16, 3, TO_DATE(''2024-09-18'', ''YYYY-MM-DD'||
'''), 18, 1935.7, ''Boleto''),'||wwv_flow.LF||
'("WKSP_PASSINI"."ISEQ$$_103818".nextval, 6, 8, 10, TO_DATE(''2024-10-01'', ''YYYY-MM-DD''), 16, 2312.6, ''Cartão''),'||wwv_flow.LF||
'("WKSP_PASSINI"."ISEQ$$_103818".nextval, 4, 20, 15, TO_DATE(''2024-10-27'', ''YYYY-MM-DD''), 3, 2312.6, ''Cartão''),'||wwv_flow.LF||
'("WKSP_PASSINI"."ISEQ$$_103818".nextval, 7, 18, 6, TO_DATE(''2024-10-09'', ''YYYY-MM-DD''), 4, 2312.6, ''Cartão''),'||wwv_flow.LF||
'("WKSP_PASSINI"."ISEQ$$_103818".nextval, '||
'7, 8, 6, TO_DATE(''2024-10-26'', ''YYYY-MM-DD''), 13, 2312.6, ''Boleto''),'||wwv_flow.LF||
'("WKSP_PASSINI"."ISEQ$$_103818".nextval, 8, 9, 13, TO_DATE(''2024-10-15'', ''YYYY-MM-DD''), 16, 2312.6, ''Cartão''),'||wwv_flow.LF||
'("WKSP_PASSINI"."ISEQ$$_103818".nextval, 5, 7, 10, TO_DATE(''2024-11-08'', ''YYYY-MM-DD''), 10, 3162.1, ''Dinheiro''),'||wwv_flow.LF||
'("WKSP_PASSINI"."ISEQ$$_103818".nextval, 6, 5, 2, TO_DATE(''2024-11-15'', ''YYYY-MM-DD''), 6, 3162.1, ''Dinheiro'||
'''),'||wwv_flow.LF||
'("WKSP_PASSINI"."ISEQ$$_103818".nextval, 9, 6, 10, TO_DATE(''2024-11-01'', ''YYYY-MM-DD''), 18, 3162.1, ''Dinheiro''),'||wwv_flow.LF||
'("WKSP_PASSINI"."ISEQ$$_103818".nextval, 3, 20, 12, TO_DATE(''2024-11-25'', ''YYYY-MM-DD''), 8, 3162.1, ''Dinheiro''),'||wwv_flow.LF||
'("WKSP_PASSINI"."ISEQ$$_103818".nextval, 8, 8, 1, TO_DATE(''2024-11-05'', ''YYYY-MM-DD''), 20, 3162.1, ''Boleto''),'||wwv_flow.LF||
'("WKSP_PASSINI"."ISEQ$$_103818".nextval, 6, 5, 7, TO_DATE(''2'||
'024-12-27'', ''YYYY-MM-DD''), 18, 4228.9, ''Boleto''),'||wwv_flow.LF||
'("WKSP_PASSINI"."ISEQ$$_103818".nextval, 2, 16, 14, TO_DATE(''2024-12-22'', ''YYYY-MM-DD''), 4, 4228.9, ''Boleto''),'||wwv_flow.LF||
'("WKSP_PASSINI"."ISEQ$$_103818".nextval, 4, 4, 10, TO_DATE(''2024-12-07'', ''YYYY-MM-DD''), 20, 4228.9, ''Dinheiro''),'||wwv_flow.LF||
'("WKSP_PASSINI"."ISEQ$$_103818".nextval, 8, 1, 15, TO_DATE(''2024-12-17'', ''YYYY-MM-DD''), 19, 4228.9, ''Dinheiro''),'||wwv_flow.LF||
'("WKSP_PASSIN'||
'I"."ISEQ$$_103818".nextval, 5, 20, 10, TO_DATE(''2024-12-13'', ''YYYY-MM-DD''), 19, 4228.9, ''Cartão''),'||wwv_flow.LF||
'("WKSP_PASSINI"."ISEQ$$_103818".nextval, 1, 8, 3, TO_DATE(''2025-01-26'', ''YYYY-MM-DD''), 20, 5213.8, ''Dinheiro''),'||wwv_flow.LF||
'("WKSP_PASSINI"."ISEQ$$_103818".nextval, 7, 5, 8, TO_DATE(''2025-01-03'', ''YYYY-MM-DD''), 11, 5213.8, ''Cartão''),'||wwv_flow.LF||
'("WKSP_PASSINI"."ISEQ$$_103818".nextval, 8, 6, 14, TO_DATE(''2025-01-02'', ''YYYY-'||
'MM-DD''), 13, 5213.8, ''Cartão''),'||wwv_flow.LF||
'("WKSP_PASSINI"."ISEQ$$_103818".nextval, 9, 19, 15, TO_DATE(''2025-01-15'', ''YYYY-MM-DD''), 8, 5213.8, ''Boleto''),'||wwv_flow.LF||
'("WKSP_PASSINI"."ISEQ$$_103818".nextval, 5, 20, 10, TO_DATE(''2025-01-21'', ''YYYY-MM-DD''), 5, 5213.8, ''Cartão'');'||wwv_flow.LF||
''
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202501021658','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 11214395902106943
 ,p_command => 
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 1, 9, 4, TO_DATE(''2024-08-08'', ''YYYY-MM-DD''), 5, 1495.2, ''Dinheiro'')'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 2, 18, 2, TO_'||
'DATE(''2024-08-19'', ''YYYY-MM-DD''), 14, 1495.2, ''Boleto'')'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 1, 3, 4, TO_DATE(''2024-08-08'', ''YYYY-MM-DD''), 17, 1495.2, ''Dinheiro'')'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALU'||
'ES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 1, 18, 4, TO_DATE(''2024-08-23'', ''YYYY-MM-DD''), 18, 1495.2, ''Cartão'')'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 4, 15, 10, TO_DATE(''2024-08-09'', ''YYYY-MM-DD''), 1, 1495.2, ''Boleto'')'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE'||
', DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 9, 12, 12, TO_DATE(''2024-09-03'', ''YYYY-MM-DD''), 15, 1935.7, ''Cartão'')'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 3, 15, 9, TO_DATE(''2024-09-27'', ''YYYY-MM-DD''), 12, 1935.7, ''Cartão'')'||wwv_flow.LF||
'IN'||
'SERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 6, 7, 8, TO_DATE(''2024-09-20'', ''YYYY-MM-DD''), 12, 1935.7, ''Cartão'')'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 1, 3, 6, TO_DATE'||
'(''2024-09-19'', ''YYYY-MM-DD''), 20, 1935.7, ''Boleto'')'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 2, 16, 3, TO_DATE(''2024-09-18'', ''YYYY-MM-DD''), 18, 1935.7, ''Boleto'')'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("'||
'WKSP_PASSINI"."ISEQ$$_103818".nextval, 6, 8, 10, TO_DATE(''2024-10-01'', ''YYYY-MM-DD''), 16, 2312.6, ''Cartão'')'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 4, 20, 15, TO_DATE(''2024-10-27'', ''YYYY-MM-DD''), 3, 2312.6, ''Cartão'')'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DAT'||
'A_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 7, 18, 6, TO_DATE(''2024-10-09'', ''YYYY-MM-DD''), 4, 2312.6, ''Cartão'')'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 7, 8, 6, TO_DATE(''2024-10-26'', ''YYYY-MM-DD''), 13, 2312.6, ''Boleto'')'||wwv_flow.LF||
'INSERT INT'||
'O VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 8, 9, 13, TO_DATE(''2024-10-15'', ''YYYY-MM-DD''), 16, 2312.6, ''Cartão'')'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 5, 7, 10, TO_DATE(''2024'||
'-11-08'', ''YYYY-MM-DD''), 10, 3162.1, ''Dinheiro'')'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 6, 5, 2, TO_DATE(''2024-11-15'', ''YYYY-MM-DD''), 6, 3162.1, ''Dinheiro'')'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP'||
'_PASSINI"."ISEQ$$_103818".nextval, 9, 6, 10, TO_DATE(''2024-11-01'', ''YYYY-MM-DD''), 18, 3162.1, ''Dinheiro'')'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 3, 20, 12, TO_DATE(''2024-11-25'', ''YYYY-MM-DD''), 8, 3162.1, ''Dinheiro'')'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DAT'||
'A_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 8, 8, 1, TO_DATE(''2024-11-05'', ''YYYY-MM-DD''), 20, 3162.1, ''Boleto'')'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 6, 5, 7, TO_DATE(''2024-12-27'', ''YYYY-MM-DD''), 18, 4228.9, ''Boleto'')'||wwv_flow.LF||
'INSERT INT'||
'O VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 2, 16, 14, TO_DATE(''2024-12-22'', ''YYYY-MM-DD''), 4, 4228.9, ''Boleto'')'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 4, 4, 10, TO_DATE(''2024'||
'-12-07'', ''YYYY-MM-DD''), 20, 4228.9, ''Dinheiro'')'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 8, 1, 15, TO_DATE(''2024-12-17'', ''YYYY-MM-DD''), 19, 4228.9, ''Dinheiro'')'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WK'||
'SP_PASSINI"."ISEQ$$_103818".nextval, 5, 20, 10, TO_DATE(''2024-12-13'', ''YYYY-MM-DD''), 19, 4228.9, ''Cartão'')'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 1, 8, 3, TO_DATE(''2025-01-26'', ''YYYY-MM-DD''), 20, 5213.8, ''Dinheiro'')'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DAT'||
'A_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 7, 5, 8, TO_DATE(''2025-01-03'', ''YYYY-MM-DD''), 11, 5213.8, ''Cartão'')'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 8, 6, 14, TO_DATE(''2025-01-02'', ''YYYY-MM-DD''), 13, 5213.8, ''Cartão'')'||wwv_flow.LF||
'INSERT IN'||
'TO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 9, 19, 15, TO_DATE(''2025-01-15'', ''YYYY-MM-DD''), 8, 5213.8, ''Boleto'')'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 5, 20, 10, TO_DATE(''20'||
'25-01-21'', ''YYYY-MM-DD''), 5, 5213.8, ''Cartão'')'||wwv_flow.LF||
''
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202501021703','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 11214427331108410
 ,p_command => 
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 1, 9, 4, TO_DATE(''2024-08-08'', ''YYYY-MM-DD''), 5, 1495.2, ''Dinheiro'');'
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202501021703','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 11214767657119926
 ,p_command => 
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 1, 9, 4, TO_DATE(''2024-08-08'', ''YYYY-MM-DD''), 5, 1495.2, ''Dinheiro'');'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 2, 18, 2, TO'||
'_DATE(''2024-08-19'', ''YYYY-MM-DD''), 14, 1495.2, ''Boleto'');'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 1, 3, 4, TO_DATE(''2024-08-08'', ''YYYY-MM-DD''), 17, 1495.2, ''Dinheiro'');'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'V'||
'ALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 1, 18, 4, TO_DATE(''2024-08-23'', ''YYYY-MM-DD''), 18, 1495.2, ''Cartão'');'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 4, 15, 10, TO_DATE(''2024-08-09'', ''YYYY-MM-DD''), 1, 1495.2, ''Boleto'');'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CL'||
'IENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 9, 12, 12, TO_DATE(''2024-09-03'', ''YYYY-MM-DD''), 15, 1935.7, ''Cartão'');'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 3, 15, 9, TO_DATE(''2024-09-27'', ''YYYY-MM-DD''), 12, 1935.7, ''Cartã'||
'o'');'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 6, 7, 8, TO_DATE(''2024-09-20'', ''YYYY-MM-DD''), 12, 1935.7, ''Cartão'');'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 1, 3, 6,'||
' TO_DATE(''2024-09-19'', ''YYYY-MM-DD''), 20, 1935.7, ''Boleto'');'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 2, 16, 3, TO_DATE(''2024-09-18'', ''YYYY-MM-DD''), 18, 1935.7, ''Boleto'');'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||
''||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 6, 8, 10, TO_DATE(''2024-10-01'', ''YYYY-MM-DD''), 16, 2312.6, ''Cartão'');'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 4, 20, 15, TO_DATE(''2024-10-27'', ''YYYY-MM-DD''), 3, 2312.6, ''Cartão'');'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_'||
'CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 7, 18, 6, TO_DATE(''2024-10-09'', ''YYYY-MM-DD''), 4, 2312.6, ''Cartão'');'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 7, 8, 6, TO_DATE(''2024-10-26'', ''YYYY-MM-DD''), 13, 2312.6, ''Boleto'||
''');'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 8, 9, 13, TO_DATE(''2024-10-15'', ''YYYY-MM-DD''), 16, 2312.6, ''Cartão'');'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 5, 7, 10'||
', TO_DATE(''2024-11-08'', ''YYYY-MM-DD''), 10, 3162.1, ''Dinheiro'');'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 6, 5, 2, TO_DATE(''2024-11-15'', ''YYYY-MM-DD''), 6, 3162.1, ''Dinheiro'');'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENT'||
'O) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 9, 6, 10, TO_DATE(''2024-11-01'', ''YYYY-MM-DD''), 18, 3162.1, ''Dinheiro'');'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 3, 20, 12, TO_DATE(''2024-11-25'', ''YYYY-MM-DD''), 8, 3162.1, ''Dinheiro'');'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODU'||
'TO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 8, 8, 1, TO_DATE(''2024-11-05'', ''YYYY-MM-DD''), 20, 3162.1, ''Boleto'');'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 6, 5, 7, TO_DATE(''2024-12-27'', ''YYYY-MM-DD''), 18, 4228.9, '||
'''Boleto'');'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 2, 16, 14, TO_DATE(''2024-12-22'', ''YYYY-MM-DD''), 4, 4228.9, ''Boleto'');'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 4'||
', 4, 10, TO_DATE(''2024-12-07'', ''YYYY-MM-DD''), 20, 4228.9, ''Dinheiro'');'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 8, 1, 15, TO_DATE(''2024-12-17'', ''YYYY-MM-DD''), 19, 4228.9, ''Dinheiro'');'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO'||
'_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 5, 20, 10, TO_DATE(''2024-12-13'', ''YYYY-MM-DD''), 19, 4228.9, ''Cartão'');'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 1, 8, 3, TO_DATE(''2025-01-26'', ''YYYY-MM-DD''), 20, 5213.8, ''Dinheiro'');'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, I'||
'D_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 7, 5, 8, TO_DATE(''2025-01-03'', ''YYYY-MM-DD''), 11, 5213.8, ''Cartão'');'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 8, 6, 14, TO_DATE(''2025-01-02'', ''YYYY-MM-DD''), 13, '||
'5213.8, ''Cartão'');'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 9, 19, 15, TO_DATE(''2025-01-15'', ''YYYY-MM-DD''), 8, 5213.8, ''Boleto'');'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".ne'||
'xtval, 5, 20, 10, TO_DATE(''2025-01-21'', ''YYYY-MM-DD''), 5, 5213.8, ''Cartão'');'||wwv_flow.LF||
''
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202501021705','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 11214853122120852
 ,p_command => 
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 1, 9, 4, TO_DATE(''2024-08-08'', ''YYYY-MM-DD''), 5, 1495.2, ''Dinheiro'');'
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202501021705','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 11215201738139478
 ,p_command => 
'update cliente set id = 1 where id = 81;'
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202501021708','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 11215466418144302
 ,p_command => 
'select * from cliente;'||wwv_flow.LF||
''||wwv_flow.LF||
'select * from vendedor;'
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202501021709','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 11215546568144414
 ,p_command => 
'select * from vendedor;'
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202501021709','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 11215792939171664
 ,p_command => 
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 1, 1, 81, TO_DATE(''2024-08-19'', ''YYYY-MM-DD''), 14, 1495.2, ''Boleto'');'
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202501021714','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 11216348500173678
 ,p_command => 
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 1, 1, 81, TO_DATE(''2024-09-20'', ''YYYY-MM-DD''), 12, 1935.7, ''Cartão'');'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 1, 1, 81, TO'||
'_DATE(''2024-09-19'', ''YYYY-MM-DD''), 20, 1935.7, ''Boleto'');'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 1, 1, 81, TO_DATE(''2024-09-18'', ''YYYY-MM-DD''), 18, 1935.7, ''Boleto'');'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VA'||
'LUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 1, 1, 81, TO_DATE(''2024-10-01'', ''YYYY-MM-DD''), 16, 2312.6, ''Cartão'');'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 1, 1, 81, TO_DATE(''2024-10-27'', ''YYYY-MM-DD''), 3, 2312.6, ''Cartão'');'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIE'||
'NTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 1, 1, 81, TO_DATE(''2024-10-09'', ''YYYY-MM-DD''), 4, 2312.6, ''Cartão'');'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 1, 1, 81, TO_DATE(''2024-10-26'', ''YYYY-MM-DD''), 13, 2312.6, ''Boleto'');'||
''||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 1, 1, 81, TO_DATE(''2024-10-15'', ''YYYY-MM-DD''), 16, 2312.6, ''Cartão'');'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 1, 1, 81, T'||
'O_DATE(''2024-11-08'', ''YYYY-MM-DD''), 10, 3162.1, ''Dinheiro'');'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 1, 1, 81, TO_DATE(''2024-11-15'', ''YYYY-MM-DD''), 6, 3162.1, ''Dinheiro'');'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO)'||
' '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 1, 1, 81, TO_DATE(''2024-11-01'', ''YYYY-MM-DD''), 18, 3162.1, ''Dinheiro'');'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 1, 1, 81, TO_DATE(''2024-11-25'', ''YYYY-MM-DD''), 8, 3162.1, ''Dinheiro'');'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO,'||
' ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 1, 1, 81, TO_DATE(''2024-11-05'', ''YYYY-MM-DD''), 20, 3162.1, ''Boleto'');'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 1, 1, 81, TO_DATE(''2024-12-27'', ''YYYY-MM-DD''), 18, 4228.9, '''||
'Boleto'');'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 1, 1, 81, TO_DATE(''2024-12-22'', ''YYYY-MM-DD''), 4, 4228.9, ''Boleto'');'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 1, '||
'1, 81, TO_DATE(''2024-12-07'', ''YYYY-MM-DD''), 20, 4228.9, ''Dinheiro'');'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 1, 1, 81, TO_DATE(''2024-12-17'', ''YYYY-MM-DD''), 19, 4228.9, ''Dinheiro'');'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_P'||
'AGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 1, 1, 81, TO_DATE(''2024-12-13'', ''YYYY-MM-DD''), 19, 4228.9, ''Cartão'');'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 1, 1, 81, TO_DATE(''2025-01-26'', ''YYYY-MM-DD''), 20, 5213.8, ''Dinheiro'');'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_'||
'PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 1, 1, 81, TO_DATE(''2025-01-03'', ''YYYY-MM-DD''), 11, 5213.8, ''Cartão'');'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 1, 1, 81, TO_DATE(''2025-01-02'', ''YYYY-MM-DD''), 13, 5'||
'213.8, ''Cartão'');'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 1, 1, 81, TO_DATE(''2025-01-15'', ''YYYY-MM-DD''), 8, 5213.8, ''Boleto'');'||wwv_flow.LF||
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".next'||
'val, 1, 1, 81, TO_DATE(''2025-01-21'', ''YYYY-MM-DD''), 5, 5213.8, ''Cartão'');'||wwv_flow.LF||
''
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202501021714','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 11216417175175041
 ,p_command => 
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 1, 1, 81, TO_DATE(''2024-09-20'', ''YYYY-MM-DD''), 12, 1935.7, ''Cartão'');'
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202501021714','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 11217096132177613
 ,p_command => 
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 1, 1, 81, TO_DATE(''2024-10-26'', ''YYYY-MM-DD''), 13, 2312.6, ''Boleto'');'
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202501021715','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 11217299409178268
 ,p_command => 
'INSERT INTO VENDAS (ID, ID_VENDEDOR, ID_PRODUTO, ID_CLIENTE, DATA_VENDA, QUANTIDADE, VALOR, METODO_PAGAMENTO) '||wwv_flow.LF||
'VALUES ("WKSP_PASSINI"."ISEQ$$_103818".nextval, 1, 1, 81, TO_DATE(''2024-11-08'', ''YYYY-MM-DD''), 10, 3162.1, ''Dinheiro'');'
    ,p_created_by => 'JOAOPBLUME'
    ,p_created_on => to_date('202501021715','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_PASSINI');
end;
/
----------------
--Quick SQL saved models
--
----------------
--user access log
--
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'JOAOPBLUME',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 100,
    p_owner => 'WKSP_PASSINI',
    p_access_date => to_date('202501122010','YYYYMMDDHH24MI'),
    p_ip_address => '177.74.142.172',
    p_remote_user => 'ORDS_PLSQL_GATEWAY',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'JOAOPBLUME',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_240100',
    p_access_date => to_date('202501122009','YYYYMMDDHH24MI'),
    p_ip_address => '177.74.142.172',
    p_remote_user => 'ORDS_PLSQL_GATEWAY',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'JOAOPBLUME',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_240100',
    p_access_date => to_date('202504021422','YYYYMMDDHH24MI'),
    p_ip_address => '201.86.30.58',
    p_remote_user => 'ORDS_PLSQL_GATEWAY',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'JOAOPBLUME',
    p_auth_method => 'Internal Authentication',
    p_app => 4100,
    p_owner => 'APEX_240100',
    p_access_date => to_date('202504021430','YYYYMMDDHH24MI'),
    p_ip_address => '201.86.30.58',
    p_remote_user => 'ORDS_PLSQL_GATEWAY',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
prompt Check Compatibility...
begin
-- This date identifies the minimum version required to import this file.
wwv_flow_team_api.check_version(p_version_yyyy_mm_dd=>'2010.05.13');
end;
/
 
begin wwv_flow.g_import_in_progress := true; wwv_flow.g_user := USER; end; 
/
 
--
prompt ...feedback
--
begin
null;
end;
/
--
prompt ...Issue Templates
--
begin
null;
end;
/
--
prompt ...Issue Email Prefs
--
begin
null;
end;
/
--
prompt ...Label Groups
--
begin
null;
end;
/
--
prompt ...Labels
--
begin
null;
end;
/
--
prompt ... Milestones
--
begin
null;
end;
/
--
prompt ... Issues
--
begin
null;
end;
/
--
prompt ... Issue Attachments
--
begin
null;
end;
/
--
prompt ... Issues Milestones
--
begin
null;
end;
/
--
prompt ... Issues Labels
--
begin
null;
end;
/
--
prompt ... Issues stakeholders
--
begin
null;
end;
/
--
prompt ... Issues Comments
--
begin
null;
end;
/
--
prompt ... Issues Events
--
begin
null;
end;
/
--
prompt ... Issues Notifications
--
begin
null;
end;
/
 
prompt ... Extension Links
 
 
prompt ... Extension Grants
 
 
prompt ...workspace objects
 
begin
wwv_imp_workspace.create_credential(
 p_id=>wwv_flow_imp.id(11786521750191885)
,p_name=>'apex_ai_cred'
,p_static_id=>'apex_ai_cred'
,p_authentication_type=>'OCI'
,p_namespace=>'ocid1.tenancy.oc1..aaaaaaaajh4me7ghgzo6darg3ljpz2j7uiltav2ch7eiwkfnh77y3eq6rapq'
,p_prompt_on_install=>false
);
end;
/
begin
wwv_imp_workspace.create_remote_server(
 p_id=>wwv_flow_imp.id(11787222229690937)
,p_name=>'vision-aiservice-sa-saopaulo-1-oci-oraclecloud-com-20220125-actions'
,p_static_id=>'vision_aiservice_sa_saopaulo_1_oci_oraclecloud_com_20220125_actions'
,p_base_url=>nvl(wwv_flow_application_install.get_remote_server_base_url('vision_aiservice_sa_saopaulo_1_oci_oraclecloud_com_20220125_actions'),'https://vision.aiservice.sa-saopaulo-1.oci.oraclecloud.com/20220125/actions')
,p_https_host=>nvl(wwv_flow_application_install.get_remote_server_https_host('vision_aiservice_sa_saopaulo_1_oci_oraclecloud_com_20220125_actions'),'')
,p_server_type=>'WEB_SERVICE'
,p_ords_timezone=>nvl(wwv_flow_application_install.get_remote_server_ords_tz('vision_aiservice_sa_saopaulo_1_oci_oraclecloud_com_20220125_actions'),'')
,p_remote_sql_default_schema=>nvl(wwv_flow_application_install.get_remote_server_default_db('vision_aiservice_sa_saopaulo_1_oci_oraclecloud_com_20220125_actions'),'')
,p_mysql_sql_modes=>nvl(wwv_flow_application_install.get_remote_server_sql_mode('vision_aiservice_sa_saopaulo_1_oci_oraclecloud_com_20220125_actions'),'')
,p_prompt_on_install=>false
,p_ai_is_builder_service=>false
,p_ai_model_name=>nvl(wwv_flow_application_install.get_remote_server_ai_model('vision_aiservice_sa_saopaulo_1_oci_oraclecloud_com_20220125_actions'),'')
,p_ai_http_headers=>nvl(wwv_flow_application_install.get_remote_server_ai_headers('vision_aiservice_sa_saopaulo_1_oci_oraclecloud_com_20220125_actions'),'')
,p_ai_attributes=>nvl(wwv_flow_application_install.get_remote_server_ai_attrs('vision_aiservice_sa_saopaulo_1_oci_oraclecloud_com_20220125_actions'),'')
);
end;
/
 
prompt ...RESTful Services
 
-- SET SCHEMA
 
begin
 
   wwv_flow_imp.g_id_offset := 0;
   wwv_flow_hint.g_schema   := 'WKSP_PASSINI';
   wwv_flow_hint.check_schema_privs;
 
end;
/

 
--------------------------------------------------------------------
prompt  SCHEMA WKSP_PASSINI - User Interface Defaults, Table Defaults
--
-- Import using sqlplus as the Oracle user: APEX_240100
-- Exported 14:33 Quarta-Feira Abril 2, 2025 by: ADMIN
--
 
--------------------------------------------------------------------
prompt User Interface Defaults, Attribute Dictionary
--
-- Exported 14:33 Quarta-Feira Abril 2, 2025 by: ADMIN
--
-- SHOW EXPORTING WORKSPACE
 
begin
 
   wwv_flow_imp.g_id_offset := 0;
   wwv_flow_hint.g_exp_workspace := 'PASSINI';
 
end;
/

begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false)
);
commit;
end;
/
set verify on feedback on define on
prompt  ...done
