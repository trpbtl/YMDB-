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
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.6'
,p_default_workspace_id=>65780209069246437300
,p_default_application_id=>81142
,p_default_id_offset=>0
,p_default_owner=>'WKSP_YEFLIX'
);
end;
/
 
prompt APPLICATION 81142 - MENJFLIX
--
-- Application Export:
--   Application:     81142
--   Name:            MENJFLIX
--   Date and Time:   16:20 Monday July 21, 2025
--   Exported By:     EYRAMAWOYE@GMAIL.COM
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                      5
--       Items:                   31
--       Processes:                8
--       Regions:                 13
--       Buttons:                  6
--       Dynamic Actions:          1
--     Shared Components:
--       Logic:
--         Items:                  1
--         Processes:              1
--         Build Options:          1
--       Navigation:
--         Lists:                  2
--         Breadcrumbs:            1
--           Entries:              1
--       Security:
--         Authentication:         1
--         Authorization:          1
--       User Interface:
--         Themes:                 1
--         Templates:
--       PWA:
--       Globalization:
--       Reports:
--       E-Mail:
--     Supporting Objects:  Included
--   Version:         24.2.6
--   Instance ID:     63113759365424
--

prompt --application/delete_application
begin
wwv_flow_imp.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/create_application
begin
wwv_imp_workspace.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'WKSP_YEFLIX')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'MENJFLIX')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'MENJFLIX')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'BEB5F311435D20B18D2E78F2DE138C0D09717A2A2192576B0DDCC01A313BAA56'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'24.2'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(65787164794675730967)
,p_application_tab_set=>1
,p_logo_type=>'T'
,p_logo_text=>'MENJFLIX'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'MENJFLIX'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>6
,p_version_scn=>15641066290266
,p_print_server_type=>'INSTANCE'
,p_file_storage=>'DB'
,p_is_pwa=>'Y'
,p_pwa_is_installable=>'N'
,p_pwa_is_push_enabled=>'N'
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_imp_shared.create_user_interface(
 p_id=>wwv_flow_imp.id(81142)
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_login_url=>'f?p=&APP_ID.:LOGIN:&APP_SESSION.::&DEBUG.:::'
,p_theme_style_by_user_pref=>false
,p_built_with_love=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_imp.id(65787165521573730968)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>2467739217141810545
,p_nav_list_template_options=>'#DEFAULT#:js-defaultCollapsed:js-navCollapsed--hidden:t-TreeNav--styleA'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_imp.id(65787166714871730972)
,p_nav_bar_list_template_id=>2847543055748234966
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --workspace/credentials/credentials_for_movies
begin
wwv_imp_workspace.create_credential(
 p_id=>wwv_flow_imp.id(65794500062947996075)
,p_name=>'Credentials for Movies'
,p_static_id=>'Credentials_for_Movies'
,p_authentication_type=>'HTTP_QUERY_STRING'
,p_valid_for_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'https://api.themoviedb.org/3/',
''))
,p_prompt_on_install=>true
);
end;
/
prompt --workspace/remote_servers/api_themoviedb_org_3
begin
wwv_imp_workspace.create_remote_server(
 p_id=>wwv_flow_imp.id(65794500262941996077)
,p_name=>'api-themoviedb-org-3'
,p_static_id=>'api_themoviedb_org_3'
,p_base_url=>nvl(wwv_flow_application_install.get_remote_server_base_url('api_themoviedb_org_3'),'https://api.themoviedb.org/3/')
,p_https_host=>nvl(wwv_flow_application_install.get_remote_server_https_host('api_themoviedb_org_3'),'')
,p_server_type=>'WEB_SERVICE'
,p_ords_timezone=>nvl(wwv_flow_application_install.get_remote_server_ords_tz('api_themoviedb_org_3'),'')
,p_remote_sql_default_schema=>nvl(wwv_flow_application_install.get_remote_server_default_db('api_themoviedb_org_3'),'')
,p_mysql_sql_modes=>nvl(wwv_flow_application_install.get_remote_server_sql_mode('api_themoviedb_org_3'),'')
,p_prompt_on_install=>false
,p_ai_is_builder_service=>false
,p_ai_model_name=>nvl(wwv_flow_application_install.get_remote_server_ai_model('api_themoviedb_org_3'),'')
,p_ai_http_headers=>nvl(wwv_flow_application_install.get_remote_server_ai_headers('api_themoviedb_org_3'),'')
,p_ai_attributes=>nvl(wwv_flow_application_install.get_remote_server_ai_attrs('api_themoviedb_org_3'),'')
);
end;
/
prompt --application/shared_components/data_profiles/movie_cast
begin
wwv_flow_imp_shared.create_data_profile(
 p_id=>wwv_flow_imp.id(65794500496018996077)
,p_name=>'Movie Cast'
,p_format=>'JSON'
,p_has_header_row=>false
,p_row_selector=>'cast'
,p_use_raw_json_selectors=>false
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(65794502100744996079)
,p_data_profile_id=>wwv_flow_imp.id(65794500496018996077)
,p_name=>'ID'
,p_sequence=>1
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'id'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(65794500688712996078)
,p_data_profile_id=>wwv_flow_imp.id(65794500496018996077)
,p_name=>'NAME'
,p_sequence=>2
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'name'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(65794500934778996078)
,p_data_profile_id=>wwv_flow_imp.id(65794500496018996077)
,p_name=>'ADULT'
,p_sequence=>3
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'adult'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(65794501266152996078)
,p_data_profile_id=>wwv_flow_imp.id(65794500496018996077)
,p_name=>'ORDER_'
,p_sequence=>4
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'order'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(65794501504284996078)
,p_data_profile_id=>wwv_flow_imp.id(65794500496018996077)
,p_name=>'GENDER'
,p_sequence=>5
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'gender'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(65794501899051996079)
,p_data_profile_id=>wwv_flow_imp.id(65794500496018996077)
,p_name=>'CAST_ID'
,p_sequence=>6
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'cast_id'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(65794502461086996079)
,p_data_profile_id=>wwv_flow_imp.id(65794500496018996077)
,p_name=>'CHARACTER'
,p_sequence=>7
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'character'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(65794502752318996079)
,p_data_profile_id=>wwv_flow_imp.id(65794500496018996077)
,p_name=>'CREDIT_ID'
,p_sequence=>8
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'credit_id'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(65794503008794996079)
,p_data_profile_id=>wwv_flow_imp.id(65794500496018996077)
,p_name=>'POPULARITY'
,p_sequence=>9
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'popularity'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(65794503384895996079)
,p_data_profile_id=>wwv_flow_imp.id(65794500496018996077)
,p_name=>'PROFILE_PATH'
,p_sequence=>10
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'profile_path'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(65794503664747996079)
,p_data_profile_id=>wwv_flow_imp.id(65794500496018996077)
,p_name=>'ORIGINAL_NAME'
,p_sequence=>11
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'original_name'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(65794503982380996080)
,p_data_profile_id=>wwv_flow_imp.id(65794500496018996077)
,p_name=>'KNOWN_FOR_DEPARTMENT'
,p_sequence=>12
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'known_for_department'
);
end;
/
prompt --application/shared_components/data_profiles/movie_details
begin
wwv_flow_imp_shared.create_data_profile(
 p_id=>wwv_flow_imp.id(65794505202081996082)
,p_name=>'Movie Details'
,p_format=>'JSON'
,p_has_header_row=>false
,p_use_raw_json_selectors=>false
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(65794507898371996084)
,p_data_profile_id=>wwv_flow_imp.id(65794505202081996082)
,p_name=>'ID'
,p_sequence=>1
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'id'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(65794508186261996084)
,p_data_profile_id=>wwv_flow_imp.id(65794505202081996082)
,p_name=>'ADULT'
,p_sequence=>2
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'adult'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(65794508401352996084)
,p_data_profile_id=>wwv_flow_imp.id(65794505202081996082)
,p_name=>'TITLE'
,p_sequence=>3
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'title'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(65794508778930996084)
,p_data_profile_id=>wwv_flow_imp.id(65794505202081996082)
,p_name=>'VIDEO'
,p_sequence=>4
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'video'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(65794509023870996084)
,p_data_profile_id=>wwv_flow_imp.id(65794505202081996082)
,p_name=>'BUDGET'
,p_sequence=>5
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'budget'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(65794509387661996084)
,p_data_profile_id=>wwv_flow_imp.id(65794505202081996082)
,p_name=>'STATUS'
,p_sequence=>6
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'status'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(65794509647763996084)
,p_data_profile_id=>wwv_flow_imp.id(65794505202081996082)
,p_name=>'IMDB_ID'
,p_sequence=>7
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'imdb_id'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(65794509929600996085)
,p_data_profile_id=>wwv_flow_imp.id(65794505202081996082)
,p_name=>'REVENUE'
,p_sequence=>8
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'revenue'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(65794510200677996085)
,p_data_profile_id=>wwv_flow_imp.id(65794505202081996082)
,p_name=>'RUNTIME'
,p_sequence=>9
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'runtime'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(65794510524655996085)
,p_data_profile_id=>wwv_flow_imp.id(65794505202081996082)
,p_name=>'TAGLINE'
,p_sequence=>10
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'tagline'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(65794510860125996085)
,p_data_profile_id=>wwv_flow_imp.id(65794505202081996082)
,p_name=>'HOMEPAGE'
,p_sequence=>11
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'homepage'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(65794511118030996085)
,p_data_profile_id=>wwv_flow_imp.id(65794505202081996082)
,p_name=>'OVERVIEW'
,p_sequence=>12
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'overview'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(65794511421059996085)
,p_data_profile_id=>wwv_flow_imp.id(65794505202081996082)
,p_name=>'POPULARITY'
,p_sequence=>13
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'popularity'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(65794506655794996083)
,p_data_profile_id=>wwv_flow_imp.id(65794505202081996082)
,p_name=>'VOTE_COUNT'
,p_sequence=>14
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'vote_count'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(65794506981229996083)
,p_data_profile_id=>wwv_flow_imp.id(65794505202081996082)
,p_name=>'POSTER_PATH'
,p_sequence=>15
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'poster_path'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(65794507271986996083)
,p_data_profile_id=>wwv_flow_imp.id(65794505202081996082)
,p_name=>'RELEASE_DATE'
,p_sequence=>16
,p_column_type=>'DATA'
,p_data_type=>'DATE'
,p_format_mask=>'YYYY"-"MM"-"DD'
,p_has_time_zone=>false
,p_selector=>'release_date'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(65794507561766996084)
,p_data_profile_id=>wwv_flow_imp.id(65794505202081996082)
,p_name=>'VOTE_AVERAGE'
,p_sequence=>17
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'vote_average'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(65794505482755996083)
,p_data_profile_id=>wwv_flow_imp.id(65794505202081996082)
,p_name=>'BACKDROP_PATH'
,p_sequence=>18
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'backdrop_path'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(65794505793337996083)
,p_data_profile_id=>wwv_flow_imp.id(65794505202081996082)
,p_name=>'ORIGINAL_TITLE'
,p_sequence=>19
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'original_title'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(65794506016172996083)
,p_data_profile_id=>wwv_flow_imp.id(65794505202081996082)
,p_name=>'ORIGINAL_LANGUAGE'
,p_sequence=>20
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'original_language'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(65794506344955996083)
,p_data_profile_id=>wwv_flow_imp.id(65794505202081996082)
,p_name=>'BELONGS_TO_COLLECTION'
,p_sequence=>21
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'belongs_to_collection'
);
end;
/
prompt --application/shared_components/data_profiles/popular_movies
begin
wwv_flow_imp_shared.create_data_profile(
 p_id=>wwv_flow_imp.id(65794512878018996087)
,p_name=>'Popular Movies'
,p_format=>'JSON'
,p_has_header_row=>false
,p_row_selector=>'results'
,p_use_raw_json_selectors=>false
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(65794513034157996087)
,p_data_profile_id=>wwv_flow_imp.id(65794512878018996087)
,p_name=>'ID'
,p_sequence=>1
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'id'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(65794513356984996087)
,p_data_profile_id=>wwv_flow_imp.id(65794512878018996087)
,p_name=>'ADULT'
,p_sequence=>2
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'adult'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(65794513659422996087)
,p_data_profile_id=>wwv_flow_imp.id(65794512878018996087)
,p_name=>'TITLE'
,p_sequence=>3
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'title'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(65794513988389996087)
,p_data_profile_id=>wwv_flow_imp.id(65794512878018996087)
,p_name=>'VIDEO'
,p_sequence=>4
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'video'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(65794514208487996087)
,p_data_profile_id=>wwv_flow_imp.id(65794512878018996087)
,p_name=>'OVERVIEW'
,p_sequence=>5
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'overview'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(65794514590725996088)
,p_data_profile_id=>wwv_flow_imp.id(65794512878018996087)
,p_name=>'POPULARITY'
,p_sequence=>6
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'popularity'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(65794514807911996088)
,p_data_profile_id=>wwv_flow_imp.id(65794512878018996087)
,p_name=>'VOTE_COUNT'
,p_sequence=>7
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'vote_count'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(65794515152664996088)
,p_data_profile_id=>wwv_flow_imp.id(65794512878018996087)
,p_name=>'POSTER_PATH'
,p_sequence=>8
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'poster_path'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(65794515430728996088)
,p_data_profile_id=>wwv_flow_imp.id(65794512878018996087)
,p_name=>'RELEASE_DATE'
,p_sequence=>9
,p_column_type=>'DATA'
,p_data_type=>'DATE'
,p_format_mask=>'YYYY"-"MM"-"DD'
,p_has_time_zone=>false
,p_selector=>'release_date'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(65794515771571996088)
,p_data_profile_id=>wwv_flow_imp.id(65794512878018996087)
,p_name=>'VOTE_AVERAGE'
,p_sequence=>10
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'vote_average'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(65794516006485996089)
,p_data_profile_id=>wwv_flow_imp.id(65794512878018996087)
,p_name=>'BACKDROP_PATH'
,p_sequence=>11
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'backdrop_path'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(65794516397887996089)
,p_data_profile_id=>wwv_flow_imp.id(65794512878018996087)
,p_name=>'ORIGINAL_TITLE'
,p_sequence=>12
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'original_title'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(65794516656557996089)
,p_data_profile_id=>wwv_flow_imp.id(65794512878018996087)
,p_name=>'ORIGINAL_LANGUAGE'
,p_sequence=>13
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'original_language'
);
end;
/
prompt --application/shared_components/data_profiles/search_movies
begin
wwv_flow_imp_shared.create_data_profile(
 p_id=>wwv_flow_imp.id(65794518400345996090)
,p_name=>'Search Movies'
,p_format=>'JSON'
,p_has_header_row=>false
,p_row_selector=>'results'
,p_use_raw_json_selectors=>false
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(65794518631692996090)
,p_data_profile_id=>wwv_flow_imp.id(65794518400345996090)
,p_name=>'ID'
,p_sequence=>1
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'id'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(65794518958761996091)
,p_data_profile_id=>wwv_flow_imp.id(65794518400345996090)
,p_name=>'ADULT'
,p_sequence=>2
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'adult'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(65794519216091996091)
,p_data_profile_id=>wwv_flow_imp.id(65794518400345996090)
,p_name=>'TITLE'
,p_sequence=>3
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'title'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(65794519590245996091)
,p_data_profile_id=>wwv_flow_imp.id(65794518400345996090)
,p_name=>'VIDEO'
,p_sequence=>4
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'video'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(65794519818876996091)
,p_data_profile_id=>wwv_flow_imp.id(65794518400345996090)
,p_name=>'OVERVIEW'
,p_sequence=>5
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'overview'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(65794520172315996091)
,p_data_profile_id=>wwv_flow_imp.id(65794518400345996090)
,p_name=>'POPULARITY'
,p_sequence=>6
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'popularity'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(65794520401322996091)
,p_data_profile_id=>wwv_flow_imp.id(65794518400345996090)
,p_name=>'VOTE_COUNT'
,p_sequence=>7
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'vote_count'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(65794520754134996091)
,p_data_profile_id=>wwv_flow_imp.id(65794518400345996090)
,p_name=>'POSTER_PATH'
,p_sequence=>8
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'poster_path'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(65794521066866996092)
,p_data_profile_id=>wwv_flow_imp.id(65794518400345996090)
,p_name=>'RELEASE_DATE'
,p_sequence=>9
,p_column_type=>'DATA'
,p_data_type=>'DATE'
,p_format_mask=>'YYYY"-"MM"-"DD'
,p_has_time_zone=>false
,p_selector=>'release_date'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(65794521341458996092)
,p_data_profile_id=>wwv_flow_imp.id(65794518400345996090)
,p_name=>'VOTE_AVERAGE'
,p_sequence=>10
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'vote_average'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(65794521685889996092)
,p_data_profile_id=>wwv_flow_imp.id(65794518400345996090)
,p_name=>'BACKDROP_PATH'
,p_sequence=>11
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'backdrop_path'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(65794521980364996092)
,p_data_profile_id=>wwv_flow_imp.id(65794518400345996090)
,p_name=>'ORIGINAL_TITLE'
,p_sequence=>12
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'original_title'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(65794522224666996092)
,p_data_profile_id=>wwv_flow_imp.id(65794518400345996090)
,p_name=>'ORIGINAL_LANGUAGE'
,p_sequence=>13
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'original_language'
);
end;
/
prompt --application/shared_components/web_sources/movie_cast
begin
wwv_flow_imp_shared.create_web_source_module(
 p_id=>wwv_flow_imp.id(65794504268988996080)
,p_name=>'Movie Cast'
,p_static_id=>'Movie_Cast'
,p_web_source_type=>'NATIVE_HTTP'
,p_data_profile_id=>wwv_flow_imp.id(65794500496018996077)
,p_remote_server_id=>wwv_flow_imp.id(65794500262941996077)
,p_url_path_prefix=>'movie/:movie_id/credits'
,p_credential_id=>wwv_flow_imp.id(65794500062947996075)
,p_pass_ecid=>true
,p_catalog_internal_name=>'TMDB'
,p_catalog_service_name=>'Movie Cast'
,p_catalog_service_version=>20220802
,p_attribute_05=>'1'
,p_attribute_08=>'OFFSET'
,p_attribute_10=>'EQUALS'
,p_attribute_11=>'true'
,p_version_scn=>15640179679030
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(65794504840869996081)
,p_web_src_module_id=>wwv_flow_imp.id(65794504268988996080)
,p_name=>'movie_id'
,p_param_type=>'URL_PATTERN'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
,p_value=>'505'
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(65794504426004996081)
,p_web_src_module_id=>wwv_flow_imp.id(65794504268988996080)
,p_operation=>'GET'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
end;
/
prompt --application/shared_components/web_sources/movie_details
begin
wwv_flow_imp_shared.create_web_source_module(
 p_id=>wwv_flow_imp.id(65794511766089996085)
,p_name=>'Movie Details'
,p_static_id=>'Movie_Details'
,p_web_source_type=>'NATIVE_HTTP'
,p_data_profile_id=>wwv_flow_imp.id(65794505202081996082)
,p_remote_server_id=>wwv_flow_imp.id(65794500262941996077)
,p_url_path_prefix=>'movie/:movie_id'
,p_credential_id=>wwv_flow_imp.id(65794500062947996075)
,p_pass_ecid=>true
,p_catalog_internal_name=>'TMDB'
,p_catalog_service_name=>'Movie Details'
,p_catalog_service_version=>20220802
,p_attribute_05=>'1'
,p_attribute_08=>'OFFSET'
,p_attribute_10=>'EQUALS'
,p_attribute_11=>'true'
,p_version_scn=>15640179679053
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(65794512417818996086)
,p_web_src_module_id=>wwv_flow_imp.id(65794511766089996085)
,p_name=>'movie_id'
,p_param_type=>'URL_PATTERN'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
,p_value=>'505'
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(65794512047268996086)
,p_web_src_module_id=>wwv_flow_imp.id(65794511766089996085)
,p_operation=>'GET'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
end;
/
prompt --application/shared_components/web_sources/popular_movies
begin
wwv_flow_imp_shared.create_web_source_module(
 p_id=>wwv_flow_imp.id(65794516926652996089)
,p_name=>'Popular Movies'
,p_static_id=>'Popular_Movies'
,p_web_source_type=>'NATIVE_HTTP'
,p_data_profile_id=>wwv_flow_imp.id(65794512878018996087)
,p_remote_server_id=>wwv_flow_imp.id(65794500262941996077)
,p_url_path_prefix=>'movie/popular'
,p_credential_id=>wwv_flow_imp.id(65794500062947996075)
,p_pass_ecid=>true
,p_catalog_internal_name=>'TMDB'
,p_catalog_service_name=>'Popular Movies'
,p_catalog_service_version=>20220802
,p_attribute_05=>'1'
,p_attribute_08=>'OFFSET'
,p_attribute_10=>'EQUALS'
,p_attribute_11=>'true'
,p_version_scn=>15640179679106
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(65794517624354996089)
,p_web_src_module_id=>wwv_flow_imp.id(65794516926652996089)
,p_name=>'language'
,p_param_type=>'QUERY_STRING'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
,p_value=>'en-US'
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(65794518025228996090)
,p_web_src_module_id=>wwv_flow_imp.id(65794516926652996089)
,p_name=>'page'
,p_param_type=>'QUERY_STRING'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
,p_value=>'1'
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(65794517264971996089)
,p_web_src_module_id=>wwv_flow_imp.id(65794516926652996089)
,p_operation=>'GET'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
end;
/
prompt --application/shared_components/web_sources/search_movies
begin
wwv_flow_imp_shared.create_web_source_module(
 p_id=>wwv_flow_imp.id(65794522564351996093)
,p_name=>'Search Movies'
,p_static_id=>'Search_Movies'
,p_web_source_type=>'NATIVE_HTTP'
,p_data_profile_id=>wwv_flow_imp.id(65794518400345996090)
,p_remote_server_id=>wwv_flow_imp.id(65794500262941996077)
,p_url_path_prefix=>'search/movie'
,p_credential_id=>wwv_flow_imp.id(65794500062947996075)
,p_pass_ecid=>true
,p_catalog_internal_name=>'TMDB'
,p_catalog_service_name=>'Search Movies'
,p_catalog_service_version=>20220802
,p_attribute_01=>'PAGE_NUMBER_FIXED_SIZE'
,p_attribute_04=>'page'
,p_attribute_05=>'1'
,p_attribute_06=>'20'
,p_attribute_08=>'OFFSET'
,p_attribute_10=>'EQUALS'
,p_attribute_11=>'true'
,p_version_scn=>15640179679167
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(65794523280815996093)
,p_web_src_module_id=>wwv_flow_imp.id(65794522564351996093)
,p_name=>'language'
,p_param_type=>'QUERY_STRING'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
,p_value=>'en-US'
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(65794523687415996093)
,p_web_src_module_id=>wwv_flow_imp.id(65794522564351996093)
,p_name=>'query'
,p_param_type=>'QUERY_STRING'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
,p_value=>'harry potter'
);
wwv_flow_imp_shared.create_web_source_param(
 p_id=>wwv_flow_imp.id(65794524076917996093)
,p_web_src_module_id=>wwv_flow_imp.id(65794522564351996093)
,p_name=>'include_adult'
,p_param_type=>'QUERY_STRING'
,p_data_type=>'VARCHAR2'
,p_is_required=>false
,p_value=>'false'
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(65794522873976996093)
,p_web_src_module_id=>wwv_flow_imp.id(65794522564351996093)
,p_operation=>'GET'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_legacy_ords_fixed_page_size=>20
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_menu
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(65787165521573730968)
,p_name=>'Navigation Menu'
,p_list_status=>'PUBLIC'
,p_version_scn=>15640172959209
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(65787177271792730990)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'My Watchlist'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-film'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_bar
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(65787166714871730972)
,p_name=>'Navigation Bar'
,p_list_status=>'PUBLIC'
,p_version_scn=>15640172959228
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(65787178773671730993)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(65787179244203730993)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(65787178773671730993)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(65787179663685730993)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Sign Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(65787178773671730993)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/listentry
begin
null;
end;
/
prompt --application/shared_components/files/icons_app_icon_32_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF4000000017352474200AECE1CE900000274494441545847ED95DD4FD36014C69FF65DBBEFE8D867990811F1C6087E5DE80512A3C61034F1C2989045E29F469C84C43B45';
wwv_flow_imp.g_varchar2_table(2) := '2F8418C41B8D213132B9300435C036D8074E47BB8DB5ABE94BB66CBAD077423426DD5DD7D3E7FCCE73DAE7E5B6627775FCC31F6701580E580EFC970E68BA8EB2A6A1AC6A34411C36020721201CD771A27494034662E5341DEEC121B82361D88321DAB092';
wwv_flow_imp.g_varchar2_table(3) := 'CD404EA7515CFA80908DA0130C6680DD5A0D72300CE9FA0D10A7ABEDA49A222335370B4F3E0B91E799DC60023026FFE60FA0E7F61D26D18D9927F0E5B34CB54C00DB3AD03D1E0371389944B55209C9E947F0F3E6CB600228F60F20323C429B6BF20E94CD';
wwv_flow_imp.g_varchar2_table(4) := '34BCFD032D30C5D515B8221288DB43FFDF5C9887F7CBAA29B02980F1B68B2357E13D798A8A198DD6DEBEC1E9D8448BF8F2D4431CBF74B901565CF984EAEB57B013B22F842940BE5241343601E2F19A4ED35CA0EE14919E8AA3CB2E1E02C0FD07202E3715';
wwv_flow_imp.g_varchar2_table(5) := 'CABF5F44ADAAB615E50501FE7317F656A5C848C627E1B7DB0F06A0A82ADC3747E1EAE9DD03584E40FAC5FE7A87547C12813343F4525EFB0A65F6055CB603AEC0F804CB836711387F910AA716E6F1637DFD376145D570A4B70FD2F0155A975B7C07C7C725';
wwv_flow_imp.g_varchar2_table(6) := 'D350327D070CB16D41C0B17BE3E00411BAA6E2F3F3198855153E9F0FBAAEA35028A02A8A3831760BE0096ABB15241F4FA34B6DBFAAE69D3001182E7C0F4B888E8E359E2DA59250B219703C0FA73F006777B4716FE3D9531CCD654CA7371E6002300A6914';
wwv_flow_imp.g_varchar2_table(7) := '87C290AEED13C52505E99773F064B6201C6614D7476B3D8C227004837405955C961E4672228100E19826AF6B323BD0BCB7FA715C5235DAECAF1DC71D251163F11F39C0A8CD546601580E580EFC0419A62610E36C62FA0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(65787167755611730976)
,p_file_name=>'icons/app-icon-32.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_144_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000090000000900806000000E746E2B8000000017352474200AECE1CE9000012C449444154785EED9D7B7454459EC7BF75BB3B9DA43B09218F4E840809049087F82280A3C29C71469DD5A024BD234944D41946';
wwv_flow_imp.g_varchar2_table(2) := '777675E6EC9E7D9C3D67D73DFBC7CE397376CF38EBCEAE8C3A0C2644ED041518751F33C22842C4110689988490F008A1F34E77BAD3AF7B6BA71AC3440573BBEEEDBED7E9AA7FF24FFDEAF7AB6F7D5255B7EB452092504083024483AD30150A40002420D0';
wwv_flow_imp.g_varchar2_table(3) := 'A4800048937CC258002418D0A4800048937CC258002418D0A4800048937CC258002418D0A4800048937CC258002418D0A4800048937CC258002418D0A4800048937CC2D894000D3E5C9D4315BB8352C90139E2042C0E8038A8AC64A64393118B14026800';
wwv_flow_imp.g_varchar2_table(4) := '9003B0644C10A20488140E143DBFDB6FB6FA1B0A1005C8F0A69AC58A84D5946035A5A48A00D702B0994D2893C413A5C03102B411D0F724056D05CDAD1D04A046C5975280FADDEE2262C75A49A1AB292155005D0520CFA8CAFF91F81D07C86102A54D51D0';
wwv_flow_imp.g_varchar2_table(5) := '168D4907CA3C9E9154D52D6500B1DEC65B575B4D08FE1AC0CDA9AA607AF9210728E80F5D4D2DBF4C55AF947480E8D6AD366F60780BA1F82B10B228BD1AD4B0DA76504A7EE472E6EF20DBB64593194552011ADAEC9E1393E96B04B831999510655F5E014A';
wwv_flow_imp.g_varchar2_table(6) := 'F13E8D926F967A3C83C9D2286900F5D7BB974AA0FF03604EB28217E5AA5080D06E45C686D2E6D67615B913CE9214800636B96FA112DD2B26C809B747B20CC625856C286AF6ECD7DB81EE007DD2F31C0690AD77B0A23C4D0A04158556E9DD13E90AD0F9AD';
wwv_flow_imp.g_varchar2_table(7) := 'F7645B027606CF524D5515C6C952A05D7684ABAEDAB627A897035D01F2D6D76E07F0A05EC1897292A2C02F5C4D2D5BF42A59378006EADC5B28A13FD72B30514EF21420943C54BCD3C3FED935275D003AEB76676564D03E00F99A231205A4428111D9112E';
wwv_flow_imp.g_varchar2_table(8) := 'D36328D305206F7DCDA300F9CF54D45CF8D04B01FA98ABA9F5BFB496A61920B64431505F7B02C062ADC108FBD42940404F1435B52ED3BAE4A119A08106F79D94D237525775E1492F0508217715377ADED4529E6680BCF5EE37017A87962084AD510A90FF';
wwv_flow_imp.g_varchar2_table(9) := '763579EED4E25D13403D5BB6646647270200242D41085BC314502211E22CF378267923D004507F43ED7A89E22D5EE7C2CE78051482AF9636B6ECE38D44134003F5EEBFA5A0FFC2EB5CD819AF0001F9BBE226CF0F7923D10490B7BEF655001B789D0B3B53';
wwv_flow_imp.g_varchar2_table(10) := '28F09AABA9E55EDE48B801FAE4F39DED3329E0752EEC4CA180D7D5D452C21B093740035BDC25344AFB791D0B3BF3289065910B7377BC32CC13113740C39B6A96C524729CC7A9B031970256852E2FE0DC70C60D507FFDC65512A4F7CC258588864701054A';
wwv_flow_imp.g_varchar2_table(11) := '5569D32EB60D27E1C40FD026F73A49A2DC9F7F09472A0C92A680A290F5A59CBB15B901124B18496BCF94176C016E2F6C6AF9158F636E80BC75B51B41D0CAE354D8984B012D6B62DC000D36D4D62B148DE6924244C3A500458D6B67CB2E1E5B6E80C40E44';
wwv_flow_imp.g_varchar2_table(12) := '1EB9CD692311341435B634F144C70D90B7BEA601202FF0381536E6524000A4B13D228A025F248AB02C234629A28A82984211A54ABC641B916095086CD2C5BF76C982DC0C1B32A43F8E4D0802200E8026A231F8A251F8A3518464F9732564E5E420D39903';
wwv_flow_imp.g_varchar2_table(13) := '4A29C2FE094C063E7F354FA6C5825C9B2D0E93C36AE588C21C2602A004DA61241C86773204D6EB4CA5C279F350B0B012CED2AB60753A61C9765CB6443918406CC28F89FE7E0C777561E8CCE94BF9586FE4CACAC26C7B4602D19823AB0048453B8C47A2B8';
wwv_flow_imp.g_varchar2_table(14) := '303979A9B729AE5880A225D720A7A20252865D45099FCFA28443F09FEAC6604707064E75C733B05EA9342B2BDE2B7D599200E80B5A4AA114A72702F1E18AA5E28A0A947DE556D88B8A756DDFF0E0004EEFDF77A957CACBC8C0D58E6C4884FB3B45D7F8BE';
wwv_flow_imp.g_varchar2_table(15) := 'A83001D015D489C80A7A2626E2BDCE2C57092ABEF63564965C95D486099E3D83DEB7F763ECC285786F549EE334FD645B00741924D8E498F53CAC075A78EB6D285A5505A4EC7D3D0AEFC103E83E7810164230DFE984D366DE49B600E833000D4C86E2F31D';
wwv_flow_imp.g_varchar2_table(16) := 'C966C3F2BBABE128AF486AAF73A5C2FDDD5DF868EF5E28720CA5D95928CA34E725B302A0692DC8BEB0183CEC337C598D1B19B38DDD30191E1A447BAB07A140002559597065990F2201D027008D4522F1612B3B37172BEA1F8025CB1C5714C981097CB8B3';
wwv_flow_imp.g_varchar2_table(17) := '1141BF3F3E9CE599EC0B4D00046052967172DC0F62B5E2FA073623237FB621C3D6959CB29EE8685323A82CA3322F273EC1364B4A7B80D8B243A7CF175F8258795F8D61739E9980F09FECC287BB5F8D7F9555E6E6C69745CC90D21E20366CB1E16BE12DB7';
wwv_flow_imp.g_varchar2_table(18) := 'A2B86A8D19DAE48A3178DF7D07DD870E229FFD4EE4BCFC2FDEA9AE405A03341993E3BD0FFB9D6769FD03A9D69EC31FC5F11776C0373880C579B9A618CAD21AA0933E3F02B1186EA87F00992EEEE34D1C20F09B4CF69DC391979AE30BB1EC8746A353DA02';
wwv_flow_imp.g_varchar2_table(19) := 'C47E2C3CE59F40E9A2C528BFBBDAE87648C87FF76BAFC0DB7D120B73730C5FC94F5B803AC77D08518A558F6C85352727A106343A73747C14879F7F0ED9160B2A738D8D3D2D0162EB5B1DE33ECC59B60CF3EEF8A6D13C70F93FFDC65EF49D38812579B9B0';
wwv_flow_imp.g_varchar2_table(20) := '1BF8599F9600B1E58AFEC949ACD8702F721654AA6EC081B643E86FFF10B17018C58B1663EE6DEB406C7C7B789468047DFBF761A0AB1356BB1D572DBF164555AB55C7E2EFEAC0877B76C797398A0D5CE6484B80BA7C7EB02FB0357FF1B86A007C1D2770FC';
wwv_flow_imp.g_varchar2_table(21) := '97EC05863FA48AAAD528B9E536D58D3E3D63FF6FF6A1E7FD4F1FE85C714F35722AD55D174923611C7AFA27C8B65AE37321A352DA0124538AE3A36370552CC0827B37AAD6FD720D5E386F3E16D5B85597313D63C7CB2F62F8DC594D4076ED6AC1506F0F96';
wwv_flow_imp.g_varchar2_table(22) := 'E6CF82D5A0BD43690710DB967A3610C43577DC89FC652B5437FE40DBBB3879E0C0A7F297542E42C53D7C571C4D7D494D2FB0F296DB121AC6468E1DC5C7FFF7BFB8DAE140BE41DB61D30EA073812086C361DCD8B019F662976A8062FE711C7D610722A150';
wwv_flow_imp.g_varchar2_table(23) := 'DC868060A5DB8DECB279AACB989E3170BA07C75A5B2E3D586ACFCAC2CA86CDB0E6E4AA2E2F74E13C3ED8D984C24C3BE6641BB3F89B7600F5FA27301E8D62F5D647617126367788EF63EEE9811C8920B7A202D604ED3F4B46CCEF83AFE714ACF64C38CBCB';
wwv_flow_imp.g_varchar2_table(24) := '13DE5F1DF38DE3BD67B761564606E619B4B4917600B109743016C3CD3FF84B807CC9CF662932DEFDF1BFC169B562814113E9B403E8C4D83888DD8E1B1FFB73D5438599331E7EFA294831194B66A91FFAF4AC4FDA01746C640C39458558FE806EAF16E9D9';
wwv_flow_imp.g_varchar2_table(25) := '1E0997756CFB73981C1DC5F2FC5909DBEA61909600390B0AB0E2C187F4D0CFF0328E6D7F1E93A32302A054B5C4C7633E28362B567DEF71D52ED9B92DE593B361AA8D3833B2CDFC899C3B7BEFE9A76091E5F892861129ED7AA0A92D1C6B9FF8018865E6E3';
wwv_flow_imp.g_varchar2_table(26) := '32C133BD38DAE24969DB5CE7FE16B2CBAE9ED1275B0E39F4EF4F8949F48C4AE998616A0762D577BEABEA379750FF797CD0DC84C28A8570DD78938E917CBE28EF6F0F63E854376EA8AB577588313A3E86C3CFFDCCD01D8A69D703F50583180A8571435D03';
wwv_flow_imp.g_varchar2_table(27) := '324B4A6704420E05D1F6D3FF40F1E22558FAF7FF30637E2D19DAFFF9490C767562CDE3DF87649DF97CFCE4F93E1C7971677C31952DAA1A91D20EA09170046703012CB9FDEB987DED75AA343FB6FDE7088E8FE1969F3E03292B390DA5048378E7CFB6C259';
wwv_flow_imp.g_varchar2_table(28) := 'C0BE10D5BD3D3C7CF40374FCFA57F11F11D98F8946A4B403885D02F5D1E8188ACA2BB0F0BE1A559A7B0FBE8BEE830770C363DF43EEDAAFA8B24934D3D8DBFB71F467CF24B4B9BFB3E5650C9F398D65F9B3E2C7A08D4869071013994DA48332DBCEF10488';
wwv_flow_imp.g_varchar2_table(29) := '8AA1829DCBFAED8EED70CC2E404EE9CCC31E4F43FACEF721383A8A9BB63CACEA442C9B40B73DFD13382C16C37E8566F54C4B8078369475EEF260A8B797870DD53645150B50A9728B89AFB303C7F7EEC655069F9B4F4B8078B6B4467DE378FFD96DB0582C';
wwv_flow_imp.g_varchar2_table(30) := '58B2640932EC7C174B7D96A670388C8F3FFE181404373DFC88AA2F435646EF1B7B715E6C6955FDCFA97B46B6A97E525150F5EDEFC09A93A7AAFCF1AE0EB4EFD98DACEC6C2CAAAC8CC3A425C564199D9D5D084D06B1BCFA5EE42E54B7BD36EAF7E1F0B3DB';
wwv_flow_imp.g_varchar2_table(31) := '902D59E2479D8D4C69D90331C1A78EF5CC59B61CF3EEB84B751B0C1C6EC3C9B77F1387A8BCBC1C999C3D51281CC6A99E1E84824154AE5B8FA21B57A98EA1F7CDD771FEA37654E43891639BF9735F75C11C19D316A0A9C9343B5878D3830F21A3A050B57C';
wwv_flow_imp.g_varchar2_table(32) := 'DEB683E83EF00E248B0573E796A1B020B1CB18068747D077EE2C14594EE8AB8B0518191AC4FB3BB61BFAEBF374A1D21AA0604C4697CF07D7C28558507D9F6A80E23D584F373EDAB307722C8A6C8703B30B0A913F6B166CD6CB0F6BD1988CD1B1510C0F0F';
wwv_flow_imp.g_varchar2_table(33) := '63321080D59681A5F754C339BF3C21BF5DAFB462B0E79438DA6C969BEA7B2702188F44B0ECAE3F41DE354B136A4C79C28FF3870EE2DC87C7E27742B3C4B6A66666D891C9EEF1A1402816452814463874F1756C4208CAAE5D89D2356B617124763479F444';
wwv_flow_imp.g_varchar2_table(34) := '3B4EBCF1BAA13B103F2B505AF7404C0C76AD0BDBA51863D7BBA85CC4FCAC886C4D6AACB333BE8E35D677EED23EE7A97CEC27BEFCB96528A8A840FEA2C5B0E6AA9BB44FF7133C731ABF6B79195649C22271BD8BB9DECA98BA60CA62CFC075750DB069BC60';
wwv_flow_imp.g_varchar2_table(35) := '8ADD2A169D980061CF1B646727DCD37C0ED091611CD9D9082512C5C2BC1C6469FCFA4BA89B9D2173DAF74053FA5CBAE22E6F16566CAABBE28DF37A8AAFA62C76C37DFC8A3B9F4F5C71372598595FEB61176CB28B36D9259B4BEFAB81BDB0484D1B272D4F';
wwv_flow_imp.g_varchar2_table(36) := '647808EDAD2D989CF08B4B36A7AB6C5680588C53CB1CC462C1F2BBEF49E8ECBC9E24F9BA3AD1FEFADEF8BD88ECF9836213DED0CAEA2B86B0CBB43A7BBEE974E0E245E3156BD6A2E466B6029FAAD56E8AFE0307D0D376F1A27176951DBB4CCAAC49007485';
wwv_flow_imp.g_varchar2_table(37) := '9661EB653DFE89F8CB3CB35C2ECCBF6D1DF72954B58D1F38731ABDFBF7617C70207E9926FBA5D9C8AB5BD4C42D00FA0295580F74613284A15028FE695E78F53CCC5BB73EA14DEF6A1A213CE845EF5B6FC52F5B6047A6D951E592AC4CF1D8CA95C433F31C';
wwv_flow_imp.g_varchar2_table(38) := 'E87231B3D708FB8293F1F53396D8734F858B1721774165C2C791A7CA67C7A47DA74E62A8A3F3D2734F6C5D6B4E7696E97B9DE91A891E484D17F1491E3637627BAA3FF5E05CD9D5285CBC188E9252950FCE5DC070670786CE9EB9E4990D57EC72842FD33B';
wwv_flow_imp.g_varchar2_table(39) := '6153C10B801200682A2B5B806530B177C4C49397E2D5660E84FE6072E9D15D45BEF8D8AE787457B59EDCDFB55FB639906A45D230A318C2D2B0D1F5ACB23100D5D56E0441AB9E15116519A400458D6B67CB2E1EEFDC43D84083FB4E4AE91B3C4E858DB914';
wwv_flow_imp.g_varchar2_table(40) := '2084DC55DCE87993272A6E80FA37B9D74912DDC7E354D8984B014521EB4B9B3DFB79A2E207A87EE32A09D27B3C4E858DB91450A0549536EDFAF485D72A43E406687853CDB298448EABF423B2995801AB42971734B7B6F384C80D90B76E630588D4CDE354';
wwv_flow_imp.g_varchar2_table(41) := 'D8984C01AA2C70EDDC758A272A6E8006B6B84B6894F6F3381536E65280D84869F176CF059EA8B8017A7FEB565B5960C407C07CEF58F32891BE36A1B38ED9B9376DDB76719539C1C40D10F373A1A1761FA15897A04F91DD440A5082FD258D2DEB7943D204';
wwv_flow_imp.g_varchar2_table(42) := '90B7A1F64950FC23AF736167020508FEC9D5D8F2246F249A00EA6FA85D2F51BCC5EB5CD819AF8042F0D5D2C616EEDFF33401D4B3654B6676746254CC838C0781338250D0E6CC2FDFBEFDE2EB331C491340F179507DCD8B04E45B1CBE8589C10A50D0974A';
wwv_flow_imp.g_varchar2_table(43) := '9A5AEFD712860E006D5C43201DD41284B03546010A656D49D3AE435ABC6B068839F7D6D7B220D43F16AA256261AB97026DAEA696355A0BD305A00B75B5F7138266ADC108FBD42940293695EC6C7951AB475D00A2EBD75B07E614F60098AB3520619F1205';
wwv_flow_imp.g_varchar2_table(44) := 'FA8AFB86E6937DFB625ABDE902507C325D57BB8110BCAA3520619F7C05A842AB4B9A5BF7E8E149378058300375353FA6843CA14760A28CE42840287DAA7867EBF7F52A5D5780E8D6ADB6C1C0E8010AAAFEB649BD6A22CA99510102EC2B72CCFE06E15CF7';
wwv_flow_imp.g_varchar2_table(45) := 'BA9C035D01620EFAEFBF7FBE64891D0160CCF37B33CA98B619BC506C2B5DCDCD5E3D15D01DA0F850767FCDF5D4825D0099AF67B0A22C6E054E83C81B5C8DAFFC8EBB842B18260520E6EBDCE6FB0A6CB2F54580DEAE77D0A2BC0414A0F875D42AFFE9DC1D';
wwv_flow_imp.g_varchar2_table(46) := 'AF0C2760A53A6BD200621150B7DB3290419FFEFD47DAA3AA231219F554E05F8B23E46F88C723EB59E8F4B2920AD094236F7DCDA300790A80310F62254B3DF3963B49411E2A69F2BC94EC10530210ABC4D066F71C59C62314CAB7094859B22B96A6E5B3FB';
wwv_flow_imp.g_varchar2_table(47) := '899FB558C9B3853B3C7DA9D02065004D55E6E2B086EADF7FB07D17A0DF48E1BD73A9D0D3081F3221E475023C5318C69BC91CAE2E57B99403343D8811B73B2F6693572A92E57A42E9F5006E00700D80999F6236A2A98CF7C9961E4E80E20825386251C811';
wwv_flow_imp.g_varchar2_table(48) := '64853F287A7EB7DFA8D00C05E84A951E7CB83A872A7607A5920372C409581C00715059498B0DFCC42285001A00E4002C1913842801228503468272A5B632254046FD3709BF892B20004A5C3361314D010190C041930202204DF209630190604093020220';
wwv_flow_imp.g_varchar2_table(49) := '4DF2096301906040930202204DF2096301906040930202204DF2096301906040930202204DF2096301906040930202204DF209E3FF077FEC5AFAD44D5C890000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(65787168075584730977)
,p_file_name=>'icons/app-icon-144-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_192_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000C0000000C0080600000052DC6C07000000017352474200AECE1CE9000016FA49444154785EED5D69745C4576FE7A53ABD58B7679B76C6DC6BBF082373C6C036420011B18361B26730830CC013239C9DF39';
wwv_flow_imp.g_varchar2_table(2) := '67FE27273921C0846548060C43C0C0B027B31818EFFB2ADB5A6D59B62C5B4BABBBD5DDEA3DE7BE6EB55B46B25BFDDE93F4EADD3A470724BFBAEFD677EFF7AAEAD6AD2AC3A54D0F25C08511D029020626804E2DCFCD96106002B023E81A012680AECDCF8D';
wwv_flow_imp.g_varchar2_table(3) := '6702B00FE81A012680AECDCF8D6702B00FE81A012680AECDCF8D6702B00FE81A012680AECDCF8D6702B00FE81A012680AECDCF8D6702B00FE81A012680AECDCF8D6702B00FE81A012680AECDCF8D6702B00FE81A012680AECDCF8D6702B00FE81A012680';
wwv_flow_imp.g_varchar2_table(4) := 'AECDCF8D6702B00FE81A012680AECDCF8D6702B00FE81A012680AECDCF8D6702B00FE81A012680AECDCF8D6702B00FE81A012680AECDCF8D6702B00FE81A012680AECDCF8D6702B00FE81A012680AECDCF8D6702B00FE81A012680AECDCF8D6702B00FE8';
wwv_flow_imp.g_varchar2_table(5) := '1A012680AECDCF8D6702B00FE81A012680AECDCF8D6702B00FE81A012680AECDCF8D6702B00FE81A012680AECDCF8D6702B00FE81A012680AECDCF8D6702B00FE81A012680AECDCF8D6702B00FE81A012680AECDCF8D6702B00FE81A012680AECDCF8D67';
wwv_flow_imp.g_varchar2_table(6) := '02B00FE81A0126804AE68F25120844A308C7E388A47F1288C6E3882700FAF768222EBDDD6C30C26430C06800CC46232C46032CD27F8DC8331A61379B61341854D254DF6299000ADA3F148BC11B89C01B8EC01F8D22A1906C030CB05BCC70493F16584D26';
wwv_flow_imp.g_varchar2_table(7) := '8524B31826804C1FA0AFBB3B14863B1CC6602C26535A76D5F34D2614E7E5A1D89A27F5125C72478009902376E4F4BDA190F4A51FAD384A4BE12C2D83C56E87D56E87B9A040FA7FB3CD065341F2772AD14000B1801FD1401091801F91400061BF1F11BF1F';
wwv_flow_imp.g_varchar2_table(8) := 'BEEE1E0CB87B477F87D98CD27C2B8AF2F2726C89BEAB3101C6687F72FC4BC14184E2237FED8BA74E47795D2D0AAB6B60292E19A3F4911F0FBBFBE06D6941777323DC5D5D233E44BDC2145B3E13618C883301B2048C1CBF2B189426B5C38AC180B259B351';
wwv_flow_imp.g_varchar2_table(9) := '565787C2AA6A981CCE2C25E6F65874C0074F6B0B7A9B9AD073BE03480C9F69D0FC602A13216B709900D7818A223917024129A293592C562BE6AE5E8392C54B60CCB3660DB8920FC64383E83B7E0C67F6EC41241C1A269A2247330A0A6033F384F95A9833';
wwv_flow_imp.g_varchar2_table(10) := '0146418726B79D8120FAC3E1614F984C6654AE58898A952B27CCF1AF5699887079DF3EB41F3A8858EC0A5129704A73836905369E2C8F626726C008C05018B3DDEF473C637861341A3173C9524C5BBD469AC04EC6121BF0A173F72E9C3F711C894CDD0D06';
wwv_flow_imp.g_varchar2_table(11) := '543AEC520895CB5523D84B9B1E522A5CAD796C09888B8120BA0707D36DA1AFE8B4F90B3073ED3A980B8B34D1C688BB17E777EE405753D3B0B5888AFC7CA937E0720501EE015258D0D7FEEC801FBE48248D0E8DF317DE773F0A66556AD267FC6DAD68F8F2';
wwv_flow_imp.g_varchar2_table(12) := '734433DA44BDC01C871D065E59966CCA0440322DA1D5EB433063218BE2F7F3373E00B3AB5093CE3FA474C4DD87539F7C8481FEFE743B0ACC6654391D52FA85DE8BEE094061CD36EFC0B0B8FE949A5A54DD732F0C6631C6CC8970086D5F7D894B6DAD697F';
wwv_flow_imp.g_varchar2_table(13) := 'B71A4DA87639743F39D63501C2B1389ABDBE74521A7947DD0F6E41D98A95D4390AF6714CA07BCF6E34EFDA7965886734A2C6E59412EEF45A744B80683C8166AF37BDB0A5F5F17EB60EEC6F3F83939F7F86482ABC4B3D416DA153B7C3215D128026BC2D19';
wwv_flow_imp.g_varchar2_table(14) := '637E72FEFAC7372B96BA90AD334ED473E1DE1E1CF9DDBB88A6484073826AA7439729D7BA2300853A69C23B94C446D190FA871F856DC6CC89F2C709796FE0DC591CDDFA613A4CEAB058A489B16803BFEB81AB3B029CF707A42CCEA132EFF63B505ABFEC7A';
wwv_flow_imp.g_varchar2_table(15) := '3809F9EFBD870EA0F1DB6FD26D2BCFCFC7749DAD13E88A00B459E58C6F206DF0990B1761F6DD3F12D2B9B36DD4D9AFBF44E7A993E9C7AB9D4E382CE66CAB6BFE39DD1080B6229EF678A5983F95E2E9D331FF91C700837E232084432216C3A9F7DF43FFA5';
wwv_flow_imp.g_varchar2_table(16) := '649A356DCF9C57E48259276B04BA21C059DF003CA915519BC389254FFE04A67C4E0B20A7A7CD38C7B6BC83E0804F220125D051EE901E8A2E08301089A2D59734AEC96C41FDA64DB09696EBC1BE59B731D4D38D23EF6E496793D2FA00A5548B5E8427008D';
wwv_flow_imp.g_varchar2_table(17) := '781A3D1E84521B596AD7FF00E52B57896ED79CDA7779EF2EB4EC4C2E94D10EB3BA4297F05121E10940DB17692717158AF7AF78F63961521C72F2F26B548A874338F8FA7FA617C92822449121918BD004A009EF49B707F154B4BBEE07B7A6D21C4436A9BC';
wwv_flow_imp.g_varchar2_table(18) := 'B675EFDB83E61DDB93C34583010B8A0A855E20139A005DC1415C4A7DFDAD361B963DF333184CE28F6BE550201109E3C01BAF2192DA1331CD6643854DDC5E40580250BAC3C97E4F3AEC39EFB6DB517AE37239BEA19BBA3D07F6A1E92FDFA5C3A2F38B5CC2';
wwv_flow_imp.g_varchar2_table(19) := 'F602C212807675D19E5E2A565B01963DF32C7FFDB3A430F50207DF781DE1C1247EB4B9BE2C7F6236FE67A972CE8F094B8053FD9E74A6E70D77DC8992A5F53983A4C78ABD87F6A3F1DB6FD311A179852E216110920081684C4A75A642C96EAB9E7F11460B';
wwv_flow_imp.g_varchar2_table(20) := '9F9C36160FA688D0DE975F4A27CB5148D426E099A44212A0331040F76032E1AD7CCE5CD43EF0D0586C7F9D6713B8B8FD2FE86E6985DFDB0F7B61112A6A6B3175DD7A05DF713D51E3A343D387FF839E8E73491C054D941392000D6E4F7A9797D2C39F862D';
wwv_flow_imp.g_varchar2_table(21) := '6FC373F9D2F73CB478DA34CC7F6CF3F53C57917F1F2F1DFA0E1FC2E96FFE9C9E0C2F2CD6F6FEE891C0178E0094E74F9B5D86CA4D4F3F0BB35399F1EBE5BDBBD1B273C7A84E5CB7FE1694ADBC4911271F4DC878EA10F57AB0EFCDD7D3AAD4BA9CA0CD3322';
wwv_flow_imp.g_varchar2_table(22) := '15E108703938888BA9D87F614505166EFE8962F63AB1E5B7F05EBE3CAABCE2A95331FFF127147BDF4882C65B87E36FFF177C3D3D922A74A6109D2D2452118E006DBE81F4D93ED56BD761CAEAB58AD96BD7BFFEF3356559F2AC58F9FC8B8ABD6F2441E3AD';
wwv_flow_imp.g_varchar2_table(23) := '43D7CEED68DBBB475285CE149AEB74A8DABEF1162E140128D3FF445F7F3AF561F9E62761AD98A218A6A38DBD875E301E3D40C396DFC2338EBDD06057270EBDF7AED4444A8D5854AC8DD3F1B235BA5004A01B5A1A3DC9F067BEDD8165CF3E972D0E593D97';
wwv_flow_imp.g_varchar2_table(24) := '9927335285E4912A133C0750418783BF7E05A160406A32AD0750A6A828452802D049CEED037EC936536A6A507DDF46C5ED34DA1758DA61F6E826C5DF3792C0F1D6A1F9E3ADE83E7B4652658EC381C23C310E0CA3F6084580CCD4E7D94BEB31F38E3B5570';
wwv_flow_imp.g_varchar2_table(25) := 'C8042EEEDC81EEA666E9EA224749696A1DE0E6713C4C6B7C7538F787AF71FEC409094BD192E38422C0B901BF74591D959A75EB50B14AB909B00A4CD28CC8AE9D3BD0B677B7A46F89D58A59F6E4DD662214A10840C71C0EDDE432FFCEBB51BC788908369A';
wwv_flow_imp.g_varchar2_table(26) := 'F036F41D398CD3DBFE24E941DB2469BBA4284528026426C02DD9F0001C55D5A2D86942DBE16B6EC2F1CF3F9574B01A8DB8A1489C1561A108909902B16CD366E44F9936A18E23CACB839DE771F8FDDF49CDA17B89699798284528029C70F7A737C0289902';
wwv_flow_imp.g_varchar2_table(27) := '218AB1736D47A4DF8DFD6FBD2955176D2D4028021CED73A76DBCF61FFE51F7875EE5EAF057D7A3FB0576BFFC92F467230C585C22CE6298500438D6D78F442A837DCD0B7F0F03EF01508403B4436CF77FFC3BF7008AA0A9A29006773FA2A9A30F573EF534';
wwv_flow_imp.g_varchar2_table(28) := '2C1AB9D44E454814111DF1B8B1FF37C92110DD2770439132D9B58A28275388503D406614E8C6C71E876DDA0C99F070754220D8790187DF7F4F02C3417709701874723A06E501513E1095C5F7DD0F674D9D6C45DDC78FA165FB77E96342640B1C270196FC';
wwv_flow_imp.g_varchar2_table(29) := '7CD4DC720B8A17CA5F0BF13537E2F8E79F499A8B766EA8503D005D7C31104DDE947EC31D3F44C9D21B65BBDBB1B7DE1876C3A26C81E328C0515C82253F7D4AF61B7B8F1C42E3B6E4CE30D1B6460A45800E7F007DA9CB2FAA56ADC1D475949F23AF347EF8';
wwv_flow_imp.g_varchar2_table(30) := '3E7A3B3AE40999A0DA65B366A3EEC78FC87E7BE69E00D18E4B148A0099BBC1662D5E8C5977FE956CE3776CFB133A8E1C96E42C7FE11770AABCE551AEC2BEFD7B713015B1997DE332CCBCED0EB922D1FE7F5FE14243832467B6DD8E62AB38276C084580CC';
wwv_flow_imp.g_varchar2_table(31) := '74E88AB955A8D9F8A06CE3F71E3D8CC63F27F360EAEEB917D3C729E53957C52FBCF70E9AFFF7EBE430F08777A164C9D25C45A5EB357DF4017ADADBA5DF45BB4146280204A33134A5CE03B2DAEC58FE1C6D889177ED9BBFA31D473FFC2039FEADADC3C25F';
wwv_flow_imp.g_varchar2_table(32) := 'FE4AB643A929E0C4AF7E899ED485D8F58F3C8A8219B3E4BD2E11C7FE575F462435B4E40D31F2E054B5762291C0898CD3A0973DBE19F953E5E503D122D0DE575F413C16950ED9BAF9A557612A9C9CB930318F073B5EFC39080793C98C9B9E7F41F6719099';
wwv_flow_imp.g_varchar2_table(33) := '21504A8358585C24F393A2AA0B8C59B8503D00B5BED5378081D4554855ABD760EA5AF913E1335F7F898BA98BE4163DB609653FBA77CC408F4785EE2F3E43C307EF4BAF9AB168312AEF923F07BAB8733BCEA436C58B1602259C842340E644D8555E8E454F';
wwv_flow_imp.g_varchar2_table(34) := 'FCAD6CDF1B683F83631F6D95E4382BA660F9BFFC9B6C998A0B480007FFE917F075278F6D59FAE387619F5529FB3547FFFB2DF8FB7A2539746F189140A4221C0168430C6D8C192A8A648526E238F0EB57104E9D993FD91DC05A5080E53FFBB9ECF94FC4E7';
wwv_flow_imp.g_varchar2_table(35) := 'C5FE375E939A4B33291AFED03048A4221C01C838742B4C241197ECA4D482D8A53DBBD0BA2B797FD6642F35EB6E46C5AA35B2D5EC3D72108DDBB6257BBED44DF2B2854E3201421280EE05A0FB01A894CF9D8BDA8DF20FC74DC4A238FCD66F30E84B1EBB32';
wwv_flow_imp.g_varchar2_table(36) := '598BCDE542FD4F9F923DF9A5F6356EFD00BDE792E14F51EF08109200571F8FBE9A52A3CDF28FF2F0B5B6E0F8A79FA4860406D4D5D5C13EC1F7E9FA07FC686A6A4C1F63BE78E38370CEAD92CDCF3845BFE878F454762DED02A3DD60A215210940463ADDEF';
wwv_flow_imp.g_varchar2_table(37) := '45289E4C8C9B77EB6D285DB64211DB357EBC15BDA93372E828C479F3EA9067914FAE5C940B472238DDD884683879147C595515EA36C85FFC23593D07F7A3E9BBE405190526136AF9828C5C4C34717532AF48CAB35AB1ECE96761CC937FCD4F946E557F77';
wwv_flow_imp.g_varchar2_table(38) := '4B7A286473385057530B93717C2787B178028D2DCD181C189040B6399C58F2C49330D9E41F59425F7FE9BAD4D4E29768F93F995E296C0F70F52579D56BD662CA9A758A3032E4EEC3D12DEF201A499E41E470B9505B5D2D2D948D47A16149736B2B0652AB';
wwv_flow_imp.g_varchar2_table(39) := 'DE66AB15376EDA0C4B518922AFEFDAB5036D7B92E700897E55AAB00420E3D105D9745A9C644893192B9E7E06A602BB224EE2EF3887635B3F488F91ED0E07E6CC9903ABCA71F250388CB367CFC29FFAF21B8D462C7DF851D8A62BB3F927160C60FFEBAF49';
wwv_flow_imp.g_varchar2_table(40) := '2BDF54A6DA6C98C2D7A42AE233E32EE4EA8BB22B972DC78C5B6F574C0F4F53231ABE486E14A1623099307BD62C949628F325BE5AD19EBE3E7474742091DAF443FFBEE8BE0D70D5D42AD6A68E6D7F44C79123923CDA00BFA0B850B8D8BF2E8640438DCCEC';
wwv_flow_imp.g_varchar2_table(41) := '056888B2F2EF9E86D9A95C2E4FA8E7324E7EF23182BE2B8B6F8545C5983D633A2C56F9730E6A078DC5CF5DE884A7FFCAA917365721166CD8006B598562CE4F0B5F07DE7C3DDDAB89FEF5973E5A97363D44C7EA0B5B288A77CAE341249E5C189BB170212A';
wwv_flow_imp.g_varchar2_table(42) := 'EFBE47D1F6C6438368F9F20BF4A4A243435FCFA29212A937703A9D634F4A4D005E9F177DBD7D70BBDDE9D32E48365DFC57FDD77FA3C8A43E1388B6AFBE40D7E953D29FF2E804B8C2428CD3B446517B8C4598F004203032F709D0EF4B1F7C08F6CAB963C1';
wwv_flow_imp.g_varchar2_table(43) := '298B6713F0B634E3ECF6ED1870F70D7BDE6C36A3A4B008B6820258F2ADB058F2407F339B9271F5682C8668348648248CC860088140006E4F3FA2A9ED9D43C21C256598B37E3D5CD574E4A3B2136E5F5B0B8EFF3EB9C64145B463D04733A02E08408DCFDC';
wwv_flow_imp.g_varchar2_table(44) := '2F6CC9CB43FDE627148B9A0C03371187A7B11167766C47C0EBC98238D77FC45E548439EBD6A370DE3CC51D9FDE1EE9EFC3A1B7DF462C1A91941135ED6124A4754380703C8E268F377D74229DEBBF78F3138AAC108FE6C2F455ED6F6BC3E596668402C91B';
wwv_flow_imp.g_varchar2_table(45) := '56B22DD602BB74EF40D1DCB97056D5645B6DCCCF51CCFFF896B7E17727E71714F6A44D2F22AEFAEA9A00D4784F3882B3A9F021FD3EA5A616D5F76D18B3D3E45221D47D09BEF673087AFA11F27931E8F321E8F1D055F6A0096DBED301ABAB50FA7F67E51C';
wwv_flow_imp.g_varchar2_table(46) := '58CBCB7379CD98EB34FFFE2374B7B5A5EB55391D520FA097A29B1E60C8A017FC01F4A45638E96FB537AF47F94DABF562EF61EDBCB47B175A775FC9702DCFB7627A81FC95642D81A93B0250C88B8642430768D15472892A93E2C9ED06999B7C48535B2ADF';
wwv_flow_imp.g_varchar2_table(47) := '47D9A9F5E4C680B4D31D01A8D11412A5DBE4695E4085E2F5F50AA6124C76B387DD7D38F2EE3B88A6AE93A29027DDFAA297717FA67D74490002809C9F4830B43E40245878FF4614CC94798AC224F7FEC0F90E347CFA493AD18D9CBE56A7CEAFDB1E60C847';
wwv_flow_imp.g_varchar2_table(48) := '43B1B8141E1DDA3D4613D279B7DD86D2FAE593DC8D7353AFE7C821347DB30D48E5F893F3D3393FD6D47A446E52B55D4BB73DC090D9A82720120C0D87E8EF33162E42E59D770146412E848EC7D0FEC73FE04243F2AA532A74CC7995CB21ADF8EAB9E89E00';
wwv_flow_imp.g_varchar2_table(49) := '64FC683C81360A4B662499D1C5D775F73F0093CDA669FF88058368FAF463B83B3BD3EDA0092F1D712EDA06F75C0CC50448A146FB07CED0994219E90736A7130B363E086BD9F8C4E47331E0B5EA847ABA71F2938F8625EAD1F9FE739D0E18454FF2C9124C';
wwv_flow_imp.g_varchar2_table(50) := '264006501422ED4A6DA81FCA10341A4D98555F8FA937AD526C2F4196B6C9F9B158C08FAE7D7BA5B4E6786A5B288537E968F3A9053685B388725673525464028C608681481474EB7C7A724C2902660B2A972F47C58A95305AF32785F1AE56223E18C4A503';
wwv_flow_imp.g_varchar2_table(51) := 'FB71EEE041C4521B5AE8199AECD2A9CE0E8B7952EA3D914A310146419F36D35C0C04A5FB0632F3C52991AE72E52A942D5B06E324B9842F1E0EA1E7D041B41FD88F482AB64FCDA2AF7E89D58A6905361EEF8F626726C0753E3F74D21C5DBC31B4729C8EA2';
wwv_flow_imp.g_varchar2_table(52) := 'D86C98B3660D8A172C523C2F3FDB2F22ED43E83BD980B3BB777DEFD4BA7C9309B3EC052830F357FF5A783201B2F036EA017A0607A5FDC5D4336416DA65563C7D06CA6A6A5058550D4BB13ADB2187DE49ABB8DEB656F4B4B6C07DFEFCB0DE899EA1C8CE14';
wwv_flow_imp.g_varchar2_table(53) := '9B0D65F9561EEB67615B264016200D3D42CEDF3318426F28945E41BEBABABDB00815757528AAAA866DFA74F9977527E2087676A2BFAD15979B1AE1A70CD2110A8DF34BAD56C9F139BC99BD519900D96335EC499A1BB843E16161D39144D98B8B6173BA90';
wwv_flow_imp.g_varchar2_table(54) := 'EF72C14A3F4E27F29C4E989D4E581C4EE90B1E1DF021EAF321ECF321443F5E2F06BD5E04BD1EF8FBFBAFA921A52E17E7E509756D518E26C9A91A132027D8AE54A25C2222823B1CFEDE3C41A6E811AB9B0D46B8F2CC7059F2E0B498399E2F136426804C00';
wwv_flow_imp.g_varchar2_table(55) := '33AB533A853F12853F9AFC09C562DF1BA3E7F23A9AD0BA2C16B8F22CB0F3A436170847ADC3045014CEE1C2687599A247C99FB8F4DF683C0EFA7B2C0144137169BC4EE3F7A11FCACDB118AFFC8D7EE7555BF58CC404500F5B96AC010498001A3012ABA81E';
wwv_flow_imp.g_varchar2_table(56) := '024C00F5B065C91A408009A00123B18AEA21C004500F5B96AC010498001A3012ABA81E024C00F5B065C91A408009A00123B18AEA21C004500F5B96AC010498001A3012ABA81E024C00F5B065C91A408009A00123B18AEA21C004500F5B96AC010498001A';
wwv_flow_imp.g_varchar2_table(57) := '3012ABA81E024C00F5B065C91A408009A00123B18AEA21C004500F5B96AC010498001A3012ABA81E024C00F5B065C91A408009A00123B18AEA21C004500F5B96AC010498001A3012ABA81E024C00F5B065C91A408009A00123B18AEA21C004500F5B96AC';
wwv_flow_imp.g_varchar2_table(58) := '010498001A3012ABA81E024C00F5B065C91A408009A00123B18AEA21C004500F5B96AC010498001A3012ABA81E024C00F5B065C91A408009A00123B18AEA21C004500F5B96AC010498001A3012ABA81E024C00F5B065C91A408009A00123B18AEA21C004';
wwv_flow_imp.g_varchar2_table(59) := '500F5B96AC010498001A3012ABA81E024C00F5B065C91A408009A00123B18AEA21C004500F5B96AC010498001A3012ABA81E024C00F5B065C91A408009A00123B18AEA21C004500F5B96AC010498001A3012ABA81E024C00F5B065C91A408009A00123B1';
wwv_flow_imp.g_varchar2_table(60) := '8AEA21C004500F5B96AC010498001A3012ABA81E024C00F5B065C91A40E0FF012FC92E881A0C900A0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(65787168310690730977)
,p_file_name=>'icons/app-icon-192.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_256_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000001000000010008060000005C72A866000000017352474200AECE1CE90000200049444154785EED9D09741CD599EFFF55D59BF65D2DCBBBE5DDC636AB714C1248C810120C5E24BC48260E1908643293E59D33';
wwv_flow_imp.g_varchar2_table(2) := '9364DE7BE37933E72599F3E6653B7924102060C90B923160089030C4AC062FE07DB76559B6AC9664ED6B7757DD776E4B6A4BC6F22255DDDABE7B8E0E3971F7B7FCEEAD7F57DDBAF7BB12A8110122E05A02926B33A7C48900110009000D0222E062022400';
wwv_flow_imp.g_varchar2_table(3) := '2EEE7C4A9D089000D01820022E264002E0E2CEA7D4890009008D0122E0620224002EEE7C4A9D089000D01820022E264002E0E2CEA7D4890009008D0122E0620224002EEE7C4A9D089000D01820022E264002E0E2CEA7D4890009008D0122E0620224002E';
wwv_flow_imp.g_varchar2_table(4) := 'EE7C4A9D089000D01820022E264002E0E2CEA7D4890009008D0122E0620224002EEE7C4A9D089000D01820022E264002E0E2CEA7D4890009008D0122E0620224002EEE7C4A9D089000D01820022E2640027049E7B3BFBFD7DFDCE64F88C01B5024C5AB44';
wwv_flow_imp.g_varchar2_table(5) := '554F58D53CAA247B654DF3C80AF34053889B152F1A59659A2A4535598E2A4C8BF81439AA7A94A8CAD4881791EEF4949E2EE937AFF7583174B36272E5400E2D5F5E00459D0B89CD05A4B900C603C805906F5647905FA1046A00D401A802D85E30692FA0ED';
wwv_flow_imp.g_varchar2_table(6) := '09AE7FF194D0282CE0CC150250B7AA681E93D92230E96E80DD0C20C902EC2904EB11E860127641C35B92AC6E0D966ED96BBD10F58DC8910270B0A8C897E3D5EE6632EE630CF74990C6EA8B8DACB98440A5C4D82B9A246DBD1096DE9B555E1E765ADE8E12';
wwv_flow_imp.g_varchar2_table(7) := '80BA92A2C91A630F4BC04300463BADB3281F53099C93189E832C3D9B5B5A7EC2D44874746E7B01A82B2A4A864F7B9049D237C170878E6CC81411188AC07B12939E410415B9E5E5ED76C6646B010815172D01D8BF019865E74EA0D8ED498001BB25C6FE39';
wwv_flow_imp.g_varchar2_table(8) := 'B87EF39BF6CC00F63C1DF87C49E19D32937E0AB0DBED0A9EE2761201E9234D623F1E555AB1CD6E59D9EA0E2076BBEF674F31861576034DF1BA8240A914961EB7D363816D04205452F83930AC0330C915438992B42701899D94357979CEFAF2DD7648C016';
wwv_flow_imp.g_varchar2_table(9) := '02102A297C080C4F01F0D9012AC5E87A0261487824585AF1BCD549585A001820D5AF2AFC7726E127560749F111814B0948C0BFE79655FC0F2B93B1AC00F0C53CD93EB601C0522B03A4D888C01509303CDF10911EB1EA22224B0A00BBF34E4FFDE8EC2D0C';
wwv_flow_imp.g_varchar2_table(10) := 'B88F8617117000815772CF352C93B66D8B5A2D174B0A40A8B8703D8095568345F110811110280D9655AC1EC1F70DF9AAE504205452F83330FC9321D9925122602601093F0F9656FCC8CC102E334F619D706A8B0BBF2F01BFB04E44140911D09700037E90';
wwv_flow_imp.g_varchar2_table(11) := '5756F14B7DAD0EDF9A65EE0042C54B1702F2BB00E4E1A743DF24029627A04A9A7467EE86F2F7AD10A925042036E3EFD70E81490556804231100183099C68084BB3ACF066C0120240CFFD060F37326F3D0216990F305D006A572F992D69CA1E008AF57A89';
wwv_flow_imp.g_varchar2_table(12) := '22220286115019A41BF3CACAF71BE6E11A0C9B2E00A1E2C297003C700DB1D2478880D308BC1C2CAB586C6652A60A40DF069F0FCC0440BE89809904244DFABC991382E60A407121BFF83F676607906F2260260126E19DBCD28A3BCD8AC1340108952C5B0C';
wwv_flow_imp.g_varchar2_table(13) := '266D312B71F24B04AC424092A47B734BCBDF30231ED304A0B6A4709BC4F0453392269F44C04A04CCBC0B3045006A562D1DAF4872256C5A92CC4A838762710401C664A9206F5D39BF2684365304205452B8160CFF223453724604AC4C40C2BF064B2BD68A';
wwv_flow_imp.g_varchar2_table(14) := '0E51B800F0221F75C5855CE9F8715CD4880011E82550995B565120014C2410E102505BBCF47609F2769149922F226007020CDA82BCB2173F1219AB7001A065BF22BB977CD98A80098F01E205A0B8680FC04FE5A5460488C025043E0E9655083DEB42A800';
wwv_flow_imp.g_varchar2_table(15) := 'D4AF5891AF29D1B334FB4F039F085C9600F386A58CCCF2F216517C840A40DDAAA2354C62CF8A4A8EFC1001BB11600C2BF3D6576C1415B75001081517FE0EC0B74525477E88800D09FC3E5856F198A8B8450B009FE19C2F2A39F243046C4840E83C803001';
wwv_flow_imp.g_varchar2_table(16) := '606BD7CA75C70FF0A394136CD8291432111045A03377CAEC1469ED5A4D8443610250B7AA681E93D8A72292221F44C0CE04148DCDC8DEB0F988881C840940A878D96380F48488A4C80711B033019113810205802600ED3C282976810404D60B142800456F';
wwv_flow_imp.g_varchar2_table(17) := '00EC1E8118C91511B02B0161A5C2440A00AD00B4EB70A4B8051390F606CBCAE789702A50000A6B01044524453E8880CD09848265157922721022006BD7AE951F3F7EA00780474452E48308D89C402477CAEC808857814204A0FEE1FB53B41E5FABCD3B85';
wwv_flow_imp.g_varchar2_table(18) := 'C22702C208A8AD3D49F95BB7761AED50880034AD599C1E8E789A8C4E86EC1301A710F079A319197F7CA9D9E87C840840EDEA25B992A6848C4E86EC1301A71060B21ACC5BB7A5CEE87C8408407DC9D2511A936B8C4E86EC1301A71090252D3FA7F4C5F346';
wwv_flow_imp.g_varchar2_table(19) := 'E7234400CEAD7860AC47F19E313A19B24F049C4220AA46C68DDEF872B5D1F9081180F32B164F90158FF092C746C323FB44C028029A1A9D386AE34BA78DB2DF6F57880084BEB1BC0051F584D1C9907D22E018021E6572F0B94D278DCE47880034AC5E3E43';
wwv_flow_imp.g_varchar2_table(20) := 'D5D443462743F689805308C88A322DE7F94DC78CCE478800D4AC5E3E43210130BA2FC9BE8308A8B23A337FDD96C346A74402603461B24F04864180046018D0E82B44C0290448009CD29326E6D1A36AE8515574AB2A7A3415615583CA58EC4F630C51D67B';
wwv_flow_imp.g_varchar2_table(21) := '0A954792204B1294BE3F9F22C3AF2808C84AECBF7E4536310B77BA26017067BF0F3BEBA8C6D0118DA2B3FF4F556317B91E8D8B43A2A220D1E34192C713FBAF4716F2F4A847F8B6B4410260CB6E131B34BFC09BC31134F6F4C42E7E912DD9E341A6DF8F34';
wwv_flow_imp.g_varchar2_table(22) := '9F3776F7404D5F022400FAF27494357E4BDFD0DD83E67038763B7FA5969C918584B454045253E04B4E81271080E2F741F1F9637FE08F025D9D503B3A10EDEE42A4AB0BE18E0E747774A2A7A3031DAD573EA4863F3664F87CC80AF8115014477136331912';
wwv_flow_imp.g_varchar2_table(23) := '0033E95BD4777B248AFAEE6EB446224346981ECC43564101D2264E4220C8EBAF8CF4D799A1BBB6162D9527D170E2245AEA87DE9F92EAF5223721107B4CA0363202240023E3E7A86FB78623A8EBEEBEEC6DBE0C093993272373D224A44E9C042529D9D0DC';
wwv_flow_imp.g_varchar2_table(24) := 'A3ED6D683D75124D9595089DBCFCE24E2E00B98100527D5E436371B271120027F7EE35E6C66FF5CF76745EF6C21F357D067267CE42E2D8B19014737E71593482CEEA6AD41D3E84F3473EBB66850BC1D8A4C4D89B046AD7478004E0FA7839EAD37C72AFB6';
wwv_flow_imp.g_varchar2_table(25) := 'AB1B0DDDDD18F884CF6FE6F3A64DC7E8DB17C097956DA99CC317EA7176FB76848E1DBD24660939013FF212029068B2F09AFB8C04E09A5139EB83FC355E557B07C2DAE093A1464D9B86D10B16C2979965E984B91054BFF71E42A706EF63F1CB32C6272723';
wwv_flow_imp.g_varchar2_table(26) := 'C1437703D7D2812400D742C9619FA9EBEA8EFDF2B301BFA1A9D9D928B8FB6F90903FDA56D9769EA9C2C96D6FA3ADA1211EB70409F98909C80EF86D958B19C192009841DD249F7C455E555B3BDA07BCCB0F242661D217BE80F499B37498C9372931A6A1E9';
wwv_flow_imp.g_varchar2_table(27) := 'C07E9C7AFF7DF4745DAC6F99E2F5627C72526CE521B5CB13200170C9C8E0137DA7DADA111970CB9F3371220ABEBE08327F4FEF80A67577E1C4AB5BD170A62A9E8D4F9631292599260887E85F1200070CFCABA5C0DFEB9F6E6F8F2FE6E1BF87050B172277';
wwv_flow_imp.g_varchar2_table(28) := 'FE02FBFEEA0F9534D310FAF0039CFAF8A3F8030EBF0398909C8C64AF396F31AED63F66FE3B098099F405F86EEA09A3BAA3237E31F019F2D9F73F8094822902BC9BE7A2F5E8611CFCD36B607D2B18F9BC007F5598E1F7991794053D930058B053F40A89AF';
wwv_flow_imp.g_varchar2_table(29) := 'DDAFEEB8F84C2C290AE62E2B44E298717AB9B0B49D8EAA4A1C78E925A8EAC5FD0BE39292480406F41A0980A587F0F083E3CB784FB7B5C77FF9FD0909985DF820FC39B9C3376AC36F76D7D660FF8B9B11E9EE8E45CF1F7F26A624834F10520348001C380A';
wwv_flow_imp.g_varchar2_table(30) := 'F88EBD13AD6DF1CCBC8100E6AE5C055F86B5DFED1BD515E10B0DD8BB613D22617E6C24C0973517A426C7B61BBBBD9100386C04F0D97E7EF1F7EFDE53140FE6AD5C057FAEBB0F4CE677027B376D8A3F0EF089C129A929AE7F3B4002E02001E04B7B8FB6B4';
wwv_flow_imp.g_varchar2_table(31) := 'C657F7C9B28C39FC997FEC78076539FC54F8A2A1BD9BCBE31383FC15E1B4B45457D719200118FE78B2DC37F9D25EBE77BFFF59F786079620B960B2E5E23433A0D6A34770E0B5ADF11032FD3E8C4D4A323324537D9300988A5F3FE78D7DAFFBFA2D4E9ABF';
wwv_flow_imp.g_varchar2_table(32) := '00790BEFD0CF81832CD5BCBB0DA777ED8C67C4D708F08A436E6C24000EE875BEC4F748734BFCB93F352717B34B56031215D9BC6CF76A2A0EAC7B1EAD177AF70FF0F980E9E969B1A2A56E6B24000EE8F133ED1D68EABBF5E7937E37AD59036F5A86033233';
wwv_flow_imp.g_varchar2_table(33) := '2E8548E3057CB2EEF9F8A420AF3BC8170AB9AD9100D8BCC72F7DE537EDAEBB9075E32D36CF4A4CF80D3B77E0D87BEFC49D4D494D45A2CBB611930088196B8678E1453C8EB5B4C6EAF1F39692958D1B1EFA06DDFA5F2B6DA661DFB34FA3BDB939F68D0445';
wwv_flow_imp.g_varchar2_table(34) := 'C194B4D4115737BC56F756F81C0980157A6198315CBAD4F7A6552508E48D1AA635777EADEB6C353E7D61633C79B72D152601B0F1B83FD2D21A3B9187B7FC193331E1DEAFDB381BF342AF7CF5159C3F763416002F39CED706B8A59100D8B4A77905DFCAF6';
wwv_flow_imp.g_varchar2_table(35) := 'F658F47C87DFAD8F7C1B9EE4149B66636ED8D19626EC7CFA0FF17D13BC7E805BF60A9000983BF686EDFD786B5BEC782EFAF51F36C2415F1C7817C04F232A487587989200E8337E845AE1173E1780FE76CB371F76ED461FBDC0F7D485B0BBF4F9B8B9A9A9';
wwv_flow_imp.g_varchar2_table(36) := 'A9AE282C4A02A0D708126887EFF1E71380BCE54E9C84C94B9609F4EE5C57C72B5E407D5F39B12CBF1F635CB02E8004C066E39957B839D0DC123F91F7065EDD67F2549B6561CD705B8F1DC181577BF709F055813333D21DFF4A9004C09A6371C8A8F8661F';
wwv_flow_imp.g_varchar2_table(37) := 'BEE9273648FD7EDCFAD877743FB1478B8451FDF65B683A7B0E9D2DCD48CECC4670DA5404172C348556E8C3F7113A761CED8D0D484C4B47E6B8B1187BD7972179F45DBFCFD428763DF15B44FA56554E4C4E76FCB1632400A60CE9E13BAD6C6B8F1FDA3976';
wwv_flow_imp.g_varchar2_table(38) := 'CE5C8CBDFB6F866FEC32DFD47ABA71607D29DA9B9A3EF3AFC182C928786089AEFEAE66ECC44B2FA2EE92C33FF877F839063357ACD2BDA2F1993FBF8EB3070EC4C24AF7F96265C59DDC48006CD4BBBCBEE5FEA6A6F8EBAA1B97AF44C2E831BA66707C4B05';
wwv_flow_imp.g_varchar2_table(39) := 'EA2B2B87B439E5F35F40CEADF375F53994B1BA1D1FE1C4FBEF0DE92B6FCA544C5AF480AEB1745657614FF90B319BBC72D0EC4C673F069000E83A7C8C35C6CB7B9F6CEB9DFDF7FA7CB8F5BBFFA06B59EF487323763EF3F41593F0F2C78EBFE37E8D6F1FFF';
wwv_flow_imp.g_varchar2_table(40) := 'FA9750A3431F51CE23B8F55B8FC29B96A65F304CC3C7BFFE557C93D0E4D414471F434E02A0DFD031DC526D6717427DC52D8393A7A0E0FEC5BAFA6C3B7E0CFBB7BE7C559BB7FDEDA3F0A4EA78D15DC663B4A5193B9E7EEAAAB11831093AF02E282F2101C1';
wwv_flow_imp.g_varchar2_table(41) := '84C055E3B0EB0748006CD4730317FF4CFBD2979035EF665DA3EF3A77169F6EDA70559B0BBEF703DD271E2F75CA8F04DFFEEB5F5E35961B57AE42C2287DCF336CD8B503C7DEEDDD25E8F445412400571D62D6F800AFF777A0A939FEFC7F73C943BA17FA64';
wwv_flow_imp.g_varchar2_table(42) := '9130763CF1FFAE78DB9D312A1F3356160B8172B0EC79B4844243FAF2FAFCB8E5B1C7757F1BC00B887EB2BE2CE6979708B981BF0E7468B1101200214379E44E06EEFBE78371C1F77F68C8B6DF0B7B76E3E8DB6F0F19B0C81D87032FC4CB0534FDCB772373';
wwv_flow_imp.g_varchar2_table(43) := 'EE8D23877B8905A6AAD8FEABFF1BFF7F9D5C27800440F7E1638C417EC4D7998EDEF7FFC9199998F3CD6F19E308C0F9F7DE41E5CE1D83EC7B7C3E4CB9F32E64CC9E6398DFCB196EDABF17C7FEFAD7CFDC954CBC753E467DFE0B86C5B2E70F4FA2B3B52566';
wwv_flow_imp.g_varchar2_table(44) := '9FBF0AE4AF049DD848006CD2ABB55D5D0875F59E6E23E27D7CB8F102BAEAEA10E968873F350D89F9F95092924DA1A5B6B7A1A3A606E1B65678939291100CC2979169682C6E99082401307418E9677C60DDBF89B7CDC7A83B8CFBF5D32F6AFB5A3AF7CEDB';
wwv_flow_imp.g_varchar2_table(45) := 'A8DABD3B964086CF87710E5D1044026093317AB2B50DED7DDB7F8D780360130CC2C26CD8B513C7DEDD16F3C76B03F01A014E6C240036E9555EFBAFABAFFACFCCAFDE8BF499B36D12B93DC36CDABF0F87FFF2662C787E86203F46CC898D04C026BD7AA4B9';
wwv_flow_imp.g_varchar2_table(46) := '153D5A6FF92F2316BFD80483B03007EE0CF42B0AA63BB44C180980B021353247079B5A10655ACCC8BCA207E9BCBF91E1BCEAB73BAA2AB1777345EC735E59C6CC7463573E5E3520833E4002601058BDCDEE6BBCB809E8A6E212048254FD576FC603ED0D5C';
wwv_flow_imp.g_varchar2_table(47) := '83204B526C3190131B09804D7A755F235F05C84F02006E2A5E8D4030CF2691DB33CC81CBA225489893490230929E1472E85ACDEAE533144D3D349240ADFADD834DCDE06700C61E011E5C81C43163AD1AAA23E26A3B7E14FBB7BE12CB8557079A45770023';
wwv_flow_imp.g_varchar2_table(48) := 'EA57128011E1030E37B720ACF5CE01CC59B214C9130B466891BE7E250217F67C82A36FFF57EC233E59C60C9A0318D180210118113EE0E88023C0667F7D1152A74D1FA1C5DEAF6BE11ED4EFDE8D96736775B1679691B431639073F32D90BDFA2CD93DFFFE';
wwv_flow_imp.g_varchar2_table(49) := 'BBA8DCF1712C1D271F16427300668DD8EBF46BD456E0E6C30770E8F5D7AF331A6B7E7CD6D7EE43DAF419BA0457F5E69F70EEE0C198AD248F07BC3088131B09804D7AF5745B3B5A22BDD571C6DD7813C6DCF5655D226FDCFB298EFCD75BBAD832DBC8F4BB';
wwv_flow_imp.g_varchar2_table(50) := 'BF82CC39F37409E3D8E617D0505515B3E5E4DA802400BA0C17E38D9CEFEC425D5F35203DCF02185803CF130860DA227DAB0C194DE6E82B5B10ED3B2361DE83CB9138669C2E2EF73FFF2CDA1A1A62B6828100F2121374B16B3523240056EB9121E269EC09';
wwv_flow_imp.g_varchar2_table(51) := 'A3BA6F3B70527A3AE63EFC882E9147DBDBB0E3C9DFC56D7DE1C9672007EC51024BEBE8C0BB8F5FE430FFB1EF4049D4A78AEFCEDFFE1A913E6171F289C12400BA5C46C61B19541004C0821FFC37DD0A82ECF8CDAF108D846349DCF68F3F46E2EC1B8C4F48';
wwv_flow_imp.g_varchar2_table(52) := '070F1D7BF760E77FFE47CC12AF5770DB77BFA78355004CC387BFF8CFB82DBE0F80EF0770622301B049AFF21381F60F2C09B6FA1BF0E7E4EA12FDA10DA5683E7F3E666BE6D242E42E5EAA8B5DA38DD46E2EC79197B7C4DC648E1983E90FAED4C565F7F91A';
wwv_flow_imp.g_varchar2_table(53) := '7CB2814A82E902B3CF08BD06D481E6C0370153BF7817B26FBE4507AB4068FB0738B9FDC398ADD4BC51B8E93F2EFEFAE9E2C008230CF8E41F7F88D6506DCCFAE485772077FE025D3C0D7C05E8E437001C16DD01E83264C418193411386912262FD6E750D0';
wwv_flow_imp.g_varchar2_table(54) := '486B0B76FEE1C97812F37FF23F91305D9F75064691E93C78003B7EFEBFE3E66F7BE4DBF0A4A4EAE26ECFD34FC58E44E3CDC913802400BA0C1771465A2311F0A3C17853140FE6FFC3F7749B073852BE118DD5D531DBF973E7619CCE670EE84DE9F48B15A8';
wwv_flow_imp.g_varchar2_table(55) := '3DD87B8457D6B8F19856F8A02E2EC24D8DD8F5ECC5C3517821105E10C4A98DEE006CD4B39796069F5B5884A4711374C9A0F9D0411C7AE34FBAD8126D64D6D7BE8EB4E9337571DBB07B278EBDD35B09C8E925C1E90E40972123D6C8C9B676B4F72D081A3D';
wwv_flow_imp.g_varchar2_table(56) := '6B16C6DFF3355D02D0A2117CFAF41FD0D3D17B87619716484AC18DDFFA966E67031CDEB41E4DE7CEC5D2777229B0FEFEA53B00BB8CF4BE38079607573C5EDCF677DFD5ED949E96A38771F0B5576D4564D67D8B9036559FF90A7E32F247BFFD4D3C7F2797';
wwv_flow_imp.g_varchar2_table(57) := '032701B0D530BF182C7F0CE0D581B4BEDA007A97073BB4B10CCD353531871E8F07D3A74F87CF2235F1C3E1308E1C3982685F71543D5FFDF17C07EE8BE0454066A7A739F6442012009B0A000F7B6089F09C8913316549A16ED9F45CA8C7EEE7FE18B79790';
wwv_flow_imp.g_varchar2_table(58) := '9C8CA993A7409185BCC91D320F5563387AE238BADB2F3EA2DCB2E661F832B374CB7DE0FAFF2CBF1F63921275B36D5543F40860D59EB9425C9DD128F89A80FEA6F785D0F0C92E1CDBF6D7B8FD948C0C4C9E30C1B45F43BE08EAC4E9D3686B6A8AC734ED4B';
wwv_flow_imp.g_varchar2_table(59) := '77236B9E7EC782F5D4D761F7BAE7E2F69DBCFA6FE0D02201B0A100F090079E13903F7D06267CED3E5D3339F397377176FFBEB8CDCCEC1C4C18674E15A2CA33D5686AA88FC732E6863918F7957B74CDB7F2D55770FED8D1984DA79F084C02A0EBD031C758';
wwv_flow_imp.g_varchar2_table(60) := '5B2482537D6B02F861A1B7FEEDA3BA2D848965C4341CDD5C810B677AB7C4F2969E998971E3C6C323E87180DFF69F3E538596C6C6780C3913F823CF52DDD63F70C3919666EC7AFAA9F8C9CB4E7FF74F0260CE35ABBBD78155828CB80BD02261EC2F5D878E';
wwv_flow_imp.g_varchar2_table(61) := 'A68B17A03F3131260229066F8F6DEFEC8A5DFCE1CECE8B8F2259D998555C02D9A3EFC29C535B5F46EDF163313F898A82290E3D03E07203901E0174BF2CC5196C0E8751D5DE7B62306F37AE5C858451A3750D80BF1A3BB1F515340CB8138024216F543EF2';
wwv_flow_imp.g_varchar2_table(62) := '83B9E0FF5BCFC69FF7CF87EA507BBE06E82B82CAED678F1B8FC98BEE87ECD777AB72D7D96A7CFAC2C6780A13929391E6D35760F4E4A3B72D1200BD890AB6377083506A760E66AF7E48D7DBE3583A4C43EDF60F71EAA3ED83B2F30512909D9383ACCC2C78';
wwv_flow_imp.g_varchar2_table(63) := '9591094144D570A1B1110DF5F50877770DF253F0B98508DECE37FA8CCCC767BA8669D8F7ECD3686FEE5DF79FA8783025CD99A5BF861A962400822F58BDDD75AB2AF8B981BD05C381E95FBE1B9973F59B1D1F186F47D5691CDAFA0A22E19E4169488A0769';
wwv_flow_imp.g_varchar2_table(64) := 'E9E9C84C4F475A4A0AA46B9C23601A434B5B1B1A9B9BD1D2DC0CA64607D9F5FAFD98B5E87E24EAB4DCF952F603DF767069999A961A2B00EAA64602E080DE3ED7D98986EEDE8B52F17A71D3436BE04D33E6200BB5AB13F57B3E45F5EEDD9F11827E94BE40';
wwv_flow_imp.g_varchar2_table(65) := '22FC011FBC3E1F3C8A075E4589095454551155A38884C3E8E90E23DC7DF1F97E6037F00B7FDCCDB72067DE8D9003C694E2E2137F9FFCF159A87DA293130820DFE0790D2B0E3512002BF6CA75C6C457071E696945A4EFDC80D49C1CCC5A55A2DB12E1CB85';
wwv_flow_imp.g_varchar2_table(66) := 'C3CB8937EEDB8BAA5DBBD0D379711EE23A431FF4717F6212C6DF7A1B32E7CCD1ADBCF7E5E2E1771A074A4BD176A1F7D5223FFB8F1FFEC957FFB9AD910038A4C7DB23519C6A6B8B3F0AE85939F88A889886AEDAF368ADAA42E3E9D3683E5F033E91772D8D';
wwv_flow_imp.g_varchar2_table(67) := 'BFBE4CCFCF47D68409481D370181BC3CFDE72F2E1348D55B7FC6B97D7B63FFC22FF949292948F63AB3E4D7D5FA8104E06A846CF4EFB55D5D087575C723BEE1FEC548993C456806FCD56177ED7944DADB11EEFBEB6E6B8D5DD881E464F8FAFEBCC9C908E4';
wwv_flow_imp.g_varchar2_table(68) := '8D32F497FE7289B71C3D8283AF6D8DFF535E42028209FABE59100A7C84CE48004608D06A5F3FD1DA065E4094373E1F30B76879EC42A30674876AB167E306687DCFFD6E5AF13754FF930038ECCAE007881E6F698D9F23E8F5F93177E52AF8B2B21D96E9F5';
wwv_flow_imp.g_varchar2_table(69) := 'A513BED0803D1BCA100DF7563FF6CB7CC14F0A14173EF70F244702707DE3C8169FEE51351C6F6D85DAF72CEE4F48C29C952BE14DCFB045FC7A07C9CB7CEDDBB81EE1AEDEF505FCB4DFC9A9A9F02BB2DEAE6C678F04C0765D766D01F74E0AB683F54D0B7A';
wwv_flow_imp.g_varchar2_table(70) := '0301CC292C823F37EFDA0C38E4533DF521EC7B6153FC900F09FCE24F766C9DFFEBED361280EB2566A3CF5FBA54985710BA61C912248E1D6FA32C861F6AE7D933D8BF7973FC5D3FB7E4862A3FD7438C04E07A68D9F0B38D3D3DA8EEB8B8E0469265CCE2C7';
wwv_flow_imp.g_varchar2_table(71) := '8B4F996AC36CAE3DE496637CB6FFD541FB09C6262522D3EFBF76232EF82409800B3A999713AF6AEB889711E3EFBE27DC7A1B462DBC03909DB5F495A92A6ADE7F0F55BB77C67B5686840929498E2EEF3DDC614C02305C7236FB1E7F35C8CF14E89F18E4E1';
wwv_flow_imp.g_varchar2_table(72) := 'A7E50631EDFE07E0494DB35936970F37D2DC84A35B5F466BFDC5E2217C969FEFEF77EAD97E23ED3812809112B4D1F7F9DB81AAF67674A96A3C6A7EC048C1C285C8BEE966DBDE0DF05FFD86DDBB706AFB87839EF7131405135292E19369B67FA8614A0260';
wwv_flow_imp.g_varchar2_table(73) := 'A30B588F50F99B41BE79E842DFD1D7FD3693333231E5AB5FD5BD9E801E315FC946D7B9B338F6E737D031A05E20FF3C2FEA393A2951EF0DC446A723DC3E098070E4D670D8120EE34C4727F846A2816DF48C9918F3C53BA124265923D021A2503BDA51FDEE';
wwv_flow_imp.g_varchar2_table(74) := '3BA8397C68D027F82DFFD8A4245715F518494791008C849ECDBFCB770F9EEBEC021783818D2F211E3B672E726FBA59DF3A833AF08AB6B620F4C96E9CDDB70F6A3432C862BACF17DBD2CB77F751BB36022400D7C6C9D19FE20546CF7574A2A76F3BF1C064';
wwv_flow_imp.g_varchar2_table(75) := 'F367CE42EEEC1B9038C69C8AC03C16BE7DB7B3BA1AF5470EA3E6D0C1CFF4055FD6CB6BF8BB7547DF48062709C048E839E8BBFC41A0B9278CFAEEEE419384FD29F29D7CF9B3662373FA0C21FB0AD4CE0EB49DAEC4851327D05059396872AF3F263EC9979B';
wwv_flow_imp.g_varchar2_table(76) := '10409ACF47CFFAC31C8B2400C304E7E4AFF13B82FAEE1EF0FF5EAE25A6A42063EC38A48E1983A4FCD1F06566EA52AF8F6FD8693D750AF5274FA0B9E65CBCB6C1A531F0433B730301FAC5D761109200E800D1A92678BD417E18295F521CBECCE3417FDE1E';
wwv_flow_imp.g_varchar2_table(77) := '9F0FA939B948CACE4662561612B2B2215D525B8F9F3E1CEDEC42A4B31D91AE6E443B3B11EE6847B8B31B3D5D1DE86E698D2F54BA1C4FFE2A8F3FE367F87DAEABDB67E4F822013092AE836CF3E3C89AC311B4F27A7E5710033D53E6053AF9AF7DBACF4B0B';
wwv_flow_imp.g_varchar2_table(78) := '79F4043BC016098041609D6C36AC6AB1C703FED71E8D0E5A5D3892BCF92B3C3E91C72FFA54AF9766F34702F31ABF4B02708DA0E8634313E02B0C7B5415FC91A14753C105822F39E67F7C9D012F52C21BDF87CF0B6FF20B9DFFF91439569823E05162FFA5';
wwv_flow_imp.g_varchar2_table(79) := 'FDF9E24719098078E6E49108588600098065BA82022102E209900088674E1E89806508900058A62B281022209E80A304A0FEA1E55335553D2A1E237924023625E05126079FDB74D2E8E8859CB914FAC6F20244D513462743F689805308686A74E2A88D2F';
wwv_flow_imp.g_varchar2_table(80) := '9D363A1F2102707EC5E209B2E2A9343A19B24F049C4220AA46C68DDEF872B5D1F9081180732B1E18EB51BC678C4E86EC1301A71090252D3FA7F4C5F346E7234400EA4B968ED2985C637432649F0838850093D560DEBA2D7546E72344009AD62C4E0F473C';
wwv_flow_imp.g_varchar2_table(81) := '4D462743F689805308F8BCD18C8C3FBED46C743E4204801515F9EA7CACC7E864C83E11700A81DCB0E497CACB0797843220392102C0E30E95147683814E7F30A013C9A4C30848E809965608391B5D9C001417F2571AEE38FBCA61E391D2114EA02A585631';
wwv_flow_imp.g_varchar2_table(82) := '4184579102F01180F92292221F44C0CE04988477F24A2BEE14918348017809C0032292221F44C0CE0418D8A6BCB2CD2B44E4204E004A0A7F06867F129114F92002B62620E1E7C1D28A1F89C8419800D4AE2A5C2149D8202229F24104EC4C8031ACCC5B5F';
wwv_flow_imp.g_varchar2_table(83) := 'B151440EC204A061E5B2E9AA2C1D169114F920027626A0686C46F686CD4744E4204C00D8DAB572DDF103BC9E351DE45FC32D00000587494441540F23A267C9875D0974E64E999D22AD5DAB8948409800F06442C5855CD5A689488C7C10019B12F8385856';
wwv_flow_imp.g_varchar2_table(84) := '71BBA8D8850A406DF1B28D12A4E5A292233F44C086047E1F2CAB784C54DC42052054BCEC31407A425472E48708D88F007B3C58B6F977A2E2162A00178A978E8942E6DB8285FA150593FC1081111260B2EA1993B371A3B09DB3C22FC45071D11E80CD1D21';
wwv_flow_imp.g_varchar2_table(85) := '28FA3A11702001696FB0AC7C9EC8C4C40B002D0812D9BFE4CB4E04042E00EAC7225C00CE9714DE2933FCD54EFD42B11201110418B40579652FF23D33C29A7001608F3EEAADEB683C4E3B0385F53139B2078133B9E71A0AA46DDBA222C3152E003CB95049';
wwv_flow_imp.g_varchar2_table(86) := 'E15A30FC8BC844C91711B0340109FF1A2CAD582B3A465304A066D5D2F18A24F32AC1A6F8170D99FC1181AB1088AAB25490BFAE5C78E15CD32EC05071D11B00BB87860611200278395856B1D80C0EA609004D069AD1DDE4D38A043409778D2AADD866466C';
wwv_flow_imp.g_varchar2_table(87) := 'A609406C2E80EE02CCE873F2692902D29BC1B2F2AF9A1592B90250B2642E98B2C7ACE4C92F11309B00833427AFAC7CBF5971982A00BD770185542ACCACDE27BF661330EDD9BF3F71D305A0AEA4683263EC5300C966F706F9270202097420AACC0D6E32FE';
wwv_flow_imp.g_varchar2_table(88) := '04E02BE564BA00F0E06A8B0BBF2F01BF10089F5C1101930988DDF53754B29610005654A4D4F9D93630DC6172AF907B22208080F441B0ACDC1263DD1202C089D3A3808071472EAC40C012B7FE96990318D823A19265CBC0A417A86EA015C629C56000010D';
wwv_flow_imp.g_varchar2_table(89) := '900A8365E55B0CB03D2C9396B903E88FBEAEB8E8470CECA7C3CA86BE44042C4C80013FC82BABF8A59542B49C00C4260557153E2349F8A69540512C4460240424C67E95BB7EF3F74762C388EF5A5200625B86DB1B5F8384AF189134D9240282096CC99D32';
wwv_flow_imp.g_varchar2_table(90) := 'BB5054A9EFEBC9CD9202C013A8797451A2D2E15F0760E9F524449F25021623F0B29AD4B32AFFC9AD9D168B2B168E65058007C700A9BEB8F07F31E0BF5B111EC54404AE4480013F0D9655FCB3141BCAD66C9616807E64A192C287C0F00C00C59A18292A22';
wwv_flow_imp.g_varchar2_table(91) := '308840180C0F07D75794599D8B2D048043AC5DBD6CBEA449CFD1C942561F52AE8F6FBF2CB38773D66DDE650712B611000EB372CD9A4062B4FD4760F80900AF1D00538CAE211001C3CF729333FF4D7AF2497E06A62D9AAD04A09F68FD43CBA7324DFB3F8C';
wwv_flow_imp.g_varchar2_table(92) := 'B145B6A04C413A99007FBEDF2C49D28F734BCB4FD82D515B0A407C6EA078E94240F939C016DA0D3CC56B7F0212B00D2AFB61EEC6CD7C37AB2D9BAD05A09F786DF1D2DB2548DF81243D0806BF2D7B8282B60701093D002AC0B42782652F7E608FA0878ED2';
wwv_flow_imp.g_varchar2_table(93) := '1102D09F5ECDCA95D98A145903993D062615D8BD73287E4B113805E0F7AAE67D267FC386064B453682601C2500033984562DBB0792743F035B24411A3B0246F45597126060D592845701794BB0B4FC2F4EC4E05801182406254BE6324D592449D2570076';
wwv_flow_imp.g_varchar2_table(94) := '338024277626E53462021D80B41B127B4BD2A4ADB9EBCB1D5FAFD2150270E9B008AD5A3A0990E741E2A7144BFCA4E2F1007201E48F780891013B10E0C76FD701A802D85E30692F5465AFD9E5B9CC00E74A01B81268F6F7F7FA9BDBFC091178038AA47895';
wwv_flow_imp.g_varchar2_table(95) := 'A8EA09AB9A479564AFAC691E59611E680A713363B45ECDA7AC324D95A29A2C4715A6457C8A1C553D4A54656AC48B48777A4A4F97F49BD7F9241EB53E02349069281001171320017071E753EA44800480C60011703101120017773EA54E044800680C1001';
wwv_flow_imp.g_varchar2_table(96) := '171320017071E753EA44800480C60011703101120017773EA54E044800680C1001171320017071E753EA44800480C60011703101120017773EA54E044800680C1001171320017071E753EA44800480C60011703101120017773EA54E044800680C100117';
wwv_flow_imp.g_varchar2_table(97) := '1320017071E753EA44800480C60011703101120017773EA54E044800680C1001171320017071E753EA44800480C60011703101120017773EA54E044800680C10011713F8FF1BD4CCD3692EB5080000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(65787168635478730978)
,p_file_name=>'icons/app-icon-256-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_512_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000200000002000806000000F478D4FA000000017352474200AECE1CE90000200049444154785EEDDD777064D795E7F95F7A0B57068502CA7B4B163D452B899E222951A4BC6B75B746DDB3B1B1B13B1BB3B113';
wwv_flow_imp.g_varchar2_table(2) := '31B17F6CECC66E4CECC444CC46CF76F7A8A9EE91D8A217BD485114458A2C92A22DEF3D504055C1A64FA4D9B859556C8A4226328104902FEFF7CD704A1A3D73CFE75CD63BF9DE7DF7BA06BEF360516C082080000208206095808B02C0AA7C132C02082080';
wwv_flow_imp.g_varchar2_table(3) := '000225010A003A02020820800002160A5000589874424600010410408002803E800002082080808502140016269D90114000010410A000A00F20800002082060A1000580854927640410400001042800E803082080000208582840016061D20919010410';
wwv_flow_imp.g_varchar2_table(4) := '4000010A00FA00020820800002160A5000589874424600010410408002803E800002082080808502140016269D90114000010410A000A00F20800002082060A1000580854927640410400001042800E803082080000208582840016061D2091901041040';
wwv_flow_imp.g_varchar2_table(5) := '00010A00FA00020820800002160A5000589874424600010410408002803E800002082080808502140016269D90114000010410A000A00F20800002082060A1000580854927640410400001042800E803082080000208582840016061D209190104104000';
wwv_flow_imp.g_varchar2_table(6) := '010A00FA00020820800002160A5000589874424600010410408002803E800002082080808502140016269D90114000010410A000A00F20800002082060A1000580854927640410400001042800E803082080000208582840016061D20919010410400001';
wwv_flow_imp.g_varchar2_table(7) := '0A00FA00020820800002160A5000589874424600010410408002803E800002082080808502140016269D90114000010410A000A00F20800002082060A1000580854927640410400001042800E803082080000208582840016061D209190104104000010A';
wwv_flow_imp.g_varchar2_table(8) := '00FA00020820800002160A5000589874424600010410408002803E800002082080808502140016269D90114000010410A000A00F20800002082060A1000580854927640410400001042800E803082080000208582840016061D209190104104000010A00';
wwv_flow_imp.g_varchar2_table(9) := 'FA00020820800002160A5000589874424600010410408002803E800002082080808502140016269D90114000010410A000A00F20800002082060A1000580854927640410400001042800E803082080000208582840016061D209190104104000010A00FA';
wwv_flow_imp.g_varchar2_table(10) := '00020820800002160A5000589874424600010410408002803E800002082080808502140016269D90114000010410A000A00F20800002082060A1000580854927640410400001042800E803082080000208582840016061D209190104104000010A00FA00';
wwv_flow_imp.g_varchar2_table(11) := '020820800002160A5000589874424600010410408002803E800002082080808502140016269D90114000010410A000A00F20800002082060A1000580854927640410400001042800E803082080000208582840016061D209190104104000010A00FA0002';
wwv_flow_imp.g_varchar2_table(12) := '0820800002160A5000589874424600010410408002803E800002082080808502140016269D90114000010410A000A00F20800002082060A1000580854927640410400001042800E803082080000208582840016061D209190104104000010A00FA000208';
wwv_flow_imp.g_varchar2_table(13) := '20800002160A5000589874424600010410408002803E800002082080808502140016269D90114000010410A000A00F20800002082060A1000580854927640410400001042800E803082080000208582840016061D209190104104000010A00FA00020820';
wwv_flow_imp.g_varchar2_table(14) := '800002160A5000589874424600010410408002803E800002082080808502140016269D90114000010410A000A00F20800002082060A1000580854927640410400001042800E803082080000208582840016061D209190104104000010A00FA0002082080';
wwv_flow_imp.g_varchar2_table(15) := '0002160A5000589874424600010410408002803E800002082080808502140016269D90114000010410A000A00F20800002082060A1000580854927640410400001042800E803082080000208582840016061D209190104104000010A00FA000208208000';
wwv_flow_imp.g_varchar2_table(16) := '02160A5000589874424600010410408002803E800002082080808502140016269D90114000010410A000A00F20800002082060A1000580854927640410400001042800E803082080000208582840016061D209190104104000010A00FA00020820800002';
wwv_flow_imp.g_varchar2_table(17) := '160A5000589874424600010410408002803E800002082080808502140016269D90114000010410A000A00F20800002082060A1000580854927640410400001042800E803082080000208582840016061D209190104104000010A00FA0002082080000216';
wwv_flow_imp.g_varchar2_table(18) := '0A5000589874424600010410408002803E800002082080808502140016269D90114000010410A000A00F20800002082060A1000580854927640410400001042800E803082080000208582840016061D209190104104000010A00FA00020820800002160A';
wwv_flow_imp.g_varchar2_table(19) := '5000589874424600010410408002803E800002082080808502140016269D90114000010410A000A00F20800002082060A100058085492764BB058A928A45F3FFFECBE672B9E4B29B85E811B04E8002C0BA9413703309E40A05650B45E58B058D170ACA17';
wwv_flow_imp.g_varchar2_table(20) := 'A542B1F8C93FF96251B962B174C32F5CB8F1FFF1ADFF534580245308782E1403EE0BFFD9FC69FEF19AFFEE3EFFA7D7E596D7ED92CFED6E264E6241C02A010A00ABD24DB04E13387F33970A2A2A5F286ABC58D0F99B7E41D97CA17473BFF8DFCDCD7E3636';
wwv_flow_imp.g_varchar2_table(21) := 'B75C0A7A4C0170FE1F9FEB7C21E0F7B84B7F9A67091E974A4583F9870D01041A538002A031F342AB2C163037F2F8784EB1F1712573B9D2CDDE1402B3737BAF0FBC798AE077BB15F5F9D4E2F32AE2F5520CD48796B3205037010A80BA517222046A173037';
wwv_flow_imp.g_varchar2_table(22) := 'F64CA1A0742EAF643EA7C478EE9347F9CEBAE5978FDD3C1130AF0D825E8F421E8F425E8F829EF3FFB02180C0DC095000CC9D3D57B6542057282A9D3F7FC34FE6F2A59B7FA690B746C3BC2430AF0B4C0110F69AA7031EF93D9E5291C0860002B327400130';
wwv_flow_imp.g_varchar2_table(23) := '7BD65CC97201F3587F3093293DDA9FADF7F54E213737FF56BF5FF302FED2EB023604109879010A809937E60A960A98C7FB895C4E63D9718D8D8F971EED3BE93DFE5CA4CD3C03304F065A7DBED2F881B0D7C3D881B94804D7B4428002C08A3413E46C0998';
wwv_flow_imp.g_varchar2_table(24) := '1B7C269F2FBDCB1FBD30886FB67FED9B47EC17FEEFF9B0CD687CF3B99ECB5DBA999A4FFDE43623F4CFFFFF150A39C91427173E1734554A219FFBA362C57C6060C624CC6601639E0A985704AD7E5FA920305F1CF09260B67A32D7B1418002C0862C13E38C';
wwv_flow_imp.g_varchar2_table(25) := '0B981BE36836ABE14C56B17173F39CBD5BA5B9299ACFEF025EAF42E1B0822D5179FC017903417982E69F80DC81A0DC17FF0C04E4F607E42A3D6A2FAA901D57319351219356E1E29FE98CF299B4F2E9B4F2998CC6D369659229A55249A573B9D2A787B317';
wwv_flow_imp.g_varchar2_table(26) := 'A1A9675C6AF579353F18283D19A01098F12ECD052C10A000B020C984387302A95C5EC3D96CE9E66F3ED79BC9CD1F6D516B47BB822D2D0A465B14686955C0DCECC31179C2E1F337748F47AED2AFFD0BB748F367E93F9B5FFDD54CDA637EFE5F88A3F4B3FF';
wwv_flow_imp.g_varchar2_table(27) := 'FC3FA599038B05295F50219B552195522E9950361657263EA6742CAE546C4C89C141A553A99964284D54D4511A2F10287D51C08600025313A000989A1B47592E6046F29B017DE61FF36EBF9E9B7944EF0B064B37F86867A7A20B172AD8DE215F382CAFF9';
wwv_flow_imp.g_varchar2_table(28) := '451F89C8E5F5D5F392D33E573195543E9B512E93512E955272745463BDBD4A9D3BA74C3C567A82F0D9E987A77B51F3D4C3BC1A58100CF049E1743139DE4A010A002BD34ED0531548E5F33A97CE6824932DCDCE57AFCDDCF403E1B05A3A3BD5DEB3442DCB';
wwv_flow_imp.g_varchar2_table(29) := '962BD8D575FE97BB93B7624199817EC54E9CD0F0A9938A9D39AB4C2A59D762C0BC1E305F0F2C0C0614606E0127F716DA3ECB021400B30CCEE59C29309A1D2FDDF8CDCC7CF5B8F19BDB7A241452C7D2656A5DBE4CE1652BE46B6B77264E2DAD3653178F0C';
wwv_flow_imp.g_varchar2_table(30) := '2BD1D7ABB1E3C7347CE28412C9545DC64C18D3169FAF344EC0FCE9F0D2A91655F645604A0214005362E3201B04CCEF7BF3CDFE50DA7CBB3FFD1BBFDBE355745E87DABB7BD4B662A5425D5DA5417A2E8FA5DFBDE773CA25124AF69ED2C8A9531AE9EB5372';
wwv_flow_imp.g_varchar2_table(31) := '78488569BE52316304CC5C028B42C1D257046C082030B10005003D03810904CC80BEFE644A23D9ECB41EF49B01796634FE82A54B357FED5A45BB16CB6DC32FFD29F4AAC2D8A8627D7D3A77E8A086FB4E6B3C1957719AC580192CD8150E95D62560430081';
wwv_flow_imp.g_varchar2_table(32) := '3F16A000A04720F0290133A0EF4C3A5DFA9C6F3ADFEF07FC01CD5BB9520BD6AF5764C54AB91B6CD05EA327BD309E55FCD8310D1ED8AFB3478E28379E9D7293CDDC07667CC08240B0B484311B02089C17A000A0272050FA1AFEFC77FC03A974699EFEA96C';
wwv_flow_imp.g_varchar2_table(33) := 'E6D6D2B1769D3A376E54EBD265F20402A5EFD7D9A62E60E653305F16983103033B7668F8D85115A6981FF35A606130589A4FA03419121B02960B500058DE01085F3223FB0792A9D2CC7D53D9DC8180E6AD5AADC59BB728DADDDD709FE84D25A6463CA698';
wwv_flow_imp.g_varchar2_table(34) := '1B57ACB757FDBB766AF8D8B1D24445B56EE6B66FD61C581C0A29E0E1B540AD7EECDF5C021400CD954FA2A941C0BCE73F933AFFB87F2A23FBDD3E9F3ACD8DFFF22B145ADC5DC395D975BA02A9DE531AD8F1B1FA0F1E5421577BE1665E0BCCF3FBD5190A96';
wwv_flow_imp.g_varchar2_table(35) := '66516443C046010A001BB36E79CCE6DDBEF9ACEF6C7A6A8FFB7D8180BAB65EAA85975EAA405B1B8FF9E7A83F99D703D9D1119D7EEF3D9DD9B35BB9293CC109B83DA522A023E0E765CD1CE591CBCE9D0005C0DCD973E5391030EFF74F2753A5D5F96ADD02';
wwv_flow_imp.g_varchar2_table(36) := 'EDED5AB4798B3A376F913F1A75FE243DB50234ECFE456513099DF9F823F5EFDD5B2A0A6ADDDACD6B01BE16A8958DFD1D2E4001E0F004D2FCEA05863259F52593358FEEF78623EADEB64D9D1B36C8DF3EAFFA0BB2E7AC0B64478635B06B977A3FFAA0B466';
wwv_flow_imp.g_varchar2_table(37) := '412D9B597D7071385C9A55900D011B0428006CC8B2E5319A95EBCEA4333A67E6A3AFC5C2E5D282B5EBB4E4A69B146AE5517F2D7473B9AF7935901E19D189D77FA7C1C387CE2F6854E566161C360580993BC04C28C48640330B500034737689ADF449DFA9';
wwv_flow_imp.g_varchar2_table(38) := '4452895CAE268DD0C24E2DBFF126752C5F2E978B416235E135C8CEA610305F0B1C7BEDB74A0F0DD6D42AB3E4F0D2489809846A526367A7095000382D63B4B76A01B3525F5F2255D3087F6F28A4EECB2ED7E2CBAF94C7CFA3E0AAB11B78C75C2AA9FE0F3F';
wwv_flow_imp.g_varchar2_table(39) := '50DF8E1DA5258CABDDCC2B81AE50A8B4B6001B02CD284001D08C59B53C2633CABF3791AC6D1A5F335BDCBAF5EAB9EA2A853A1731B2BF09FB50FC749F4E6D7F4B43C78E561D9D99C8C92C37DC190CC8CBE78255BBB1A3330428009C91275A59A58079E47F';
wwv_flow_imp.g_varchar2_table(40) := '229E284DEE53EDE6F678B4F6AE2F69DEBA75DCF8AB4573E87EE6B5C0B9DDBB74F4B5DF966618AC768B7ABDEA89841564B9E16AC9D8CF010214000E48124DAC4EC04CE8D35BE328FFF9AB576BE54D9F97BF83D1FDD52937C75EE65341530494060956B999';
wwv_flow_imp.g_varchar2_table(41) := 'C983564423A5A586D9106806010A8066C8A2E5319831DE43994CE9FBFE6A17F031EFF7975E7EA5165D69DEF5F38ED7C62E54307DE683F774F2DD7755C8573748D4BC12E88984343F409FB1B1CF345BCC1400CD9651CBE229148B3A9BCE682095AAFA13BF';
wwv_flow_imp.g_varchar2_table(42) := '605B9B567FE18B6A5BB5C6322DC29D4860F4C8611D7AE957CAA4925503758743A58585D81070B200058093B36779DB8BC5A24E26921AAE61C297CE0D1BB5F2D6DB19E16F79DFF96CF8B9785C875F795983470E572DB32010507724CC14C2558BB163A309';
wwv_flow_imp.g_varchar2_table(43) := '5000345A46684F5502E38542E9E61FAB724A5F5F28ACA5575FA3CE6D97C90CFA6343E0B30285F1ACCE7EF4A18EBDFDB6F2E3D5CD22D871610A611614A23F39518002C08959B3BCCD990B93FBC4AB9CDC27BA60A156DC7CB35A97AFB45C8EF02717286AEC';
wwv_flow_imp.g_varchar2_table(44) := 'E8511DF8F5CBCAC66393EF2E9506052E8B44E4753373605560ECD4300214000D930A1A528D80F9CCEF682C2EB3946F355BDBE26EADBBF73EF9A22DD5ECCE3E089404324383DAFFCC2F151F1AAA4AC47C1EB83C1AE133C1AAB4D8A9510428001A2513B463';
wwv_flow_imp.g_varchar2_table(45) := '5201F3B8FF583C2133F0AF9AAD7BE3262DBFFD0EB93CDE6A76671F04FE48C0CC2078F8A92734D8DF5F958C2902CCE0403E13AC8A8B9D1A408002A00192401326173037FFE3F144D59FF92DBBE24AF5DC702337FFC969D9A382403E9DD291E79ED5D913C7';
wwv_flow_imp.g_varchar2_table(46) := 'AB72F2BBDD5A168D28E2A5E8AC0A8C9DE6548002604EF9B9783502E6B1FFC1B158D5BFFC575D7F83BAAEBE4662119F6A78D96732817C4E275F7C41270FEC9F6CCFD2FF6E56115CDDD2A29097C1A65581B1D39C095000CC193D17AE46A09677FE6E975BEB';
wwv_flow_imp.g_varchar2_table(47) := 'EEB853F3366DAEE6D4EC8340F502C582CEFCEE351DF9E083AA16970A793C5A1A8DC8FCC98640A30A5000346A666897CC68FF13F1A49255CCD2E68FB66AFD6DB7A965E52AE4109819816241836F6FD7A177DE56BE8A41A8E635C08A96A8CCAA826C0834A2';
wwv_flow_imp.g_varchar2_table(48) := '0005402366853695DEF51F1E8B55B5A84FB8BD431BEEBC4BC1EE1EE410986181A2C6FEF0AEF6BFBD5DE355CC41618A00F33A801A6086D3C2E9A72440013025360E9A490173F33703FEAA99E4A7A5BD43EBEEFFAA022CE6339329E1DC9F1148EDD9A93DBF';
wwv_flow_imp.g_varchar2_table(49) := 'F98D3255140166DD00B39220CF01E8468D264001D06819B1BC3DE613BFBE644A83552CD51A6AEFD0266EFE96F798B90B3F7DE880763EFF9CC6AB587A7A5128A8AE5068EE1ACB951198408002806ED150027DC96469719FC9B6606BAB36DD7D0F8FFD2783';
wwv_flow_imp.g_varchar2_table(50) := 'E27F9F4181A2E2EFBFA73D6FBCAE5C156302CCE241669E0036041A458002A05132413B742695567F2AADE224EBFAF9BC3E6DFACAFD8A2C5B8E1A02732C50D4F0EBAF69FF7BEF57F575809932B823E09FE336737904CE0B5000D0131A422099CBE9F0587C';
wwv_flow_imp.g_varchar2_table(51) := 'D2BF44CD7BD4AD0F3CA828F3FA3744DE6884A46241675F7D45873FDE3169FF355F04988982982D909ED3080214008D9005CBDB902B1475381693F9E6BFE2E67269D32DB7AAFD926D968B117EC309E473EA7BE9573ABE6FEF24CFAF545A2F604D6B4B69C2';
wwv_flow_imp.g_varchar2_table(52) := '203604E6528002602EF5B97649C08CF81FC9565E7ED5FC55B9FAC69BD479D535A821D09002C57C4EBD4F3DA913554C1B6C9611361305510234642AAD6914058035A96ECC40CFA6D33A9D4C4DFAAB69E5D5D768F10D379AB7568D1908AD4240522111D7D1';
wwv_flow_imp.g_varchar2_table(53) := '679ED6C0E9BECA0FB3242D8944348FF100F49B3914A00098437CDB2F9DCCE575686C6CD29B7FCFE62D5A7EC75DB67311BF43044C11B0FF170F6B7874B4628B5933C021096DE26652003471721B39B46CA1A0A3B1F8A4EFFD172C5FA1B55FB99F55FD1A39';
wwv_flow_imp.g_varchar2_table(54) := '99B4ED4F04C6CF9ED1DEC71E513C9DAEA863D60A30E301DC8C07A017CD810005C01CA0DB7EC9A2A4538984863295DFFB875BDBB4F1BEFB14E8ECB29D8CF81D2810DFF9B176BDF28A0AC542C5D6B7FBFDA52F0378B9E5C0243BBCC914000E4FA0139B6FBE';
wwv_flow_imp.g_varchar2_table(55) := 'F73F9D4A4DDAF48DB7DFA18E2D974CBA1F3B20D09802459D79E9573AB47BD7A4CD5BCA7880498DD8A1FE021400F537E58C150412A5EFFD6393BEF75FBA798B96DE76BBE46639553A9473058AF1311D79FA690D0CF4570CC2EB726B7934A2A8CFEBDC6069';
wwv_flow_imp.g_varchar2_table(56) := 'B9E30428001C9732E73678BC50D0B15862D2E57D23EDEDDAFABD1FC8ED63C634E7669B965F14C8F69DD29E271E5772928583CCE440A608607E00FACE6C095000CC9634D7517F2AA58154E541513E7F409BEEFE9222AB56238640D308C476EDD0AE975F9A';
wwv_flow_imp.g_varchar2_table(57) := 'F4C9178B06354DCA1D1108058023D2E4FC469AA97ECDAFFFF1490644ADBDFA1A2DBCE126E7074C04087C46E0F40BCFEAE8BE7D155DDC72697D7BABFC6E377E08CCB80005C08C1373012370682C26F3FEBFD2B670C952ADBEE75EB9C311D010683A81423C';
wwv_flow_imp.g_varchar2_table(58) := 'A6FD4F3DA9E1B3672AC6363F10504F24CC57014DD7031A2F200A80C6CB49D3B5C84CF36BA6FBADB479DC6E5DF6ADEFC8BF884FFE9AAE0310D02702A9C307B5E7C51794A930F5B5F91C70554B0B0302E937332E400130E3C4765F20572CEAD0684C9942F9';
wwv_flow_imp.g_varchar2_table(59) := '857ECC5F786BAEBB4E0BAFBDDE6E2CA2B74260F0ED37B5FFADB72AC61AF678B5A6352A17130459D127E62A480A80B992B7E4BA66D09F19FC57699BBF70A1D67FFBBB92874FA02CE916568759CCE7B5FBA19F686CACF254C10C08B4BA9BCC4AF01400B3C2';
wwv_flow_imp.g_varchar2_table(60) := '6CE745CCC03F33DDAF790A506EF378BDDA72C79D8AACDF682712515B29903CB04F1F3FF76CC5AF02CCE780EBDB5AE56340A0957D643682A600980D654BAF712416576C926F9F576CDEA26E16FAB1B487D81C7651471E7D44FDA74E564498170868090302';
wwv_flow_imp.g_varchar2_table(61) := '6DEE28331A3B05C08CF2DA7BF2D1ECB88EC7E3157FE1F803415DF69DEFCAD3DE612F14915B2B90ED3DA53DCF3EAD643259D1604534AA36BFCF5A27029F39010A8099B3B5F6CCF9625107AB18F8B7FEE69B35EF8AAB243E78B2B6AFD81D785167DF7A5307';
wwv_flow_imp.g_varchar2_table(62) := 'DFDE5E9121E2F56A654B941902EDEE2C33123D05C08CB0DA7DD233E9B44E272B0FFCEB686BD3861FFC502E2FBF6CECEE2D76475F181BD5BE279FD0C8D0605908F3954C7738AC05C180DD58445F77010A80BA93DA7D4233DFBF19F897CA97FFECCFEBF56A';
wwv_flow_imp.g_varchar2_table(63) := 'F39D772BB26EBDDD58448F80A4E4A103FAF8996754ACF0C22CE0F694660864C960BA4C3D052800EAA9C9B974369D56DF24BFFE97AD5FAF255FBA9747FFF417042E081C7EF2310D1C3B56D1636534AA56C602D067EA28400150474CDB4F653EF6DB3F3256';
wwv_flow_imp.g_varchar2_table(64) := '71D21FAFC7A3CBBFF60D79BB7B6CE7227E043E11489F3CA19D4F3DA1F10AD36547BD3EAD6C89C8CDE440F49C3A095000D40992D34863E3E33A16AB3CF27FD925976AC9176F91DC1EC81040E05302279E7E4AA70E1FE22900BD62D6042800668DBAB92F54';
wwv_flow_imp.g_varchar2_table(65) := '281665BEFBAFB4E08FCFE5D6A5DF66BEFFE6EE0944375581F4F1A3DAF1F42F95ABF014A0CDEFD7F26884B1005345E6B83F12A000A043D445203E3EAEC3B178C573F5AC5AA5E55FBE5F72B1D4695DD03949530914C7B33AF1E20BEA3D74B06C5C66764033';
wwv_flow_imp.g_varchar2_table(66) := '2F40D4C7B4D94D95FC390A8602608EE09BEDB266B53FB3EA5FB9CDEB76EB92AF7D5DC19EA5CD163AF120503781CCF1A3FAF0892754A8F045409BCFA7152DD1BA5D9313D92B4001606FEEEB16B999EED714006602A0725BF792A55AF1F56F30F2BF6EEA9C';
wwv_flow_imp.g_varchar2_table(67) := 'A8290572E33AF08B8775EECC99B2E1B9E5D28676D60868CAFCCF72501400B30CDE8C973B114F68B8C2AF7FB7C7A34BEFB957A1D56B9B317C6242A0AE02898307B4EBB9672A16D4AC145857726B4F4601606DEAEB13B819FCB76F644CE3C542D9132E5CB6';
wwv_flow_imp.g_varchar2_table(68) := '5C6BBFF255C9CB7BCBFAA87396A616281674F0E19FEBEC407FD930CD0A81EB5A5B645EADB1213055010A80A9CA715C49602893D5C944A2E2E3CA2D77DFADE8864D882180409502633B3ED49EDFFC46A6C02EB7B148509598EC5656800280CE316501F377';
wwv_flow_imp.g_varchar2_table(69) := 'D391584CF10A9F2D75742DD686AF3E20573034E5EB702002B609982F020E3DFE98CE9EEE2B1BBA190CB8BC25CA2781B6758E3AC64B0150474CDB4E95CEE7756074ACE292BF1B6FBF531D5BB6DA4643BC084C5B20B6779776BEF862D9F398D700667AE090';
wwv_flow_imp.g_varchar2_table(70) := '9749B5A68D6DE90928002C4D7C3DC23E97CEA8B7C25AE641AF4F97FCE85FC91B0AD7E3729C0301AB04F283E7F4FECFFF5BC58981BA42219901816C084C458002602A6A1C537A37792C9E90F904B0DCB664E54A2DBBFF413BB40A051573E352A1205720C0';
wwv_flow_imp.g_varchar2_table(71) := '6447F5CE7A21AFE285BEE6F2F9EC984A7A3CABA32FFF4AA7F7EF2FAB19F278B4AEADB5DEDA9CCF12010A004B125DEF3027FDF6DFE5D2A577DDAD48130FFE2B168B4A0D0F696CA05FF1BE3EA5868654CCE51459BC58D1C5DD6AE9EA52A8B5552E663E9C52';
wwv_flow_imp.g_varchar2_table(72) := 'F733CBE3A6464735D6DBAB58EF2925CF9E95CBEB5164FE4245BA17ABB56BB1421D1D7235F15BF0D8FE7DDAFDC2736507039A3901CC32C17EBE0698521FB3FD200A00DB7BC014E3EF4D24752E93297B742014D2653FFC0BB99B70F05F219FD3B98F3FD6C9';
wwv_flow_imp.g_varchar2_table(73) := '0F3F54666C442A3352DBE5F1C8178E68F9E7AED3822D5B9AFA4635C56E34E16185624183BB77E9D4FBEF2B3D3CA462A1CC27A62E9742F3E76BC9B6CB357FCB56B99BF026584825B5E3277FAF64857936168742EAE435403DBBA035E7A200B026D5F50D74';
wwv_flow_imp.g_varchar2_table(74) := 'EFC8A8B2E5FE6296B474C3062DBDFBDEFA5EB401CE96EC3FADC3DBDF52FCD831152BCC7DF0E9A6BADC6EB5AD5EA3959FFB9C420B3A1B208AC66D426AF09C0EFEF6378A9F3C59B6B0FA6CEB5D2E9722DD3D5A77EB6D0ACE5FD0B8C14DA965451D7FFA97EA';
wwv_flow_imp.g_varchar2_table(75) := 'ADB04AA0790DB0BAB545669D0036046A11A000A8458B7D4B02F1F15C69E53FF38876A2CDEBF56ACB5D5F5278EDBAA6121B39B85FFB5F7945F954724A71F95A5AB4F6E62FA87DDDFA291DDFEC078D1C3CA0FD2FFF4AF90A4F962A197802416DB8EB6EB5AD';
wwv_flow_imp.g_varchar2_table(76) := '5ADD5454F183FBB5F3B967655E3995DB56B544D562C646B02150830005400D58EC7A5EE06422A9A10A7F49CF5BB448EBBF7CBF5CD196A6214B0CF4EBE3877F56F5AFD272819BA701977EE77B0A2FE449C0A78D8CEFAE271E533E9D9E569FF10483DAF2D5';
wwv_flow_imp.g_varchar2_table(77) := '0714E9EA9ED6791AE9E04236A33D0FFD83C612E557DBEC0C06B538CC5C1B8D943727B48502C009596AA0369A057FCCB7FF951EFFAFBBEE7A2DB8F6BA066AF5F49A92CBA4F5F12F1E566670707A27BA707464D9326DBEF7CBF206F87CCB90E4F3B9926F7A';
wwv_flow_imp.g_varchar2_table(78) := '60A02EBE81F9F3B5EDBBDF97C7D33C534F0FFCFA251DDEB9A3AC4FD4EB2D4D0AE4E535405DFA902D27A100B025D3758AD34CFEB37F74ACECD9DC2E972EFBD6B715689A5F60459DDABE5D27B6BF5927C1F3A75976EDE7B4E4BA1BEA7A4EA79EECC4EBAFE9';
wwv_flow_imp.g_varchar2_table(79) := 'D47B7FA86BF3975D7D8D96DC7063D3AC3E99397C481F3EFFAC0A6566DD3493022D8B4414F5354FD153D70EC1C92614A000A063D424309CC9EA4485B9FF1776F768CD030FCAE5F3D774DE46DD39776640EFFDF3CF55C8E7EBDA448FCFA72BBFFD5D799A6E';
wwv_flow_imp.g_varchar2_table(80) := 'D05A6D4CB9C1737AEF67FF54775FB302E555DFFB813CF3E6D7D6A006DDBB984E69CF138F6BB4C202417C0DD0A0C96BE06651003470721AAD69660892F9FC6FB0C2FBFFF5D75FAFF9D77CAE697E799D7DFD351DACF3AFD38B795D7BE5555A78D3E71B2DCD';
wwv_flow_imp.g_varchar2_table(81) := 'B3DA9EC13FBCABFD6FFC6E46AEB9E1A69B35EFCAAB67E4DC7371D2DED75ED5F10FDE2F7BE936BF5F2BA291B9681AD774A800058043133717CD36EFFD8FC7134A5658FCE7F26F7C4BC19E2573D1BC19B9E6C1679FD6D9830766E4DC0B96AFD0BA07CC4C89';
wwv_flow_imp.g_varchar2_table(82) := '967EBE359ED5E1577EAD81BD7B66C4B76BEB255A75DBED4DE31B3F7C48BB9FF9A5CC389C8936F31A60537BDB8C5872D2E614A00068CEBCCE485463E3E33A56FAFC6FE2CD6B1E6BFFF8AFE5F60766E4FA7371D29D4F3EA6D8B1633372693389CD65DFFF33';
wwv_flow_imp.g_varchar2_table(83) := '6BA70D2E26E2FAF8E95FCACCAD30139BF91C70D3ED77C8156E8E5FC5F9D1117DF4D38794C9E726E432B3026E6C6FC2BCC9A5000020004944415495B70927449A89FEC139250A007A41D50203A9B4FA53A9B2FB7774766AE3777F50F5F91A7EC762411F3D';
wwv_flow_imp.g_varchar2_table(84) := 'F68892A74ECD4853CD224957FFF8AFEC98D77E02C1C2C890FEF0CF0F2B5FA14F4D073ED2B3445BEFBA4BEED6F6E99CA6618E2D66333AF0CBA73478EAE4846D32CF919645236AF737C7F89B86816FE2865000347172EB1D9AF9F53F5A66F11FF397CFCACB';
wwv_flow_imp.g_varchar2_table(85) := 'AF50D7E7BF58EFCBCEE9F9763CFEA8E2278ECF481B02D1A8AEF8D18FED7D02108FE9A3271F57EADCB919F16D59BA4C5BEEBABB79E6A3281634F0E69B3AFCEEDB65BDE60702EA89846D7DA93423FDA8994F4A01D0CCD9AD736CFB46C694294C3C1ADEEBF3';
wwv_flow_imp.g_varchar2_table(86) := '6BF39D7729D264B3FFED7FF6190D1E2CBF1ADB7488CD62365BBEFD9DA679475DAB85F945BBFF57BFD2D0A1191A63B169B3D67DF116A9895E49C58F1FD38E271E2B4B6D16055ADBD6CA7C00B576464BF7A700B034F1B5866DBEFF3F38162BBB2A59A4BD5D';
wwv_flow_imp.g_varchar2_table(87) := '5BBFFE0DB9A3CDB534E9C9375ED3C93FD4F71BF58BF63D975CAAE5B79A416AF66EA7B6BFA913DBDF9A11801537DEACEEAB9AE72B0083944B27F5F1DFFDAD321506E2AE6F6B55D0E39911534EDA5C021400CD95CF198BE65C3AA3BE64B2EC00C0F94B966A';
wwv_flow_imp.g_varchar2_table(88) := 'FDD7BF3963D79FAB138FECDFA73DCF3F5BFFCBBB5CDA78DBEDEAD87249FDCFEDA0338E1E3A581AD93E13DB96FB1F50EBCA553371EA393BA7597F63FF3F3EA4A10AB3522E671CC09CE5C76917A600705AC6E6A0BD66D4BFF9FC6FB4C292A42BAEBE46DD37';
wwv_flow_imp.g_varchar2_table(89) := 'DC3407AD9BD94BE6E263FAE8D147941D19A9EB85CC74B5977EED9BF286C3753DAFD34E66A659FEE0A19F28979CDA024BE5E2356B025CF9973F96A70907C4F5BFF2928EEC283F2D30EB0238EDDF82B96B2F05C0DCD93BE6CAE6BBE383A3B1B2EFFF4D205B';
wwv_flow_imp.g_varchar2_table(90) := 'EEB94FAD4DBACADDE9DDBB74F4A517EB972F974BCB6FBA593D575C55BF733AF84C27DFD9AE936FFEBE7E11B85C5A7ADDF55A5A9A90AAF9B6F8DEDDDAF9F24B2A96999DB2CDEFD38A68B4F90227A2BA0B5000D49DB4F94E982B14B57774B4ECFB7F9FC7AB';
wwv_flow_imp.g_varchar2_table(91) := 'ADDFF8A6825D8B9B2F78490515B5F3E19F2B51A7EFD55BCDF7E9F7DE2777132D56339DC4971603FAC79F2A3D323C9DD37C726CA4BBE7FC78147773BE07CF0D9ED5878F3FA6F132537247BCDED28C80CC075097EED4D427A10068EAF4D627B84C3EAF7D15';
wwv_flow_imp.g_varchar2_table(92) := '1600EAE8EAD29ABBEF91AFBDA33E176CC0B32407CF69C7C33F53A1CC6790D536D9EDF369DBF7FF4CC1B6E6F836BDDAB827DB2FD1D7AB9D8F3F5A76B19BC98EBFF8BF7B42216DBDFF01859BB41835719A5FFE1FFFFC9F942CF3F964C0EDD1D26858A61060';
wwv_flow_imp.g_varchar2_table(93) := '43A092000500FD635281F8784E8763B1B2FB756FDCA8655FB845EE6073AF473EBC67970EFCEEB5294F5CE38D46B5FED6DB6566A863FB5381D1A347B4F7B9675518CF4E89C7EDF76BD3BD5F56EBF215533ADE4907ED7DEC110D9F3C316193CD8C804B2261';
wwv_flow_imp.g_varchar2_table(94) := '75049810C849399D8BB65200CC85BAC3AE39D90A80ABAEBE465D4DB4F46AA5F4244E1ED7A1D77FA7448D6BD747167569DD2DB72AD4C4BF4CEBD1AD93BD27B5FF9557941AAC6D72A0D0BC795A7FFB9D0A77F7D4A3190D7F8EA32F3EAFD315D650E80A85B4';
wwv_flow_imp.g_varchar2_table(95) := '28146CF83868E0DC0A5000CCADBF23AE3ED914C01B6FBB431D5BEDF99CAD90CFE9C46F5F55DFCE1D529985593E49ACCBA59E2BAFD2D2EB6F68DA77D2F5EEC4E609C089DFBFA1D31F7FA462A150F1F42EB75BDDDB2ED3D21B6E94DBEBAB77531AF67CFDEF';
wwv_flow_imp.g_varchar2_table(96) := 'BEAD23BF7FA36CFBE605025A1AB1FB0B93864D5E03358C02A08192D1A84D3935C912C0973EF835459635FF63D7CFE627131B53A2BF5FA9B151A54647954D24542C16146C6955A8AD4D91859D0A2D5C287F93BF1A99A97E9B4D2595E8EB537278B8649C89';
wwv_flow_imp.g_varchar2_table(97) := 'C7E5F278140887158C46156E6B5764C912F99B64B19F5A1C8777EDD0FE975F2E0D509D688B7ABD5ADDDA52CB29D9D742010A000B935E4BC8B9625127E209C52A0C7EBBEA877F215FC7BC5A4ECBBE0820300D81C49143DAFDF4D3CA15277E4262A604DEC8';
wwv_flow_imp.g_varchar2_table(98) := 'D2C0D310B6E3500A003BF23CE52893B99C4E26923253014FB4994FD9CC8A76CD3E0070CA801C88C00C088C0F9CD69EE79E536274E209AABC2EB736B5B7C96556E96243A08C0005005DA3A2C068765C27130999C98026DA0291A82EFBE19FCBDD440BAED0';
wwv_flow_imp.g_varchar2_table(99) := '2510687481626C4CFB5E784EC3BDBD1336D5E372695D5BABCC93003604CA095000D0372A0A9835007A2B4CD3DAD1B3441B1E78502E8B0660D1651068048123BF7A41FD7B764FFC644E2EAD6C892AEA632E8046C855A3B68102A05133D320EDEA4FA564BE';
wwv_flow_imp.g_varchar2_table(100) := '0228B7756FDE525AD1CE0CCE62430081D913E8FDFD1B3AFEEEDB650B00E60298BD5C38F54A14004ECDDC2CB5BB3791D4B94C66C2AB994FB0965F7995BAAFBB5E6AD26957678999CB2050B340FF07EFE9C86BBF9DF8DF4DB9B4381CD4C2207301D40C6BD1';
wwv_flow_imp.g_varchar2_table(101) := '01140016257B2AA19A018043650A00B7C7A355D7DFA8CE2BAE905CBC6B9C8A2FC72030558173BB76E8C0CB2F95290024B32AE0A270488C039CAA70F31F4701D0FC399E56846619E09132CB007BBC3EADBDE516CDDBBC755AD7E0600410A85D6068DF1EED';
wwv_flow_imp.g_varchar2_table(102) := '7BE1F9B205C08260505DA1A0DC7C0A503BAE254750005892E8A986793416D7589939007C7EBFD6DF79B75AD7AC9DEAE9390E0104A6283072E880F63CF374D9A3CD6C803DE11005C0147D6D388C02C0862C4F23C623B178D949804C01B0E99EFB1459B172';
wwv_flow_imp.g_varchar2_table(103) := '1A57E0500410988AC0D8F1A3DAF5C4E3650F6DF5F9B42C1A91F924900D8189042800E81715050E8FC514CFE526DCC71F0868F3571F546871378A082030CB02B15327B5F3D15F94BDAA990E78454B94026096F3E2A4CB510038295B73D0D643633125CA15';
wwv_flow_imp.g_varchar2_table(104) := '00C190B67EEDEB0A2CEC9C8396714904EC16480CF4EBE39FFFB7B20861AFB73417809727007677940AD15300D0352A0A542A0082A1B0B67EF35BAC03401F42600E04524383FAF0A7FF50F6CA018F476B4C01C06C8073901D675C9202C019799AB3561E1C';
wwv_flow_imp.g_varchar2_table(105) := '8D29999FF815402812D125DFFDBE3C91E89CB58F0B2360AB407A68501F5428007C6EB7D6B6B6C8FCC986C044021400F48BB20266F6FF83A3634A95590828D2D2A2ADDFFB010B01D18710980381CCF0903E78E82765160456E9D1FF5AD6039883CC38E792';
wwv_flow_imp.g_varchar2_table(106) := '1400CEC9D5ACB7D4ACFF7370AC7C01106D6BD7D6EF7D5F2E16029AF5DC704104322323A5570085C2C42B759AD1FFE609807915C086004F00E80335094CFA04A0DD14007F26B7CF57D379D9190104A62F90191BD1870F3DA442995774E609C01A0A80E943';
wwv_flow_imp.g_varchar2_table(107) := '37F1197802D0C4C9AD4768E61540B2DC2B80D6B6F3AF0002817A5C8A732080400D02E79F00FC44854261C2A3BC2EB7D6B6B5B024700DA6B6ED4A01605BC66B8CF7E0584CC9329F0186A2D1F38300C3911ACFCAEE0820305D81F4853100E5CEE377BB4B4F';
wwv_flow_imp.g_varchar2_table(108) := '001804385DE9E63D9E02A079735B97C826FD0CF0DBDF91AFADBD2ED7E224082050BD406AF09C3EFCC787CA1E10F478B49ACF00AB07B5704F0A000B935E4BC89566020C988980BEF92DF9E7CDAFE594EC8B00027510489E3BAB8FFEE9A765CF14F678B5B2';
wwv_flow_imp.g_varchar2_table(109) := '958980EA40DDB4A7A00068DAD4D627B0C36371C573E3139ECC4C05BCE5C1AF29B868717D2EC6591040A06A8144FF697DFCF0CFCAEE1FB93013206B01544D6ADD8E1400D6A5BCB6802B2F0614D0A6AF7C459125CB6A3B297B2380C0B40562278E6BE7E38F';
wwv_flow_imp.g_varchar2_table(110) := '963D0F8B014D9BB8E94F4001D0F4299E5E80C762718D56580E78C397EE55CBCA55D3BB48C31D6D3E80646B3E81E65A156FE4F021ED79FAA9B2696239E0E6EBC1F58E8802A0DEA24D76BE13F18486B3D909A3F2F87C5A7FEBED6ADFB8C9D151E78787D4BF';
wwv_flow_imp.g_varchar2_table(111) := '7BA7068F1F57269954B1CC678F8E0E92C6CBE5F628D8D2A2794B97AA6BD366791C3E7665F8C07EED7DEE9909336B4A9D85C1A016858272B31810BDBF8C0005005DA3A2C0A944528399CCC40580C7ABD537DDAC05975DEE58C5C2F090F6FDFA258D9C3AE5';
wwv_flow_imp.g_varchar2_table(112) := 'D8186878ED026D0B166AE357BE2277AB73BF6019DCB34BFB7FF562D902605128A4CE60402E0A80DA3B88254750005892E8A986D99B48EA5C9902C0E5766BC5D5576BF1B5D7496E674E377A6EFB9B3AB0FDADA9F2709C830536DC74B3E65D79B5632318F8';
wwv_flow_imp.g_varchar2_table(113) := 'F07D1DFEEDAB650A00971687435A1864922EC72678161A4E01300BC84EBEC4E9644A67D2E9B221746FDEA215B7DDEED802E0E063BFD0D993279D9C22DA3E458125976ED3B25B6E9BE2D1737FD8A9DFBFA113EFBE3D6143DC72694924AC8E807FEE1B4A0B';
wwv_flow_imp.g_varchar2_table(114) := '1A568002A06153D3180D3B9B4EAB2F992ADB98F69E25DAF8C0D7E4F27A1BA3C135B6E2C0138FE9DCF163351EC5EECD20B0F8D26D5AE9D402A050D0E15FBDA0817D7BCB16002B5A226A619D8E66E8AA33160305C08CD136C789CD00403310B0DC168CB668';
wwv_flow_imp.g_varchar2_table(115) := 'DB0FFF5C6E9F337F691C7FE905F5EEDEDD1CC9228A9A04965F7D8D7A6EB8A9A6631A65E7C2D888F6BDF08246FA7A272E005C2EAD6321A0464957C3B68302A06153D3180D4BE4723A194F285366C111B7DBADAB7EFCD7F284C28DD1E01A5BD1FFF65B3AF2';
wwv_flow_imp.g_varchar2_table(116) := 'D69B351EC5EECD20B0F68BB768E136670E601DEFEFD3AE679E562A1E9F30156625C08DED6D7C01D00C1D750663A0009841DC663875265FD0C94442A61028B75DF1FD3F5360C14247863BBC77B7F6BDFCB28A65965475645034BA2A812D5F7D50AD2B5656';
wwv_flow_imp.g_varchar2_table(117) := 'B56FA3ED143F7A587B7EF99472C589E7AC08B83DDAD0DEDA68CDA63D0D264001D0600969C4E6549A0BC0B4F792FB1F50D4A19301257A4F6ACF8B2F687C6C6C42FAAECD5BB4E17FF9778D9816DA3489C0BEFFFBFF54FFEE5D13EFE57269DB77BEA770E722';
wwv_flow_imp.g_varchar2_table(118) := '473A0EEEDCA183BF7E59054D5C0044BD5EAD6E6D71646C347AF604280066CFDAB157EA4FA63450E14B800DB7DDA6795BB73932BEF15452BB9E7A52A9FED3133F4AF50774C3DFFF83C4B7D4CECA6FB1A8DFFFE50F951B9F78122B6F34AACBBEF51DF95A9C';
wwv_flow_imp.g_varchar2_table(119) := 'F92BB9EFCD3774EC9D89BF00308932B3002E8D38F3B59CB33A9AB35B4B01E0ECFCCD4AEBCD44406642A072DBAA6BAF53D775D7CF4A5BEA7D91A28AA577A9B14307CB9EFABAFFE3FF927F29EB1DD4DB7E26CF973D7E5C6FFDFBFFB5EC255A56ADD696BBBF';
wwv_flow_imp.g_varchar2_table(120) := '2497DF99DFC91F7AE6973A53A1CF768542A55900D910A824400140FF9854C0BCFF3F34162BBB5FF7A64D5A71FB9D8E9D0BE0D0ABBFD1998F3E281BDFA57FFE97EAF8FC1727756287C611187EF5157DFCD37F28DBA0AEABAED6AAEB6F706C9FDDF5C83F6B';
wwv_flow_imp.g_varchar2_table(121) := 'ACB7FCEC95CB2211E600689CEED8B02DA10068D8D4344EC3B28582F68E8C966D50C7E21EADB9EB2EF9DA3B1AA7D135B4E4F4871FE8E86F7F53F6889537DEACE53FFA710D6764D7B91638FAB7FF45C7DF7CA36C3356DF71A7166DDE3AD7CD9CD2F58BE359';
wwv_flow_imp.g_varchar2_table(122) := '7DF4F0C34A0D9E9DF07833007069342CB31C301B023C01A00F4C4B2057286AEFE8A80AE5461C0743DAF495FB15EAEE99D675E6EAE0D16347B4FBC927CA5EBE7551972EFF0FFF71AE9AC775A720F0DEBFF91F143F3BF10DD29C6EEB37BFAD1687F6D7ECB9';
wwv_flow_imp.g_varchar2_table(123) := 'B3FAF8A927341E9BF8A99CB9F12F8B46E477BBA720C7213609F004C0A66C4F315673E33F381653BAC22A799BEFFBB2DAD6AC9BE215E6F6303300F0C3877F56B11137FDCDDFC91D8DCE6D43B97A5502F9D151BDF1DFFF75C57DAFFCAB7F2D7F3852D5F91A';
wwv_flow_imp.g_varchar2_table(124) := '6DA7D8FE7DDAFDF2AF5428B34C77BBDFAFE55167C6D668D6CDDE1E0A8066CF709DE29BEC53C0E5975FA11E87BE27CF8F8DEAFD877FA65CB2FC40C7ABFEA77FABC836677EE950A72EE098D3C43F784FEFFDA7F24F6C3C8180AEFEAB7F2D97C7998FC84FBF';
wwv_flow_imp.g_varchar2_table(125) := 'F61B1DFDA0FC9895CE60B0B410101B02930950004C26C4FF5E1218BAF025C0C45F1D4B1D664D806F7CCB995AE3591D78E1799D3B7CA86CFB577DF1162DFBB3BF70667C96B5FAF87FFD5B1D7DFD7765A39EB77499367CEDEB925C8E9329168BDAF7B37FD2';
wwv_flow_imp.g_varchar2_table(126) := 'F0D93365DB6E7EFD9BA7006C084C264001309910FF7B49C0CC0878706C4CF932E30042ED1DDAFAE0D7E46D6D73A4D8E08E8FB5FF9597CBB6DD1B0CEAFAFFF7FF938BBF581B3ABFC56C566FFED58F94CB8D4FDC4E3347FE4D9FD7822BAE6CE838CA356E3C';
wwv_flow_imp.g_varchar2_table(127) := '93D607FFE56F942FE427DCC594346BDB5A15F23873796E4726C5C18DA6007070F266BBE9FB4646CBAE09E0F5F9B5E18E3BD5BA6EFD6C37AB2ED71B4FC4F4DEDFFF9D8A65D63C3017B9ECC77FADB6EB6FACCBF538C9CC088CBCFE9A3EFAAF7F57F6E49E50';
wwv_flow_imp.g_varchar2_table(128) := '48977FFBBBF2B5B5CF4C0366F8ACB113C7B5F3F147CB5EC57C01B0A6AD45662D0036042613A000984C88FFFD1381C9C6012CBBEC722DF9C22D0E152B6AE723FFAC58EFC4ABAB99A03A376CD4A67FF7EF1D1A9F1DCDDEF5BFFF6F3A77B0FCA44EF3D6AED3';
wwv_flow_imp.g_varchar2_table(129) := '867BBFEC508CA27AB7BFA5E3DBDF2ADB7E3303E09248D8812F371C9A1287379B02C0E1099CCDE69F4DA7D5974C95BD64EBC24E6DF9DEF71DF96ED5047576F74E1D7CF925A9CC6B0EB3CF0DFFE13FCABBA86B36D9B9569502B93303FAFDFFFC3F96DDDBE5';
wwv_flow_imp.g_varchar2_table(130) := '766BDD5D5FD2FCF51BAA3C6363ED66BEFFDFFFD4931A3A7572C28699DFFCE6F33FDEFF3756DE1AB93514008D9C9D066B5B6C7C5C27E249E58A8589FF0272B975CD5FFF6BB983CE1C819C4DA7F4D13FFD54B9324BAC9AA037DCF715753D680690B1359AC0';
wwv_flow_imp.g_varchar2_table(131) := 'E947FE59FB9F7FB66CB302F31768CBFD5F55C0A1E354B26323DAF1D043CA9659B9D22D97D6B7B7F2FD7FA375CC066E0F05400327A7D19A365E28E878BCF2D2C0DBBEF92D85BB97345AD3AB6ECF815FBFA4733B7794DD3FD4DAA66BFEF3DFB03850D5A2B3';
wwv_flow_imp.g_varchar2_table(132) := 'B363319FD7F6FFEEAF944D26CA5E70D155576BF58D37CF4E8366E02AA36609E0A79E9259BF62A2CD4CFCB3B1DD99837067808B5356214001500512BBFC8B406F22A973994C59923537DEA4CEABAE76EC6B8091A347B4EFB967CA4EB26202BFEADFFC5B45';
wwv_flow_imp.g_varchar2_table(133) := '2E654E8046FAF722FEC1FB7AEF3FFD3F159BB4E55BDF51EBE2EE466A764D6D39B5FD4D9DA8F0FEBFCDEFD70A2600AAC9D4F69D29006CEF0135C63F9CC9EA44A2FCAFAC054B9669CDFDF7CBED73E677C885F1AC763EF9841215165AA9918CDD1B4020B468';
wwv_flow_imp.g_varchar2_table(134) := '91B67DF3DB8E9DFCA798CD68CFB3CF68F4F8B10935CDFBFFEE70580B82CE5CDDB001BA88954DA000B032ED530FDA2C0C643E072C372190D7EDD6B63FFF4BF91DFA9ED5C8F4FDE11D1D7BE3F5A9237164C30998899CBAB65DDE70EDAAB64199D37DFAF8E9';
wwv_flow_imp.g_varchar2_table(135) := '5F2A57E6158779FC6F26000AB30050B5A4EC679ED30E7CE7C1727F970384C09F0854B32EC0DA5B6FD3C24B9CFB883C333CA4F7CD52B215BE06A06B3847C0ED0FE88ABFF84BF94261E734FA332D3DF3CE761D7AF3F765DBDFE2F369550B6B553836C173D4';
wwv_flow_imp.g_varchar2_table(136) := '700A80398277F265FB53290DA4D2654398BF7C85D6DD7B9F5C7EA73E8E2CEAE00BCFEBECBEBD4E4E136DBF20B060DD3AADBBC7A9DFFEAB34E86FEF2F1ED6485F5FD99C7685425A140A9273046A12A000A8898B9D8D40269FD7FED158D9D1C8DE40505BEE';
wwv_flow_imp.g_varchar2_table(137) := 'BB4FE1A5CB1D0B961E19D6870FFD4466EE7536E70A9899FF2E79F0EB0A2DEC746C1029F3F8FFD15FA85066354E97F9FCAFAD4501A6FF756C8EE7AAE114007325EFF0EB1E1C8D2959E67B6413DAB22BAED4929BBFE0E8288FBEF6AA4E7FF0BEA363B0BDF1';
wwv_flow_imp.g_varchar2_table(138) := '3DD75DAFE5D75EE7688653AFBEA2131F7D583686A8D7AB952D51B999FED7D1799E8BC65300CC857A135C73B2D700E1F90B74E9F77F2097CBEDD868B389B8763DF984D215565E736C7016343CB870A1B6DCFF80FCD116C7469BCF66B4F3A19F2859E1CB9B';
wwv_flow_imp.g_varchar2_table(139) := 'A591B0CC14C06C08D42A400150AB18FB970492B99C8EC5121A2F372BA0C7A34B1E78509125CB1C2D767AD74E1DFD75E5E9811D1D6013377EF5BD5FD6A2B5EB1C1D61BCF7A4763EF248D9D76DE6F3BF4DEDEDF2BA59FCC7D1899EA3C65300CC11BCD32F6B';
wwv_flow_imp.g_varchar2_table(140) := 'BE06308B038D8E97597655D2D2AD9768E96D77383A54B3ACECDEE79E55ECC8E18A712CEEEAD2E26EE74E32E3A424F5F5F5A9BFBFBF629323CB966BCB030FCAE3E02750E62B94D26BA80F3F281B6BC4EBD59A56E73EE17052BF6BC6B652003463566729A6';
wwv_flow_imp.g_varchar2_table(141) := 'A14C56272B3C9AF4FB03DAF6A37F253328D0C9DBE8E039EDF9D93FC94C375B695BB37A8D5ADB5A9D1C6AC3B77D6C7454870E572EC63CC1A0363CF875B5752E6AF8782A35301F1BD5478F3EAACCE8C884BB31F98FA3D3DB108DA70068883438B311B94251';
wwv_flow_imp.g_varchar2_table(142) := '7B4747659E0694DBB67EF501B5AC58E5CC002FB4DA7C8675E837AFE8ECC71F558CC3E3F56AC3860D0AF89D390B62A3272993CD6ADFDE7DCA57187C6A62E8DC7699D67CD12C4BEDECC7E2C3BB776AEF4BBF2A9B1633EA7F6534C2E8FF46EFB80DDC3E0A80';
wwv_flow_imp.g_varchar2_table(143) := '064E4EA337CDDCF6CDE240A3D96CD9A62E5CB3566BEFFE92E4F5357A3815DB974DA5F4C13FFCBD0A15D64130270845225ABF6E1D23B2EB9C6D5364EE3F7040A90A4F9CCC25CD8A7F5BBFF675F9C3913AB760764F572CE4B5FFF1C7CA2EFD6B5A333F10D0';
wwv_flow_imp.g_varchar2_table(144) := '92887327379A5D51AE3691000500FD625A02A3D9711DABB07CAEC7E32D2DC16ADEC93A7D3BB373870E990181936C1DF3E66BE50AE7C73B599CB3F9BF1F3D765CC34383935E72FD97EFD7FCD56B26DDAFD177881F3FAA5DCF3C5D71512AB3F08F5900880D';
wwv_flow_imp.g_varchar2_table(145) := '81A90A50004C558EE34A02F962517B86475528BB3A80B468C346ADBEFB1EC78B15F3391D7CF53715970BBE1864E7A22E2DE96150603D927EAAB74F67062A0FFA33D759B065ABCC34D42EB7A71E979DD373EC7FE2310D9659F8C7342CE0769706FF99B537';
wwv_flow_imp.g_varchar2_table(146) := 'D81098AA0005C054E538EE13815389A4062B3C1AF70402BAF42B5F55B06789E3D5B2F131ED7EFA19A5064E4F1A8BF92AC07C1DC0367581DEFE7E0D549802F7E29983E6D1FF37BE295F3034F58B35C891C97367B4F3673F53BE507ED02953FF3648B21CDE';
wwv_flow_imp.g_varchar2_table(147) := '0C0A008727B0119A9FCAE575341ED778A150B6393DEBD76BF997EE6B84E64EBB0DC9D898763DFC33E526791F6D2EB4B8BB478BBB9C3D1A7DDA60533C416FFF8006FA7A273DDA1B8968CBD7BFA57047C7A4FB36FE0E451D7EF1050DECDD53B6A96EB9B4B1';
wwv_flow_imp.g_varchar2_table(148) := 'BD955FFF8D9FCC866F210540C3A7C8190D9CF42980D7A7CB7EF003F9DB9AE12F6969E8E4091D7AE179E512F1491344113029D19FEC70BA7F40A7ABB9F987C35A7BCF7DEA58B2B4F68B34E011D9A1737AEF1F7F5A7125CA76BFBFB4F42F1B02D315A00098';
wwv_flow_imp.g_varchar2_table(149) := 'AE20C79704D2F9BC0E8C8E551809202DD976999635C1E7591753DEB767B74EBCFA8A0A15BE82B8B86F57D76275772FA6B75421D0D7775AFDFD93BF6291CBA555F77D595DABD756715627EC52D4A9D77FA713EFFDA16C63BD2E9756B444652600624360BA';
wwv_flow_imp.g_varchar2_table(150) := '021400D315E4F84F04CCCC80C3156E863E9F4FDBFEE247F239FC13AD8B019BF9018E7FF081FA5E7BB5AA5EB060C1422D5DBA442E166D99D0CBACBC78E2C4490D0E9E9BDCD3E5D2925B6F2BCD366956C36B862D7D66A0B4EA5FBEC2BF4366CE7F33F73F1B';
wwv_flow_imp.g_varchar2_table(151) := '02F510A000A88722E7280998B10007C72A3F055871ED75EABEEEFAA611CB170B3AF6D6760DBCF3565531455A5AB572C50AF97DFC82FB3458763CA723478F29191FABCA71D1D5D76AC5F5D73B7BAADFCF446A9E269DAAB0EA9F2974D6B44615E6D77F557D';
wwv_flow_imp.g_varchar2_table(152) := '849D2617A00098DC883D6A1038128B2B56617D007F6BAB2E7DF0EBF2B537C7580043638A8083CF3FAFA103FBAA92F2FAFD5AB57CB9A22DCCE16EC0E2B1988E1C3FAE5C15AF52CCFE0B2FBB5CAB6FFEBCDC4DF0B9DFC50E931E1AD4AE477FA16C3259B60F';
wwv_flow_imp.g_varchar2_table(153) := '75F8FD5A1A8D34C9F38EAAFE5561A71916A000986160DB4E6F66053C114F569C1760F99557ABE7A69B9B8A263F9ED5FE179ED7C8E14355C7D5DDDDA32ECBBF10E8EF1F505F1583FD2EA276AC59AB7577DE258FBF9996BF2D6AFF934F68F0D8D1B27DC7BC';
wwv_flow_imp.g_varchar2_table(154) := 'E458DBDAAA90D7F9731C54FD2F083BCEB80005C08C13DB75013365EBB178A2E25300B7C7A34BBFFAA0424B9DBD54F067336B8A80BD8F3FAAB1D3550C60BB70B0790AB074C9128542CEFF7EBD969E9E4AA574E2D4292562B1AA0F6B5DBC581B1FF85A93DD';
wwv_flow_imp.g_varchar2_table(155) := 'FCA5F8A913DAF1E823151D58F5AFEA6EC28E35085000D480C5AED5098C65C74BF30254DA3ABA7BB4E1EBDF94ABC966322BE4733AFACA2B1AD8BDB33AAC0B7B75762D2E4D1AE469F275DDCD0252A7FBFB75B69A51FE9F125CB465AB567EE18B72FB9A6BEA';
wwv_flow_imp.g_varchar2_table(156) := 'DBC285A271B442D168BEFB5F1A0DCB7CFEC786403D052800EAA9C9B94A02E62980190B90C8E52A8A6CF8D23D9AB77E63F3A9158BEA7DF71D9D7CEFDD49170FFA74F0BE6050DD8B176B7E534C68F399B416A573C3C3EAEB3FAD5C3A5D75CEDD3E9F96DF78';
wwv_flow_imp.g_varchar2_table(157) := 'B3165F7289D444EFFC2F029CDBF1910EBCF2EB8A1EAD3E9F56B644AB36634704AA15A000A8568AFD6A123037FF4363951FEF06A2515DFAEDEFCA1B6DCEC170C3C78E9496111E1F1DADC92E146D51CFE22EB536C920C1B1584CBDA7FB958A57FFB8DF8099';
wwv_flow_imp.g_varchar2_table(158) := '19FED6DE71973A56ACACC9CF293B678607B5EB89C795192BFFE583F9F56F6EFE51BE1A714A5A1DD54E0A0047A5CB598D354B058F4C32B27BF9E557AAE7F39F77FCDAEDE532934E2575E0F9E7143F71BCE6E4855B5AB5A8B353EDAD2D8E9B3BC07CD33F3C';
wwv_flow_imp.g_varchar2_table(159) := '36A63367CECA4C9D5CEBD6B26295D6DE7E9B82D1D65A0F75CCFE875F7CBEE294BF2690CE60505DE11023FF1D935567359402C059F972546B53F9BC8EC5E2CA565823C0130A69CB57EE5764718FA362ABA5B1B9F1719D7CF71D9D7E677B2D877DB2AF3F1C';
wwv_flow_imp.g_varchar2_table(160) := '56E782859A3F6F5EC38F1130EFF887868674E6DCD98A9FB49583707BBDEABAE65A2DB9EC72799B6AA4FF1F479C38DDA79D8F3DA24285D76466D6BF0DED6DF23071D494FEBDE1A0C90528002637628F69089C49A5753A95AA7886F92B5769DDFD5F6D9A19';
wwv_flow_imp.g_varchar2_table(161) := 'DD260CB658D0B9FDFB74F8955F579CE9AD1294B939B677CC537B7BBB5A2291862906F285A2C612098D0C0F6B7464B8E24DAD527CBE688B56DF72ABE6AD5EDDB44F844CFC85DCB8763FF2CF8A0D0C94E5309FFD7587C35A106CA6CF1DA7F1170987CE8800';
wwv_flow_imp.g_varchar2_table(162) := '05C08CB072D28B02F90B030293157EE998BFECD6DF739FE6AD5BDFF47099E121ED7FE139C52BFCE55F0D825962B9A5B54DED6D6D6A8D46E59DE5AF07CC2FFDB1785C23A3A38A8D8D2A5F6139E86AE2892EEAD2FABBBFA440C7BC6A7677F43E6777EFD2C1';
wwv_flow_imp.g_varchar2_table(163) := '975EAC1843D4EBD5AA96A8E35EFD383A3116369E02C0C2A4CF76C8E6E67F682C2E33777EB9CD3CE6DEF6BD1FC81B69FED1CEC5DCB886F6EFD3D1B7DF56767464DAE97079BC8A46A3A57F4291B082A19082E6F3CA3A3D3A36EFF3338582D2C99492C9A412';
wwv_flow_imp.g_varchar2_table(164) := 'F1B8E2F1B88AF9CA5F7954135860C1022DBFEC72CDDFBC45AE261CE5FF5983F4D8A8F63CFEA8D223E5F36E06FE99D5FE5AFDBE6A08D90781290B50004C998E036B113093039959022B6D9D9B366BD56DB7CBEDB1639EFC7C2AA9BEF7FEA081830794AD70';
wwv_flow_imp.g_varchar2_table(165) := '43A8C5B9B4AFCB25B7DFAF7030A47030A8402020AFD72B8FCF2BAFC72B8FD7238FDB5D5A4FDEDCDCCD539A7CA1A07C2EAF5C3FE63562000017DE494441543EA7FC784EB95C4E994C46C9745AC974EAFC8A87C5F2055CAD6DF477CC53CFB66D3239F70482';
wwv_flow_imp.g_varchar2_table(166) := 'B51EEEC8FD4D017CF0F9E74AAF822A6D0B0201F5B0E08F2373ECB4465300382D630E6DAF191078642CAE5CB150318255B7DCAAAE4B2F736894536B76666C547DBB76EACCC71F293FC97889A95DA1718EF29A018D976E53F796ADF2B734EF08FF89C47BDF';
wwv_flow_imp.g_varchar2_table(167) := 'D9AEE36FFEBE6232BC2EB7D6B7B7CA0C00644360A6052800665A98F37F2270369D565FB2F280408FD7A78D5FB95FADCB965B279749A774FA83F7D5FFC1FBE77F7137D1667EE5775D7E85BA2EBF5C014B7EF17F3A7DF181D3DAF1F0CF2B3E4531B77CF3C9';
wwv_flow_imp.g_varchar2_table(168) := '9FF9F48F0D81D910A000980D65AE51123033041E8D2514CF8D571409B5B569AB99202864E7BAE799784CFD3B76E8CCEE9D1AAF61AEFC46EC66BE9656756EDEACAECBAF54C0D21B5B2636A63D4F3EAED4E060C51499F9FE579B391F1A3191B4A929052800';
wwv_flow_imp.g_varchar2_table(169) := '9A32AD8D1B949913E0E0E8987293BC4F5E74613C8019E066E756547A785867F6ECD6B96347353E3AA67C265DD7F7F033E2EA72C9130CC9178DA873C3462D58BB4EC1265AFAB956333350F2E0AF5FD6B93DBB2B1E6A1EFDAF6E8D2AE861B5BF5A8DD97FEA';
wwv_flow_imp.g_varchar2_table(170) := '02140053B7E3C8290A0C6632EA4DA42A7E15604EBDFE8E3B357FF3D6295EA5790E2B140B8AF7F569E8F8310D1F3FA6CCE0900AD94C430568E6EC0F762E52C78A159AB76A95220B3B6546B3DBBE0D7CF8BE0EFFF6D58A0C46694534CAA87FDB3BCB1CC44F';
wwv_flow_imp.g_varchar2_table(171) := '013007E85C523A9948682853F93DB72F14D1C6FBEF57B46B31641704F2C582D2998C1267CE68E8D041C58E1CD67885B9E467122E306FBE22CB97AB63E5AA528E8201BF3C2EF74C5ED251E78EF79ED2CEC71F55319FAFD8EE0EBF5FCBA21147C546639B43';
wwv_flow_imp.g_varchar2_table(172) := '8002A039F2E8B828CC2B80A363712527F9963CDCD9A9ADDFF8B63C3EBE89FE6C928BC58272998C32B1981267CD9CFB31651209E59209E55249E55369E5E231E56B587DEFD3D7F046A3A5C7F9DE50489E70A8344743201456A4A35DE179F314686995CF2C';
wwv_flow_imp.g_varchar2_table(173) := '51CB4DFF4FFEFD1B4F26B4EBE19F293549711636EFFD5BA27233EADF717F8735438329009A218B0E8D2193CF97560C9C6C3CC082152BB5E6CBF7CBCDFBD149336DBE3537B3F48DA752CA8E8D2A934C2A9D48289B882B572A0E4C6170FEBBFE62212F3337';
wwv_flow_imp.g_varchar2_table(174) := '93CBEB91DB1FB870A30F9756E10B989BBDF9331C5670DE7C79BCDED26C83E6FFB0551630133D99C7FE6776EEA8B8A379EF6F26FC61A53F7AD45C095000CC953CD72D099C4B674A9F06569A25D0ECB7FCEAABD57DFD4D4C8D3A8D7E638CCD543E66F21FB3';
wwv_flow_imp.g_varchar2_table(175) := '150BC5521160D618309BCB75FEF6CE4D7EEAC846F8E4F6B7746AFB5B939E646924A27901FFA4FBB10302332540013053B29CB76A815389A4CCC0C08A9BCBA515D7DFA0EEABAFADFABCEC88C06C0B9C7AFB2D9D7C7BBB8A1556C0346D32377E5300B02130';
wwv_flow_imp.g_varchar2_table(176) := '9702140073A9CFB54B02E385828EC512938E07309304ADBAF1462DBCEC0AE410683081A2CEECDAA5C3BFF9F5A483FECC423F2B5AA22CF3DB6019B4B13914003666BD01633EBF6050ACC27241E71B6D1E576FBCF7CB6A5BB9AA01A3A049B60A0C1F3AA07D';
wwv_flow_imp.g_varchar2_table(177) := 'CF3F37E9CDDFE73EFFDEDF4CFAC386C05C0B5000CC7506B8FE2702C3996CE9F3C0C9969C314F02363FF0A0A23D4BD04360CE05468F1ED1DEE79E5161BCF20C97667CC5CA96A85AF8A265CE734603CE0B5000D0131A4AC00C0AEC4D26276D53A0B5551BEF';
wwv_flow_imp.g_varchar2_table(178) := 'BC4BE125CB26DD971D1098298158EF29ED7FEE196513898A973093227587439A1F0CCC5453382F02350B5000D44CC601332D702695D6E92A56C50BCD9BAF4DF7DCA3C082CE996E12E747E04F04D243E7B4FB89C74BF33054DACC2FFFCE50505DA1108A08';
wwv_flow_imp.g_varchar2_table(179) := '349400054043A583C65C14E84D24756EB22F0324853A3AB4F9FE07E4B778BE797ACDEC0B98057E76FEE26165AB58AC697E20A025113B17B69AFDCC70C55A0428006AD162DF591330E300CCE7814355140166D29A4D5FBA47A1254B67AD7D5CC85E81D8C9';
wwv_flow_imp.g_varchar2_table(180) := '133AF0E2F3CAC4E3932298F7FD2BA21166FA9B548A1DE6428002602ED4B9665502F9625127E3098D4E32B8CA9CCC1F6DD1BA2F7C41AD6BD757756E7642602A02A3870FE9C0AF5FD27815E354CCE77EAB58DE772ACC1C334B021400B304CD65A626608A00';
wwv_flow_imp.g_varchar2_table(181) := 'F379607A920555CCD9BD8180D6DE7A9B3AD66F28CD67C78640FD048A1ADAB7AF74F39F6CB4BFB966D8636EFE7CEB5F3F7FCE341302140033A1CA39EB2A90CD17742C1E57AA8A22C0DCF6577DE18BEABCEC72A6B4AD6B166C3E5951FDEFBFA7A3AFFFEE93';
wwv_flow_imp.g_varchar2_table(182) := '69942B69F8DD6EAD696D91F9E69F0D814616A00068E4ECD0B64F0412B95C694C40354F0264A60DBEEA2A2D66ED007AD03405CC5A09A7DE785DA73EFC60D2E97DCDA5CCCD7F554B8B021E6EFED3A4E7F05910A0009805642E511F814CBEA0A3B1B8326615';
wwv_flow_imp.g_varchar2_table(183) := 'BBC936974B8B376DD68A5B6F93CBC3AC6B9371F1BFFFA940219BD1B1375E57FF8E8FCD0A4A931205DC9ED2637F5304B021E004010A00276489367E2260D60D3899482A56C5C04073D08275EBB4EAB63BE40D045144A06A81F16442475FFBADCEEDDB5BD5';
wwv_flow_imp.g_varchar2_table(184) := '31666A5F33DADFCBCDBF2A2F766A0C010A80C6C803ADA841205B28A82F99D468B6F2D4AB174FD9327F8156DF75B7C29D8B6AB80ABBDA2A903C33A003CF3DA7E4C850550451AF4F2B5A222CEE5395163B3592000540236583B6542D60D6B43F91486A249B';
wwv_flow_imp.g_varchar2_table(185) := 'ADEA186F38AC95D75CAB85976E93DC9EAA8E6127BB048AF99CCEECF85847DE785DC55CAEAAE03BFC7E2D8D46F8E6A42A2D766A34010A8046CB08EDA949A02F99D2D974BABA63CCB880CD5BB4E4DA6BE56B6DAFEE18F6B242607C6C5427B6BFA581DDBBAA';
wwv_flow_imp.g_varchar2_table(186) := '8AD77C6DB230787E7A5F175F9C5665C64E8D274001D07839A145350898A15967AB5C3BE0E2695BE6CDD3EADB6E57B88799036BA06EDA5D13BDA774E8A517951819A92A46B3B0CFC25080B9FDABD262A74616A00068E4ECD0B6AA05063399D26782D56E2E';
wwv_flow_imp.g_varchar2_table(187) := '974B6BAFB9560BAEBE46F2FAAA3D8CFD9A49A05850FF9BBFD79177DFA93A2AF363BF271C6655BFAAC5D8B1910528001A393BB4AD2681B1EC786929613348B0DA6DE1CA555AF1B9EBE4EB5A5CED21ECD70402D9A1419D7AE377EA3F7CB8EA68CC677E3D91';
wwv_flow_imp.g_varchar2_table(188) := '90CCFCFE6C083483000540336491183E1148E5F2A522C04C1C54ED166D69D1EACF7D4E91CD5B2517DF7057EBE6C4FD8AE3598DEEDBA713EFBEADF8E868D521989BFEE27048210F0348AB4663C78617A00068F814D1C05A050AC562E975C070955F0898F3';
wwv_flow_imp.g_varchar2_table(189) := '9706752D5AA4659FFF82FC8C0DA895DC11FB674E9DD4B1DFBEAAC1B3676A6AEFBC80BFF4D8DFCD68BF9ADCD8B9F10528001A3F47B4700A026670E07026A3DE444A054D3E8BDBC54B783C5EF5AC5DABAEEBAE97B7BD630A57E6904613C80D9ED3E9F7DED5';
wwv_flow_imp.g_varchar2_table(190) := 'E9FDFB95ABE1C990D77C35120ECB14006C0834A3000540336695983E1148E672A59903AB5A43E0536EADEDED5A7AF5356A5DBB4E2E661174648F2AE6C635B667B78EBDF38E12B1B19A62087A3CEA0EF3BEBF263476769C000580E35246836B15304B0A9F';
wwv_flow_imp.g_varchar2_table(191) := '88273456E5F4C19F3EFFA2E5CBB5F4FA1BE4EFEAAEF5B2EC3F67024565FBFB75F28DD73570F244CDAD68F5F9B424126635BF9AE538C0690214004ECB18ED9D92C0C5F9020652E99A5E09988B795C2E2DDDB8499DD77E8ED70253D29FBD83F223C3EA7BEB';
wwv_flow_imp.g_varchar2_table(192) := '4DF5EEDB57739ECD3890AE70A834C10F73FBCC5ECEB8D2DC095000CC9D3D579E0381E14C5667D2E99A5F09981B42A4B555DD9B36AB63F36679DACC4C82DC26E62085135E3237744EA37BF7EAD49EDD4AC46235372BE076AB2712E613BF9AE538C0C90214';
wwv_flow_imp.g_varchar2_table(193) := '004ECE1E6D9F92809927A03F99AAE92B814F5FA86DDE7C2D5AB74E1D1B37C9D361060A52084C2911D33EA8A8DCD0A086F6ED53EF9EDD4A8DD5F69EDF5CDE64AECDEF2FBDEFF7B192DFB433C2099C254001E0AC7CD1DA3A0A98B902CC2B816A9716FEECA5';
wwv_flow_imp.g_varchar2_table(194) := 'FD1EAF166FDAA8CECBAF906FFEC23AB68C53551228AAA8D4B9B31A78EF3DF5EFDDAB62B1FA899F3E7DDEA8D75B7AE46F96F26543C046010A001BB34ECC9F08983903E2E3399945853285FC9464CC2FC7452B5769E125972AB4620593094D4971F283F2B9';
wwv_flow_imp.g_varchar2_table(195) := '71C58E1DD5E98F3ED2D8A953CA4F315F7EB75B0B8241CD0FF8F9B67F7276F66862010A80264E2EA1552F902B14D5973CBFBC70F5B306FCF1F9BD3E9F3A7B96A873CB1605BB16CB1D8DB2F470F5299878CF6251D9D8A8468E1E53FFAE5D4A0C9EAD7AA9DE';
wwv_flow_imp.g_varchar2_table(196) := 'CF9ED025973A023E2D0A85648A0036046C17A000B0BD0710FF1F0998D702667C40BC860963FEF44623054221756DD8A88E75EB1432EB0C7878CC5C4B571BCFA4153B7D5A83870F69F4D851656B98B677A2EB98C7FD662ADF308FFB6B4903FB36B9000540';
wwv_flow_imp.g_varchar2_table(197) := '932798F06A1730AF05CC34C2E7D21965F2F9293F113057369F1046A32D5AB06E9DDAD66F5060D122B9586FE04F9262DEEBE70B05254E9FD6D0DE3D1A3C7450D964F5AB3B4E946533C02FE4F16A5ED0AF76BFBF940B360410F817010A007A03026504CC04';
wwv_flow_imp.g_varchar2_table(198) := '4243195308A46B5A61B01CA89966B8A3A35D0BD6AC55CBAAD5F275765AFF8AA090CD2A79A65F43870F69F0E871A5478755CC4F6D2CC6A7DDCDCA7DF38301DEF3F36F370215042800E81E084C2260C60498A586CFA6D335AD3258E9B4BE5058AD8BBBD4BE';
wwv_flow_imp.g_varchar2_table(199) := '7C855ABA162BD0D62A8FCF2F95969A6DD65FAA4515C7C795CD64941E8B69B4AFB7F4783F796640F974BA2EFDD08CE83713F9B4FA7D4DAB5817284E8280F99B66E03B0F4E75CC1380085825609E088C66C73594C9C82C3B5CCB224395A0CCA3E94028AC68';
wwv_flow_imp.g_varchar2_table(200) := '4F8FDA7A7A145ED4A5C0BC79F284423203D79CBC150A05E53369A5870615EB3BADB15327153BDDA75C3A3DAD572B9F3671CBA588CF5BFAB51FF5F978D4EFE40E43DB675580026056B9B9583308983102A610304F045275785C3D9149C0E7534B6B9B5A3B';
wwv_flow_imp.g_varchar2_table(201) := '3B15ED5AA4406797BC0B16C8150834F01382A20A898472E7CE2A3D38A878FF698D0E9CD1D8E8E8943FD9ABD45F4C69646EF866B53EF38E9F0D01046A13A000A8CD8BBD11F844C03C3A4B8CE74A8580994C68A61EA5B9DC6E79FD01F94241F98341852251';
wwv_flow_imp.g_varchar2_table(202) := '05A251053BDAE58FB694FEB3271C91CBCC613FD32B17160A2AC4C7944FA6944D249489C795191B556A7858E9445C996452E3E9B4F2C6A330B5097A26EB62E6C66F16EC3193F89855FBD81040606A0214005373E32804FEA51028164B4F02CC6A83B16CAE';
wwv_flow_imp.g_varchar2_table(203) := 'B4CE40BD5E0F4CF6EAC0BC2270BB5D0ACD9BA7D0FC05F2B7B7CB1789CAEBF7CB6D46BE5FF8D3EDF5C8EDF1CAE5F1C8E53647FDF1AB8562B158BA611772B9522153CCE5944F264B37F27C36AB7C26A3F16452D9B151A5474795898D693C912CC5699E88CC';
wwv_flow_imp.g_varchar2_table(204) := 'F4E676B914747BD4E2F7967EED074C1C337D51CE8F40930B5000347982096F760572A59905C765161D8A8D9B9BE9CCDF1C6B89D0ED76CBE5F6C8E3F3CAE3F5CADCF84B37F95C5EC542BEF4DF1B6933B32C9A6FF8CD7CFDE63DBF974FF91A293DB4C5E102';
wwv_flow_imp.g_varchar2_table(205) := '14000E4F20CD6F5C818BD30C9B3905CC2B023388906D72013328D23CE2EF08F84BF3F49B5FFF6C0820507F010A80FA9B724604FE48C0DCF673854269CD0133D3A0995C285328687C86DE913B8DDFFCAA378FF4431E4FE957BE99BCC7EF3163FBD9104060';
wwv_flow_imp.g_varchar2_table(206) := '260528006652977323308180794D90CEE595CCE594CC9FFFD3AC45A0867B613033E933B7768F19B7606EF85E6F697A5E3398CFEBE6963F33E29C158189052800E81908CCB180B9F567F3F9D2D301336EC07C59303EC5256EE73894B29737EFF25B7C5E45';
wwv_flow_imp.g_varchar2_table(207) := 'BC3E45BC1EF919C4D7A8A9A25D1609500058946C426D7C01334C205F2C68BC582C3D19304F0A2EBE2E304F09CCFFD6C82309CC8DDE3CD2377F9AC7FAE697BDF9C73CD237EFF6F98DDFF87D9016DA234001604FAE89D4C102997CA13476205B28285BC82B';
wwv_flow_imp.g_varchar2_table(208) := '9B377F16645E2798C186A670B8F8C5C14C1508E76FDEE76FE2665C9EF94FE6B17DC0ED2EDDE0FD6E4FE9C66FFEB3B9E973B3777087A3E956085000589166826C56818B030C4D3160E61F30030BCF3F29B8501848E70B0433C2C0FCFF5DF8F3FC7FBF7823';
wwv_flow_imp.g_varchar2_table(209) := '3F7F3337AFE04B3304B8541A796F6EE017FF34BFDECD3FE6D17DA074B377CB6B3E296C5658E242C002010A000B924C88F6087CF649C0F92F0FFF7836828B4F084A05C0F91FF5177EDBFFCB9FAE0B9FDE7DF606CF2779F6F425226D7E010A80E6CF311122';
wwv_flow_imp.g_varchar2_table(210) := '8000020820F027021400740A0410400001042C14A000B030E9848C00020820800005007D000104104000010B0528002C4C3A212380000208204001401F400001041040C042010A000B934EC80820800002085000D007104000010410B0508002C0C2A413';
wwv_flow_imp.g_varchar2_table(211) := '320208208000021400F4010410400001042C14A000B030E9848C00020820800005007D000104104000010B0528002C4C3A212380000208204001401F400001041040C042010A000B934EC80820800002085000D007104000010410B0508002C0C2A41332';
wwv_flow_imp.g_varchar2_table(212) := '0208208000021400F4010410400001042C14A000B030E9848C00020820800005007D000104104000010B0528002C4C3A212380000208204001401F400001041040C042010A000B934EC80820800002085000D007104000010410B0508002C0C2A4133202';
wwv_flow_imp.g_varchar2_table(213) := '08208000021400F4010410400001042C14A000B030E9848C00020820800005007D000104104000010B0528002C4C3A212380000208204001401F400001041040C042010A000B934EC80820800002085000D007104000010410B0508002C0C2A413320208';
wwv_flow_imp.g_varchar2_table(214) := '208000021400F4010410400001042C14A000B030E9848C00020820800005007D000104104000010B0528002C4C3A212380000208204001401F400001041040C042010A000B934EC80820800002085000D007104000010410B0508002C0C2A41332020820';
wwv_flow_imp.g_varchar2_table(215) := '8000021400F4010410400001042C14A000B030E9848C00020820800005007D000104104000010B0528002C4C3A212380000208204001401F400001041040C042010A000B934EC80820800002085000D007104000010410B0508002C0C2A4133202082080';
wwv_flow_imp.g_varchar2_table(216) := '00021400F4010410400001042C14A000B030E9848C00020820800005007D000104104000010B0528002C4C3A212380000208204001401F400001041040C042010A000B934EC80820800002085000D007104000010410B0508002C0C2A413320208208000';
wwv_flow_imp.g_varchar2_table(217) := '021400F4010410400001042C14A000B030E9848C00020820800005007D000104104000010B0528002C4C3A212380000208204001401F400001041040C042010A000B934EC80820800002085000D007104000010410B0508002C0C2A41332020820800002';
wwv_flow_imp.g_varchar2_table(218) := '1400F4010410400001042C14A000B030E9848C00020820800005007D000104104000010B0528002C4C3A212380000208204001401F400001041040C042010A000B934EC80820800002085000D007104000010410B0508002C0C2A4133202082080000214';
wwv_flow_imp.g_varchar2_table(219) := '00F4010410400001042C14A000B030E9848C00020820800005007D000104104000010B0528002C4C3A212380000208204001401F400001041040C042010A000B934EC80820800002085000D007104000010410B0508002C0C2A413320208208000021400';
wwv_flow_imp.g_varchar2_table(220) := 'F4010410400001042C14A000B030E9848C00020820800005007D000104104000010B0528002C4C3A212380000208204001401F400001041040C042010A000B934EC80820800002085000D007104000010410B0508002C0C2A413320208208000021400F4';
wwv_flow_imp.g_varchar2_table(221) := '010410400001042C14A000B030E9848C00020820800005007D000104104000010B0528002C4C3A212380000208204001401F400001041040C042010A000B934EC80820800002085000D007104000010410B0508002C0C2A413320208208000021400F401';
wwv_flow_imp.g_varchar2_table(222) := '0410400001042C14A000B030E9848C00020820800005007D000104104000010B0528002C4C3A212380000208204001401F400001041040C042010A000B934EC80820800002085000D007104000010410B0508002C0C2A413320208208000021400F40104';
wwv_flow_imp.g_varchar2_table(223) := '10400001042C14A000B030E9848C00020820800005007D000104104000010B0528002C4C3A212380000208204001401F400001041040C042010A000B934EC80820800002085000D007104000010410B0508002C0C2A413320208208000021400F4010410';
wwv_flow_imp.g_varchar2_table(224) := '400001042C14A000B030E9848C00020820800005007D000104104000010B0528002C4C3A212380000208204001401F400001041040C042010A000B934EC80820800002085000D007104000010410B0508002C0C2A413320208208000021400F401041040';
wwv_flow_imp.g_varchar2_table(225) := '0001042C14A000B030E9848C00020820800005007D000104104000010B0528002C4C3A212380000208204001401F400001041040C042010A000B934EC80820800002085000D007104000010410B0508002C0C2A413320208208000021400F40104104000';
wwv_flow_imp.g_varchar2_table(226) := '01042C14A000B030E9848C00020820800005007D000104104000010B0528002C4C3A212380000208204001401F400001041040C042010A000B934EC8082080000208FCFF1F39D0969DEBF1EC0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(65787168912547730979)
,p_file_name=>'icons/app-icon-512.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(65787160249894730962)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>15640172958860
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(65787160538139730964)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>15640172958867
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(65787160819852730965)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'show_on', 'FOCUS',
  'time_increment', '15')).to_clob
,p_version_scn=>15640172958867
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(65787161124196730965)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'background', 'default',
  'display_as', 'LIST',
  'map_preview', 'POPUP:ITEM',
  'match_mode', 'RELAX_HOUSE_NUMBER',
  'show_coordinates', 'N')).to_clob
,p_version_scn=>15640172958867
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(65787161460794730965)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>15640172958867
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(65787161765397730965)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>15640172958867
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(65787162044454730966)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>15640172958870
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(65787162378836730966)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH_CB',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>15640172958874
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(65787162666091730966)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attribute_01=>'RELAX_HOUSE_NUMBER'
,p_version_scn=>15640172958878
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(65787162957627730966)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'Y')).to_clob
,p_version_scn=>15640172958881
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(65787163233098730966)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
,p_version_scn=>15640172958881
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(65787163553067730967)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>15640172958884
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(65787163865363730967)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>15640172958887
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(65787164127574730967)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>15640172958888
);
end;
/
prompt --application/shared_components/security/authorizations/administration_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(65787170259926730980)
,p_name=>'Administration Rights'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>'return true;'
,p_error_message=>'Insufficient privileges, user is not an Administrator'
,p_version_scn=>15640172959082
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_processes/add_user
begin
wwv_flow_imp_shared.create_flow_process(
 p_id=>wwv_flow_imp.id(65984875608851523020)
,p_process_sequence=>1
,p_process_point=>'AFTER_LOGIN'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add User '
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- create movie user ID',
'-- query movie_users table to check for existing user',
'-- if yes, return PK as user_id',
'-- if no, add new user to movie_users',
'declare',
'    l_user_id number;',
'begin',
'    select id into l_user_id from movie_users where username = :APP_USER;',
'',
'    :USER_ID := l_user_id;',
'',
'    exception',
'        when no_data_found then',
'        insert into movie_users',
'                (username)',
'            values',
'                (:APP_USER)',
'            returning',
'                id into :USER_ID;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_version_scn=>15640344351095
);
end;
/
prompt --application/shared_components/logic/application_items/user_id
begin
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(65984617821876477545)
,p_name=>'USER_ID'
,p_protection_level=>'I'
,p_version_scn=>15640344157616
);
end;
/
prompt --application/shared_components/logic/application_settings
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(65787170547757730981)
,p_group_name=>'Administration'
);
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(65787165086656730968)
,p_name=>'Breadcrumb'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(65787165292501730968)
,p_short_name=>'My Watchlist'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1
);
end;
/
prompt --application/shared_components/navigation/breadcrumbentry
begin
null;
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
null;
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(65787165979220730969)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'24.2'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4072363937200175119
,p_is_locked=>false
,p_current_theme_style_id=>wwv_flow_imp.id(65787634064761757045)
,p_default_page_template=>4072355960268175073
,p_default_dialog_template=>2100407606326202693
,p_error_template=>2101157952850466385
,p_printer_friendly_template=>4072355960268175073
,p_login_template=>2101157952850466385
,p_default_button_template=>4072362960822175091
,p_default_region_template=>4072358936313175081
,p_default_chart_template=>4072358936313175081
,p_default_form_template=>4072358936313175081
,p_default_reportr_template=>4072358936313175081
,p_default_tabform_template=>4072358936313175081
,p_default_wizard_template=>4072358936313175081
,p_default_menur_template=>2531463326621247859
,p_default_listr_template=>4072358936313175081
,p_default_irr_template=>2100526641005906379
,p_default_report_template=>2538654340625403440
,p_default_label_template=>1609121967514267634
,p_default_menu_template=>4072363345357175094
,p_default_calendar_template=>4072363550766175095
,p_default_list_template=>4072361143931175087
,p_default_nav_list_template=>2526754704087354841
,p_default_top_nav_list_temp=>2526754704087354841
,p_default_side_nav_list_temp=>2467739217141810545
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>2126429139436695430
,p_default_dialogr_template=>4501440665235496320
,p_default_option_label=>1609121967514267634
,p_default_required_label=>1609122147107268652
,p_default_navbar_list_template=>2847543055748234966
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/24.2/')
,p_files_version=>65
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
wwv_flow_imp_shared.create_theme_style(
 p_id=>wwv_flow_imp.id(65787634064761757045)
,p_theme_id=>42
,p_name=>'Movies - Dark '
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Vita-Dark.less'
,p_theme_roller_config=>'{"classes":[],"vars":{"@g_Accent-BG":"#9f1e0d","@g_Accent-OG":"#312d2a"},"customCSS":"","useCustomLess":"N"}'
,p_theme_roller_output_file_url=>'#THEME_DB_FILES#65787634064761757045.css'
,p_theme_roller_read_only=>false
);
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '2F2A210D0A20436F707972696768742028632920323031342C20323032332C204F7261636C6520616E642F6F722069747320616666696C69617465732E0D0A202A2F0D0A2F2A210D0A20436F707972696768742028632920323031342C20323032332C20';
wwv_flow_imp.g_varchar2_table(2) := '4F7261636C6520616E642F6F722069747320616666696C69617465732E0D0A202A2F0D0A3A726F6F74207B0D0A20202D2D612D626173652D666F6E742D7765696768742D73656D69626F6C643A203630303B0D0A20202D2D612D69636F6E2D73697A653A';
wwv_flow_imp.g_varchar2_table(3) := '203172656D3B0D0A20202D2D612D627574746F6E2D626F726465722D7261646975733A20302E31323572656D3B0D0A20202D2D612D627574746F6E2D70616464696E672D793A20302E3572656D3B0D0A20202D2D612D627574746F6E2D70616464696E67';
wwv_flow_imp.g_varchar2_table(4) := '2D783A20302E373572656D3B0D0A20202D2D612D627574746F6E2D666F6E742D73697A653A20302E373572656D3B0D0A20202D2D612D627574746F6E2D6C696E652D6865696768743A203172656D3B0D0A20202D2D612D627574746F6E2D6761702D783A';
wwv_flow_imp.g_varchar2_table(5) := '20302E323572656D3B0D0A20202D2D612D627574746F6E2D69636F6E2D73706163696E673A20302E33373572656D3B0D0A20202D2D612D627574746F6E2D69636F6E2D73697A653A203172656D3B0D0A20202D2D612D63762D677269642D6761703A2031';
wwv_flow_imp.g_varchar2_table(6) := '72656D3B0D0A20202D2D612D63762D6974656D2D77696474683A20323072656D3B0D0A20202D2D612D63762D626F726465722D7261646975733A20302E323572656D3B0D0A20202D2D612D63762D736861646F773A20766172282D2D75742D736861646F';
wwv_flow_imp.g_varchar2_table(7) := '772D736D293B0D0A20202D2D612D63762D6865616465722D70616464696E672D793A203172656D3B0D0A20202D2D612D63762D6865616465722D70616464696E672D783A203172656D3B0D0A20202D2D612D63762D6865616465722D6974656D2D737061';
wwv_flow_imp.g_varchar2_table(8) := '63696E672D783A20302E373572656D3B0D0A20202D2D612D63762D69636F6E2D73697A653A203172656D3B0D0A20202D2D612D63762D69636F6E2D636F6E7461696E65722D73697A653A203272656D3B0D0A20202D2D612D63762D69636F6E2D70616464';
wwv_flow_imp.g_varchar2_table(9) := '696E673A20302E3572656D3B0D0A20202D2D612D63762D69636F6E2D7370616365723A2063616C6328766172282D2D612D63762D69636F6E2D636F6E7461696E65722D73697A652C203172656D29202B20766172282D2D612D63762D6865616465722D69';
wwv_flow_imp.g_varchar2_table(10) := '74656D2D73706163696E672D782C20302E373572656D29293B0D0A20202D2D612D63762D696E697469616C732D73697A653A203272656D3B0D0A20202D2D612D63762D696E697469616C732D666F6E742D73697A653A20302E38373572656D3B0D0A2020';
wwv_flow_imp.g_varchar2_table(11) := '2D2D612D63762D7469746C652D666F6E742D73697A653A203172656D3B0D0A20202D2D612D63762D7469746C652D6C696E652D6865696768743A20312E323572656D3B0D0A20202D2D612D63762D7375627469746C652D666F6E742D73697A653A20302E';
wwv_flow_imp.g_varchar2_table(12) := '373572656D3B0D0A20202D2D612D63762D7375627469746C652D6C696E652D6865696768743A203172656D3B0D0A20202D2D612D63762D62616467652D666F6E742D73697A653A20302E373572656D3B0D0A20202D2D612D63762D62616467652D626163';
wwv_flow_imp.g_varchar2_table(13) := '6B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E3135293B0D0A20202D2D612D63762D626F64792D70616464696E672D783A203172656D3B0D0A20202D2D612D63762D626F64792D70616464696E672D793A20';
wwv_flow_imp.g_varchar2_table(14) := '3172656D3B0D0A20202D2D612D63762D6D61696E636F6E74656E742D666F6E742D73697A653A20302E38373572656D3B0D0A20202D2D612D63762D6D61696E636F6E74656E742D6C696E652D6865696768743A20312E323572656D3B0D0A20202D2D612D';
wwv_flow_imp.g_varchar2_table(15) := '63762D737562636F6E74656E742D666F6E742D73697A653A20302E3638373572656D3B0D0A20202D2D612D63762D737562636F6E74656E742D6C696E652D6865696768743A203172656D3B0D0A20202D2D612D63762D616374696F6E732D70616464696E';
wwv_flow_imp.g_varchar2_table(16) := '672D793A203172656D3B0D0A20202D2D612D63762D616374696F6E732D70616464696E672D783A203172656D3B0D0A20202D2D612D636865636B626F782D73697A653A203172656D3B0D0A20202D2D612D636865636B626F782D6C6162656C2D666F6E74';
wwv_flow_imp.g_varchar2_table(17) := '2D73697A653A20302E373572656D3B0D0A20202D2D612D636865636B626F782D626F726465722D7261646975733A20302E31323572656D3B0D0A20202D2D612D636865636B626F782D69636F6E2D73697A653A20302E373572656D3B0D0A20202D2D612D';
wwv_flow_imp.g_varchar2_table(18) := '636865636B626F782D696E64657465726D696E6174652D77696474683A20302E36323572656D3B0D0A20202D2D612D636865636B626F782D696E64657465726D696E6174652D6865696768743A20302E31323572656D3B0D0A20202D2D612D636865636B';
wwv_flow_imp.g_varchar2_table(19) := '626F782D6C6162656C2D73706163696E672D793A20302E31323572656D3B0D0A20202D2D612D636865636B626F782D6C6162656C2D73706163696E672D783A20302E33373572656D3B0D0A20202D2D612D636F6D626F2D626F782D70616464696E672D79';
wwv_flow_imp.g_varchar2_table(20) := '3A20302E323572656D3B0D0A20202D2D612D636F6D626F2D626F782D70616464696E672D783A20302E3572656D3B0D0A20202D2D612D636F6D626F626F782D636869702D6C696E652D6865696768743A20302E373572656D3B0D0A20202D2D612D646576';
wwv_flow_imp.g_varchar2_table(21) := '2D746F6F6C6261722D6261636B67726F756E642D636F6C6F723A20233636363B0D0A20202D2D612D6465762D746F6F6C6261722D6261636B64726F702D66696C7465723A206E6F6E653B0D0A20202D2D612D646174657069636B65722D6261636B67726F';
wwv_flow_imp.g_varchar2_table(22) := '756E642D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746F6F6C6261722D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D646174657069636B65722D626F726465722D7261646975733A20766172282D2D75742D62';
wwv_flow_imp.g_varchar2_table(23) := '6F726465722D726164697573293B0D0A20202D2D612D646174657069636B65722D6865616465722D6261636B67726F756E642D636F6C6F723A20233036303630363B0D0A20202D2D612D646174657069636B65722D6865616465722D626F726465722D63';
wwv_flow_imp.g_varchar2_table(24) := '6F6C6F723A207472616E73706172656E743B0D0A20202D2D612D646174657069636B65722D6D6F6E74687069636B65722D73656C6563742D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D646174657069';
wwv_flow_imp.g_varchar2_table(25) := '636B65722D6D6F6E74687069636B65722D73656C6563742D626F726465722D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D646174657069636B65722D6D6F6E74687069636B65722D73656C6563742D666F6E742D73697A653A2031';
wwv_flow_imp.g_varchar2_table(26) := '72656D3B0D0A20202D2D612D646174657069636B65722D6D6F6E74687069636B65722D73656C6563742D666F6E742D7765696768743A20766172282D2D612D626173652D666F6E742D7765696768742D73656D69626F6C642C20353030293B0D0A20202D';
wwv_flow_imp.g_varchar2_table(27) := '2D612D646174657069636B65722D63616C656E646172732D73706163696E673A203070783B0D0A20202D2D612D646174657069636B65722D63616C656E6461722D6261636B67726F756E642D636F6C6F723A20766172282D2D75742D636F6D706F6E656E';
wwv_flow_imp.g_varchar2_table(28) := '742D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D646174657069636B65722D63616C656E6461722D7469746C652D70616464696E672D783A20302E3572656D3B0D0A20202D2D612D646174657069636B65722D63616C656E6461722D';
wwv_flow_imp.g_varchar2_table(29) := '7469746C652D70616464696E672D793A20302E3572656D3B0D0A20202D2D612D646174657069636B65722D63616C656E6461722D7469746C652D6261636B67726F756E642D636F6C6F723A20233036303630363B0D0A20202D2D612D646174657069636B';
wwv_flow_imp.g_varchar2_table(30) := '65722D63616C656E6461722D6865616465722D70616464696E672D783A20766172282D2D612D646174657069636B65722D63616C656E6461722D6461792D73706163696E67293B0D0A20202D2D612D646174657069636B65722D63616C656E6461722D68';
wwv_flow_imp.g_varchar2_table(31) := '65616465722D6261636B67726F756E642D636F6C6F723A20233036303630363B0D0A20202D2D612D646174657069636B65722D63616C656E6461722D6865616465722D746578742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D7465';
wwv_flow_imp.g_varchar2_table(32) := '78742D6D757465642D636F6C6F72293B0D0A20202D2D612D646174657069636B65722D63616C656E6461722D6461792D73706163696E673A20302E3572656D3B0D0A20202D2D612D646174657069636B65722D63616C656E6461722D6461792D666F6E74';
wwv_flow_imp.g_varchar2_table(33) := '2D73697A653A20302E38373572656D3B0D0A20202D2D612D646174657069636B65722D63616C656E6461722D6461792D626F726465722D77696474683A203170783B0D0A20202D2D612D646174657069636B65722D63616C656E6461722D6461792D626F';
wwv_flow_imp.g_varchar2_table(34) := '726465722D7261646975733A203530253B0D0A20202D2D612D646174657069636B65722D63616C656E6461722D6461792D686F7665722D6261636B67726F756E642D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D626F726465722D63';
wwv_flow_imp.g_varchar2_table(35) := '6F6C6F72293B0D0A20202D2D612D646174657069636B65722D63616C656E6461722D6461792D73656C65637465642D6261636B67726F756E642D636F6C6F723A20766172282D2D612D70616C657474652D7072696D617279293B0D0A20202D2D612D6461';
wwv_flow_imp.g_varchar2_table(36) := '74657069636B65722D63616C656E6461722D6461792D73656C65637465642D746578742D636F6C6F723A20766172282D2D612D70616C657474652D7072696D6172792D636F6E7472617374293B0D0A20202D2D612D646174657069636B65722D63616C65';
wwv_flow_imp.g_varchar2_table(37) := '6E6461722D6461792D73656C65637465642D626F726465722D636F6C6F723A20766172282D2D612D70616C657474652D7072696D617279293B0D0A20202D2D612D646174657069636B65722D63616C656E6461722D7765656B2D6261636B67726F756E64';
wwv_flow_imp.g_varchar2_table(38) := '2D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746F6F6C6261722D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D646174657069636B65722D63616C656E6461722D7765656B2D746578742D636F6C6F723A207661';
wwv_flow_imp.g_varchar2_table(39) := '72282D2D75742D636F6D706F6E656E742D746578742D6D757465642D636F6C6F72293B0D0A20202D2D612D646174657069636B65722D666F6F7465722D6261636B67726F756E642D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D6261';
wwv_flow_imp.g_varchar2_table(40) := '636B67726F756E642D636F6C6F72293B0D0A20202D2D612D646174657069636B65722D74696D657069636B65722D73656C6563742D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D646174657069636B65';
wwv_flow_imp.g_varchar2_table(41) := '722D74696D657069636B65722D73656C6563742D626F726465722D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D646174657069636B65722D74696D657069636B65722D73656C6563742D666F6E742D73697A653A20302E38373572';
wwv_flow_imp.g_varchar2_table(42) := '656D3B0D0A20202D2D612D66732D636F6E74726F6C2D736570657261746F722D626F726465722D77696474683A20766172282D2D75742D636F6D706F6E656E742D626F726465722D77696474682C20317078293B0D0A20202D2D612D66732D636F6E7472';
wwv_flow_imp.g_varchar2_table(43) := '6F6C2D736570657261746F722D626F726465722D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A20202D2D612D66732D636F6E74726F6C2D6865616465722D70616464696E672D793A20302E37';
wwv_flow_imp.g_varchar2_table(44) := '3572656D3B0D0A20202D2D612D66732D636F6E74726F6C2D6865616465722D70616464696E672D783A20302E373572656D3B0D0A20202D2D612D66732D636F6E74726F6C2D6865616465722D666F6E742D73697A653A203172656D3B0D0A20202D2D612D';
wwv_flow_imp.g_varchar2_table(45) := '66732D636F6E74726F6C2D6865616465722D6C696E652D6865696768743A20312E323572656D3B0D0A20202D2D612D66732D636F6E74726F6C2D626F64792D70616464696E672D793A20302E373572656D3B0D0A20202D2D612D66732D636F6E74726F6C';
wwv_flow_imp.g_varchar2_table(46) := '2D626F64792D70616464696E672D783A20302E373572656D3B0D0A20202D2D612D66732D636F6E74726F6C2D616374696F6E732D70616464696E672D793A20302E373572656D3B0D0A20202D2D612D66732D636F6E74726F6C2D616374696F6E732D7061';
wwv_flow_imp.g_varchar2_table(47) := '6464696E672D783A203072656D3B0D0A20202D2D612D66732D636F6E74726F6C2D6974656D2D73706163696E673A20302E373572656D3B0D0A20202D2D612D66732D66696C7465722D67726F75702D626F726465722D636F6C6F723A20766172282D2D75';
wwv_flow_imp.g_varchar2_table(48) := '742D636F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A20202D2D612D66732D66696C7465722D67726F75702D626F726465722D77696474683A20766172282D2D75742D636F6D706F6E656E742D626F726465722D77696474682C20317078';
wwv_flow_imp.g_varchar2_table(49) := '293B0D0A20202D2D612D66732D66696C7465722D67726F75702D6C6162656C2D746578742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D6D757465642D636F6C6F72293B0D0A20202D2D612D66732D6974656D2D737562';
wwv_flow_imp.g_varchar2_table(50) := '2D67726F75702D73706163696E673A20302E3572656D3B0D0A20202D2D612D66732D63686172742D70616464696E672D793A203172656D3B0D0A20202D2D612D66732D63686172742D70616464696E672D783A203172656D3B0D0A20202D2D612D66732D';
wwv_flow_imp.g_varchar2_table(51) := '63686172742D626F726465722D77696474683A20766172282D2D75742D726567696F6E2D626F726465722D77696474682C20766172282D2D75742D636F6D706F6E656E742D626F726465722D77696474682C2031707829293B0D0A20202D2D612D66732D';
wwv_flow_imp.g_varchar2_table(52) := '63686172742D626F726465722D636F6C6F723A20766172282D2D75742D726567696F6E2D626F726465722D636F6C6F722C20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F7229293B0D0A20202D2D612D66732D6368617274';
wwv_flow_imp.g_varchar2_table(53) := '2D626F726465722D7261646975733A20766172282D2D75742D726567696F6E2D626F726465722D7261646975732C20766172282D2D75742D636F6D706F6E656E742D626F726465722D72616469757329293B0D0A20202D2D612D66732D63686172742D62';
wwv_flow_imp.g_varchar2_table(54) := '61636B67726F756E642D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D66732D63686172742D736861646F773A20766172282D2D75742D726567696F6E2D626F782D73';
wwv_flow_imp.g_varchar2_table(55) := '6861646F77293B0D0A20202D2D612D66696C6564726F702D70616464696E672D793A203172656D3B0D0A20202D2D612D66696C6564726F702D70616464696E672D783A203172656D3B0D0A20202D2D612D66696C6564726F702D626F726465722D726164';
wwv_flow_imp.g_varchar2_table(56) := '6975733A20302E31323572656D3B0D0A20202D2D612D66696C6564726F702D626F726465722D636F6C6F723A20766172282D2D612D6669656C642D696E7075742D626F726465722D636F6C6F72293B0D0A20202D2D612D66696C6564726F702D74657874';
wwv_flow_imp.g_varchar2_table(57) := '2D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D6D757465642D636F6C6F72293B0D0A20202D2D612D66696C6564726F702D666F6375732D626F726465722D636F6C6F723A20766172282D2D612D6669656C642D696E7075';
wwv_flow_imp.g_varchar2_table(58) := '742D666F6375732D626F726465722D636F6C6F72293B0D0A20202D2D612D66696C6564726F702D6974656D2D73706163696E673A20302E323572656D3B0D0A20202D2D612D66696C6564726F702D69636F6E2D73697A653A203272656D3B0D0A20202D2D';
wwv_flow_imp.g_varchar2_table(59) := '612D66696C6564726F702D69636F6E2D73706163696E673A20302E323572656D3B0D0A20202D2D612D66696C6564726F702D68656164696E672D666F6E742D73697A653A20312E323572656D3B0D0A20202D2D612D66696C6564726F702D68656164696E';
wwv_flow_imp.g_varchar2_table(60) := '672D6C696E652D6865696768743A20312E373572656D3B0D0A20202D2D612D66696C6564726F702D68656164696E672D746578742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D7469746C652D636F6C6F72293B0D0A20';
wwv_flow_imp.g_varchar2_table(61) := '202D2D612D66696C6564726F702D636F756E742D62616467652D666F6E742D73697A653A20302E36323572656D3B0D0A20202D2D612D66696C6564726F702D636F756E742D62616467652D6C696E652D6865696768743A20302E38373572656D3B0D0A20';
wwv_flow_imp.g_varchar2_table(62) := '202D2D612D66696C6564726F702D666F6E742D73697A653A20302E38373572656D3B0D0A20202D2D612D66696C6564726F702D6C696E652D6865696768743A203172656D3B0D0A20202D2D612D66696C6564726F702D70726F67726573732D7769647468';
wwv_flow_imp.g_varchar2_table(63) := '3A20313572656D3B0D0A20202D2D612D66696C6564726F702D70726F67726573732D6865696768743A20302E373572656D3B0D0A20202D2D612D66696C6564726F702D70726F67726573732D626F726465722D7261646975733A20302E33373572656D3B';
wwv_flow_imp.g_varchar2_table(64) := '0D0A20202D2D612D66696C6564726F702D70726F67726573732D6261722D77696474683A203372656D3B0D0A20202D2D612D6669656C642D696E7075742D626F726465722D7261646975733A20302E31323572656D3B0D0A20202D2D612D6669656C642D';
wwv_flow_imp.g_varchar2_table(65) := '696E7075742D626F726465722D7374796C653A206461736865643B0D0A20202D2D612D6669656C642D73656C6563742D6261636B67726F756E642D73697A653A203272656D203172656D3B0D0A20202D2D612D6669656C642D73656C6563742D6172726F';
wwv_flow_imp.g_varchar2_table(66) := '772D70616464696E673A203272656D3B0D0A20202D2D612D67762D666F6E742D73697A653A20302E373572656D3B0D0A20202D2D612D67762D6C696E652D6865696768743A203172656D3B0D0A20202D2D612D67762D626F726465722D636F6C6F723A20';
wwv_flow_imp.g_varchar2_table(67) := '766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A20202D2D612D67762D63656C6C2D70616464696E672D793A20302E323572656D3B0D0A20202D2D612D67762D63656C6C2D70616464696E672D783A20302E357265';
wwv_flow_imp.g_varchar2_table(68) := '6D3B0D0A20202D2D612D67762D63656C6C2D6865696768743A203272656D3B0D0A20202D2D612D67762D726F772D686F7665722D6261636B67726F756E642D636F6C6F723A20233036303630363B0D0A20202D2D612D67762D696E7365727465642D6261';
wwv_flow_imp.g_varchar2_table(69) := '636B67726F756E642D636F6C6F723A20766172282D2D612D70616C657474652D737563636573732D7368616465293B0D0A20202D2D612D67762D64656C657465642D6261636B67726F756E642D636F6C6F723A20233064306430643B0D0A20202D2D612D';
wwv_flow_imp.g_varchar2_table(70) := '67762D6772616E64746F74616C2D6261636B67726F756E642D636F6C6F723A20233139313931393B0D0A20202D2D612D67762D757064617465642D6261636B67726F756E642D636F6C6F723A20766172282D2D612D70616C657474652D696E666F2D7368';
wwv_flow_imp.g_varchar2_table(71) := '616465293B0D0A20202D2D612D67762D6865616465722D63656C6C2D70616464696E672D793A20302E323572656D3B0D0A20202D2D612D67762D6865616465722D63656C6C2D70616464696E672D783A20302E3572656D3B0D0A20202D2D612D67762D68';
wwv_flow_imp.g_varchar2_table(72) := '65616465722D63656C6C2D6865696768743A20322E3572656D3B0D0A20202D2D612D67762D666F6F7465722D70616464696E672D793A20302E3572656D3B0D0A20202D2D612D67762D666F6F7465722D70616464696E672D783A20302E373572656D3B0D';
wwv_flow_imp.g_varchar2_table(73) := '0A20202D2D612D67762D706167696E6174696F6E2D627574746F6E2D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D67762D706167696E6174696F6E2D627574746F6E2D746578742D636F6C6F723A2076';
wwv_flow_imp.g_varchar2_table(74) := '6172282D2D612D627574746F6E2D746578742D636F6C6F72293B0D0A20202D2D612D67762D706167696E6174696F6E2D627574746F6E2D70616464696E672D793A20302E323572656D3B0D0A20202D2D612D67762D706167696E6174696F6E2D62757474';
wwv_flow_imp.g_varchar2_table(75) := '6F6E2D70616464696E672D783A20302E323572656D3B0D0A20202D2D612D67762D706167696E6174696F6E2D627574746F6E2D6761702D783A20302E323572656D3B0D0A20202D2D612D67762D706167696E6174696F6E2D627574746F6E2D686F766572';
wwv_flow_imp.g_varchar2_table(76) := '2D6261636B67726F756E642D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D67762D706167696E6174696F6E2D627574746F6E2D686F7665722D746578742D636F';
wwv_flow_imp.g_varchar2_table(77) := '6C6F723A20766172282D2D612D627574746F6E2D686F7665722D746578742D636F6C6F72293B0D0A20202D2D612D67762D6E6F646174612D6D6573736167652D70616464696E672D793A203172656D3B0D0A20202D2D612D67762D6E6F646174612D6D65';
wwv_flow_imp.g_varchar2_table(78) := '73736167652D70616464696E672D783A203172656D3B0D0A20202D2D612D67762D6E6F646174612D6D6573736167652D746578742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D6D757465642D636F6C6F72293B0D0A20';
wwv_flow_imp.g_varchar2_table(79) := '202D2D612D67762D6E6F646174612D6D6573736167652D666F6E742D73697A653A20302E373572656D3B0D0A20202D2D612D67762D6E6F646174612D6D6573736167652D69636F6E2D73697A653A203272656D3B0D0A20202D2D612D67762D6E6F646174';
wwv_flow_imp.g_varchar2_table(80) := '612D6D6573736167652D69636F6E2D73706163696E673A20302E373572656D3B0D0A20202D2D612D68656C702D6469616C6F672D636F64652D746578742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D6D757465642D63';
wwv_flow_imp.g_varchar2_table(81) := '6F6C6F72293B0D0A20202D2D612D6D64656469746F722D6261636B67726F756E642D636F6C6F723A20766172282D2D612D6669656C642D696E7075742D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D6D64656469746F722D626F7264';
wwv_flow_imp.g_varchar2_table(82) := '65722D636F6C6F723A20766172282D2D612D6669656C642D696E7075742D626F726465722D636F6C6F72293B0D0A20202D2D612D6D64656469746F722D626F726465722D77696474683A20766172282D2D612D6669656C642D696E7075742D626F726465';
wwv_flow_imp.g_varchar2_table(83) := '722D7769647468293B0D0A20202D2D612D6D64656469746F722D666F6375732D626F726465722D636F6C6F723A20766172282D2D612D6669656C642D696E7075742D666F6375732D626F726465722D636F6C6F72293B0D0A20202D2D612D6D656E756261';
wwv_flow_imp.g_varchar2_table(84) := '722D6974656D2D70616464696E672D793A20302E3572656D3B0D0A20202D2D612D6D656E756261722D6974656D2D70616464696E672D783A20302E3572656D3B0D0A20202D2D612D6D656E756261722D6974656D2D73706C69742D69636F6E2D73697A65';
wwv_flow_imp.g_varchar2_table(85) := '3A203172656D3B0D0A20202D2D612D6D656E756261722D6974656D2D73706C69742D69636F6E2D73706163696E673A20302E3572656D3B0D0A20202D2D612D6D656E752D70616464696E672D793A20302E3572656D3B0D0A20202D2D612D6D656E752D70';
wwv_flow_imp.g_varchar2_table(86) := '616464696E672D783A203072656D3B0D0A20202D2D612D6D656E752D666F6E742D73697A653A20302E373572656D3B0D0A20202D2D612D6D656E752D6C696E652D6865696768743A203172656D3B0D0A20202D2D612D6D656E752D626F726465722D7261';
wwv_flow_imp.g_varchar2_table(87) := '646975733A20302E323572656D3B0D0A20202D2D612D6D656E752D626F726465722D636F6C6F723A2072676261283235352C203235352C203235352C20302E3135293B0D0A20202D2D612D6D656E752D7365702D626F726465722D636F6C6F723A207661';
wwv_flow_imp.g_varchar2_table(88) := '72282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A20202D2D612D6D656E752D7365702D73706163696E672D793A20302E323572656D3B0D0A20202D2D612D6D656E752D69636F6E2D73697A653A203172656D3B0D0A2020';
wwv_flow_imp.g_varchar2_table(89) := '2D2D612D6D656E752D69636F6E2D73706163696E672D793A20302E3572656D3B0D0A20202D2D612D6D656E752D69636F6E2D73706163696E672D783A20302E3572656D3B0D0A20202D2D612D6D656E752D6974656D2D67656E657269632D70616464696E';
wwv_flow_imp.g_varchar2_table(90) := '672D793A20302E3572656D3B0D0A20202D2D612D6D656E752D6974656D2D67656E657269632D70616464696E672D783A20302E3572656D3B0D0A20202D2D612D6D656E752D63616C6C6F75742D73697A653A20302E373572656D3B0D0A20202D2D612D6D';
wwv_flow_imp.g_varchar2_table(91) := '656E752D63616C6C6F75742D6261636B67726F756E642D636F6C6F723A20766172282D2D612D6D656E752D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D6D656E752D63616C6C6F75742D626F726465722D7261646975733A20307265';
wwv_flow_imp.g_varchar2_table(92) := '6D3B0D0A20202D2D612D6D656E752D63616C6C6F75742D626F726465722D636F6C6F723A20766172282D2D612D6D656E752D626F726465722D636F6C6F72293B0D0A20202D2D612D6D656E752D63616C6C6F75742D736861646F773A20766172282D2D75';
wwv_flow_imp.g_varchar2_table(93) := '742D736861646F772D736D293B0D0A20202D2D612D6D656E752D63616C6C6F75742D6261636B67726F756E642D636C69703A20636F6E74656E742D626F783B0D0A20202D2D612D706F7075706C6F762D7365617263682D6261722D70616464696E672D79';
wwv_flow_imp.g_varchar2_table(94) := '3A20302E3572656D3B0D0A20202D2D612D706F7075706C6F762D7365617263682D6261722D70616464696E672D783A20766172282D2D612D706F7075706C6F762D7365617263682D6261722D70616464696E672D79293B0D0A20202D2D612D706F707570';
wwv_flow_imp.g_varchar2_table(95) := '6C6F762D636869702D70616464696E672D783A20302E323572656D3B0D0A20202D2D612D706F7075706C6F762D636869702D666F6E742D7765696768743A20766172282D2D612D636869702D76616C75652D666F6E742D7765696768742C20766172282D';
wwv_flow_imp.g_varchar2_table(96) := '2D612D626173652D666F6E742D7765696768742D73656D69626F6C642C2035303029293B0D0A20202D2D612D706F7075706C6F762D636869702D6C696E652D6865696768743A20302E373572656D3B0D0A20202D2D612D706F7075706C6F762D63686970';
wwv_flow_imp.g_varchar2_table(97) := '2D72656D6F76652D666F6E742D73697A653A20302E373572656D3B0D0A20202D2D612D706F7075706C6F762D636869702D6261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E303735293B0D0A20202D2D';
wwv_flow_imp.g_varchar2_table(98) := '612D706F7075706C6F762D636869702D626F726465722D77696474683A203170783B0D0A20202D2D612D706F7075706C6F762D636869702D626F726465722D636F6C6F723A20766172282D2D612D636869702D73746174652D626F726465722D636F6C6F';
wwv_flow_imp.g_varchar2_table(99) := '722C20766172282D2D612D636869702D747970652D626F726465722D636F6C6F722C20766172282D2D612D636869702D626F726465722D636F6C6F722C20766172282D2D612D6669656C642D696E7075742D626F726465722D636F6C6F722C2072676261';
wwv_flow_imp.g_varchar2_table(100) := '28302C20302C20302C20302E30373529292929293B0D0A20202D2D612D72762D666F6E742D73697A653A20302E373572656D3B0D0A20202D2D612D72762D6C696E652D6865696768743A203172656D3B0D0A20202D2D612D72762D626F64792D70616464';
wwv_flow_imp.g_varchar2_table(101) := '696E672D793A20302E323572656D3B0D0A20202D2D612D72762D626F64792D70616464696E672D783A203072656D3B0D0A20202D2D612D70657263656E742D63686172742D6865696768743A203172656D3B0D0A20202D2D612D70657263656E742D6368';
wwv_flow_imp.g_varchar2_table(102) := '6172742D6261636B67726F756E642D636F6C6F723A20766172282D2D75742D70616C657474652D7072696D6172792D7368616465293B0D0A20202D2D612D70657263656E742D63686172742D626F726465722D7261646975733A20302E31323572656D3B';
wwv_flow_imp.g_varchar2_table(103) := '0D0A20202D2D612D70657263656E742D63686172742D626F726465722D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A20202D2D612D70657263656E742D63686172742D6261722D6261636B67';
wwv_flow_imp.g_varchar2_table(104) := '726F756E642D636F6C6F723A20766172282D2D75742D70616C657474652D7072696D617279293B0D0A20202D2D612D70657263656E742D63686172742D6261722D746578742D636F6C6F723A20766172282D2D75742D70616C657474652D7072696D6172';
wwv_flow_imp.g_varchar2_table(105) := '792D636F6E7472617374293B0D0A20202D2D612D70657263656E742D63686172742D6261722D626F726465722D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A20202D2D612D7265706F72742D';
wwv_flow_imp.g_varchar2_table(106) := '636F6E74726F6C732D70616464696E672D793A20302E3572656D3B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D70616464696E672D783A20302E3572656D3B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D626F726465722D';
wwv_flow_imp.g_varchar2_table(107) := '636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D626F726465722D77696474683A20766172282D2D75742D636F6D706F6E656E742D626F72';
wwv_flow_imp.g_varchar2_table(108) := '6465722D7769647468293B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D6974656D2D73706163696E673A20302E323572656D3B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D73706163696E673A20302E357265';
wwv_flow_imp.g_varchar2_table(109) := '6D3B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D626F726465722D7261646975733A20302E31323572656D3B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D77696474683A2031382E';
wwv_flow_imp.g_varchar2_table(110) := '373572656D3B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D666F6E742D73697A653A20302E373572656D3B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D6C696E652D';
wwv_flow_imp.g_varchar2_table(111) := '6865696768743A203172656D3B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D626F726465722D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A20202D';
wwv_flow_imp.g_varchar2_table(112) := '2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D626F726465722D77696474683A20766172282D2D75742D636F6D706F6E656E742D626F726465722D7769647468293B0D0A20202D2D612D7265706F72742D636F6E74726F6C73';
wwv_flow_imp.g_varchar2_table(113) := '2D696E7075742D626F726465722D77696474683A20766172282D2D612D6669656C642D696E7075742D626F726465722D7769647468293B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D696E7075742D626F726465722D636F6C6F723A2076';
wwv_flow_imp.g_varchar2_table(114) := '6172282D2D612D6669656C642D696E7075742D626F726465722D636F6C6F72293B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D696E7075742D626F726465722D7261646975733A20766172282D2D612D6669656C642D696E7075742D626F';
wwv_flow_imp.g_varchar2_table(115) := '726465722D726164697573293B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D696E7075742D666F6375732D626F726465722D636F6C6F723A20766172282D2D612D6669656C642D696E7075742D666F6375732D626F726465722D636F6C6F';
wwv_flow_imp.g_varchar2_table(116) := '72293B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D696E7075742D70616464696E672D793A20302E3572656D3B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D696E7075742D70616464696E672D783A20302E3572656D3B0D';
wwv_flow_imp.g_varchar2_table(117) := '0A20202D2D612D7265706F72742D636F6E74726F6C732D696E7075742D666F6E742D73697A653A20302E373572656D3B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D696E7075742D6C696E652D6865696768743A203172656D3B0D0A2020';
wwv_flow_imp.g_varchar2_table(118) := '2D2D612D73706C69747465722D6261722D77696474683A20302E3572656D3B0D0A20202D2D612D73706C69747465722D7468756D622D77696474683A20302E3572656D3B0D0A20202D2D612D73706C69747465722D7468756D622D6865696768743A2033';
wwv_flow_imp.g_varchar2_table(119) := '72656D3B0D0A20202D2D612D73706C69747465722D7468756D622D626F726465722D7261646975733A203072656D3B0D0A20202D2D612D73746172726174696E672D73746172732D70616464696E672D793A20302E323572656D3B0D0A20202D2D612D73';
wwv_flow_imp.g_varchar2_table(120) := '746172726174696E672D73746172732D62672D636F6C6F723A2072676261283235352C203235352C203235352C20302E3135293B0D0A20202D2D612D73746172726174696E672D76616C75652D73706163696E673A20302E3572656D3B0D0A20202D2D61';
wwv_flow_imp.g_varchar2_table(121) := '2D7377697463682D77696474683A20322E373572656D3B0D0A20202D2D612D7377697463682D70616464696E672D793A20302E31323572656D3B0D0A20202D2D612D7377697463682D70616464696E672D783A20302E31323572656D3B0D0A20202D2D61';
wwv_flow_imp.g_varchar2_table(122) := '2D7377697463682D686F7665722D6261636B67726F756E642D636F6C6F723A20766172282D2D612D7377697463682D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D7377697463682D6163746976652D6261636B67726F756E642D636F';
wwv_flow_imp.g_varchar2_table(123) := '6C6F723A20766172282D2D612D7377697463682D686F7665722D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D7377697463682D636865636B65642D686F7665722D6261636B67726F756E642D636F6C6F723A20766172282D2D612D73';
wwv_flow_imp.g_varchar2_table(124) := '77697463682D636865636B65642D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D7377697463682D636865636B65642D6163746976652D6261636B67726F756E642D636F6C6F723A20766172282D2D612D7377697463682D636865636B';
wwv_flow_imp.g_varchar2_table(125) := '65642D686F7665722D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D7377697463682D746F67676C652D77696474683A20312E323572656D3B0D0A20202D2D612D7377697463682D746F67676C652D6865696768743A20312E32357265';
wwv_flow_imp.g_varchar2_table(126) := '6D3B0D0A20202D2D612D746F6F6C6261722D6261636B67726F756E642D636F6C6F723A20766172282D2D75742D726567696F6E2D6865616465722D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D746F6F6C6261722D626F726465722D';
wwv_flow_imp.g_varchar2_table(127) := '77696474683A20766172282D2D75742D636F6D706F6E656E742D626F726465722D77696474682C20317078293B0D0A20202D2D612D746F6F6C6261722D626F726465722D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D626F72646572';
wwv_flow_imp.g_varchar2_table(128) := '2D636F6C6F72293B0D0A20202D2D612D746F6F6C6261722D6974656D2D73706163696E673A20302E3572656D3B0D0A20202D2D612D746F6F6C6261722D7365702D626F726465722D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D696E';
wwv_flow_imp.g_varchar2_table(129) := '6E65722D626F726465722D636F6C6F72293B0D0A20202D2D612D746F6F6C6261722D736D616C6C2D627574746F6E2D70616464696E672D793A20302E323572656D3B0D0A20202D2D612D746F6F6C6261722D736D616C6C2D627574746F6E2D7061646469';
wwv_flow_imp.g_varchar2_table(130) := '6E672D783A20302E3572656D3B0D0A20202D2D612D74726565766965772D746F67676C652D73697A653A203172656D3B0D0A20202D2D612D74726565766965772D6E6F64652D69636F6E2D73697A653A203172656D3B0D0A20202D2D612D747265657669';
wwv_flow_imp.g_varchar2_table(131) := '65772D6E6F64652D666F6E742D73697A653A20302E373572656D3B0D0A20202D2D612D74726565766965772D6E6F64652D6C696E652D6865696768743A203172656D3B0D0A20202D2D612D74726565766965772D6E6F64652D70616464696E672D793A20';
wwv_flow_imp.g_varchar2_table(132) := '302E323572656D3B0D0A20202D2D612D74726565766965772D6E6F64652D70616464696E672D783A20302E323572656D3B0D0A20202D2D612D74726565766965772D6E6F64652D746578742D636F6C6F723A20696E68657269743B0D0A20202D2D612D74';
wwv_flow_imp.g_varchar2_table(133) := '726565766965772D6E6F64652D666F63757365642D736861646F773A20696E7365742030203020302031707820726762612835372C203135352C203233342C20302E35293B0D0A20202D2D612D74726565766965772D6E6F64652D706C616365686F6C64';
wwv_flow_imp.g_varchar2_table(134) := '65722D626F726465722D7261646975733A20302E31323572656D3B0D0A20202D2D612D74726565766965772D647261672D68656C7065722D626F726465722D7261646975733A20302E31323572656D3B0D0A20202D2D612D636869702D70616464696E67';
wwv_flow_imp.g_varchar2_table(135) := '2D793A20302E31323572656D3B0D0A20202D2D612D636869702D70616464696E672D783A20302E323572656D3B0D0A20202D2D612D636869702D73706163696E673A20302E323572656D3B0D0A20202D2D612D636869702D666F6E742D73697A653A2030';
wwv_flow_imp.g_varchar2_table(136) := '2E373572656D3B0D0A20202D2D612D636869702D6C696E652D6865696768743A203172656D3B0D0A20202D2D612D636869702D6C6162656C2D73706163696E673A20302E323572656D3B0D0A20202D2D612D636869702D626F726465722D726164697573';
wwv_flow_imp.g_varchar2_table(137) := '3A20302E31323572656D3B0D0A20202D2D612D636869702D626F726465722D77696474683A20766172282D2D612D6669656C642D696E7075742D626F726465722D7769647468293B0D0A20202D2D612D636869702D626F726465722D636F6C6F723A2076';
wwv_flow_imp.g_varchar2_table(138) := '6172282D2D612D6669656C642D696E7075742D626F726465722D636F6C6F72293B0D0A20202D2D612D636869702D686F7665722D6261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E303235293B0D0A20';
wwv_flow_imp.g_varchar2_table(139) := '202D2D612D636869702D6163746976652D6261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E31293B0D0A20202D2D612D636869702D6170706C6965642D6261636B67726F756E642D636F6C6F723A2072';
wwv_flow_imp.g_varchar2_table(140) := '676261283235352C203235352C203235352C20302E303735293B0D0A20202D2D612D636869702D6170706C6965642D686F7665722D6261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E3135293B0D0A20';
wwv_flow_imp.g_varchar2_table(141) := '202D2D612D636869702D72656D6F76652D686F7665722D6261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E31293B0D0A20202D2D612D636869702D72656D6F76652D6163746976652D6261636B67726F';
wwv_flow_imp.g_varchar2_table(142) := '756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E303735293B0D0A20202D2D612D636869702D6170706C6965642D69732D6163746976652D72656D6F76652D686F7665722D6261636B67726F756E642D636F6C6F723A20';
wwv_flow_imp.g_varchar2_table(143) := '72676261283235352C203235352C203235352C20302E31293B0D0A20202D2D612D636869702D6170706C6965642D69732D6163746976652D72656D6F76652D6163746976652D6261636B67726F756E642D636F6C6F723A2072676261283235352C203235';
wwv_flow_imp.g_varchar2_table(144) := '352C203235352C20302E32293B0D0A20202D2D612D636869702D696E7075742D666F6E742D73697A653A20302E373572656D3B0D0A20202D2D612D636869702D696E7075742D6C696E652D6865696768743A203172656D3B0D0A20202D2D612D636F6D62';
wwv_flow_imp.g_varchar2_table(145) := '6F2D73656C6563742D69636F6E2D73697A653A203172656D3B0D0A20202D2D612D636F6D626F2D73656C6563742D6974656D2D73656C65637465642D6261636B67726F756E642D636F6C6F723A20766172282D2D75742D70616C657474652D7072696D61';
wwv_flow_imp.g_varchar2_table(146) := '72792D7368616465293B0D0A20202D2D612D736561726368726573756C74732D6761703A203172656D3B0D0A20202D2D612D726573756C74736974656D2D6974656D2D6761703A203172656D3B0D0A20202D2D612D726573756C74736974656D2D706164';
wwv_flow_imp.g_varchar2_table(147) := '64696E672D783A203172656D3B0D0A20202D2D612D726573756C74736974656D2D70616464696E672D793A203172656D3B0D0A20202D2D612D726573756C74736974656D2D6261636B67726F756E642D636F6C6F723A20233030303B0D0A20202D2D612D';
wwv_flow_imp.g_varchar2_table(148) := '726573756C74736974656D2D626F726465722D77696474683A203170783B0D0A20202D2D612D726573756C74736974656D2D626F726465722D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A20';
wwv_flow_imp.g_varchar2_table(149) := '202D2D612D726573756C74736974656D2D626F726465722D7261646975733A20302E323572656D3B0D0A20202D2D612D726573756C74736974656D2D636F6E74656E742D6761703A20302E323572656D3B0D0A20202D2D612D726573756C74736974656D';
wwv_flow_imp.g_varchar2_table(150) := '2D666F6E742D73697A653A20302E38373572656D3B0D0A20202D2D612D726573756C74736974656D2D6C696E652D6865696768743A20312E323572656D3B0D0A20202D2D612D726573756C74736974656D2D6865616465722D6761703A20302E3572656D';
wwv_flow_imp.g_varchar2_table(151) := '3B0D0A20202D2D612D726573756C74736974656D2D6865616465722D73706163696E673A20302E323572656D3B0D0A20202D2D612D726573756C74736974656D2D7469746C652D666F6E742D73697A653A203172656D3B0D0A20202D2D612D726573756C';
wwv_flow_imp.g_varchar2_table(152) := '74736974656D2D7469746C652D6C696E652D6865696768743A20312E323572656D3B0D0A20202D2D612D726573756C74736974656D2D7375627469746C652D666F6E742D73697A653A20302E3933373572656D3B0D0A20202D2D612D726573756C747369';
wwv_flow_imp.g_varchar2_table(153) := '74656D2D7375627469746C652D6C696E652D6865696768743A20312E323572656D3B0D0A20202D2D612D726573756C74736974656D2D7375627469746C652D73706163696E673A20766172282D2D612D726573756C74736974656D2D6865616465722D73';
wwv_flow_imp.g_varchar2_table(154) := '706163696E672C20302E323572656D293B0D0A20202D2D612D726573756C74736974656D2D6465736372697074696F6E2D666F6E742D73697A653A20302E38373572656D3B0D0A20202D2D612D726573756C74736974656D2D6465736372697074696F6E';
wwv_flow_imp.g_varchar2_table(155) := '2D6C696E652D6865696768743A20312E323572656D3B0D0A20202D2D612D726573756C74736974656D2D617474726962757465732D666F6E742D73697A653A20302E3831323572656D3B0D0A20202D2D612D726573756C74736974656D2D617474726962';
wwv_flow_imp.g_varchar2_table(156) := '757465732D6C696E652D6865696768743A203172656D3B0D0A20202D2D612D726573756C74736974656D2D617474726962757465732D6761703A203172656D3B0D0A20202D2D612D726573756C74736974656D2D6D6973632D666F6E742D73697A653A20';
wwv_flow_imp.g_varchar2_table(157) := '302E3831323572656D3B0D0A20202D2D612D726573756C74736974656D2D6D6973632D6C696E652D6865696768743A203172656D3B0D0A20202D2D612D726573756C74736974656D2D6D6973632D746578742D636F6C6F723A20766172282D2D75742D63';
wwv_flow_imp.g_varchar2_table(158) := '6F6D706F6E656E742D746578742D6D757465642D636F6C6F72293B0D0A20202D2D612D726573756C74736974656D2D69636F6E2D70616464696E673A20302E3572656D3B0D0A20202D2D612D726573756C74736974656D2D696E697469616C732D73697A';
wwv_flow_imp.g_varchar2_table(159) := '653A203272656D3B0D0A20202D2D612D726573756C74736974656D2D696E697469616C732D666F6E742D73697A653A20302E38373572656D3B0D0A20202D2D612D726573756C74736974656D2D62616467652D666F6E742D73697A653A20302E37357265';
wwv_flow_imp.g_varchar2_table(160) := '6D3B0D0A20202D2D612D726573756C74736974656D2D62616467652D6261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E3135293B0D0A20202D2D612D726573756C74736974656D2D62616467652D626F';
wwv_flow_imp.g_varchar2_table(161) := '726465722D7261646975733A20302E323572656D3B0D0A20202D2D612D726573756C74736974656D2D62616467652D70616464696E673A20302E323572656D3B0D0A20202D2D612D736561726368726573756C74732D706167696E6174696F6E2D737061';
wwv_flow_imp.g_varchar2_table(162) := '63696E673A203172656D3B0D0A20202D2D612D736561726368726573756C74732D706167696E6174696F6E2D6761703A203172656D3B0D0A20202D2D612D736561726368726573756C74732D706167696E6174696F6E2D636F6C6F723A20766172282D2D';
wwv_flow_imp.g_varchar2_table(163) := '75742D636F6D706F6E656E742D746578742D6D757465642D636F6C6F72293B0D0A20202D2D612D736561726368726573756C74732D706167696E6174696F6E2D666F6E742D73697A657A3A20302E38373572656D3B0D0A20202D2D612D73656172636872';
wwv_flow_imp.g_varchar2_table(164) := '6573756C74732D706167696E6174696F6E2D6C696E652D6865696768743A20312E323572656D3B0D0A20202D2D612D746F6F6C7469702D666F6E742D73697A653A20302E3638373572656D3B0D0A20202D2D612D7370696E6E65722D73697A653A203272';
wwv_flow_imp.g_varchar2_table(165) := '656D3B0D0A20202D2D612D7370696E6E65722D626F726465722D77696474683A20302E323572656D3B0D0A20202D2D612D7370696E6E65722D636F6E7461696E65722D70616464696E673A20302E3572656D3B0D0A20202D2D612D6C6F76652D61706578';
wwv_flow_imp.g_varchar2_table(166) := '2D6D617267696E3A203020302E31323572656D3B0D0A20202D2D612D6C6F76652D617065782D686F7665722D746578742D636F6C6F723A20766172282D2D612D70616C657474652D64616E6765722C2023463030293B0D0A20202D2D6A75692D6469616C';
wwv_flow_imp.g_varchar2_table(167) := '6F672D6261636B67726F756E642D636F6C6F723A20766172282D2D75742D726567696F6E2D6261636B67726F756E642D636F6C6F722C20766172282D2D75742D636F6D706F6E656E742D6261636B67726F756E642D636F6C6F7229293B0D0A20202D2D6A';
wwv_flow_imp.g_varchar2_table(168) := '75692D6469616C6F672D746578742D636F6C6F723A20766172282D2D75742D726567696F6E2D746578742D636F6C6F722C20766172282D2D75742D636F6D706F6E656E742D746578742D64656661756C742D636F6C6F7229293B0D0A20202D2D6A75692D';
wwv_flow_imp.g_varchar2_table(169) := '6469616C6F672D626F726465722D636F6C6F723A20766172282D2D75742D726567696F6E2D626F726465722D636F6C6F722C20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F7229293B0D0A20202D2D6A75692D6469616C6F';
wwv_flow_imp.g_varchar2_table(170) := '672D626F726465722D77696474683A20303B0D0A20202D2D6A75692D6469616C6F672D626F726465722D7261646975733A20766172282D2D75742D726567696F6E2D626F726465722D7261646975732C20766172282D2D75742D636F6D706F6E656E742D';
wwv_flow_imp.g_varchar2_table(171) := '626F726465722D72616469757329293B0D0A20202D2D6A75692D6469616C6F672D736861646F773A20766172282D2D75742D736861646F772D6C67292C2030203020302031707820766172282D2D75742D726567696F6E2D626F726465722D636F6C6F72';
wwv_flow_imp.g_varchar2_table(172) := '2C20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F7229293B0D0A20202D2D6A75692D6469616C6F672D666F6E742D73697A653A20302E373572656D3B0D0A20202D2D6A75692D6469616C6F672D7469746C656261722D7061';
wwv_flow_imp.g_varchar2_table(173) := '6464696E672D793A20302E373572656D3B0D0A20202D2D6A75692D6469616C6F672D7469746C656261722D70616464696E672D783A203172656D3B0D0A20202D2D6A75692D6469616C6F672D7469746C656261722D6261636B67726F756E642D636F6C6F';
wwv_flow_imp.g_varchar2_table(174) := '723A207472616E73706172656E743B0D0A20202D2D6A75692D6469616C6F672D7469746C656261722D746578742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D7469746C652D636F6C6F72293B0D0A20202D2D6A75692D';
wwv_flow_imp.g_varchar2_table(175) := '6469616C6F672D7469746C656261722D626F726465722D77696474683A20766172282D2D75742D726567696F6E2D626F726465722D77696474682C20766172282D2D75742D636F6D706F6E656E742D626F726465722D77696474682C2031707829293B0D';
wwv_flow_imp.g_varchar2_table(176) := '0A20202D2D6A75692D6469616C6F672D7469746C656261722D626F726465722D636F6C6F723A20766172282D2D75742D726567696F6E2D626F726465722D636F6C6F722C20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F72';
wwv_flow_imp.g_varchar2_table(177) := '29293B0D0A20202D2D6A75692D6469616C6F672D7469746C652D666F6E742D73697A653A203172656D3B0D0A20202D2D6A75692D6469616C6F672D7469746C652D6C696E652D6865696768743A20312E3572656D3B0D0A20202D2D6A75692D6469616C6F';
wwv_flow_imp.g_varchar2_table(178) := '672D7469746C652D636C6F73652D77696474683A20312E3572656D3B0D0A20202D2D6A75692D6469616C6F672D7469746C652D636C6F73652D6865696768743A20312E3572656D3B0D0A20202D2D6A75692D6469616C6F672D7469746C652D636C6F7365';
wwv_flow_imp.g_varchar2_table(179) := '2D70616464696E672D793A20302E3572656D3B0D0A20202D2D6A75692D6469616C6F672D7469746C652D636C6F73652D70616464696E672D783A20302E3572656D3B0D0A20202D2D6A75692D6469616C6F672D7469746C652D636C6F73652D626F726465';
wwv_flow_imp.g_varchar2_table(180) := '722D7261646975733A20766172282D2D612D627574746F6E2D626F726465722D7261646975732C20302E31323572656D293B0D0A20202D2D6A75692D6469616C6F672D7469746C652D636C6F73652D626F726465722D636F6C6F723A20766172282D2D61';
wwv_flow_imp.g_varchar2_table(181) := '2D627574746F6E2D626F726465722D636F6C6F72293B0D0A20202D2D6A75692D6469616C6F672D7469746C652D636C6F73652D69636F6E2D73697A653A203172656D3B0D0A20202D2D6A75692D6469616C6F672D636F6E74656E742D70616464696E672D';
wwv_flow_imp.g_varchar2_table(182) := '793A203072656D3B0D0A20202D2D6A75692D6469616C6F672D636F6E74656E742D70616464696E672D783A203072656D3B0D0A20202D2D6A75692D6469616C6F672D627574746F6E70616E652D636F6E74656E742D70616464696E672D793A20302E3735';
wwv_flow_imp.g_varchar2_table(183) := '72656D3B0D0A20202D2D6A75692D6469616C6F672D627574746F6E70616E652D636F6E74656E742D70616464696E672D783A203172656D3B0D0A20202D2D6A75692D6469616C6F672D627574746F6E70616E652D626F726465722D636F6C6F723A207661';
wwv_flow_imp.g_varchar2_table(184) := '72282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A20202D2D6A75692D646174657069636B65722D77696474683A2031372E3572656D3B0D0A20202D2D6A75692D646174657069636B65722D6261636B67726F756E642D63';
wwv_flow_imp.g_varchar2_table(185) := '6F6C6F723A20766172282D2D75742D636F6D706F6E656E742D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D6A75692D646174657069636B65722D626F726465722D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D626F72';
wwv_flow_imp.g_varchar2_table(186) := '6465722D636F6C6F72293B0D0A20202D2D6A75692D646174657069636B65722D626F726465722D7261646975733A20302E3572656D3B0D0A20202D2D6A75692D646174657069636B65722D70616464696E673A20302E3572656D3B0D0A20202D2D6A7569';
wwv_flow_imp.g_varchar2_table(187) := '2D746F6F6C7469702D626F726465722D7261646975733A20302E31323572656D3B0D0A20202D2D6A75692D746F6F6C7469702D70616464696E673A20302E3572656D3B0D0A20202D2D6F6A65742D666F6E742D73697A653A20302E38373572656D3B0D0A';
wwv_flow_imp.g_varchar2_table(188) := '20202D2D6F6A65742D736D616C6C2D666F6E742D73697A653A20302E373572656D3B0D0A20202D2D6F6A65742D6D656469756D2D666F6E742D73697A653A203172656D3B0D0A20202D2D6F6A65742D6C617267652D666F6E742D73697A653A20312E3132';
wwv_flow_imp.g_varchar2_table(189) := '3572656D3B0D0A20202D2D6F6A65742D6C61726765722D666F6E742D73697A653A20312E323572656D3B0D0A20202D2D6F6A65742D746F6F6C7469702D7072696D6172792D746578742D636F6C6F723A20233030303030303B0D0A20202D2D6F6A65742D';
wwv_flow_imp.g_varchar2_table(190) := '746F6F6C7469702D7365636F6E646172792D746578742D636F6C6F723A207267626128302C20302C20302C20302E3635293B0D0A20202D2D6F6A65742D746F6F6C7469702D64697361626C65642D746578742D636F6C6F723A207267626128302C20302C';
wwv_flow_imp.g_varchar2_table(191) := '20302C20302E34293B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D636F6C6F722D736368656D653A206461726B3B0D0A20202D2D75742D70616C657474652D67656E657269633A20233064306430643B0D0A20202D2D75742D70616C657474652D';
wwv_flow_imp.g_varchar2_table(192) := '67656E657269632D636F6E74726173743A20236666663B0D0A20202D2D75742D70616C657474652D67656E657269632D73686164653A20233036303630363B0D0A20202D2D75742D70616C657474652D67656E657269632D746578743A20236666663B0D';
wwv_flow_imp.g_varchar2_table(193) := '0A20202D2D612D67762D6865616465722D6261636B67726F756E642D636F6C6F723A20766172282D2D75742D726567696F6E2D6865616465722D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D75742D7265706F72742D63656C6C2D616C74';
wwv_flow_imp.g_varchar2_table(194) := '2D6261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E31293B0D0A20202D2D75742D7265706F72742D6865616465722D6261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C20';
wwv_flow_imp.g_varchar2_table(195) := '3235352C20302E303235293B0D0A20202D2D75742D6865616465722D626F726465722D636F6C6F723A2072676261283235352C203235352C203235352C20302E3135293B0D0A20202D2D75742D6865616465722D626F782D736861646F773A2076617228';
wwv_flow_imp.g_varchar2_table(196) := '2D2D75742D736861646F772D736D293B0D0A20202D2D75742D666F6F7465722D6261636B67726F756E642D636F6C6F723A20233064306430643B0D0A20202D2D75742D666F6F7465722D626F726465722D636F6C6F723A2072676261283235352C203235';
wwv_flow_imp.g_varchar2_table(197) := '352C203235352C20302E31293B0D0A20202D2D75742D666F6F7465722D6974656D2D73706163696E673A20302E373572656D3B0D0A20202D2D75742D6E6176746162732D6974656D2D626F726465722D77696474683A203170783B0D0A20202D2D75742D';
wwv_flow_imp.g_varchar2_table(198) := '6E6176746162732D6974656D2D686967686C696768742D636F6C6F723A207472616E73706172656E743B0D0A20202D2D75742D6E6176746162732D6974656D2D686967686C696768742D77696474683A203072656D3B0D0A20202D2D75742D6E61767461';
wwv_flow_imp.g_varchar2_table(199) := '62732D6974656D2D6163746976652D686967686C696768742D636F6C6F723A20766172282D2D75742D70616C657474652D7072696D617279293B0D0A20202D2D75742D6E61766261722D627574746F6E2D62616467652D6261636B67726F756E642D636F';
wwv_flow_imp.g_varchar2_table(200) := '6C6F723A207267626128302C20302C20302C20302E33293B0D0A20202D2D75742D6E61766261722D627574746F6E2D62616467652D626F726465722D7261646975733A20313670783B0D0A20202D2D75742D626F64792D6E61762D626F726465722D636F';
wwv_flow_imp.g_varchar2_table(201) := '6C6F723A20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A20202D2D75742D626F64792D7469746C652D626F726465722D77696474683A203070783B0D0A20202D2D75742D626F64792D7469746C652D626F782D';
wwv_flow_imp.g_varchar2_table(202) := '736861646F773A203020317078203020302072676261283235352C203235352C203235352C20302E3135293B0D0A20202D2D75742D626F64792D7469746C652D6261636B64726F702D66696C7465723A20736174757261746528313830252920626C7572';
wwv_flow_imp.g_varchar2_table(203) := '28387078293B0D0A20202D2D75742D62726561646372756D622D726567696F6E2D73706163696E673A20302E3572656D3B0D0A20202D2D75742D62726561646372756D622D6974656D2D6163746976652D746578742D636F6C6F723A20766172282D2D75';
wwv_flow_imp.g_varchar2_table(204) := '742D626F64792D7469746C652D746578742D636F6C6F72293B0D0A20202D2D75742D736D6172742D66696C7465722D6D61782D77696474683A20333072656D3B0D0A20202D2D75742D6865726F2D726567696F6E2D7469746C652D746578742D636F6C6F';
wwv_flow_imp.g_varchar2_table(205) := '723A20766172282D2D75742D626F64792D7469746C652D746578742D636F6C6F72293B0D0A20202D2D75742D726567696F6E2D626F726465722D77696474683A203170783B0D0A20202D2D75742D726567696F6E2D626F782D736861646F773A20766172';
wwv_flow_imp.g_varchar2_table(206) := '282D2D75742D736861646F772D736D293B0D0A20202D2D75742D726567696F6E2D6D617267696E3A203172656D3B0D0A20202D2D75742D726567696F6E2D666F6E742D73697A653A20302E38373572656D3B0D0A20202D2D75742D726567696F6E2D6C69';
wwv_flow_imp.g_varchar2_table(207) := '6E652D6865696768743A20312E323572656D3B0D0A20202D2D75742D726567696F6E2D6865616465722D626F726465722D636F6C6F723A2072676261283235352C203235352C203235352C20302E303735293B0D0A20202D2D75742D726567696F6E2D62';
wwv_flow_imp.g_varchar2_table(208) := '6F64792D70616464696E672D793A203172656D3B0D0A20202D2D75742D726567696F6E2D626F64792D70616464696E672D783A203172656D3B0D0A20202D2D75742D726567696F6E2D627574746F6E732D70616464696E672D793A20302E3572656D3B0D';
wwv_flow_imp.g_varchar2_table(209) := '0A20202D2D75742D726567696F6E2D627574746F6E732D70616464696E672D783A20302E373572656D3B0D0A20202D2D75742D627574746F6E2D726567696F6E2D626F782D736861646F773A20766172282D2D75742D736861646F772D736D293B0D0A20';
wwv_flow_imp.g_varchar2_table(210) := '202D2D75742D636865636B626F782D6974656D2D73706163696E673A203172656D3B0D0A20202D2D75742D78732D6669656C642D696E7075742D666F6E742D73697A653A203172656D3B0D0A20202D2D75742D78732D6669656C642D696E7075742D6C69';
wwv_flow_imp.g_varchar2_table(211) := '6E652D6865696768743A20312E323572656D3B0D0A20202D2D75742D6C6F67696E2D706167652D6261636B67726F756E642D636F6C6F723A20233139313931393B0D0A20202D2D75742D6C6F67696E2D726567696F6E2D6261636B67726F756E642D636F';
wwv_flow_imp.g_varchar2_table(212) := '6C6F723A207267626128302C20302C20302C20302E3635293B0D0A20202D2D75742D6C6F67696E2D726567696F6E2D66696C7465723A20626C757228347078293B0D0A20202D2D75742D6C6F67696E2D726567696F6E2D626F782D736861646F773A2076';
wwv_flow_imp.g_varchar2_table(213) := '6172282D2D75742D736861646F772D6C67293B0D0A20202D2D612D66732D746F67676C652D626F726465722D636F6C6F723A20766172282D2D612D627574746F6E2D626F726465722D636F6C6F72293B0D0A20202D2D612D66732D746F67676C652D626F';
wwv_flow_imp.g_varchar2_table(214) := '726465722D77696474683A20766172282D2D612D627574746F6E2D626F726465722D7769647468293B0D0A20202D2D612D66732D746F67676C652D626F726465722D7261646975733A20766172282D2D612D627574746F6E2D626F726465722D72616469';
wwv_flow_imp.g_varchar2_table(215) := '7573293B0D0A20202D2D612D66732D746F67676C652D746578742D636F6C6F723A20766172282D2D612D627574746F6E2D746578742D636F6C6F72293B0D0A20202D2D612D66732D746F67676C652D6261636B67726F756E642D636F6C6F723A20766172';
wwv_flow_imp.g_varchar2_table(216) := '282D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D66732D7365617263682D636F6E7461696E65722D626F726465722D77696474683A20766172282D2D612D627574746F6E2D626F726465722D776964746829';
wwv_flow_imp.g_varchar2_table(217) := '3B0D0A20202D2D612D66732D7365617263682D636F6E7461696E65722D626F726465722D636F6C6F723A20766172282D2D612D627574746F6E2D626F726465722D636F6C6F72293B0D0A20202D2D75742D616C6572742D7469746C652D666F6E742D7765';
wwv_flow_imp.g_varchar2_table(218) := '696768743A20766172282D2D612D626173652D666F6E742D7765696768742D73656D69626F6C642C20353030293B0D0A20202D2D75742D616C6572742D626F782D736861646F773A20766172282D2D75742D736861646F772D736D293B0D0A20202D2D6D';
wwv_flow_imp.g_varchar2_table(219) := '672D6374726C2D67726F75702D627574746F6E2D746578742D636F6C6F723A20233030303B0D0A20202D2D6D672D706F7075702D636F6E74656E742D626F782D736861646F773A20766172282D2D75742D736861646F772D6C67293B0D0A20202D2D612D';
wwv_flow_imp.g_varchar2_table(220) := '6D61702D6C6567656E642D7469746C652D746578742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D6D757465642D636F6C6F72293B0D0A20202D2D75742D636172646C6973742D626F782D736861646F773A2076617228';
wwv_flow_imp.g_varchar2_table(221) := '2D2D75742D736861646F772D736D293B0D0A20202D2D75742D6C696E6B736C6973742D6172726F772D636F6C6F723A2072676261283235352C203235352C203235352C20302E32293B0D0A20202D2D75742D746162732D6974656D2D746578742D636F6C';
wwv_flow_imp.g_varchar2_table(222) := '6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D64656661756C742D636F6C6F72293B0D0A20202D2D75742D746162732D6974656D2D6163746976652D746578742D636F6C6F723A20766172282D2D75742D6C696E6B2D746578742D';
wwv_flow_imp.g_varchar2_table(223) := '636F6C6F72293B0D0A20202D2D75742D746162732D6974656D2D68696E742D686967686C696768742D636F6C6F723A2072676261283235352C203235352C203235352C20302E32293B0D0A20202D2D75742D746162732D6974656D2D6163746976652D66';
wwv_flow_imp.g_varchar2_table(224) := '6F6E742D7765696768743A20766172282D2D612D626173652D666F6E742D7765696768742D626F6C642C20373030293B0D0A20202D2D75742D636F6D6D656E742D636861742D6261636B67726F756E642D636F6C6F723A2072676261283235352C203235';
wwv_flow_imp.g_varchar2_table(225) := '352C203235352C20302E31293B0D0A20202D2D75742D636F6D6D656E742D636861742D6163746976652D6261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E3135293B0D0A20202D2D75742D726573756C';
wwv_flow_imp.g_varchar2_table(226) := '7473726567696F6E2D6261636B67726F756E642D636F6C6F723A20233030303B0D0A20202D2D75742D726573756C7473726567696F6E2D626F726465722D636F6C6F723A20766172282D2D75742D726567696F6E2D626F726465722D636F6C6F72293B0D';
wwv_flow_imp.g_varchar2_table(227) := '0A20202D2D75742D726573756C7473726567696F6E2D7365617263682D626F726465722D636F6C6F723A2072676261283235352C203235352C203235352C20302E3135293B0D0A20202D2D75742D726573756C7473726567696F6E2D7365617263682D62';
wwv_flow_imp.g_varchar2_table(228) := '61636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E303235293B0D0A20202D2D75742D77702D6D61726B65722D636F6C6F723A20233236323632363B0D0A20202D2D75742D77702D747261636B2D636F6C6F';
wwv_flow_imp.g_varchar2_table(229) := '723A20233236323632363B0D0A20202D2D612D7172636F64652D73697A653A203872656D3B0D0A20202D2D612D7172636F64652D73697A652D736D3A203872656D3B0D0A20202D2D612D7172636F64652D73697A652D6D643A20313672656D3B0D0A2020';
wwv_flow_imp.g_varchar2_table(230) := '2D2D612D7172636F64652D73697A652D6C673A20333272656D3B0D0A20202D2D612D636861742D6261636B67726F756E643A20766172282D2D75742D626F64792D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D636861742D7469746C';
wwv_flow_imp.g_varchar2_table(231) := '652D6261636B67726F756E643A20766172282D2D75742D626F64792D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D636861742D7469746C652D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D7469746C';
wwv_flow_imp.g_varchar2_table(232) := '652D636F6C6F72293B0D0A20202D2D612D636861742D626F64792D6261636B67726F756E642D636F6C6F723A20766172282D2D75742D626F64792D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D636861742D757365722D7072696D61';
wwv_flow_imp.g_varchar2_table(233) := '72792D69636F6E2D6261636B67726F756E642D636F6C6F723A20766172282D2D75742D70616C657474652D7072696D617279293B0D0A20202D2D612D636861742D757365722D7072696D6172792D69636F6E2D746578742D636F6C6F723A20766172282D';
wwv_flow_imp.g_varchar2_table(234) := '2D75742D70616C657474652D7072696D6172792D636F6E7472617374293B0D0A20202D2D612D636861742D757365722D7072696D6172792D6D6573736167652D6261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3135';
wwv_flow_imp.g_varchar2_table(235) := '293B0D0A20202D2D612D636861742D757365722D7072696D6172792D746578742D636F6C6F723A20766172282D2D75742D626F64792D746578742D636F6C6F72293B0D0A20202D2D612D636861742D757365722D7365636F6E646172792D69636F6E2D62';
wwv_flow_imp.g_varchar2_table(236) := '61636B67726F756E642D636F6C6F723A20766172282D2D75742D70616C657474652D64616E676572293B0D0A20202D2D612D636861742D757365722D7365636F6E646172792D69636F6E2D746578742D636F6C6F723A20766172282D2D75742D70616C65';
wwv_flow_imp.g_varchar2_table(237) := '7474652D64616E6765722D636F6E7472617374293B0D0A20202D2D612D636861742D757365722D7365636F6E646172792D6D6573736167652D6261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3035293B0D0A20202D';
wwv_flow_imp.g_varchar2_table(238) := '2D612D636861742D757365722D7365636F6E646172792D746578742D636F6C6F723A20766172282D2D75742D626F64792D746578742D636F6C6F72293B0D0A20202D2D612D636861742D6D6573736167652D626F726465722D636F6C6F723A2076617228';
wwv_flow_imp.g_varchar2_table(239) := '2D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A20202D2D612D636861742D73656E642D627574746F6E2D686F7665722D6261636B67726F756E642D636F6C6F723A20766172282D2D612D627574746F6E2D73746174652D62';
wwv_flow_imp.g_varchar2_table(240) := '61636B67726F756E642D636F6C6F72293B0D0A20202D2D612D636861742D6D6573736167652D616374696F6E2D627574746F6E2D6261636B67726F756E642D636F6C6F723A20236666663B0D0A20202D2D612D636861742D6D6573736167652D61637469';
wwv_flow_imp.g_varchar2_table(241) := '6F6E2D627574746F6E2D73746174652D6261636B67726F756E642D636F6C6F723A20236638663866383B0D0A20202D2D612D636861742D6D6573736167652D6572726F722D69636F6E2D636F6C6F723A20766172282D2D75742D70616C657474652D6461';
wwv_flow_imp.g_varchar2_table(242) := '6E676572293B0D0A20202D2D612D636861742D7472616E7363726970742D6F75746C696E652D636F6C6F723A20766172282D2D75742D666F6375732D6F75746C696E652D636F6C6F722C202D7765626B69742D666F6375732D72696E672D636F6C6F7229';
wwv_flow_imp.g_varchar2_table(243) := '3B0D0A20202D2D66632D6E65757472616C2D62672D636F6C6F723A2072676261283235352C203235352C203235352C20302E32293B0D0A20202D2D66632D6E65757472616C2D746578742D636F6C6F723A20236666663B0D0A20202D2D66632D6576656E';
wwv_flow_imp.g_varchar2_table(244) := '742D73656C65637465642D6F7665726C61792D636F6C6F723A2072676261283235352C203235352C203235352C20302E32293B0D0A20202D2D66632D6E6F6E2D627573696E6573732D636F6C6F723A2072676261283235352C203235352C203235352C20';
wwv_flow_imp.g_varchar2_table(245) := '302E32293B0D0A20202D2D612D6469616772616D2D6261636B67726F756E643A20766172282D2D75742D726567696F6E2D6261636B67726F756E642D636F6C6F722C20766172282D2D75742D636F6D706F6E656E742D6261636B67726F756E642D636F6C';
wwv_flow_imp.g_varchar2_table(246) := '6F7229293B0D0A20202D2D612D6469616772616D2D656C656D656E742D6261636B67726F756E642D636F6C6F723A20766172282D2D75742D626F64792D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D6469616772616D2D656C656D65';
wwv_flow_imp.g_varchar2_table(247) := '6E742D746578742D636F6C6F723A20766172282D2D75742D626F64792D746578742D636F6C6F72293B0D0A20202D2D612D6469616772616D2D656C656D656E742D736861646F773A207267626128302C20302C20302C20302E3329203020367078203132';
wwv_flow_imp.g_varchar2_table(248) := '70783B0D0A20202D2D612D6469616772616D2D656C656D656E742D69636F6E2D636F6C6F723A20233030303B0D0A20202D2D612D6469616772616D2D656C656D656E742D69636F6E2D6261636B67726F756E642D636F6C6F723A20233333333333333B0D';
wwv_flow_imp.g_varchar2_table(249) := '0A20202D2D612D6469616772616D2D656C656D656E742D6469616D6F6E642D746578742D636F6C6F723A20766172282D2D752D636F6C6F722D33382D636F6E7472617374293B0D0A20202D2D612D6469616772616D2D656C656D656E742D6469616D6F6E';
wwv_flow_imp.g_varchar2_table(250) := '642D6261636B67726F756E642D636F6C6F723A20766172282D2D752D636F6C6F722D3338293B0D0A20202D2D612D6469616772616D2D656C656D656E742D726563742D6261636B67726F756E642D636F6C6F723A20766172282D2D752D636F6C6F722D33';
wwv_flow_imp.g_varchar2_table(251) := '31293B0D0A20202D2D612D6469616772616D2D656C656D656E742D726563742D746578742D636F6C6F723A20766172282D2D752D636F6C6F722D33312D636F6E7472617374293B0D0A20202D2D612D6469616772616D2D656C656D656E742D7465726D69';
wwv_flow_imp.g_varchar2_table(252) := '6E61746F722D746578742D636F6C6F723A20233030303B0D0A20202D2D612D6469616772616D2D656C656D656E742D7465726D696E61746F722D6261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E3935';
wwv_flow_imp.g_varchar2_table(253) := '293B0D0A20202D2D612D6469616772616D2D6C6162656C2D6261636B67726F756E642D636F6C6F723A20766172282D2D752D636F6C6F722D3435293B0D0A20202D2D612D6469616772616D2D6C6162656C2D746578742D636F6C6F723A20766172282D2D';
wwv_flow_imp.g_varchar2_table(254) := '752D636F6C6F722D34352D636F6E7472617374293B0D0A20202D2D612D6469616772616D2D6C696E6B2D626F726465722D636F6C6F723A20766172282D2D752D636F6C6F722D3434293B0D0A20202D2D612D6469616772616D2D6E6176696761746F722D';
wwv_flow_imp.g_varchar2_table(255) := '626F726465722D636F6C6F723A20766172282D2D75742D70616C657474652D7072696D617279293B0D0A20202D2D612D6469616772616D2D6E6176696761746F722D6261636B67726F756E642D636F6C6F723A20766172282D2D612D6469616772616D2D';
wwv_flow_imp.g_varchar2_table(256) := '6261636B67726F756E64293B0D0A20202D2D612D6469616772616D2D63656C6C2D686967686C696768743A20766172282D2D75742D70616C657474652D73756363657373293B0D0A20202D2D612D6469616772616D2D726F7574652D7465726D696E6174';
wwv_flow_imp.g_varchar2_table(257) := '65643A20766172282D2D75742D70616C657474652D7761726E696E67293B0D0A20202D2D612D6469616772616D2D726F7574652D6661756C7465643A20766172282D2D75742D70616C657474652D64616E676572293B0D0A20202D2D612D646961677261';
wwv_flow_imp.g_varchar2_table(258) := '6D2D726F7574652D6163746976653A20766172282D2D75742D70616C657474652D7072696D617279293B0D0A20202D2D612D6469616772616D2D726F7574652D636F6D706C657465643A20766172282D2D75742D70616C657474652D7375636365737329';
wwv_flow_imp.g_varchar2_table(259) := '3B0D0A20202D2D612D6469616772616D2D726F7574652D64656661756C743A20766172282D2D612D6469616772616D2D726F7574652D636F6D706C65746564293B0D0A20202D2D612D6469616772616D2D726F7574652D77616974696E673A2076617228';
wwv_flow_imp.g_varchar2_table(260) := '2D2D75742D70616C657474652D696E666F293B0D0A20202D2D612D6469616772616D2D726F7574652D73757370656E6465643A20766172282D2D75742D70616C657474652D7761726E696E672D7368616465293B0D0A20202D2D612D63722D636865636B';
wwv_flow_imp.g_varchar2_table(261) := '626F782D6261636B67726F756E642D636F6C6F723A20236639663966393B0D0A20202D2D612D63722D636865636B626F782D746578742D636F6C6F723A20766172282D2D612D70616C657474652D7072696D6172792D636F6E7472617374293B0D0A2020';
wwv_flow_imp.g_varchar2_table(262) := '2D2D75742D616C7465726E6174652D68656164696E672D666F6E742D66616D696C793A20766172282D2D612D626173652D666F6E742D66616D696C792D7365726966293B0D0A20202D2D75742D616C7465726E6174652D68656164696E672D666F6E742D';
wwv_flow_imp.g_varchar2_table(263) := '7765696768743A20766172282D2D612D626173652D666F6E742D7765696768742D6E6F726D616C293B0D0A20202D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F723A2072676261283235352C203235352C203235352C20302E3135293B';
wwv_flow_imp.g_varchar2_table(264) := '0D0A20202D2D75742D636F6D706F6E656E742D626F726465722D77696474683A203170783B0D0A20202D2D75742D636F6D706F6E656E742D626F726465722D7261646975733A20302E323572656D3B0D0A20202D2D75742D636F6D706F6E656E742D626F';
wwv_flow_imp.g_varchar2_table(265) := '782D736861646F773A20766172282D2D75742D736861646F772D6C67293B0D0A20202D2D75742D636F6D706F6E656E742D686967686C696768742D6261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E30';
wwv_flow_imp.g_varchar2_table(266) := '3235293B0D0A20202D2D75742D636F6D706F6E656E742D746F6F6C6261722D6261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E303235293B0D0A20202D2D75742D636F6D706F6E656E742D696E6E6572';
wwv_flow_imp.g_varchar2_table(267) := '2D626F726465722D77696474683A20766172282D2D75742D636F6D706F6E656E742D626F726465722D7769647468293B0D0A20202D2D75742D636F6D706F6E656E742D696E6E65722D626F726465722D636F6C6F723A2072676261283235352C20323535';
wwv_flow_imp.g_varchar2_table(268) := '2C203235352C20302E31293B0D0A20202D2D75742D636F6D706F6E656E742D746578742D64656661756C742D636F6C6F723A20236666663B0D0A20202D2D75742D636F6D706F6E656E742D746578742D7469746C652D636F6C6F723A20236666663B0D0A';
wwv_flow_imp.g_varchar2_table(269) := '20202D2D75742D636F6D706F6E656E742D746578742D7375627469746C652D636F6C6F723A2072676261283235352C203235352C203235352C20302E3835293B0D0A20202D2D75742D636F6D706F6E656E742D746578742D6D757465642D636F6C6F723A';
wwv_flow_imp.g_varchar2_table(270) := '2072676261283235352C203235352C203235352C20302E3635293B0D0A20202D2D75742D636F6D706F6E656E742D69636F6E2D6261636B67726F756E642D636F6C6F723A20766172282D2D75742D70616C657474652D7072696D617279293B0D0A20202D';
wwv_flow_imp.g_varchar2_table(271) := '2D75742D636F6D706F6E656E742D69636F6E2D636F6C6F723A20766172282D2D75742D70616C657474652D7072696D6172792D636F6E7472617374293B0D0A20202D2D75742D636F6D706F6E656E742D62616467652D6261636B67726F756E642D636F6C';
wwv_flow_imp.g_varchar2_table(272) := '6F723A2072676261283235352C203235352C203235352C20302E31293B0D0A20202D2D75742D636F6D706F6E656E742D62616467652D746578742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D64656661756C742D636F';
wwv_flow_imp.g_varchar2_table(273) := '6C6F72293B0D0A20202D2D75742D636F6D706F6E656E742D62616467652D626F726465722D7261646975733A20302E323572656D3B0D0A20202D2D75742D736861646F772D736D3A203020302E31323572656D20302E323572656D202D302E3132357265';
wwv_flow_imp.g_varchar2_table(274) := '6D207267626128302C20302C20302C20302E31293B0D0A20202D2D75742D736861646F772D6D643A203020302E373572656D20312E3572656D202D302E373572656D207267626128302C20302C20302C20302E33293B0D0A20202D2D75742D736861646F';
wwv_flow_imp.g_varchar2_table(275) := '772D6C673A203020312E3572656D203372656D202D312E3572656D207267626128302C20302C20302C20302E33293B0D0A20202D2D75742D626F726465722D7261646975732D736D3A20302E31323572656D3B0D0A20202D2D75742D626F726465722D72';
wwv_flow_imp.g_varchar2_table(276) := '61646975732D6D643A20302E323572656D3B0D0A20202D2D75742D626F726465722D7261646975732D6C673A20302E3572656D3B0D0A20202D2D75742D626F726465722D7261646975733A20766172282D2D75742D626F726465722D7261646975732D6D';
wwv_flow_imp.g_varchar2_table(277) := '64293B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D70616C657474652D7072696D6172793A20233966316530643B0D0A20202D2D75742D70616C657474652D7072696D6172792D636F6E74726173743A20236666666666663B0D0A20202D2D7574';
wwv_flow_imp.g_varchar2_table(278) := '2D70616C657474652D7072696D6172792D73686164653A20233130303330313B0D0A20202D2D75742D70616C657474652D7072696D6172792D746578743A20766172282D2D612D70616C657474652D7072696D617279293B0D0A7D0D0A3A726F6F74207B';
wwv_flow_imp.g_varchar2_table(279) := '0D0A20202D2D75742D6C696E6B2D746578742D636F6C6F723A20236564333832303B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D666F6375732D6F75746C696E652D636F6C6F723A20233966316530643B0D0A7D0D0A3A726F6F74207B0D0A2020';
wwv_flow_imp.g_varchar2_table(280) := '2D2D75742D636F6D706F6E656E742D626F726465722D7261646975733A203270783B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D6865616465722D6261636B67726F756E642D636F6C6F723A20233966316530643B0D0A20202D2D75742D686561';
wwv_flow_imp.g_varchar2_table(281) := '6465722D746578742D636F6C6F723A20236666666666663B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D626F64792D6261636B67726F756E642D636F6C6F723A20233331326432613B0D0A20202D2D75742D626F64792D746578742D636F6C6F72';
wwv_flow_imp.g_varchar2_table(282) := '3A20236666666666663B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D626F64792D616374696F6E732D6261636B67726F756E642D636F6C6F723A20233335333132653B0D0A20202D2D75742D626F64792D616374696F6E732D746578742D636F6C';
wwv_flow_imp.g_varchar2_table(283) := '6F723A20236666666666663B0D0A20202D2D75742D626F64792D616374696F6E73746F67676C652D6261636B67726F756E642D636F6C6F723A20233335333132653B0D0A20202D2D75742D626F64792D616374696F6E73746F67676C652D686F7665722D';
wwv_flow_imp.g_varchar2_table(284) := '6261636B67726F756E642D636F6C6F723A20233531346134353B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D626F64792D7469746C652D6261636B67726F756E642D636F6C6F723A20233339333533313B0D0A20202D2D75742D626F64792D7469';
wwv_flow_imp.g_varchar2_table(285) := '746C652D746578742D636F6C6F723A20236666666666663B0D0A20202D2D75742D62726561646372756D622D6974656D2D746578742D636F6C6F723A2072676261283235352C203235352C203235352C20302E3635293B0D0A7D0D0A3A726F6F74207B0D';
wwv_flow_imp.g_varchar2_table(286) := '0A20202D2D75742D626F64792D736964656261722D6261636B67726F756E642D636F6C6F723A20233366336133363B0D0A20202D2D75742D626F64792D736964656261722D746578742D636F6C6F723A20236666666666663B0D0A7D0D0A3A726F6F7420';
wwv_flow_imp.g_varchar2_table(287) := '7B0D0A20202D2D75742D626F64792D6E61762D6261636B67726F756E642D636F6C6F723A20233233323332333B0D0A20202D2D75742D626F64792D6E61762D746578742D636F6C6F723A20236566656665663B0D0A20202D2D75742D626F64792D6E6176';
wwv_flow_imp.g_varchar2_table(288) := '2D7363726F6C6C6261722D7468756D622D6261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E32293B0D0A20202D2D75742D626F64792D6E61762D7363726F6C6C6261722D747261636B2D6261636B6772';
wwv_flow_imp.g_varchar2_table(289) := '6F756E642D636F6C6F723A20233233323332333B0D0A20202D2D75742D6E6176746162732D6261636B67726F756E642D636F6C6F723A20233233323332333B0D0A20202D2D75742D6E6176746162732D746578742D636F6C6F723A20236566656665663B';
wwv_flow_imp.g_varchar2_table(290) := '0D0A20202D2D75742D6E6176746162732D6974656D2D626F726465722D636F6C6F723A207267626128302C20302C20302C20302E31293B0D0A20202D2D75742D6E6176746162732D6974656D2D6163746976652D6261636B67726F756E642D636F6C6F72';
wwv_flow_imp.g_varchar2_table(291) := '3A20233061306130613B0D0A20202D2D75742D6E6176746162732D6974656D2D686F7665722D6261636B67726F756E642D636F6C6F723A20766172282D2D75742D6E6176746162732D6974656D2D6163746976652D6261636B67726F756E642D636F6C6F';
wwv_flow_imp.g_varchar2_table(292) := '72293B0D0A20202D2D75742D6865616465722D6D656E756261722D6261636B67726F756E642D636F6C6F723A20233233323332333B0D0A20202D2D75742D6865616465722D6D656E756261722D6974656D2D746578742D636F6C6F723A20236566656665';
wwv_flow_imp.g_varchar2_table(293) := '663B0D0A20202D2D75742D6865616465722D6D656E756261722D6974656D2D63757272656E742D6261636B67726F756E642D636F6C6F723A20233061306130613B0D0A20202D2D75742D6865616465722D6D656E756261722D6974656D2D63757272656E';
wwv_flow_imp.g_varchar2_table(294) := '742D746578742D636F6C6F723A20236566656665663B0D0A20202D2D75742D6865616465722D6D656E756261722D6974656D2D686F7665722D6261636B67726F756E642D636F6C6F723A20766172282D2D75742D6865616465722D6D656E756261722D69';
wwv_flow_imp.g_varchar2_table(295) := '74656D2D63757272656E742D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D75742D6865616465722D6D656E756261722D6974656D2D686F7665722D746578742D636F6C6F723A20766172282D2D75742D6865616465722D6D656E75626172';
wwv_flow_imp.g_varchar2_table(296) := '2D6974656D2D63757272656E742D746578742D636F6C6F72293B0D0A20202D2D75742D6865616465722D6D656E756261722D6974656D2D626F726465722D636F6C6F723A207267626128302C20302C20302C20302E31293B0D0A20202D2D75742D686561';
wwv_flow_imp.g_varchar2_table(297) := '6465722D6D656E756261722D6974656D2D73706C69742D69636F6E2D636F6C6F723A20236566656665663B0D0A20202D2D75742D6865616465722D6D656E756261722D6974656D2D73706C69742D626F726465722D636F6C6F723A207267626128302C20';
wwv_flow_imp.g_varchar2_table(298) := '302C20302C20302E31293B0D0A7D0D0A3A726F6F74207B0D0A20202D2D612D74726565766965772D6E6F64652D73656C65637465642D6261636B67726F756E642D636F6C6F723A20233061306130613B0D0A20202D2D612D74726565766965772D6E6F64';
wwv_flow_imp.g_varchar2_table(299) := '652D73656C65637465642D746578742D636F6C6F723A20236663666366633B0D0A20202D2D612D74726565766965772D6E6F64652D666F63757365642D6261636B67726F756E642D636F6C6F723A20233061306130613B0D0A20202D2D612D7472656576';
wwv_flow_imp.g_varchar2_table(300) := '6965772D6E6F64652D666F63757365642D746578742D636F6C6F723A20236663666366633B0D0A7D0D0A3A726F6F74207B0D0A20202D2D612D74726565766965772D6E6F64652D73656C65637465642D69636F6E2D636F6C6F723A20236663666366633B';
wwv_flow_imp.g_varchar2_table(301) := '0D0A20202D2D612D74726565766965772D6E6F64652D69636F6E2D636F6C6F723A20696E68657269743B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D74726565766965772D62616467652D6261636B67726F756E642D636F6C6F723A2023396631';
wwv_flow_imp.g_varchar2_table(302) := '6530643B0D0A20202D2D75742D74726565766965772D62616467652D746578742D636F6C6F723A20236666666666663B0D0A7D0D0A3A726F6F74207B0D0A20202D2D612D6D656E752D6261636B67726F756E642D636F6C6F723A20233236323332313B0D';
wwv_flow_imp.g_varchar2_table(303) := '0A20202D2D612D6D656E752D746578742D636F6C6F723A20236663666366633B0D0A20202D2D612D6D656E752D64656661756C742D746578742D636F6C6F723A20766172282D2D612D6D656E752D746578742D636F6C6F72293B0D0A20202D2D612D6D65';
wwv_flow_imp.g_varchar2_table(304) := '6E752D616363656C2D746578742D636F6C6F723A20766172282D2D612D6D656E752D746578742D636F6C6F72293B0D0A7D0D0A3A726F6F74207B0D0A20202D2D612D6D656E752D666F63757365642D6261636B67726F756E642D636F6C6F723A20233966';
wwv_flow_imp.g_varchar2_table(305) := '316530643B0D0A20202D2D612D6D656E752D666F63757365642D746578742D636F6C6F723A20236666666666663B0D0A20202D2D612D6D656E752D666F63757365642D616363656C2D746578742D636F6C6F723A20766172282D2D612D6D656E752D666F';
wwv_flow_imp.g_varchar2_table(306) := '63757365642D746578742D636F6C6F72293B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D726567696F6E2D6865616465722D6261636B67726F756E642D636F6C6F723A20233162313931373B0D0A20202D2D75742D726567696F6E2D6865616465';
wwv_flow_imp.g_varchar2_table(307) := '722D746578742D636F6C6F723A20236632663266323B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D726567696F6E2D6261636B67726F756E642D636F6C6F723A20233236323332313B0D0A20202D2D75742D726567696F6E2D746578742D636F6C';
wwv_flow_imp.g_varchar2_table(308) := '6F723A20236663666366633B0D0A20202D2D75742D636F6D706F6E656E742D6261636B67726F756E642D636F6C6F723A20233236323332313B0D0A20202D2D75742D77697A6172642D6865616465722D6261636B67726F756E642D636F6C6F723A202332';
wwv_flow_imp.g_varchar2_table(309) := '63323832353B0D0A20202D2D75742D7265706F72742D63656C6C2D626F726465722D636F6C6F723A20233431336333383B0D0A20202D2D75742D7265706F72742D63656C6C2D686F7665722D6261636B67726F756E642D636F6C6F723A20233263323832';
wwv_flow_imp.g_varchar2_table(310) := '353B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D70616C657474652D7072696D6172792D616C743A20236635393038333B0D0A20202D2D75742D70616C657474652D7072696D6172792D616C742D636F6E74726173743A20236666666666663B0D';
wwv_flow_imp.g_varchar2_table(311) := '0A20202D2D75742D70616C657474652D7072696D6172792D616C742D73686164653A20233063303730373B0D0A20202D2D75742D70616C657474652D7072696D6172792D616C742D746578743A20236564633863313B0D0A7D0D0A3A726F6F74207B0D0A';
wwv_flow_imp.g_varchar2_table(312) := '20202D2D75742D70616C657474652D737563636573733A20233338383732393B0D0A20202D2D75742D70616C657474652D737563636573732D636F6E74726173743A20234646463B0D0A20202D2D75742D70616C657474652D737563636573732D736861';
wwv_flow_imp.g_varchar2_table(313) := '64653A20233063316530393B0D0A20202D2D75742D70616C657474652D737563636573732D746578743A20233535376434653B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D70616C657474652D696E666F3A20233030364244383B0D0A20202D2D';
wwv_flow_imp.g_varchar2_table(314) := '75742D70616C657474652D696E666F2D636F6E74726173743A20234646463B0D0A20202D2D75742D70616C657474652D696E666F2D73686164653A20233030313833303B0D0A20202D2D75742D70616C657474652D696E666F2D746578743A2023343037';
wwv_flow_imp.g_varchar2_table(315) := '3561633B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D70616C657474652D7761726E696E673A20234642434534413B0D0A20202D2D75742D70616C657474652D7761726E696E672D636F6E74726173743A20233030303B0D0A20202D2D75742D70';
wwv_flow_imp.g_varchar2_table(316) := '616C657474652D7761726E696E672D73686164653A20233337326431303B0D0A20202D2D75742D70616C657474652D7761726E696E672D746578743A20233861373433323B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D70616C657474652D6461';
wwv_flow_imp.g_varchar2_table(317) := '6E6765723A20234545303730313B0D0A20202D2D75742D70616C657474652D64616E6765722D636F6E74726173743A20234646463B0D0A20202D2D75742D70616C657474652D64616E6765722D73686164653A20233334303230303B0D0A20202D2D7574';
wwv_flow_imp.g_varchar2_table(318) := '2D70616C657474652D64616E6765722D746578743A20236237343334303B0D0A7D0D0A3A726F6F74207B0D0A20202D2D752D636F6C6F722D313A20233330394644423B0D0A20202D2D752D636F6C6F722D312D636F6E74726173743A2023666666666666';
wwv_flow_imp.g_varchar2_table(319) := '3B0D0A20202D2D752D636F6C6F722D323A20233133423643463B0D0A20202D2D752D636F6C6F722D322D636F6E74726173743A20236534663966643B0D0A20202D2D752D636F6C6F722D333A20233245424642433B0D0A20202D2D752D636F6C6F722D33';
wwv_flow_imp.g_varchar2_table(320) := '2D636F6E74726173743A20236630666366623B0D0A20202D2D752D636F6C6F722D343A20233343414638353B0D0A20202D2D752D636F6C6F722D342D636F6E74726173743A20236630666166363B0D0A20202D2D752D636F6C6F722D353A202338314242';
wwv_flow_imp.g_varchar2_table(321) := '35463B0D0A20202D2D752D636F6C6F722D352D636F6E74726173743A20236666666666663B0D0A20202D2D752D636F6C6F722D363A20234444444535333B0D0A20202D2D752D636F6C6F722D362D636F6E74726173743A20233261326130383B0D0A2020';
wwv_flow_imp.g_varchar2_table(322) := '2D2D752D636F6C6F722D373A20234642434534413B0D0A20202D2D752D636F6C6F722D372D636F6E74726173743A20233434333330323B0D0A20202D2D752D636F6C6F722D383A20234544383133453B0D0A20202D2D752D636F6C6F722D382D636F6E74';
wwv_flow_imp.g_varchar2_table(323) := '726173743A20236666666666663B0D0A20202D2D752D636F6C6F722D393A20234539354235343B0D0A20202D2D752D636F6C6F722D392D636F6E74726173743A20236666666666663B0D0A20202D2D752D636F6C6F722D31303A20234538354438383B0D';
wwv_flow_imp.g_varchar2_table(324) := '0A20202D2D752D636F6C6F722D31302D636F6E74726173743A20236666666666663B0D0A20202D2D752D636F6C6F722D31313A20234341353839443B0D0A20202D2D752D636F6C6F722D31312D636F6E74726173743A20236666666666663B0D0A20202D';
wwv_flow_imp.g_varchar2_table(325) := '2D752D636F6C6F722D31323A20233835344539423B0D0A20202D2D752D636F6C6F722D31322D636F6E74726173743A20236636663066383B0D0A20202D2D752D636F6C6F722D31333A20233541363841443B0D0A20202D2D752D636F6C6F722D31332D63';
wwv_flow_imp.g_varchar2_table(326) := '6F6E74726173743A20236666666666663B0D0A20202D2D752D636F6C6F722D31343A20234146424143353B0D0A20202D2D752D636F6C6F722D31342D636F6E74726173743A20233331336134343B0D0A20202D2D752D636F6C6F722D31353A2023364538';
wwv_flow_imp.g_varchar2_table(327) := '3539383B0D0A20202D2D752D636F6C6F722D31352D636F6E74726173743A20236666666666663B0D0A20202D2D752D636F6C6F722D31363A20233539623265323B0D0A20202D2D752D636F6C6F722D31362D636F6E74726173743A20236666666666663B';
wwv_flow_imp.g_varchar2_table(328) := '0D0A20202D2D752D636F6C6F722D31373A20233432633564393B0D0A20202D2D752D636F6C6F722D31372D636F6E74726173743A20233035313531373B0D0A20202D2D752D636F6C6F722D31383A20233538636363393B0D0A20202D2D752D636F6C6F72';
wwv_flow_imp.g_varchar2_table(329) := '2D31382D636F6E74726173743A20233039316331633B0D0A20202D2D752D636F6C6F722D31393A20233633626639643B0D0A20202D2D752D636F6C6F722D31392D636F6E74726173743A20236666666666663B0D0A20202D2D752D636F6C6F722D32303A';
wwv_flow_imp.g_varchar2_table(330) := '20233961633937663B0D0A20202D2D752D636F6C6F722D32302D636F6E74726173743A20233230333331363B0D0A20202D2D752D636F6C6F722D32313A20236534653537353B0D0A20202D2D752D636F6C6F722D32312D636F6E74726173743A20233463';
wwv_flow_imp.g_varchar2_table(331) := '346330663B0D0A20202D2D752D636F6C6F722D32323A20236663643836653B0D0A20202D2D752D636F6C6F722D32322D636F6E74726173743A20233639346630323B0D0A20202D2D752D636F6C6F722D32333A20236631396136353B0D0A20202D2D752D';
wwv_flow_imp.g_varchar2_table(332) := '636F6C6F722D32332D636F6E74726173743A20236666666666663B0D0A20202D2D752D636F6C6F722D32343A20236564376337363B0D0A20202D2D752D636F6C6F722D32342D636F6E74726173743A20236666666666663B0D0A20202D2D752D636F6C6F';
wwv_flow_imp.g_varchar2_table(333) := '722D32353A20236564376461303B0D0A20202D2D752D636F6C6F722D32352D636F6E74726173743A20236666666666663B0D0A20202D2D752D636F6C6F722D32363A20236435373962313B0D0A20202D2D752D636F6C6F722D32362D636F6E7472617374';
wwv_flow_imp.g_varchar2_table(334) := '3A20236666666666663B0D0A20202D2D752D636F6C6F722D32373A20233964373161663B0D0A20202D2D752D636F6C6F722D32372D636F6E74726173743A20236666666666663B0D0A20202D2D752D636F6C6F722D32383A20233762383662643B0D0A20';
wwv_flow_imp.g_varchar2_table(335) := '202D2D752D636F6C6F722D32382D636F6E74726173743A20236666666666663B0D0A20202D2D752D636F6C6F722D32393A20236266633864313B0D0A20202D2D752D636F6C6F722D32392D636F6E74726173743A20233364343835343B0D0A20202D2D75';
wwv_flow_imp.g_varchar2_table(336) := '2D636F6C6F722D33303A20233862396461643B0D0A20202D2D752D636F6C6F722D33302D636F6E74726173743A20236666666666663B0D0A20202D2D752D636F6C6F722D33313A20233139386363613B0D0A20202D2D752D636F6C6F722D33312D636F6E';
wwv_flow_imp.g_varchar2_table(337) := '74726173743A20236536663466633B0D0A20202D2D752D636F6C6F722D33323A20233032613562653B0D0A20202D2D752D636F6C6F722D33322D636F6E74726173743A20236331663666653B0D0A20202D2D752D636F6C6F722D33333A20233138623161';
wwv_flow_imp.g_varchar2_table(338) := '653B0D0A20202D2D752D636F6C6F722D33332D636F6E74726173743A20236430663966383B0D0A20202D2D752D636F6C6F722D33343A20233234613437353B0D0A20202D2D752D636F6C6F722D33342D636F6E74726173743A20236432663565383B0D0A';
wwv_flow_imp.g_varchar2_table(339) := '20202D2D752D636F6C6F722D33353A20233661616434323B0D0A20202D2D752D636F6C6F722D33352D636F6E74726173743A20236636666266343B0D0A20202D2D752D636F6C6F722D33363A20236339636133393B0D0A20202D2D752D636F6C6F722D33';
wwv_flow_imp.g_varchar2_table(340) := '362D636F6E74726173743A20233033303330313B0D0A20202D2D752D636F6C6F722D33373A20236439623133623B0D0A20202D2D752D636F6C6F722D33372D636F6E74726173743A20233132306530333B0D0A20202D2D752D636F6C6F722D33383A2023';
wwv_flow_imp.g_varchar2_table(341) := '6437366132373B0D0A20202D2D752D636F6C6F722D33382D636F6E74726173743A20236666666666653B0D0A20202D2D752D636F6C6F722D33393A20236432343233623B0D0A20202D2D752D636F6C6F722D33392D636F6E74726173743A202366666666';
wwv_flow_imp.g_varchar2_table(342) := '66663B0D0A20202D2D752D636F6C6F722D34303A20236431343336663B0D0A20202D2D752D636F6C6F722D34302D636F6E74726173743A20236666666666663B0D0A20202D2D752D636F6C6F722D34313A20236261336438383B0D0A20202D2D752D636F';
wwv_flow_imp.g_varchar2_table(343) := '6C6F722D34312D636F6E74726173743A20236664663966623B0D0A20202D2D752D636F6C6F722D34323A20233737333339333B0D0A20202D2D752D636F6C6F722D34322D636F6E74726173743A20236538643566303B0D0A20202D2D752D636F6C6F722D';
wwv_flow_imp.g_varchar2_table(344) := '34333A20233364346561333B0D0A20202D2D752D636F6C6F722D34332D636F6E74726173743A20236538656266363B0D0A20202D2D752D636F6C6F722D34343A20233863396562303B0D0A20202D2D752D636F6C6F722D34342D636F6E74726173743A20';
wwv_flow_imp.g_varchar2_table(345) := '236666666666663B0D0A20202D2D752D636F6C6F722D34353A20233465373339313B0D0A20202D2D752D636F6C6F722D34352D636F6E74726173743A20236561656666343B0D0A7D0D0A3A726F6F74207B0D0A20202D2D612D627574746F6E2D626F7264';
wwv_flow_imp.g_varchar2_table(346) := '65722D7261646975733A20302E31323572656D3B0D0A7D0D0A3A726F6F74207B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A20233466346434633B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20';
wwv_flow_imp.g_varchar2_table(347) := '236666666666663B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D6669656C642D6C6162656C2D746578742D636F6C6F723A20236663666366633B0D0A7D0D0A3A726F6F74207B0D0A20202D2D612D6669656C642D696E7075742D626F726465722D';
wwv_flow_imp.g_varchar2_table(348) := '7261646975733A203270783B0D0A20202D2D612D66696C6564726F702D626F726465722D7261646975733A203270783B0D0A7D0D0A3A726F6F74207B0D0A20202D2D612D6669656C642D696E7075742D6261636B67726F756E642D636F6C6F723A202332';
wwv_flow_imp.g_varchar2_table(349) := '64323932363B0D0A20202D2D612D6669656C642D696E7075742D746578742D636F6C6F723A20236666666666663B0D0A20202D2D612D6669656C642D696E7075742D626F726465722D636F6C6F723A20233438343233653B0D0A20202D2D612D6669656C';
wwv_flow_imp.g_varchar2_table(350) := '642D696E7075742D686F7665722D6261636B67726F756E642D636F6C6F723A20233166316431623B0D0A20202D2D612D6669656C642D696E7075742D666F6375732D6261636B67726F756E642D636F6C6F723A20233131313030663B0D0A20202D2D612D';
wwv_flow_imp.g_varchar2_table(351) := '6669656C642D696E7075742D666F6375732D626F726465722D636F6C6F723A20233966316530643B0D0A20202D2D75742D6669656C642D696E7075742D666F6375732D69636F6E2D636F6C6F723A20233966316530643B0D0A20202D2D75742D6669656C';
wwv_flow_imp.g_varchar2_table(352) := '642D666C2D696E7075742D666F6375732D69636F6E2D6261636B67726F756E642D636F6C6F723A20233966316530643B0D0A20202D2D75742D6669656C642D666C2D696E7075742D666F6375732D69636F6E2D636F6C6F723A20236666666666663B0D0A';
wwv_flow_imp.g_varchar2_table(353) := '20202D2D612D636865636B626F782D6261636B67726F756E642D636F6C6F723A20233264323932363B0D0A20202D2D612D636865636B626F782D626F726465722D636F6C6F723A2072676261283235352C203235352C203235352C20302E3135293B0D0A';
wwv_flow_imp.g_varchar2_table(354) := '20202D2D612D636865636B626F782D746578742D636F6C6F723A20236666666666663B0D0A20202D2D612D636865636B626F782D636865636B65642D6261636B67726F756E642D636F6C6F723A20233966316530643B0D0A20202D2D612D636865636B62';
wwv_flow_imp.g_varchar2_table(355) := '6F782D636865636B65642D746578742D636F6C6F723A20236666666666663B0D0A20202D2D612D636865636B626F782D686F7665722D6261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E31293B0D0A7D';
wwv_flow_imp.g_varchar2_table(356) := '0D0A3A726F6F74207B0D0A20202D2D612D67762D6261636B67726F756E642D636F6C6F723A20233236323332313B0D0A20202D2D612D67762D63656C6C2D626F726465722D636F6C6F723A20233363333933373B0D0A20202D2D612D67762D6865616465';
wwv_flow_imp.g_varchar2_table(357) := '722D63656C6C2D626F726465722D636F6C6F723A20233431336333383B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D746578742D636F6C6F723A20236663666366633B0D0A20202D2D612D7265706F72742D63';
wwv_flow_imp.g_varchar2_table(358) := '6F6E74726F6C732D63656C6C2D6C6162656C2D6261636B67726F756E642D636F6C6F723A20233236323332313B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D6865616465722D6865696768743A203372656D3B0D0A7D0D0A3A726F6F74207B0D0A';
wwv_flow_imp.g_varchar2_table(359) := '20202D2D75742D6E61762D77696474683A20313572656D3B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D626F64792D616374696F6E732D77696474683A2031322E3572656D3B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D626F64792D73';
wwv_flow_imp.g_varchar2_table(360) := '6964656261722D77696474683A20313572656D3B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D626F64792D636F6E74656E742D6D61782D77696474683A20313030253B0D0A7D0D0A2E742D427574746F6E2D2D686561646572207B0D0A20202D2D';
wwv_flow_imp.g_varchar2_table(361) := '612D627574746F6E2D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20696E697469616C3B0D0A20202D2D612D627574746F6E2D626F726465722D636F6C6F';
wwv_flow_imp.g_varchar2_table(362) := '723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D736861646F773A206E6F6E653B0D0A20202D2D612D627574746F6E2D686F7665722D6261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3129';
wwv_flow_imp.g_varchar2_table(363) := '3B0D0A20202D2D612D627574746F6E2D686F7665722D626F726465722D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D6163746976652D6261636B67726F756E642D636F6C6F723A207267626128302C20302C2030';
wwv_flow_imp.g_varchar2_table(364) := '2C20302E3135293B0D0A20202D2D612D627574746F6E2D6163746976652D626F726465722D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D6163746976652D736861646F773A206E6F6E653B0D0A20202D2D612D62';
wwv_flow_imp.g_varchar2_table(365) := '7574746F6E2D666F6375732D6261636B67726F756E642D636F6C6F723A20766172282D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F72293B0D0A7D0D0A2E742D427574746F6E2D2D6865616465722E69732D616374697665207B0D0A20';
wwv_flow_imp.g_varchar2_table(366) := '202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3235293B0D0A7D0D0A3A726F6F74207B0D0A20202D2D612D627574746F6E2D626F726465722D636F6C6F723A2072676261283235352C';
wwv_flow_imp.g_varchar2_table(367) := '203235352C203235352C20302E303735293B0D0A20202D2D612D627574746F6E2D736861646F773A20302032707820347078202D337078207267626128302C20302C20302C20302E31293B0D0A20202D2D612D627574746F6E2D686F7665722D6261636B';
wwv_flow_imp.g_varchar2_table(368) := '67726F756E642D636F6C6F723A20233638363636353B0D0A20202D2D612D627574746F6E2D686F7665722D626F726465722D636F6C6F723A2072676261283235352C203235352C203235352C20302E303735293B0D0A20202D2D612D627574746F6E2D68';
wwv_flow_imp.g_varchar2_table(369) := '6F7665722D736861646F773A20302032707820347078202D327078207267626128302C20302C20302C20302E31293B0D0A20202D2D612D627574746F6E2D6163746976652D6261636B67726F756E642D636F6C6F723A20233139313931393B0D0A20202D';
wwv_flow_imp.g_varchar2_table(370) := '2D612D627574746F6E2D6163746976652D736861646F773A20302032707820327078202D317078207267626128302C20302C20302C20302E31352920696E7365743B0D0A20202D2D612D627574746F6E2D666F6375732D6261636B67726F756E642D636F';
wwv_flow_imp.g_varchar2_table(371) := '6C6F723A20766172282D2D612D627574746F6E2D686F7665722D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D627574746F6E2D666F6375732D626F726465722D636F6C6F723A20766172282D2D75742D70616C657474652D7072696D';
wwv_flow_imp.g_varchar2_table(372) := '617279293B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C65207B0D0A20202D2D612D627574746F6E2D747970652D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D747970652D73';
wwv_flow_imp.g_varchar2_table(373) := '6861646F773A206E6F6E653B0D0A7D0D0A2E742D427574746F6E2D2D6C696E6B207B0D0A2020626F726465722D636F6C6F723A207472616E73706172656E743B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A';
wwv_flow_imp.g_varchar2_table(374) := '2020626F782D736861646F773A206E6F6E653B0D0A7D0D0A2E742D427574746F6E2D2D6E6F55492C0D0A2E742D427574746F6E2D2D6E6F55493A686F7665722C0D0A2E742D427574746F6E2D2D6E6F55493A6163746976652C0D0A2E612D427574746F6E';
wwv_flow_imp.g_varchar2_table(375) := '2D2D6E6F55492C0D0A2E612D427574746F6E2D2D6E6F55493A686F7665722C0D0A2E612D427574746F6E2D2D6E6F55493A616374697665207B0D0A20202D2D612D627574746F6E2D747970652D736861646F773A206E6F6E653B0D0A20202D2D612D6275';
wwv_flow_imp.g_varchar2_table(376) := '74746F6E2D747970652D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D747970652D626F726465722D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E';
wwv_flow_imp.g_varchar2_table(377) := '2D747970652D746578742D636F6C6F723A20696E68657269743B0D0A2020636F6C6F723A20696E68657269743B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A2020746578742D736861646F773A206E6F6E65';
wwv_flow_imp.g_varchar2_table(378) := '3B0D0A7D0D0A2E742D427574746F6E2D2D686F742C0D0A2E612D427574746F6E2D2D686F742C0D0A2E75692D627574746F6E2D2D686F742C0D0A2E612D43617264566965772D627574746F6E2D2D686F742C0D0A2E617065782D627574746F6E2D67726F';
wwv_flow_imp.g_varchar2_table(379) := '757020696E7075743A636865636B6564202B206C6162656C2C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E617065782D6974656D2D67726F75702D2D726320696E7075743A636865636B';
wwv_flow_imp.g_varchar2_table(380) := '6564202B206C6162656C207B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A20233966316530643B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20236666666666663B0D0A20202D2D612D62757474';
wwv_flow_imp.g_varchar2_table(381) := '6F6E2D686F7665722D6261636B67726F756E642D636F6C6F723A20236365323731313B0D0A20202D2D612D627574746F6E2D686F7665722D746578742D636F6C6F723A20766172282D2D612D627574746F6E2D746578742D636F6C6F72293B0D0A20202D';
wwv_flow_imp.g_varchar2_table(382) := '2D612D627574746F6E2D6163746976652D6261636B67726F756E642D636F6C6F723A20233837316130623B0D0A20202D2D612D627574746F6E2D6163746976652D746578742D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D7465';
wwv_flow_imp.g_varchar2_table(383) := '78742D636F6C6F72293B0D0A20202D2D612D627574746F6E2D666F6375732D6261636B67726F756E642D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D62757474';
wwv_flow_imp.g_varchar2_table(384) := '6F6E2D666F6375732D746578742D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D746578742D636F6C6F72293B0D0A7D0D0A2E742D427574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C652C0D0A2E612D42757474';
wwv_flow_imp.g_varchar2_table(385) := '6F6E2D2D686F742E742D427574746F6E2D2D73696D706C652C0D0A2E75692D627574746F6E2D2D686F742E742D427574746F6E2D2D73696D706C652C0D0A2E612D43617264566965772D627574746F6E2D2D686F742E742D427574746F6E2D2D73696D70';
wwv_flow_imp.g_varchar2_table(386) := '6C652C0D0A2E617065782D627574746F6E2D67726F757020696E7075743A636865636B6564202B206C6162656C2E742D427574746F6E2D2D73696D706C652C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E';
wwv_flow_imp.g_varchar2_table(387) := '47726F7570202E617065782D6974656D2D67726F75702D2D726320696E7075743A636865636B6564202B206C6162656C2E742D427574746F6E2D2D73696D706C65207B0D0A20202D2D612D627574746F6E2D626F726465722D636F6C6F723A2023396631';
wwv_flow_imp.g_varchar2_table(388) := '6530643B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20233530386538363B0D0A20202D2D612D627574746F6E2D68';
wwv_flow_imp.g_varchar2_table(389) := '6F7665722D746578742D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D427574746F6E2D2D686F742E742D427574746F6E2D2D6C696E6B2C0D0A2E612D427574746F6E2D2D686F742E742D427574746F6E2D2D6C696E6B2C0D0A2E75692D6275';
wwv_flow_imp.g_varchar2_table(390) := '74746F6E2D2D686F742E742D427574746F6E2D2D6C696E6B2C0D0A2E612D43617264566965772D627574746F6E2D2D686F742E742D427574746F6E2D2D6C696E6B2C0D0A2E617065782D627574746F6E2D67726F757020696E7075743A636865636B6564';
wwv_flow_imp.g_varchar2_table(391) := '202B206C6162656C2E742D427574746F6E2D2D6C696E6B2C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E617065782D6974656D2D67726F75702D2D726320696E7075743A636865636B65';
wwv_flow_imp.g_varchar2_table(392) := '64202B206C6162656C2E742D427574746F6E2D2D6C696E6B207B0D0A20202D2D612D627574746F6E2D626F726465722D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A20';
wwv_flow_imp.g_varchar2_table(393) := '7472616E73706172656E743B0D0A20202D2D612D627574746F6E2D626F782D736861646F773A206E6F6E653B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20233530386538363B0D0A7D0D0A2E742D427574746F6E2D2D686F742E74';
wwv_flow_imp.g_varchar2_table(394) := '2D427574746F6E2D2D6E6F55492C0D0A2E612D427574746F6E2D2D686F742E742D427574746F6E2D2D6E6F55492C0D0A2E75692D627574746F6E2D2D686F742E742D427574746F6E2D2D6E6F55492C0D0A2E612D43617264566965772D627574746F6E2D';
wwv_flow_imp.g_varchar2_table(395) := '2D686F742E742D427574746F6E2D2D6E6F55492C0D0A2E617065782D627574746F6E2D67726F757020696E7075743A636865636B6564202B206C6162656C2E742D427574746F6E2D2D6E6F55492C0D0A2E742D466F726D2D6669656C64436F6E7461696E';
wwv_flow_imp.g_varchar2_table(396) := '65722D2D726164696F427574746F6E47726F7570202E617065782D6974656D2D67726F75702D2D726320696E7075743A636865636B6564202B206C6162656C2E742D427574746F6E2D2D6E6F55492C0D0A2E742D427574746F6E2D2D686F742E612D4275';
wwv_flow_imp.g_varchar2_table(397) := '74746F6E2D2D6E6F55492C0D0A2E612D427574746F6E2D2D686F742E612D427574746F6E2D2D6E6F55492C0D0A2E75692D627574746F6E2D2D686F742E612D427574746F6E2D2D6E6F55492C0D0A2E612D43617264566965772D627574746F6E2D2D686F';
wwv_flow_imp.g_varchar2_table(398) := '742E612D427574746F6E2D2D6E6F55492C0D0A2E617065782D627574746F6E2D67726F757020696E7075743A636865636B6564202B206C6162656C2E612D427574746F6E2D2D6E6F55492C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D';
wwv_flow_imp.g_varchar2_table(399) := '2D726164696F427574746F6E47726F7570202E617065782D6974656D2D67726F75702D2D726320696E7075743A636865636B6564202B206C6162656C2E612D427574746F6E2D2D6E6F5549207B0D0A20202D2D612D627574746F6E2D746578742D636F6C';
wwv_flow_imp.g_varchar2_table(400) := '6F723A20233530386538363B0D0A2020636F6C6F723A20233530386538363B0D0A7D0D0A2E742D427574746F6E2D2D7761726E696E67207B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A20234642434534413B0D0A20';
wwv_flow_imp.g_varchar2_table(401) := '202D2D612D627574746F6E2D746578742D636F6C6F723A20233030303B0D0A20202D2D612D627574746F6E2D686F7665722D6261636B67726F756E642D636F6C6F723A20236663646337633B0D0A20202D2D612D627574746F6E2D686F7665722D746578';
wwv_flow_imp.g_varchar2_table(402) := '742D636F6C6F723A20766172282D2D612D627574746F6E2D746578742D636F6C6F72293B0D0A20202D2D612D627574746F6E2D6163746976652D6261636B67726F756E642D636F6C6F723A20236661633733313B0D0A20202D2D612D627574746F6E2D61';
wwv_flow_imp.g_varchar2_table(403) := '63746976652D746578742D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D746578742D636F6C6F72293B0D0A20202D2D612D627574746F6E2D666F6375732D6261636B67726F756E642D636F6C6F723A20766172282D2D612D6275';
wwv_flow_imp.g_varchar2_table(404) := '74746F6E2D686F7665722D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D627574746F6E2D666F6375732D746578742D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D746578742D636F6C6F72293B0D0A7D0D0A';
wwv_flow_imp.g_varchar2_table(405) := '2E742D427574746F6E2D2D7761726E696E672E742D427574746F6E2D2D73696D706C65207B0D0A20202D2D612D627574746F6E2D626F726465722D636F6C6F723A20234642434534413B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D';
wwv_flow_imp.g_varchar2_table(406) := '636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20233861373433323B0D0A20202D2D612D627574746F6E2D686F7665722D746578742D636F6C6F723A20233030303B0D0A7D0D0A2E742D';
wwv_flow_imp.g_varchar2_table(407) := '427574746F6E2D2D7761726E696E672E742D427574746F6E2D2D6C696E6B207B0D0A20202D2D612D627574746F6E2D626F726465722D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D63';
wwv_flow_imp.g_varchar2_table(408) := '6F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D626F782D736861646F773A206E6F6E653B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20233861373433323B0D0A7D0D0A2E742D427574746F6E2D';
wwv_flow_imp.g_varchar2_table(409) := '2D7761726E696E672E742D427574746F6E2D2D6E6F55492C0D0A2E742D427574746F6E2D2D7761726E696E672E612D427574746F6E2D2D6E6F5549207B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20233861373433323B0D0A2020';
wwv_flow_imp.g_varchar2_table(410) := '636F6C6F723A20233861373433323B0D0A7D0D0A2E742D427574746F6E2D2D73756363657373207B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A20233338383732393B0D0A20202D2D612D627574746F6E2D74657874';
wwv_flow_imp.g_varchar2_table(411) := '2D636F6C6F723A20234646463B0D0A20202D2D612D627574746F6E2D686F7665722D6261636B67726F756E642D636F6C6F723A20233438616533353B0D0A20202D2D612D627574746F6E2D686F7665722D746578742D636F6C6F723A20766172282D2D61';
wwv_flow_imp.g_varchar2_table(412) := '2D627574746F6E2D746578742D636F6C6F72293B0D0A20202D2D612D627574746F6E2D6163746976652D6261636B67726F756E642D636F6C6F723A20233330373332333B0D0A20202D2D612D627574746F6E2D6163746976652D746578742D636F6C6F72';
wwv_flow_imp.g_varchar2_table(413) := '3A20766172282D2D612D627574746F6E2D686F7665722D746578742D636F6C6F72293B0D0A20202D2D612D627574746F6E2D666F6375732D6261636B67726F756E642D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D6261636B67';
wwv_flow_imp.g_varchar2_table(414) := '726F756E642D636F6C6F72293B0D0A20202D2D612D627574746F6E2D666F6375732D746578742D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D746578742D636F6C6F72293B0D0A7D0D0A2E742D427574746F6E2D2D7375636365';
wwv_flow_imp.g_varchar2_table(415) := '73732E742D427574746F6E2D2D73696D706C65207B0D0A20202D2D612D627574746F6E2D626F726465722D636F6C6F723A20233338383732393B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A207472616E7370617265';
wwv_flow_imp.g_varchar2_table(416) := '6E743B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20233535376434653B0D0A20202D2D612D627574746F6E2D686F7665722D746578742D636F6C6F723A20234646463B0D0A7D0D0A2E742D427574746F6E2D2D737563636573732E';
wwv_flow_imp.g_varchar2_table(417) := '742D427574746F6E2D2D6C696E6B207B0D0A20202D2D612D627574746F6E2D626F726465722D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A207472616E73706172656E';
wwv_flow_imp.g_varchar2_table(418) := '743B0D0A20202D2D612D627574746F6E2D626F782D736861646F773A206E6F6E653B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20233535376434653B0D0A7D0D0A2E742D427574746F6E2D2D737563636573732E742D427574746F';
wwv_flow_imp.g_varchar2_table(419) := '6E2D2D6E6F55492C0D0A2E742D427574746F6E2D2D737563636573732E612D427574746F6E2D2D6E6F5549207B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20233535376434653B0D0A2020636F6C6F723A20233535376434653B0D';
wwv_flow_imp.g_varchar2_table(420) := '0A7D0D0A2E75692D627574746F6E2D2D64616E6765722C0D0A2E742D427574746F6E2D2D64616E676572207B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A20234545303730313B0D0A20202D2D612D627574746F6E2D';
wwv_flow_imp.g_varchar2_table(421) := '746578742D636F6C6F723A20234646463B0D0A20202D2D612D627574746F6E2D686F7665722D6261636B67726F756E642D636F6C6F723A20236665323932343B0D0A20202D2D612D627574746F6E2D686F7665722D746578742D636F6C6F723A20766172';
wwv_flow_imp.g_varchar2_table(422) := '282D2D612D627574746F6E2D746578742D636F6C6F72293B0D0A20202D2D612D627574746F6E2D6163746976652D6261636B67726F756E642D636F6C6F723A20236435303630313B0D0A20202D2D612D627574746F6E2D6163746976652D746578742D63';
wwv_flow_imp.g_varchar2_table(423) := '6F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D746578742D636F6C6F72293B0D0A20202D2D612D627574746F6E2D666F6375732D6261636B67726F756E642D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D62';
wwv_flow_imp.g_varchar2_table(424) := '61636B67726F756E642D636F6C6F72293B0D0A20202D2D612D627574746F6E2D666F6375732D746578742D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D746578742D636F6C6F72293B0D0A7D0D0A2E75692D627574746F6E2D2D';
wwv_flow_imp.g_varchar2_table(425) := '64616E6765722E742D427574746F6E2D2D73696D706C652C0D0A2E742D427574746F6E2D2D64616E6765722E742D427574746F6E2D2D73696D706C65207B0D0A20202D2D612D627574746F6E2D626F726465722D636F6C6F723A20234545303730313B0D';
wwv_flow_imp.g_varchar2_table(426) := '0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20236237343334303B0D0A20202D2D612D627574746F6E2D686F7665722D';
wwv_flow_imp.g_varchar2_table(427) := '746578742D636F6C6F723A20234646463B0D0A7D0D0A2E75692D627574746F6E2D2D64616E6765722E742D427574746F6E2D2D6C696E6B2C0D0A2E742D427574746F6E2D2D64616E6765722E742D427574746F6E2D2D6C696E6B207B0D0A20202D2D612D';
wwv_flow_imp.g_varchar2_table(428) := '627574746F6E2D626F726465722D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D626F782D736861';
wwv_flow_imp.g_varchar2_table(429) := '646F773A206E6F6E653B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20236237343334303B0D0A7D0D0A2E75692D627574746F6E2D2D64616E6765722E742D427574746F6E2D2D6E6F55492C0D0A2E742D427574746F6E2D2D64616E';
wwv_flow_imp.g_varchar2_table(430) := '6765722E742D427574746F6E2D2D6E6F55492C0D0A2E75692D627574746F6E2D2D64616E6765722E612D427574746F6E2D2D6E6F55492C0D0A2E742D427574746F6E2D2D64616E6765722E612D427574746F6E2D2D6E6F5549207B0D0A20202D2D612D62';
wwv_flow_imp.g_varchar2_table(431) := '7574746F6E2D746578742D636F6C6F723A20236237343334303B0D0A2020636F6C6F723A20236237343334303B0D0A7D0D0A2E742D427574746F6E2D2D7072696D617279207B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F';
wwv_flow_imp.g_varchar2_table(432) := '723A20236635393038333B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20236666666666663B0D0A20202D2D612D627574746F6E2D686F7665722D6261636B67726F756E642D636F6C6F723A20236637613539623B0D0A20202D2D61';
wwv_flow_imp.g_varchar2_table(433) := '2D627574746F6E2D686F7665722D746578742D636F6C6F723A20766172282D2D612D627574746F6E2D746578742D636F6C6F72293B0D0A20202D2D612D627574746F6E2D6163746976652D6261636B67726F756E642D636F6C6F723A2023663337623663';
wwv_flow_imp.g_varchar2_table(434) := '3B0D0A20202D2D612D627574746F6E2D6163746976652D746578742D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D746578742D636F6C6F72293B0D0A20202D2D612D627574746F6E2D666F6375732D6261636B67726F756E642D';
wwv_flow_imp.g_varchar2_table(435) := '636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D627574746F6E2D666F6375732D746578742D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D';
wwv_flow_imp.g_varchar2_table(436) := '746578742D636F6C6F72293B0D0A7D0D0A2E742D427574746F6E2D2D7072696D6172792E742D427574746F6E2D2D73696D706C65207B0D0A20202D2D612D627574746F6E2D626F726465722D636F6C6F723A20766172282D2D75742D70616C657474652D';
wwv_flow_imp.g_varchar2_table(437) := '7072696D6172792D616C74293B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20766172282D2D75742D70616C657474';
wwv_flow_imp.g_varchar2_table(438) := '652D7072696D6172792D616C742D74657874293B0D0A20202D2D612D627574746F6E2D686F7665722D746578742D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D427574746F6E2D2D7072696D6172792E742D427574746F6E2D2D6C696E6B20';
wwv_flow_imp.g_varchar2_table(439) := '7B0D0A20202D2D612D627574746F6E2D626F726465722D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F';
wwv_flow_imp.g_varchar2_table(440) := '6E2D626F782D736861646F773A206E6F6E653B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20766172282D2D75742D70616C657474652D7072696D6172792D616C742D74657874293B0D0A7D0D0A2E742D427574746F6E2D2D707269';
wwv_flow_imp.g_varchar2_table(441) := '6D6172792E742D427574746F6E2D2D6E6F55492C0D0A2E742D427574746F6E2D2D7072696D6172792E612D427574746F6E2D2D6E6F5549207B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20766172282D2D75742D70616C65747465';
wwv_flow_imp.g_varchar2_table(442) := '2D7072696D6172792D616C742D74657874293B0D0A2020636F6C6F723A20766172282D2D75742D70616C657474652D7072696D6172792D616C742D74657874293B0D0A7D0D0A2E742D466F726D2D68656C70427574746F6E207B0D0A20202D2D612D6275';
wwv_flow_imp.g_varchar2_table(443) := '74746F6E2D70616464696E672D793A20302E323572656D3B0D0A20202D2D612D627574746F6E2D70616464696E672D783A20302E323572656D3B0D0A20202D2D612D627574746F6E2D747970652D6261636B67726F756E642D636F6C6F723A207472616E';
wwv_flow_imp.g_varchar2_table(444) := '73706172656E743B0D0A20202D2D612D627574746F6E2D747970652D626F726465722D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D747970652D736861646F773A206E6F6E653B0D0A20202D2D612D627574746F';
wwv_flow_imp.g_varchar2_table(445) := '6E2D746578742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D6D757465642D636F6C6F72293B0D0A20202D2D612D627574746F6E2D686F7665722D746578742D636F6C6F723A20766172282D2D75742D636F6D706F6E65';
wwv_flow_imp.g_varchar2_table(446) := '6E742D746578742D64656661756C742D636F6C6F72293B0D0A7D0D0A2E742D427574746F6E2E742D427574746F6E2D2D6E6F5549202E66613A61667465722C0D0A2E742D427574746F6E2E742D427574746F6E2D2D6C696E6B202E66613A61667465722C';
wwv_flow_imp.g_varchar2_table(447) := '0D0A2E742D427574746F6E2E742D427574746F6E2D2D73696D706C65202E66613A61667465722C0D0A2E612D427574746F6E2E612D427574746F6E2D2D6E6F5549202E66613A6166746572207B0D0A20206261636B67726F756E642D636F6C6F723A2023';
wwv_flow_imp.g_varchar2_table(448) := '6666666666663B0D0A7D0D0A2E742D427574746F6E2D2D64616E676572202E66613A61667465722C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D64616E6765723A686F766572202E66613A6166746572207B0D0A20206261';
wwv_flow_imp.g_varchar2_table(449) := '636B67726F756E642D636F6C6F723A20234545303730313B0D0A7D0D0A2E742D427574746F6E2D2D73756363657373202E66613A61667465722C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D737563636573733A686F7665';
wwv_flow_imp.g_varchar2_table(450) := '72202E66613A6166746572207B0D0A20206261636B67726F756E642D636F6C6F723A20233338383732393B0D0A7D0D0A2E742D427574746F6E2D2D7072696D617279202E66613A61667465722C0D0A2E742D427574746F6E2D2D73696D706C652E742D42';
wwv_flow_imp.g_varchar2_table(451) := '7574746F6E2D2D7072696D6172793A686F766572202E66613A6166746572207B0D0A20206261636B67726F756E642D636F6C6F723A20236635393038333B0D0A7D0D0A2E742D427574746F6E2D2D7761726E696E67202E66613A61667465722C0D0A2E74';
wwv_flow_imp.g_varchar2_table(452) := '2D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7761726E696E673A686F766572202E66613A6166746572207B0D0A20206261636B67726F756E642D636F6C6F723A20234642434534413B0D0A7D0D0A2E742D427574746F6E2D2D686F74';
wwv_flow_imp.g_varchar2_table(453) := '202E66613A61667465722C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D686F743A686F766572202E66613A6166746572207B0D0A20206261636B67726F756E642D636F6C6F723A20233966316530643B0D0A7D0D0A3A726F';
wwv_flow_imp.g_varchar2_table(454) := '6F74207B0D0A20202D2D612D63762D6974656D2D77696474683A20313972656D3B0D0A20202D2D612D63762D666F6375732D6F75746C696E653A206E6F6E653B0D0A20202D2D612D63762D626F726465722D77696474683A203170783B0D0A20202D2D61';
wwv_flow_imp.g_varchar2_table(455) := '2D63762D626F726465722D636F6C6F723A2072676261283235352C203235352C203235352C20302E3135293B0D0A20202D2D612D63762D626F726465722D7261646975733A20302E3138373572656D3B0D0A20202D2D612D63762D6261636B67726F756E';
wwv_flow_imp.g_varchar2_table(456) := '642D636F6C6F723A20233236323332313B0D0A20202D2D612D63762D736861646F773A20302032707820347078202D327078207267626128302C20302C20302C20302E303735293B0D0A20202D2D612D63762D686F7665722D6261636B67726F756E642D';
wwv_flow_imp.g_varchar2_table(457) := '636F6C6F723A20766172282D2D612D63762D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D63762D686F7665722D746578742D636F6C6F723A20766172282D2D612D63762D746578742D636F6C6F72293B0D0A20202D2D612D63762D68';
wwv_flow_imp.g_varchar2_table(458) := '6F7665722D626F726465722D636F6C6F723A20766172282D2D612D63762D626F726465722D636F6C6F72293B0D0A20202D2D612D63762D686F7665722D736861646F773A20302034707820302E3572656D2030207267626128302C20302C20302C20302E';
wwv_flow_imp.g_varchar2_table(459) := '31293B0D0A20202D2D612D63762D6163746976652D6261636B67726F756E642D636F6C6F723A20766172282D2D612D63762D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D63762D6163746976652D746578742D636F6C6F723A207661';
wwv_flow_imp.g_varchar2_table(460) := '72282D2D612D63762D746578742D636F6C6F72293B0D0A20202D2D612D63762D6163746976652D626F726465722D636F6C6F723A20766172282D2D612D63762D626F726465722D636F6C6F72293B0D0A20202D2D612D63762D6163746976652D73686164';
wwv_flow_imp.g_varchar2_table(461) := '6F773A20766172282D2D612D63762D736861646F77293B0D0A20202D2D612D63762D666F6375732D626F726465722D636F6C6F723A20233966316530643B0D0A20202D2D612D63762D6D656469612D70616464696E672D793A203172656D3B0D0A20202D';
wwv_flow_imp.g_varchar2_table(462) := '2D612D63762D6D656469612D70616464696E672D783A203172656D3B0D0A20202D2D612D63762D6865616465722D70616464696E672D793A203172656D3B0D0A20202D2D612D63762D6865616465722D70616464696E672D783A203172656D3B0D0A2020';
wwv_flow_imp.g_varchar2_table(463) := '2D2D612D63762D6865616465722D626F726465722D77696474683A203170783B0D0A20202D2D612D63762D6865616465722D626F726465722D636F6C6F723A2072676261283235352C203235352C203235352C20302E31293B0D0A20202D2D612D63762D';
wwv_flow_imp.g_varchar2_table(464) := '69636F6E2D6261636B67726F756E642D636F6C6F723A20233966316530643B0D0A20202D2D612D63762D69636F6E2D746578742D636F6C6F723A20236666666666663B0D0A20202D2D612D63762D69636F6E2D626F726465722D7261646975733A203130';
wwv_flow_imp.g_varchar2_table(465) := '30253B0D0A20202D2D612D63762D69636F6E2D73697A653A203172656D3B0D0A20202D2D612D63762D69636F6E2D636F6E7461696E65722D73697A653A203272656D3B0D0A20202D2D612D63762D69636F6E2D70616464696E673A20302E3572656D3B0D';
wwv_flow_imp.g_varchar2_table(466) := '0A20202D2D612D63762D696E697469616C732D666F6E742D7765696768743A203730303B0D0A20202D2D612D63762D696E697469616C732D746578742D636F6C6F723A20236666666666663B0D0A20202D2D612D63762D696E697469616C732D6261636B';
wwv_flow_imp.g_varchar2_table(467) := '67726F756E642D636F6C6F723A20233966316530643B0D0A20202D2D612D63762D7375627469746C652D666F6E742D73697A653A20302E373572656D3B0D0A20202D2D612D63762D7375627469746C652D666F6E742D7765696768743A203430303B0D0A';
wwv_flow_imp.g_varchar2_table(468) := '20202D2D612D63762D7375627469746C652D6C696E652D6865696768743A203172656D3B0D0A20202D2D612D63762D7375627469746C652D746578742D636F6C6F723A20236263626362633B0D0A20202D2D612D63762D626F64792D70616464696E672D';
wwv_flow_imp.g_varchar2_table(469) := '783A203172656D3B0D0A20202D2D612D63762D626F64792D70616464696E672D793A203172656D3B0D0A20202D2D612D63762D6D61696E636F6E74656E742D666F6E742D73697A653A20302E38373572656D3B0D0A20202D2D612D63762D6D61696E636F';
wwv_flow_imp.g_varchar2_table(470) := '6E74656E742D6C696E652D6865696768743A20312E323572656D3B0D0A20202D2D612D63762D737562636F6E74656E742D666F6E742D73697A653A20302E3638373572656D3B0D0A20202D2D612D63762D737562636F6E74656E742D6C696E652D686569';
wwv_flow_imp.g_varchar2_table(471) := '6768743A203172656D3B0D0A20202D2D612D63762D737562636F6E74656E742D746578742D636F6C6F723A20236263626362633B0D0A20202D2D612D63762D616374696F6E732D626F726465722D77696474683A203170783B0D0A20202D2D612D63762D';
wwv_flow_imp.g_varchar2_table(472) := '616374696F6E732D626F726465722D636F6C6F723A2072676261283235352C203235352C203235352C20302E31293B0D0A20202D2D612D63762D616374696F6E732D70616464696E672D793A203172656D3B0D0A20202D2D612D63762D616374696F6E73';
wwv_flow_imp.g_varchar2_table(473) := '2D70616464696E672D783A203172656D3B0D0A7D0D0A2E612D544D562D2D6361726473202E612D47562D666F6F746572207B0D0A20206D696E2D6865696768743A20756E7365743B0D0A202070616464696E672D626C6F636B2D73746172743A20303B0D';
wwv_flow_imp.g_varchar2_table(474) := '0A202070616464696E672D626C6F636B2D656E643A20303B0D0A7D0D0A2E612D544D562D2D6361726473202E612D47562D666F6F746572202E6A732D72616E6765446973706C6179207B0D0A20206D617267696E2D626C6F636B2D73746172743A207661';
wwv_flow_imp.g_varchar2_table(475) := '72282D2D612D67762D666F6F7465722D70616464696E672D79293B0D0A20206D617267696E2D626C6F636B2D656E643A20766172282D2D612D67762D666F6F7465722D70616464696E672D79293B0D0A7D0D0A2E612D43617264566965772D66756C6C4C';
wwv_flow_imp.g_varchar2_table(476) := '696E6B3A666F637573207B0D0A2020626F782D736861646F773A20696E73657420302030203020766172282D2D612D63762D626F726465722D77696474682C20302920766172282D2D612D63762D666F6375732D626F726465722D636F6C6F72293B0D0A';
wwv_flow_imp.g_varchar2_table(477) := '7D0D0A2E612D43617264566965772D6D65646961207B0D0A2020616C69676E2D6974656D733A2063656E7465723B0D0A20206A7573746966792D636F6E74656E743A2063656E7465723B0D0A7D0D0A2E612D43617264566965772D6D656469612061207B';
wwv_flow_imp.g_varchar2_table(478) := '0D0A20207472616E736974696F6E3A206F70616369747920302E327320656173653B0D0A7D0D0A2E612D43617264566965772D6D6564696120613A666F637573207B0D0A20206F7061636974793A20302E353B0D0A7D0D0A2E612D43617264566965772D';
wwv_flow_imp.g_varchar2_table(479) := '6865616465723A6C6173742D6368696C64207B0D0A20202D2D612D63762D6865616465722D626F726465722D77696474683A203070783B0D0A7D0D0A2E6861732D6D656469612D2D6669727374207B0D0A20202D2D612D63762D6D656469612D70616464';
wwv_flow_imp.g_varchar2_table(480) := '696E672D793A20303B0D0A20202D2D612D63762D6D656469612D70616464696E672D783A20303B0D0A7D0D0A2E6861732D6D656469612D2D6261636B67726F756E64207B0D0A20202D2D612D63762D6D656469612D70616464696E672D793A203072656D';
wwv_flow_imp.g_varchar2_table(481) := '3B0D0A20202D2D612D63762D6D656469612D70616464696E672D783A203072656D3B0D0A20202D2D612D63762D746578742D636F6C6F723A20236666663B0D0A20202D2D612D63762D7375627469746C652D746578742D636F6C6F723A20726762612832';
wwv_flow_imp.g_varchar2_table(482) := '35352C203235352C203235352C20302E3635293B0D0A20202D2D612D63762D737562636F6E74656E742D746578742D636F6C6F723A2072676261283235352C203235352C203235352C20302E3635293B0D0A20202D2D612D63762D62616467652D626163';
wwv_flow_imp.g_varchar2_table(483) := '6B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E3235293B0D0A7D0D0A2E6861732D6D656469612D2D6261636B67726F756E6420613A6E6F74285B636C6173735D29207B0D0A2020636F6C6F723A20696E6865';
wwv_flow_imp.g_varchar2_table(484) := '7269743B0D0A7D0D0A2E6861732D6D656469612D2D6261636B67726F756E6420613A6E6F74285B636C6173735D293A686F7665722C0D0A2E6861732D6D656469612D2D6261636B67726F756E6420613A6E6F74285B636C6173735D293A666F637573207B';
wwv_flow_imp.g_varchar2_table(485) := '0D0A2020746578742D6465636F726174696F6E3A20756E6465726C696E653B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6541207B0D0A20202D2D612D63762D6F766572666C6F773A2068696464656E3B0D0A20202D2D612D63762D6D';
wwv_flow_imp.g_varchar2_table(486) := '656469612D6261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E303235293B0D0A20202D2D612D63762D6D656469612D6F7665726C61792D636F6C6F723A207267626128302C20302C20302C20302E3735';
wwv_flow_imp.g_varchar2_table(487) := '293B0D0A20202D2D612D63762D6865616465722D626F726465722D77696474683A203070783B0D0A20202D2D612D63762D6865616465722D6261636B67726F756E642D636F6C6F723A20756E7365743B0D0A20202D2D612D63762D616374696F6E732D62';
wwv_flow_imp.g_varchar2_table(488) := '6F726465722D77696474683A203070783B0D0A20202D2D612D63762D616374696F6E732D6261636B67726F756E642D636F6C6F723A20756E7365743B0D0A20202D2D612D63762D69636F6E2D636F6E7461696E65722D73697A653A20322E3572656D3B0D';
wwv_flow_imp.g_varchar2_table(489) := '0A20202D2D612D63762D69636F6E2D73697A653A20312E323572656D3B0D0A20202D2D612D63762D69636F6E2D626F726465722D7261646975733A20302E3138373572656D3B0D0A20202D2D612D63762D69636F6E2D696D6167652D73697A653A207661';
wwv_flow_imp.g_varchar2_table(490) := '72282D2D612D63762D69636F6E2D636F6E7461696E65722D73697A65293B0D0A20202D2D612D63762D69636F6E2D696D6167652D626F726465722D7261646975733A20766172282D2D612D63762D69636F6E2D626F726465722D726164697573293B0D0A';
wwv_flow_imp.g_varchar2_table(491) := '20202D2D612D63762D696E697469616C732D626F726465722D7261646975733A20766172282D2D612D63762D69636F6E2D626F726465722D726164697573293B0D0A20202D2D612D63762D696E697469616C732D73697A653A20766172282D2D612D6376';
wwv_flow_imp.g_varchar2_table(492) := '2D69636F6E2D636F6E7461696E65722D73697A65293B0D0A20202D2D612D63762D696E697469616C732D666F6E742D73697A653A20312E323572656D3B0D0A20202D2D612D63762D696E697469616C732D666F6E742D7765696768743A203430303B0D0A';
wwv_flow_imp.g_varchar2_table(493) := '20202D2D612D63762D62616467652D70616464696E673A20302E323572656D20302E3572656D3B0D0A20202D2D612D63762D62616467652D626F726465722D7261646975733A20312E323572656D3B0D0A7D0D0A2E742D4361726473526567696F6E2D2D';
wwv_flow_imp.g_varchar2_table(494) := '7374796C6541202E6861732D6D656469612D2D626F64792C0D0A2E742D4361726473526567696F6E2D2D7374796C6541202E6861732D6D656469612D2D6669727374207B0D0A20202D2D612D63762D6D656469612D626F726465722D7261646975733A20';
wwv_flow_imp.g_varchar2_table(495) := '302E3138373572656D3B0D0A20202D2D612D63762D6D656469612D70616464696E672D793A203172656D3B0D0A20202D2D612D63762D6D656469612D70616464696E672D783A203172656D3B0D0A7D0D0A2E742D4361726473526567696F6E2D2D737479';
wwv_flow_imp.g_varchar2_table(496) := '6C6541202E6861732D6D656469612D2D626F6479202E612D43617264566965772D6D656469612C0D0A2E742D4361726473526567696F6E2D2D7374796C6541202E6861732D6D656469612D2D6669727374202E612D43617264566965772D6D6564696120';
wwv_flow_imp.g_varchar2_table(497) := '7B0D0A20206D617267696E2D696E6C696E652D73746172743A20766172282D2D612D63762D6D656469612D70616464696E672D78293B0D0A20206D617267696E2D696E6C696E652D656E643A20766172282D2D612D63762D6D656469612D70616464696E';
wwv_flow_imp.g_varchar2_table(498) := '672D78293B0D0A202070616464696E673A20303B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6541202E6861732D6D656469612D2D6669727374202E612D43617264566965772D6D65646961207B0D0A20206D617267696E2D626C6F63';
wwv_flow_imp.g_varchar2_table(499) := '6B2D73746172743A20766172282D2D612D63762D6D656469612D70616464696E672D79293B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6541202E6861732D69636F6E2D2D746F70207B0D0A20202D2D612D63762D69636F6E2D636F6E';
wwv_flow_imp.g_varchar2_table(500) := '7461696E65722D73697A653A203672656D3B0D0A20202D2D612D63762D69636F6E2D73697A653A203372656D3B0D0A20202D2D612D63762D69636F6E2D626F726465722D7261646975733A20302E3572656D3B0D0A20202D2D612D63762D69636F6E2D69';
wwv_flow_imp.g_varchar2_table(501) := '6D6167652D73697A653A20766172282D2D612D63762D69636F6E2D636F6E7461696E65722D73697A65293B0D0A20202D2D612D63762D69636F6E2D696D6167652D626F726465722D7261646975733A20766172282D2D612D63762D69636F6E2D626F7264';
wwv_flow_imp.g_varchar2_table(502) := '65722D726164697573293B0D0A20202D2D612D63762D696E697469616C732D626F726465722D7261646975733A20766172282D2D612D63762D69636F6E2D626F726465722D726164697573293B0D0A20202D2D612D63762D696E697469616C732D73697A';
wwv_flow_imp.g_varchar2_table(503) := '653A20766172282D2D612D63762D69636F6E2D636F6E7461696E65722D73697A65293B0D0A20202D2D612D63762D696E697469616C732D666F6E742D73697A653A20312E3572656D3B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6541';
wwv_flow_imp.g_varchar2_table(504) := '202E6861732D6D656469612D2D6669727374202E612D43617264566965772D686561646572202B202E612D43617264566965772D626F64792C0D0A2E742D4361726473526567696F6E2D2D7374796C6541202E6861732D6D656469612D2D6261636B6772';
wwv_flow_imp.g_varchar2_table(505) := '6F756E64202E612D43617264566965772D686561646572202B202E612D43617264566965772D626F64792C0D0A2E742D4361726473526567696F6E2D2D7374796C6541202E612D43617264566965772D626F6479202B202E612D43617264566965772D61';
wwv_flow_imp.g_varchar2_table(506) := '6374696F6E73207B0D0A202070616464696E672D626C6F636B2D73746172743A20303B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6541202E612D43617264566965772D6974656D732D2D726F77202E742D4361726473526567696F6E';
wwv_flow_imp.g_varchar2_table(507) := '2D2D7374796C6541202E612D43617264566965772D616374696F6E73207B0D0A2020666C65782D646972656374696F6E3A20636F6C756D6E3B0D0A2020616C69676E2D6974656D733A20666C65782D656E643B0D0A2020677269642D636F6C756D6E3A20';
wwv_flow_imp.g_varchar2_table(508) := '343B0D0A2020677269642D726F772D73746172743A20313B0D0A2020677269642D726F772D656E643A20343B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6541202E612D43617264566965772D6974656D732D2D726F77202E612D4361';
wwv_flow_imp.g_varchar2_table(509) := '7264566965772D6D65646961207B0D0A20206D617267696E2D626C6F636B2D73746172743A20766172282D2D612D63762D6D656469612D70616464696E672D79293B0D0A20206D617267696E2D626C6F636B2D656E643A20766172282D2D612D63762D6D';
wwv_flow_imp.g_varchar2_table(510) := '656469612D70616464696E672D79293B0D0A20206D617267696E2D696E6C696E652D656E643A20303B0D0A7D0D0A2E752D52544C202E742D4361726473526567696F6E2D2D7374796C6541202E612D43617264566965772D6974656D732D2D726F77202E';
wwv_flow_imp.g_varchar2_table(511) := '612D43617264566965772D6D65646961207B0D0A20206D617267696E2D696E6C696E652D656E643A20766172282D2D612D63762D6D656469612D70616464696E672D78293B0D0A20206D617267696E2D696E6C696E652D73746172743A20303B0D0A7D0D';
wwv_flow_imp.g_varchar2_table(512) := '0A2E742D4361726473526567696F6E2D2D7374796C6542207B0D0A20202D2D612D63762D6F766572666C6F773A2068696464656E3B0D0A20202D2D612D63762D6D656469612D6261636B67726F756E642D636F6C6F723A2072676261283235352C203235';
wwv_flow_imp.g_varchar2_table(513) := '352C203235352C20302E303235293B0D0A20202D2D612D63762D6D656469612D6F7665726C61792D636F6C6F723A207267626128302C20302C20302C20302E3735293B0D0A20202D2D612D63762D69636F6E2D636F6E7461696E65722D73697A653A2034';
wwv_flow_imp.g_varchar2_table(514) := '72656D3B0D0A20202D2D612D63762D69636F6E2D73697A653A203272656D3B0D0A20202D2D612D63762D69636F6E2D626F726465722D7261646975733A20302E323572656D3B0D0A20202D2D612D63762D69636F6E2D696D6167652D73697A653A207661';
wwv_flow_imp.g_varchar2_table(515) := '72282D2D612D63762D69636F6E2D636F6E7461696E65722D73697A65293B0D0A20202D2D612D63762D69636F6E2D696D6167652D626F726465722D7261646975733A20766172282D2D612D63762D69636F6E2D626F726465722D726164697573293B0D0A';
wwv_flow_imp.g_varchar2_table(516) := '20202D2D612D63762D696E697469616C732D626F726465722D7261646975733A20766172282D2D612D63762D69636F6E2D626F726465722D726164697573293B0D0A20202D2D612D63762D696E697469616C732D73697A653A20766172282D2D612D6376';
wwv_flow_imp.g_varchar2_table(517) := '2D69636F6E2D636F6E7461696E65722D73697A65293B0D0A20202D2D612D63762D696E697469616C732D666F6E742D73697A653A203272656D3B0D0A20202D2D612D63762D696E697469616C732D666F6E742D7765696768743A203430303B0D0A20202D';
wwv_flow_imp.g_varchar2_table(518) := '2D612D63762D6D656469612D70616464696E672D793A203072656D3B0D0A20202D2D612D63762D6D656469612D70616464696E672D783A203072656D3B0D0A20202D2D612D63762D6865616465722D626F726465722D77696474683A203070783B0D0A20';
wwv_flow_imp.g_varchar2_table(519) := '202D2D612D63762D6865616465722D6261636B67726F756E642D636F6C6F723A20756E7365743B0D0A20202D2D612D63762D616374696F6E732D626F726465722D77696474683A203070783B0D0A20202D2D612D63762D616374696F6E732D6261636B67';
wwv_flow_imp.g_varchar2_table(520) := '726F756E642D636F6C6F723A20756E7365743B0D0A20202D2D612D63762D7469746C652D666F6E742D73697A653A20312E323572656D3B0D0A20202D2D612D63762D7469746C652D6C696E652D6865696768743A20312E373572656D3B0D0A20202D2D61';
wwv_flow_imp.g_varchar2_table(521) := '2D63762D62616467652D70616464696E673A20302E323572656D20302E373572656D3B0D0A20202D2D612D63762D62616467652D626F726465722D7261646975733A20312E323572656D3B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C';
wwv_flow_imp.g_varchar2_table(522) := '6542202E6861732D69636F6E2D2D746F70207B0D0A20202D2D612D63762D69636F6E2D636F6E7461696E65722D73697A653A203772656D3B0D0A20202D2D612D63762D69636F6E2D73697A653A203272656D3B0D0A20202D2D612D63762D69636F6E2D62';
wwv_flow_imp.g_varchar2_table(523) := '6F726465722D7261646975733A20302E323572656D3B0D0A20202D2D612D63762D69636F6E2D696D6167652D73697A653A20766172282D2D612D63762D69636F6E2D636F6E7461696E65722D73697A65293B0D0A20202D2D612D63762D69636F6E2D696D';
wwv_flow_imp.g_varchar2_table(524) := '6167652D626F726465722D7261646975733A20766172282D2D612D63762D69636F6E2D626F726465722D726164697573293B0D0A20202D2D612D63762D696E697469616C732D626F726465722D7261646975733A20766172282D2D612D63762D69636F6E';
wwv_flow_imp.g_varchar2_table(525) := '2D626F726465722D726164697573293B0D0A20202D2D612D63762D696E697469616C732D73697A653A20766172282D2D612D63762D69636F6E2D636F6E7461696E65722D73697A65293B0D0A20202D2D612D63762D696E697469616C732D666F6E742D73';
wwv_flow_imp.g_varchar2_table(526) := '697A653A203272656D3B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6542202E6861732D69636F6E2D2D746F70202E612D43617264566965772D69636F6E57726170207B0D0A20206D617267696E2D696E6C696E652D73746172743A20';
wwv_flow_imp.g_varchar2_table(527) := '63616C6328766172282D2D612D63762D6865616465722D70616464696E672D7829202A202D31293B0D0A20206D617267696E2D696E6C696E652D656E643A2063616C6328766172282D2D612D63762D6865616465722D70616464696E672D7829202A202D';
wwv_flow_imp.g_varchar2_table(528) := '31293B0D0A20206D617267696E2D626C6F636B2D73746172743A2063616C6328766172282D2D612D63762D6865616465722D70616464696E672D7929202A202D31293B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6542202E6861732D';
wwv_flow_imp.g_varchar2_table(529) := '69636F6E2D2D746F70202E612D43617264566965772D69636F6E57726170202E612D43617264566965772D696E697469616C732C0D0A2E742D4361726473526567696F6E2D2D7374796C6542202E6861732D69636F6E2D2D746F70202E612D4361726456';
wwv_flow_imp.g_varchar2_table(530) := '6965772D69636F6E57726170202E612D43617264566965772D69636F6E2C0D0A2E742D4361726473526567696F6E2D2D7374796C6542202E6861732D69636F6E2D2D746F70202E612D43617264566965772D69636F6E57726170202E612D436172645669';
wwv_flow_imp.g_varchar2_table(531) := '65772D69636F6E496D67207B0D0A202077696474683A20313030253B0D0A2020626F726465722D7261646975733A20303B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6542202E6861732D69636F6E2D2D746F70202E612D4361726456';
wwv_flow_imp.g_varchar2_table(532) := '6965772D69636F6E3A6265666F7265207B0D0A2020626F726465722D7261646975733A20313030253B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E31293B0D0A2020746578742D736861646F773A2030';
wwv_flow_imp.g_varchar2_table(533) := '2031707820317078207267626128302C20302C20302C20302E31293B0D0A20206D617267696E3A206175746F3B0D0A202070616464696E673A2063616C6328766172282D2D612D63762D69636F6E2D73697A6529202F2032293B0D0A7D0D0A2E742D4361';
wwv_flow_imp.g_varchar2_table(534) := '726473526567696F6E2D2D7374796C6542202E6861732D69636F6E2D2D7374617274202E612D43617264566965772D69636F6E57726170207B0D0A20206D617267696E2D626C6F636B2D656E643A20766172282D2D612D63762D6865616465722D697465';
wwv_flow_imp.g_varchar2_table(535) := '6D2D73706163696E672D782C20302E373572656D293B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6542202E6861732D69636F6E2D2D656E64202E612D43617264566965772D69636F6E57726170207B0D0A20206D617267696E2D626C';
wwv_flow_imp.g_varchar2_table(536) := '6F636B2D73746172743A20766172282D2D612D63762D6865616465722D6974656D2D73706163696E672D782C20302E373572656D293B0D0A2020677269642D617265613A2062616467652D626F74746F6D3B0D0A7D0D0A2E742D4361726473526567696F';
wwv_flow_imp.g_varchar2_table(537) := '6E2D2D7374796C6542202E6861732D69636F6E2D2D656E64202E612D43617264566965772D686561646572426F6479207B0D0A2020677269642D617265613A2069636F6E2D746F703B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6542';
wwv_flow_imp.g_varchar2_table(538) := '202E6861732D69636F6E2D2D656E64202E612D43617264566965772D6261646765207B0D0A2020677269642D617265613A20626F64793B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6542202E612D43617264566965772D69636F6E57';
wwv_flow_imp.g_varchar2_table(539) := '726170207B0D0A2020677269642D617265613A2069636F6E2D746F703B0D0A20206D617267696E2D696E6C696E652D656E643A20756E7365743B0D0A20206D617267696E2D696E6C696E652D73746172743A20756E7365743B0D0A2020646973706C6179';
wwv_flow_imp.g_varchar2_table(540) := '3A20666C65783B0D0A20206A7573746966792D636F6E74656E743A2063656E7465723B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6542202E612D43617264566965772D686561646572426F6479207B0D0A2020746578742D616C6967';
wwv_flow_imp.g_varchar2_table(541) := '6E3A2063656E7465723B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6542202E612D43617264566965772D6261646765207B0D0A20206D617267696E2D696E6C696E652D73746172743A206175746F3B0D0A20206D617267696E2D696E';
wwv_flow_imp.g_varchar2_table(542) := '6C696E652D656E643A206175746F3B0D0A2020677269642D617265613A2062616467652D626F74746F6D3B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6542202E612D43617264566965772D62616467653A6E6F74283A66697273742D';
wwv_flow_imp.g_varchar2_table(543) := '6368696C6429207B0D0A20206D617267696E2D626C6F636B2D73746172743A20766172282D2D612D63762D6865616465722D6974656D2D73706163696E672D782C20302E373572656D293B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C';
wwv_flow_imp.g_varchar2_table(544) := '6542202E612D43617264566965772D62616467654C6162656C207B0D0A2020626F726465723A20756E7365743B0D0A2020636C69703A20756E7365743B0D0A2020636C69702D706174683A20756E7365743B0D0A20206865696768743A20756E7365743B';
wwv_flow_imp.g_varchar2_table(545) := '0D0A20206D617267696E3A20756E7365743B0D0A20206F766572666C6F773A20756E7365743B0D0A202070616464696E673A20756E7365743B0D0A2020706F736974696F6E3A20756E7365743B0D0A202077696474683A20756E7365743B0D0A7D0D0A2E';
wwv_flow_imp.g_varchar2_table(546) := '742D4361726473526567696F6E2D2D7374796C6542202E612D43617264566965772D616374696F6E73207B0D0A2020666C65782D646972656374696F6E3A20636F6C756D6E3B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6542202E61';
wwv_flow_imp.g_varchar2_table(547) := '2D43617264566965772D616374696F6E735072696D617279202E612D43617264566965772D627574746F6E207B0D0A202077696474683A20313030253B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6542202E612D4361726456696577';
wwv_flow_imp.g_varchar2_table(548) := '2D616374696F6E735072696D617279202E612D43617264566965772D627574746F6E202B202E612D43617264566965772D627574746F6E207B0D0A20206D617267696E2D626C6F636B2D73746172743A20302E323572656D3B0D0A7D0D0A2E742D436172';
wwv_flow_imp.g_varchar2_table(549) := '6473526567696F6E2D2D7374796C6542202E612D43617264566965772D616374696F6E735365636F6E64617279207B0D0A2020746578742D616C69676E3A2063656E7465723B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6542202E61';
wwv_flow_imp.g_varchar2_table(550) := '2D43617264566965772D616374696F6E735365636F6E646172793A6E6F74283A6F6E6C792D6368696C6429207B0D0A20206D617267696E2D626C6F636B2D73746172743A20302E3572656D3B0D0A7D0D0A2E742D4361726473526567696F6E2D2D737479';
wwv_flow_imp.g_varchar2_table(551) := '6C6543207B0D0A20202D2D612D63762D6F766572666C6F773A2068696464656E3B0D0A20202D2D612D63762D6D656469612D6261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E303235293B0D0A20202D';
wwv_flow_imp.g_varchar2_table(552) := '2D612D63762D6D656469612D6F7665726C61792D636F6C6F723A207267626128302C20302C20302C20302E3735293B0D0A20202D2D612D63762D6D656469612D70616464696E672D793A203072656D3B0D0A20202D2D612D63762D6D656469612D706164';
wwv_flow_imp.g_varchar2_table(553) := '64696E672D783A203072656D3B0D0A20202D2D612D63762D6865616465722D626F726465722D77696474683A203070783B0D0A20202D2D612D63762D6865616465722D6261636B67726F756E642D636F6C6F723A20756E7365743B0D0A20202D2D612D63';
wwv_flow_imp.g_varchar2_table(554) := '762D616374696F6E732D626F726465722D77696474683A203070783B0D0A20202D2D612D63762D616374696F6E732D6261636B67726F756E642D636F6C6F723A20756E7365743B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6543202E';
wwv_flow_imp.g_varchar2_table(555) := '6861732D7469746C652E6861732D626F64793A6E6F74282E6861732D6D656469612D2D626F647929202E612D43617264566965772D626F64792C0D0A2E742D4361726473526567696F6E2D2D7374796C6543202E6861732D7469746C652E6861732D7365';
wwv_flow_imp.g_varchar2_table(556) := '636F6E646172793A6E6F74282E6861732D6D656469612D2D626F647929202E612D43617264566965772D626F64792C0D0A2E742D4361726473526567696F6E2D2D7374796C6543202E6861732D7375627469746C652E6861732D626F64793A6E6F74282E';
wwv_flow_imp.g_varchar2_table(557) := '6861732D6D656469612D2D626F647929202E612D43617264566965772D626F64792C0D0A2E742D4361726473526567696F6E2D2D7374796C6543202E6861732D7375627469746C652E6861732D7365636F6E646172793A6E6F74282E6861732D6D656469';
wwv_flow_imp.g_varchar2_table(558) := '612D2D626F647929202E612D43617264566965772D626F64792C0D0A2E742D4361726473526567696F6E2D2D7374796C6543202E6861732D69636F6E2E6861732D626F64793A6E6F74282E6861732D6D656469612D2D626F647929202E612D4361726456';
wwv_flow_imp.g_varchar2_table(559) := '6965772D626F64792C0D0A2E742D4361726473526567696F6E2D2D7374796C6543202E6861732D69636F6E2E6861732D7365636F6E646172793A6E6F74282E6861732D6D656469612D2D626F647929202E612D43617264566965772D626F64792C0D0A2E';
wwv_flow_imp.g_varchar2_table(560) := '742D4361726473526567696F6E2D2D7374796C6543202E6861732D62616467652E6861732D626F64793A6E6F74282E6861732D6D656469612D2D626F647929202E612D43617264566965772D626F64792C0D0A2E742D4361726473526567696F6E2D2D73';
wwv_flow_imp.g_varchar2_table(561) := '74796C6543202E6861732D62616467652E6861732D7365636F6E646172793A6E6F74282E6861732D6D656469612D2D626F647929202E612D43617264566965772D626F6479207B0D0A202070616464696E672D626C6F636B2D73746172743A20303B0D0A';
wwv_flow_imp.g_varchar2_table(562) := '7D0D0A406D6564696120286D61782D77696474683A20373637707829207B0D0A20202E742D4361726473526567696F6E2D2D7374796C6543202E612D43617264566965772D6974656D732D2D726F77202E612D4361726456696577207B0D0A2020202064';
wwv_flow_imp.g_varchar2_table(563) := '6973706C61793A20666C65783B0D0A20207D0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6543202E612D43617264566965772D6974656D732D2D726F77202E6861732D69636F6E2D2D7374617274202E612D43617264566965772D626F';
wwv_flow_imp.g_varchar2_table(564) := '6479207B0D0A2020677269642D636F6C756D6E2D73746172743A20323B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6543202E612D43617264566965772D6974656D732D2D726F77202E6861732D6D656469612D2D6669727374202E61';
wwv_flow_imp.g_varchar2_table(565) := '2D43617264566965772D626F6479207B0D0A2020677269642D636F6C756D6E2D73746172743A20323B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6543202E612D43617264566965772D6974656D732D2D726F77202E6861732D6D6564';
wwv_flow_imp.g_varchar2_table(566) := '69612D2D66697273742E6861732D69636F6E2D2D7374617274202E612D43617264566965772D626F6479207B0D0A2020677269642D636F6C756D6E2D73746172743A20333B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6543202E612D';
wwv_flow_imp.g_varchar2_table(567) := '43617264566965772D6974656D732D2D726F77202E612D43617264566965772D616374696F6E73207B0D0A2020666C65782D646972656374696F6E3A20636F6C756D6E3B0D0A2020616C69676E2D6974656D733A2063656E7465723B0D0A202067726964';
wwv_flow_imp.g_varchar2_table(568) := '2D636F6C756D6E3A20343B0D0A2020677269642D726F772D73746172743A20313B0D0A2020677269642D726F772D656E643A20323B0D0A2020616C69676E2D73656C663A2063656E7465723B0D0A7D0D0A2E742D4361726473526567696F6E2D2D737479';
wwv_flow_imp.g_varchar2_table(569) := '6C6543202E612D43617264566965772D6974656D732D2D726F77202E6861732D626F6479202E612D43617264566965772D616374696F6E73207B0D0A2020616C69676E2D6974656D733A20666C65782D656E643B0D0A2020677269642D726F772D656E64';
wwv_flow_imp.g_varchar2_table(570) := '3A20343B0D0A7D0D0A2E742D4361726473526567696F6E2D2D7374796C6543202E612D43617264566965772D6974656D732D2D726F77202E612D43617264566965773A6E6F74282E6861732D69636F6E292C0D0A2E742D4361726473526567696F6E2D2D';
wwv_flow_imp.g_varchar2_table(571) := '7374796C6543202E612D43617264566965772D6974656D732D2D726F77202E6861732D69636F6E2D2D746F702C0D0A2E742D4361726473526567696F6E2D2D7374796C6543202E612D43617264566965772D6974656D732D2D726F77202E6861732D6963';
wwv_flow_imp.g_varchar2_table(572) := '6F6E2D2D656E64207B0D0A20202D2D612D63762D69636F6E2D7370616365723A203072656D3B0D0A7D0D0A406D6564696120286D61782D77696474683A20373637707829207B0D0A20202E742D4361726473526567696F6E2D2D7374796C6543202E612D';
wwv_flow_imp.g_varchar2_table(573) := '43617264566965772D6974656D732D2D726F77202E6861732D6D65646961207B0D0A20202020677269642D74656D706C6174652D636F6C756D6E733A206D696E6D617828312E323572656D2C203572656D29206D696E6D617828302C20766172282D2D61';
wwv_flow_imp.g_varchar2_table(574) := '2D63762D69636F6E2D7370616365722C20322E373572656D292920316672206D696E6D617828302C206175746F293B0D0A20207D0D0A7D0D0A612D636F6D626F626F78207B0D0A20202D2D612D636869702D72656D6F76652D70616464696E673A20302E';
wwv_flow_imp.g_varchar2_table(575) := '3036323572656D3B0D0A7D0D0A2E742D466F726D2D2D6C617267652C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C61726765207B0D0A20202D2D75742D6669656C642D6C6162656C2D666F6E742D73697A653A20302E3837357265';
wwv_flow_imp.g_varchar2_table(576) := '6D3B0D0A20202D2D75742D6669656C642D6C6162656C2D70616464696E672D793A20302E3572656D3B0D0A20202D2D612D6669656C642D696E7075742D666F6E742D73697A653A20302E38373572656D3B0D0A20202D2D612D6669656C642D696E707574';
wwv_flow_imp.g_varchar2_table(577) := '2D70616464696E672D793A20302E3572656D3B0D0A20202D2D612D6669656C642D696E7075742D70616464696E672D783A20302E3572656D3B0D0A20202D2D75742D6669656C642D696E7075742D69636F6E2D70616464696E672D783A20302E3572656D';
wwv_flow_imp.g_varchar2_table(578) := '3B0D0A20202D2D75742D6669656C642D696E7075742D69636F6E2D70616464696E672D793A20302E3572656D3B0D0A20202D2D612D636865636B626F782D73697A653A20312E323572656D3B0D0A20202D2D612D636865636B626F782D69636F6E2D7369';
wwv_flow_imp.g_varchar2_table(579) := '7A653A20312E31323572656D3B0D0A20202D2D612D636865636B626F782D6C6162656C2D666F6E742D73697A653A20302E38373572656D3B0D0A20202D2D612D636865636B626F782D6C6162656C2D6C696E652D6865696768743A20312E323572656D3B';
wwv_flow_imp.g_varchar2_table(580) := '0D0A20202D2D75742D70696C6C627574746F6E2D70616464696E672D793A20302E3572656D3B0D0A20202D2D75742D70696C6C627574746F6E2D70616464696E672D783A20302E373572656D3B0D0A20202D2D75742D70696C6C627574746F6E2D666F6E';
wwv_flow_imp.g_varchar2_table(581) := '742D73697A653A20302E373572656D3B0D0A20202D2D75742D70696C6C627574746F6E2D6C696E652D6865696768743A203172656D3B0D0A20202D2D75742D70696C6C627574746F6E2D636865636B626F782D6F66667365743A20302E33373572656D3B';
wwv_flow_imp.g_varchar2_table(582) := '0D0A20202D2D75742D70696C6C627574746F6E2D636865636B626F782D6C696E652D6865696768743A203172656D3B0D0A20202D2D612D706F7075706C6F762D636869702D6D617267696E2D783A20302E31323572656D3B0D0A20202D2D612D706F7075';
wwv_flow_imp.g_varchar2_table(583) := '706C6F762D636869702D6D617267696E2D793A20302E31323572656D3B0D0A20202D2D612D706F7075706C6F762D636869702D666F6E742D73697A653A20302E38373572656D3B0D0A20202D2D612D706F7075706C6F762D636869702D6C696E652D6865';
wwv_flow_imp.g_varchar2_table(584) := '696768743A20312E323572656D3B0D0A20202D2D612D706F7075706C6F762D636869702D70616464696E672D793A20302E31323572656D3B0D0A20202D2D612D706F7075706C6F762D636869702D70616464696E672D783A20302E33373572656D3B0D0A';
wwv_flow_imp.g_varchar2_table(585) := '20202D2D612D7377697463682D77696474683A20332E373572656D3B0D0A20202D2D612D7377697463682D70616464696E672D793A20302E3138373572656D3B0D0A20202D2D612D7377697463682D70616464696E672D783A20302E3138373572656D3B';
wwv_flow_imp.g_varchar2_table(586) := '0D0A20202D2D612D7377697463682D746F67676C652D77696474683A20312E36323572656D3B0D0A20202D2D612D7377697463682D746F67676C652D6865696768743A20312E36323572656D3B0D0A7D0D0A2E742D466F726D2D2D6C61726765202E742D';
wwv_flow_imp.g_varchar2_table(587) := '466F726D2D6974656D546578742C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C61726765202E742D466F726D2D6974656D54657874207B0D0A20206C696E652D6865696768743A203272656D3B0D0A2020666F6E742D73697A653A';
wwv_flow_imp.g_varchar2_table(588) := '20302E38373572656D3B0D0A7D0D0A2E742D466F726D2D2D6C61726765202E617065782D6974656D2D69636F6E2C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C61726765202E617065782D6974656D2D69636F6E2C0D0A2E742D46';
wwv_flow_imp.g_varchar2_table(589) := '6F726D2D2D6C617267652E617065782D6974656D2D777261707065722D2D636F6C6F722D7069636B65722C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C617267652E617065782D6974656D2D777261707065722D2D636F6C6F722D';
wwv_flow_imp.g_varchar2_table(590) := '7069636B6572207B0D0A20202D2D612D69636F6E2D70616464696E673A20302E3572656D3B0D0A7D0D0A2E742D466F726D2D2D6C617267652E617065782D6974656D2D777261707065722D2D636F6C6F722D7069636B65722C0D0A2E742D466F726D2D66';
wwv_flow_imp.g_varchar2_table(591) := '69656C64436F6E7461696E65722D2D6C617267652E617065782D6974656D2D777261707065722D2D636F6C6F722D7069636B6572207B0D0A20202D2D612D69636F6E2D73697A653A20312E323572656D3B0D0A20202D2D612D6974656D2D69636F6E2D6F';
wwv_flow_imp.g_varchar2_table(592) := '66667365743A2063616C6328766172282D2D612D69636F6E2D73697A652C203172656D29202B20766172282D2D612D69636F6E2D70616464696E6729293B0D0A7D0D0A2E742D466F726D2D2D6C61726765202E617065782D6974656D2D67726F75702D2D';
wwv_flow_imp.g_varchar2_table(593) := '636F6C6F722D7069636B6572202E612D427574746F6E2D2D636F6C6F725069636B65724F6E6C792C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C61726765202E617065782D6974656D2D67726F75702D2D636F6C6F722D7069636B';
wwv_flow_imp.g_varchar2_table(594) := '6572202E612D427574746F6E2D2D636F6C6F725069636B65724F6E6C79207B0D0A20202D2D612D636F6C6F722D7069636B65722D636F6C6F722D6F6E6C792D6865696768743A203172656D3B0D0A20202D2D612D636F6C6F722D7069636B65722D636F6C';
wwv_flow_imp.g_varchar2_table(595) := '6F722D6F6E6C792D77696474683A203272656D3B0D0A20202D2D612D627574746F6E2D70616464696E673A20302E3572656D3B0D0A7D0D0A2E742D466F726D2D2D6C617267652E617065782D6974656D2D777261707065722D2D6861732D69636F6E2C0D';
wwv_flow_imp.g_varchar2_table(596) := '0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C617267652E617065782D6974656D2D777261707065722D2D6861732D69636F6E207B0D0A20202D2D612D69636F6E2D70616464696E673A20302E3572656D3B0D0A20202D2D612D697465';
wwv_flow_imp.g_varchar2_table(597) := '6D2D69636F6E2D6F66667365743A2063616C6328766172282D2D612D69636F6E2D73697A652C203172656D29202B20766172282D2D612D69636F6E2D70616464696E6729293B0D0A7D0D0A2E742D466F726D2D2D6C61726765202E742D466F726D2D6974';
wwv_flow_imp.g_varchar2_table(598) := '656D57726170706572202E612D427574746F6E2C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C61726765202E742D466F726D2D6974656D57726170706572202E612D427574746F6E2C0D0A2E742D466F726D2D2D6C61726765202E';
wwv_flow_imp.g_varchar2_table(599) := '742D466F726D2D6974656D57726170706572202E742D466F726D2D68656C70427574746F6E2C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C61726765202E742D466F726D2D6974656D57726170706572202E742D466F726D2D6865';
wwv_flow_imp.g_varchar2_table(600) := '6C70427574746F6E2C0D0A2E742D466F726D2D2D6C61726765202E617065782D6974656D2D66696C652D2D6E61746976653A3A2D7765626B69742D66696C652D75706C6F61642D627574746F6E2C0D0A2E742D466F726D2D6669656C64436F6E7461696E';
wwv_flow_imp.g_varchar2_table(601) := '65722D2D6C61726765202E617065782D6974656D2D66696C652D2D6E61746976653A3A2D7765626B69742D66696C652D75706C6F61642D627574746F6E207B0D0A20202D2D612D627574746F6E2D70616464696E672D793A20302E3572656D3B0D0A2020';
wwv_flow_imp.g_varchar2_table(602) := '2D2D612D627574746F6E2D70616464696E672D783A20302E373572656D3B0D0A20202D2D612D69636F6E2D73697A653A203172656D3B0D0A7D0D0A2E742D466F726D2D2D6C61726765202E617065782D6974656D2D67726F75702D2D73687574746C6520';
wwv_flow_imp.g_varchar2_table(603) := '73656C6563742E73687574746C655F6C6566742C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C61726765202E617065782D6974656D2D67726F75702D2D73687574746C652073656C6563742E73687574746C655F6C6566742C0D0A';
wwv_flow_imp.g_varchar2_table(604) := '2E742D466F726D2D2D6C61726765202E617065782D6974656D2D67726F75702D2D73687574746C652073656C6563742E73687574746C655F72696768742C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D6C61726765202E617065782D';
wwv_flow_imp.g_varchar2_table(605) := '6974656D2D67726F75702D2D73687574746C652073656C6563742E73687574746C655F7269676874207B0D0A20206D696E2D6865696768743A2031312E323572656D3B0D0A7D0D0A2E742D466F726D2D2D786C617267652C0D0A2E742D466F726D2D6669';
wwv_flow_imp.g_varchar2_table(606) := '656C64436F6E7461696E65722D2D786C61726765207B0D0A20202D2D75742D6669656C642D6C6162656C2D666F6E742D73697A653A203172656D3B0D0A20202D2D75742D6669656C642D6C6162656C2D70616464696E672D793A20302E373572656D3B0D';
wwv_flow_imp.g_varchar2_table(607) := '0A20202D2D612D6669656C642D696E7075742D666F6E742D73697A653A203172656D3B0D0A20202D2D612D6669656C642D696E7075742D6C696E652D6865696768743A20312E323572656D3B0D0A20202D2D612D6669656C642D696E7075742D70616464';
wwv_flow_imp.g_varchar2_table(608) := '696E672D793A20302E36323572656D3B0D0A20202D2D612D6669656C642D696E7075742D70616464696E672D783A20302E36323572656D3B0D0A20202D2D75742D6669656C642D696E7075742D69636F6E2D70616464696E672D783A20302E3572656D3B';
wwv_flow_imp.g_varchar2_table(609) := '0D0A20202D2D75742D6669656C642D696E7075742D69636F6E2D70616464696E672D793A20302E373572656D3B0D0A20202D2D612D636865636B626F782D73697A653A20312E3572656D3B0D0A20202D2D612D636865636B626F782D69636F6E2D73697A';
wwv_flow_imp.g_varchar2_table(610) := '653A20312E31323572656D3B0D0A20202D2D612D636865636B626F782D6C6162656C2D666F6E742D73697A653A203172656D3B0D0A20202D2D612D636865636B626F782D6C6162656C2D6C696E652D6865696768743A20312E3572656D3B0D0A20202D2D';
wwv_flow_imp.g_varchar2_table(611) := '75742D70696C6C627574746F6E2D70616464696E672D793A20302E373572656D3B0D0A20202D2D75742D70696C6C627574746F6E2D70616464696E672D783A20302E373572656D3B0D0A20202D2D75742D70696C6C627574746F6E2D666F6E742D73697A';
wwv_flow_imp.g_varchar2_table(612) := '653A20302E38373572656D3B0D0A20202D2D75742D70696C6C627574746F6E2D6C696E652D6865696768743A203172656D3B0D0A20202D2D75742D70696C6C627574746F6E2D636865636B626F782D6F66667365743A20302E3572656D3B0D0A20202D2D';
wwv_flow_imp.g_varchar2_table(613) := '75742D70696C6C627574746F6E2D636865636B626F782D6C696E652D6865696768743A203172656D3B0D0A20202D2D612D706F7075706C6F762D636869702D6D617267696E2D783A20302E31323572656D3B0D0A20202D2D612D706F7075706C6F762D63';
wwv_flow_imp.g_varchar2_table(614) := '6869702D6D617267696E2D793A20302E31323572656D3B0D0A20202D2D612D706F7075706C6F762D636869702D666F6E742D73697A653A203172656D3B0D0A20202D2D612D706F7075706C6F762D636869702D6C696E652D6865696768743A20312E3572';
wwv_flow_imp.g_varchar2_table(615) := '656D3B0D0A20202D2D612D706F7075706C6F762D636869702D70616464696E672D793A20302E323572656D3B0D0A20202D2D612D706F7075706C6F762D636869702D70616464696E672D783A20302E3572656D3B0D0A20202D2D612D7377697463682D77';
wwv_flow_imp.g_varchar2_table(616) := '696474683A20342E373572656D3B0D0A20202D2D612D7377697463682D70616464696E672D793A20302E323572656D3B0D0A20202D2D612D7377697463682D70616464696E672D783A20302E323572656D3B0D0A20202D2D612D7377697463682D746F67';
wwv_flow_imp.g_varchar2_table(617) := '676C652D77696474683A203272656D3B0D0A20202D2D612D7377697463682D746F67676C652D6865696768743A203272656D3B0D0A7D0D0A2E742D466F726D2D2D786C61726765202E742D466F726D2D6974656D546578742C0D0A2E742D466F726D2D66';
wwv_flow_imp.g_varchar2_table(618) := '69656C64436F6E7461696E65722D2D786C61726765202E742D466F726D2D6974656D54657874207B0D0A20206C696E652D6865696768743A20322E3572656D3B0D0A2020666F6E742D73697A653A203172656D3B0D0A7D0D0A2E742D466F726D2D2D786C';
wwv_flow_imp.g_varchar2_table(619) := '61726765202E617065782D6974656D2D69636F6E2C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D786C61726765202E617065782D6974656D2D69636F6E2C0D0A2E742D466F726D2D2D786C617267652E617065782D6974656D2D7772';
wwv_flow_imp.g_varchar2_table(620) := '61707065722D2D636F6C6F722D7069636B65722C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D786C617267652E617065782D6974656D2D777261707065722D2D636F6C6F722D7069636B6572207B0D0A20202D2D612D69636F6E2D70';
wwv_flow_imp.g_varchar2_table(621) := '616464696E673A20302E3572656D3B0D0A7D0D0A2E742D466F726D2D2D786C617267652E617065782D6974656D2D777261707065722D2D636F6C6F722D7069636B65722C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D786C61726765';
wwv_flow_imp.g_varchar2_table(622) := '2E617065782D6974656D2D777261707065722D2D636F6C6F722D7069636B6572207B0D0A20202D2D612D69636F6E2D73697A653A20312E323572656D3B0D0A20202D2D612D6974656D2D69636F6E2D6F66667365743A2063616C6328766172282D2D612D';
wwv_flow_imp.g_varchar2_table(623) := '69636F6E2D73697A652C203172656D29202B20766172282D2D612D69636F6E2D70616464696E6729293B0D0A7D0D0A2E742D466F726D2D2D786C61726765202E617065782D6974656D2D67726F75702D2D636F6C6F722D7069636B6572202E612D427574';
wwv_flow_imp.g_varchar2_table(624) := '746F6E2D2D636F6C6F725069636B65724F6E6C792C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D786C61726765202E617065782D6974656D2D67726F75702D2D636F6C6F722D7069636B6572202E612D427574746F6E2D2D636F6C6F';
wwv_flow_imp.g_varchar2_table(625) := '725069636B65724F6E6C79207B0D0A20202D2D612D636F6C6F722D7069636B65722D636F6C6F722D6F6E6C792D6865696768743A20312E3572656D3B0D0A20202D2D612D636F6C6F722D7069636B65722D636F6C6F722D6F6E6C792D77696474683A2032';
wwv_flow_imp.g_varchar2_table(626) := '72656D3B0D0A20202D2D612D627574746F6E2D70616464696E673A20302E3572656D3B0D0A7D0D0A2E742D466F726D2D2D786C61726765202E742D466F726D2D6974656D57726170706572202E612D427574746F6E2C0D0A2E742D466F726D2D6669656C';
wwv_flow_imp.g_varchar2_table(627) := '64436F6E7461696E65722D2D786C61726765202E742D466F726D2D6974656D57726170706572202E612D427574746F6E2C0D0A2E742D466F726D2D2D786C61726765202E742D466F726D2D6974656D57726170706572202E742D466F726D2D68656C7042';
wwv_flow_imp.g_varchar2_table(628) := '7574746F6E2C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D786C61726765202E742D466F726D2D6974656D57726170706572202E742D466F726D2D68656C70427574746F6E2C0D0A2E742D466F726D2D2D786C61726765202E617065';
wwv_flow_imp.g_varchar2_table(629) := '782D6974656D2D66696C652D2D6E61746976653A3A2D7765626B69742D66696C652D75706C6F61642D627574746F6E2C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D786C61726765202E617065782D6974656D2D66696C652D2D6E61';
wwv_flow_imp.g_varchar2_table(630) := '746976653A3A2D7765626B69742D66696C652D75706C6F61642D627574746F6E207B0D0A20202D2D612D627574746F6E2D70616464696E672D793A20302E3638373572656D3B0D0A20202D2D612D627574746F6E2D70616464696E672D783A20302E3735';
wwv_flow_imp.g_varchar2_table(631) := '72656D3B0D0A20202D2D612D69636F6E2D73697A653A203172656D3B0D0A7D0D0A2E742D466F726D2D2D786C617267652E617065782D6974656D2D777261707065722D2D6861732D69636F6E2C0D0A2E742D466F726D2D6669656C64436F6E7461696E65';
wwv_flow_imp.g_varchar2_table(632) := '722D2D786C617267652E617065782D6974656D2D777261707065722D2D6861732D69636F6E207B0D0A20202D2D612D69636F6E2D70616464696E673A20302E3572656D3B0D0A20202D2D612D6974656D2D69636F6E2D6F66667365743A2063616C632876';
wwv_flow_imp.g_varchar2_table(633) := '6172282D2D612D69636F6E2D73697A652C203172656D29202B20766172282D2D612D69636F6E2D70616464696E6729293B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D666C6F6174696E674C6162656C2E742D466F726D2D66';
wwv_flow_imp.g_varchar2_table(634) := '69656C64436F6E7461696E65722D2D6C617267652C0D0A2E742D466F726D2D2D6C61726765202E742D466F726D2D6669656C64436F6E7461696E65722D2D666C6F6174696E674C6162656C207B0D0A20202D2D75742D6669656C642D6C6162656C2D666F';
wwv_flow_imp.g_varchar2_table(635) := '6E742D73697A653A203172656D3B0D0A20202D2D612D6669656C642D696E7075742D70616464696E672D783A20302E373572656D3B0D0A20202D2D612D6669656C642D696E7075742D70616464696E672D793A20302E36323572656D3B0D0A20202D2D61';
wwv_flow_imp.g_varchar2_table(636) := '2D6669656C642D696E7075742D666F6E742D73697A653A203172656D3B0D0A20202D2D75742D6669656C642D666C2D6C6162656C2D6C696E652D6865696768743A20312E323572656D3B0D0A20202D2D75742D6669656C642D666C2D6C6162656C2D666F';
wwv_flow_imp.g_varchar2_table(637) := '6E742D73697A653A20302E373572656D3B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D666C6F6174696E674C6162656C2E742D466F726D2D6669656C64436F6E7461696E65722D2D786C617267652C0D0A2E742D466F726D2D';
wwv_flow_imp.g_varchar2_table(638) := '2D786C61726765202E742D466F726D2D6669656C64436F6E7461696E65722D2D666C6F6174696E674C6162656C207B0D0A20202D2D75742D6669656C642D6C6162656C2D666F6E742D73697A653A203172656D3B0D0A20202D2D612D6669656C642D696E';
wwv_flow_imp.g_varchar2_table(639) := '7075742D70616464696E672D783A20302E373572656D3B0D0A20202D2D612D6669656C642D696E7075742D70616464696E672D793A20302E373572656D3B0D0A20202D2D612D6669656C642D696E7075742D666F6E742D73697A653A203172656D3B0D0A';
wwv_flow_imp.g_varchar2_table(640) := '20202D2D75742D6669656C642D666C2D6C6162656C2D6C696E652D6865696768743A20312E33373572656D3B0D0A20202D2D75742D6669656C642D666C2D6C6162656C2D666F6E742D73697A653A20302E38373572656D3B0D0A20202D2D75742D666965';
wwv_flow_imp.g_varchar2_table(641) := '6C642D696E7075742D69636F6E2D70616464696E672D783A20302E36323572656D3B0D0A7D0D0A2E726F2D636865636B626F782C0D0A2E752D636865636B626F783A6265666F72652C0D0A2E752D726164696F3A6265666F7265207B0D0A20207472616E';
wwv_flow_imp.g_varchar2_table(642) := '73666F726D2D6F726967696E3A2063656E7465722063656E7465723B0D0A20207472616E736974696F6E3A207472616E73666F726D20302E3132357320656173652C206261636B67726F756E642D636F6C6F7220302E31357320656173652C20626F782D';
wwv_flow_imp.g_varchar2_table(643) := '736861646F7720302E31357320656173652C20626F726465722D636F6C6F7220302E31357320656173653B0D0A7D0D0A2E726F2D636865636B626F783A6265666F72652C0D0A2E752D636865636B626F783A61667465722C0D0A2E752D726164696F3A61';
wwv_flow_imp.g_varchar2_table(644) := '66746572207B0D0A20207472616E73666F726D2D6F726967696E3A2063656E7465722063656E7465723B0D0A20207472616E73666F726D3A207363616C652830293B0D0A20207472616E736974696F6E3A206F70616369747920302E3135732065617365';
wwv_flow_imp.g_varchar2_table(645) := '2C207472616E73666F726D20302E327320656173653B0D0A7D0D0A2E726F2D636865636B626F783A6163746976652C0D0A2E726F2D636865636B626F783A6163746976653A6265666F72652C0D0A2E752D636865636B626F783A6163746976653A626566';
wwv_flow_imp.g_varchar2_table(646) := '6F72652C0D0A2E752D636865636B626F783A6163746976653A61667465722C0D0A696E7075743A636865636B6564202B202E752D636865636B626F783A6163746976653A61667465722C0D0A2E752D726164696F3A6163746976653A6265666F72652C0D';
wwv_flow_imp.g_varchar2_table(647) := '0A2E752D726164696F3A6163746976653A61667465722C0D0A696E7075743A636865636B6564202B202E752D726164696F3A6163746976653A6166746572207B0D0A20207472616E73666F726D3A207363616C6528302E3735293B0D0A7D0D0A2E726F2D';
wwv_flow_imp.g_varchar2_table(648) := '636865636B626F782E69732D636865636B65643A6265666F72652C0D0A2E752D636865636B626F782E69732D636865636B65643A61667465722C0D0A696E7075743A636865636B6564202B202E752D636865636B626F783A61667465722C0D0A696E7075';
wwv_flow_imp.g_varchar2_table(649) := '743A636865636B6564202B202E752D726164696F3A6166746572207B0D0A20207472616E73666F726D3A207363616C652831293B0D0A7D0D0A2E612D446174655069636B65722D2D6D756C7469706C65202E612D446174655069636B65722D63616C656E';
wwv_flow_imp.g_varchar2_table(650) := '6461725469746C65207B0D0A2020626F726465722D626C6F636B2D73746172742D77696474683A20766172282D2D612D646174657069636B65722D63616C656E6461722D6865616465722D626F726465722D77696474682C20317078293B0D0A2020626F';
wwv_flow_imp.g_varchar2_table(651) := '726465722D626C6F636B2D73746172742D7374796C653A20736F6C69643B0D0A2020626F726465722D626C6F636B2D73746172742D636F6C6F723A20766172282D2D612D646174657069636B65722D63616C656E6461722D6865616465722D626F726465';
wwv_flow_imp.g_varchar2_table(652) := '722D636F6C6F722C20766172282D2D612D67762D6865616465722D63656C6C2D626F726465722D636F6C6F7229293B0D0A7D0D0A2E612D446174655069636B65722D63616C656E646172207464203E207370616E207B0D0A2020646973706C61793A2066';
wwv_flow_imp.g_varchar2_table(653) := '6C65783B0D0A2020616C69676E2D6974656D733A2063656E7465723B0D0A20206A7573746966792D636F6E74656E743A2063656E7465723B0D0A2020626C6F636B2D73697A653A2063616C6328766172282D2D612D646174657069636B65722D63616C65';
wwv_flow_imp.g_varchar2_table(654) := '6E6461722D6461792D666F6E742D73697A652C203172656D29202A2032293B0D0A2020696E6C696E652D73697A653A2063616C6328766172282D2D612D646174657069636B65722D63616C656E6461722D6461792D666F6E742D73697A652C203172656D';
wwv_flow_imp.g_varchar2_table(655) := '29202A2032293B0D0A7D0D0A2E612D446174655069636B65722D6D6F6E74682C0D0A2E612D446174655069636B65722D796561722C0D0A2E612D446174655069636B65722D74696D65486F7572732C0D0A2E612D446174655069636B65722D74696D654D';
wwv_flow_imp.g_varchar2_table(656) := '696E757465732C0D0A2E612D446174655069636B65722D74696D65416D506D207B0D0A2020706F736974696F6E3A2072656C61746976653B0D0A2020646973706C61793A20677269643B0D0A2020677269642D74656D706C6174652D61726561733A2022';
wwv_flow_imp.g_varchar2_table(657) := '73656C656374223B0D0A2020616C69676E2D6974656D733A2063656E7465723B0D0A7D0D0A2E612D446174655069636B65722D6D6F6E74682073656C6563742C0D0A2E612D446174655069636B65722D796561722073656C6563742C0D0A2E612D446174';
wwv_flow_imp.g_varchar2_table(658) := '655069636B65722D74696D65486F7572732073656C6563742C0D0A2E612D446174655069636B65722D74696D654D696E757465732073656C6563742C0D0A2E612D446174655069636B65722D74696D65416D506D2073656C656374207B0D0A20206F7264';
wwv_flow_imp.g_varchar2_table(659) := '65723A206E6F6E653B0D0A2020617070656172616E63653A206E6F6E653B0D0A202070616464696E672D696E6C696E652D656E643A20312E323572656D3B0D0A2020677269642D617265613A2073656C6563743B0D0A7D0D0A2E612D446174655069636B';
wwv_flow_imp.g_varchar2_table(660) := '65722D6D6F6E74683A61667465722C0D0A2E612D446174655069636B65722D796561723A61667465722C0D0A2E612D446174655069636B65722D74696D65486F7572733A61667465722C0D0A2E612D446174655069636B65722D74696D654D696E757465';
wwv_flow_imp.g_varchar2_table(661) := '733A61667465722C0D0A2E612D446174655069636B65722D74696D65416D506D3A6166746572207B0D0A2020636F6E74656E743A20225C66306463223B0D0A2020666F6E742D66616D696C793A2022466F6E74204150455820536D616C6C223B0D0A2020';
wwv_flow_imp.g_varchar2_table(662) := '677269642D617265613A2073656C6563743B0D0A2020646973706C61793A20666C65783B0D0A20206A7573746966792D636F6E74656E743A20666C65782D656E643B0D0A202072696768743A20766172282D2D612D646174657069636B65722D6D6F6E74';
wwv_flow_imp.g_varchar2_table(663) := '687069636B65722D73656C6563742D70616464696E672D782C20302E323572656D293B0D0A2020706F696E7465722D6576656E74733A206E6F6E653B0D0A2020706F736974696F6E3A2072656C61746976653B0D0A7D0D0A2E612D446174655069636B65';
wwv_flow_imp.g_varchar2_table(664) := '722D6D6F6E74682073656C6563742C0D0A2E612D446174655069636B65722D796561722073656C656374207B0D0A20206C696E652D6865696768743A2063616C6328766172282D2D612D646174657069636B65722D6D6F6E74687069636B65722D73656C';
wwv_flow_imp.g_varchar2_table(665) := '6563742D666F6E742D73697A652C20302E373572656D29202A20312E313235293B0D0A7D0D0A2E612D446174655069636B65722D74696D65486F7572732073656C6563742C0D0A2E612D446174655069636B65722D74696D654D696E757465732073656C';
wwv_flow_imp.g_varchar2_table(666) := '6563742C0D0A2E612D446174655069636B65722D74696D65416D506D2073656C656374207B0D0A20206C696E652D6865696768743A2063616C6328766172282D2D612D646174657069636B65722D74696D657069636B65722D73656C6563742D666F6E74';
wwv_flow_imp.g_varchar2_table(667) := '2D73697A652C20302E373572656D29202A20312E313235293B0D0A7D0D0A2E612D446174655069636B65722D6E6176207B0D0A20202D2D612D627574746F6E2D6261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D';
wwv_flow_imp.g_varchar2_table(668) := '612D627574746F6E2D746578742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D64656661756C742D636F6C6F72293B0D0A20202D2D612D627574746F6E2D626F726465722D636F6C6F723A207472616E73706172656E74';
wwv_flow_imp.g_varchar2_table(669) := '3B0D0A20202D2D612D627574746F6E2D736861646F773A206E6F6E653B0D0A20202D2D612D69636F6E2D73697A653A20312E323572656D3B0D0A7D0D0A2E612D446174655069636B65722D6E61763A686F766572207B0D0A20202D2D612D627574746F6E';
wwv_flow_imp.g_varchar2_table(670) := '2D73746174652D6261636B67726F756E642D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D627574746F6E2D73746174652D746578742D636F6C6F723A20766172';
wwv_flow_imp.g_varchar2_table(671) := '282D2D612D627574746F6E2D686F7665722D746578742D636F6C6F72293B0D0A20202D2D612D627574746F6E2D73746174652D626F726465722D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D626F726465722D636F6C6F72293B';
wwv_flow_imp.g_varchar2_table(672) := '0D0A20202D2D612D627574746F6E2D73746174652D736861646F773A20766172282D2D612D627574746F6E2D686F7665722D736861646F77293B0D0A7D0D0A2E612D446174655069636B65722D6E61763A616374697665207B0D0A20202D2D612D627574';
wwv_flow_imp.g_varchar2_table(673) := '746F6E2D73746174652D6261636B67726F756E642D636F6C6F723A20766172282D2D612D627574746F6E2D6163746976652D6261636B67726F756E642D636F6C6F722C20766172282D2D612D627574746F6E2D686F7665722D6261636B67726F756E642D';
wwv_flow_imp.g_varchar2_table(674) := '636F6C6F7229293B0D0A20202D2D612D627574746F6E2D73746174652D746578742D636F6C6F723A20766172282D2D612D627574746F6E2D6163746976652D746578742D636F6C6F722C20766172282D2D612D627574746F6E2D686F7665722D74657874';
wwv_flow_imp.g_varchar2_table(675) := '2D636F6C6F7229293B0D0A20202D2D612D627574746F6E2D73746174652D626F726465722D636F6C6F723A20766172282D2D612D627574746F6E2D6163746976652D626F726465722D636F6C6F722C20766172282D2D612D627574746F6E2D686F766572';
wwv_flow_imp.g_varchar2_table(676) := '2D626F726465722D636F6C6F7229293B0D0A20202D2D612D627574746F6E2D73746174652D736861646F773A20766172282D2D612D627574746F6E2D6163746976652D736861646F772C20766172282D2D612D627574746F6E2D686F7665722D73686164';
wwv_flow_imp.g_varchar2_table(677) := '6F7729293B0D0A7D0D0A2E612D446174655069636B65722D2D746F646179207B0D0A2020626F726465722D636F6C6F723A207472616E73706172656E743B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A2020';
wwv_flow_imp.g_varchar2_table(678) := '626F782D736861646F773A206E6F6E653B0D0A20202D2D612D627574746F6E2D746578742D636F6C6F723A20233530386538363B0D0A7D0D0A2E742D4D6567614D656E75207B0D0A20202D2D612D6D656E752D666F63757365642D6261636B67726F756E';
wwv_flow_imp.g_varchar2_table(679) := '642D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D6D656E752D666F63757365642D746578742D636F6C6F723A20696E697469616C3B0D0A7D0D0A2E742D4D6567614D656E752D6974656D426F64792E69732D666F6375736564202E';
wwv_flow_imp.g_varchar2_table(680) := '742D4D6567614D656E752D6C6162656C2C0D0A2E742D4D6567614D656E752D6974656D426F64793A686F766572202E742D4D6567614D656E752D6C6162656C207B0D0A2020636F6C6F723A20766172282D2D75742D6C696E6B2D746578742D636F6C6F72';
wwv_flow_imp.g_varchar2_table(681) := '293B0D0A7D0D0A2E742D4865616465722D6E6176202E742D4865616465722D6E61762D6C697374207B0D0A20206261636B67726F756E642D636F6C6F723A20766172282D2D612D6D656E756261722D6261636B67726F756E642D636F6C6F72293B0D0A7D';
wwv_flow_imp.g_varchar2_table(682) := '0D0A2E742D4865616465722D6E6176202E612D4D656E75426172207B0D0A2020626F782D736861646F773A20696E73657420302063616C6328766172282D2D612D6D656E756261722D6974656D2D626F726465722D77696474682C2031707829202A202D';
wwv_flow_imp.g_varchar2_table(683) := '3129203020766172282D2D612D6D656E756261722D6974656D2D626F726465722D636F6C6F72293B0D0A7D0D0A2E742D4865616465722D6E6176202E612D4D656E754261722D6974656D207B0D0A2020626F726465722D746F702D77696474683A20303B';
wwv_flow_imp.g_varchar2_table(684) := '0D0A2020626F726465722D626F74746F6D2D77696474683A20303B0D0A7D0D0A2E742D4865616465722D6E6176202E612D4D656E754261722D6974656D3A666F6375732D77697468696E207B0D0A20206F75746C696E653A20766172282D2D75742D666F';
wwv_flow_imp.g_varchar2_table(685) := '6375732D6F75746C696E652C206175746F2031707820766172282D2D75742D666F6375732D6F75746C696E652D636F6C6F722C202D7765626B69742D666F6375732D72696E672D636F6C6F7229293B0D0A20206F75746C696E652D6F66667365743A202D';
wwv_flow_imp.g_varchar2_table(686) := '3170783B0D0A7D0D0A2E742D4865616465722D6E6176202E612D4D656E754261722D6974656D202E612D4D656E754261722D6C6162656C207B0D0A20206F75746C696E653A206E6F6E653B0D0A202077686974652D73706163653A206E6F777261703B0D';
wwv_flow_imp.g_varchar2_table(687) := '0A20206D696E2D6865696768743A2063616C632863616C6328766172282D2D612D6D656E756261722D6974656D2D70616464696E672D792C2038707829202A203229202B20766172282D2D612D6D656E756261722D6974656D2D6C696E652D6865696768';
wwv_flow_imp.g_varchar2_table(688) := '742C203136707829293B0D0A7D0D0A2E742D4865616465722D6E6176202E612D4D656E752D2D73706C6974202E612D4D656E754261722D6C6162656C207B0D0A202070616464696E672D696E6C696E652D656E643A20303B0D0A7D0D0A2E742D48656164';
wwv_flow_imp.g_varchar2_table(689) := '65722D6E6176202E612D4D656E752D2D73706C6974202E612D4D656E752D7375624D656E75436F6C207B0D0A20202D2D612D6D656E752D69636F6E2D73697A653A203172656D3B0D0A7D0D0A2E742D4865616465722D6E6176202E612D4D656E752D2D63';
wwv_flow_imp.g_varchar2_table(690) := '757272656E74207B0D0A20202D2D612D6D656E756261722D6974656D2D666F6E742D7765696768743A20766172282D2D612D626173652D666F6E742D7765696768742D626F6C642C20373030293B0D0A7D0D0A2E742D4865616465722D6E6176202E612D';
wwv_flow_imp.g_varchar2_table(691) := '4D656E754261722D6974656D2E69732D666F6375736564207B0D0A20202D2D612D6D656E756261722D6974656D2D6261636B67726F756E642D636F6C6F723A20766172282D2D612D6D656E756261722D6974656D2D666F63757365642D6261636B67726F';
wwv_flow_imp.g_varchar2_table(692) := '756E642D636F6C6F72293B0D0A20202D2D612D6D656E756261722D6974656D2D746578742D636F6C6F723A20766172282D2D612D6D656E756261722D6974656D2D666F63757365642D746578742D636F6C6F72293B0D0A7D0D0A612D73656C656374207B';
wwv_flow_imp.g_varchar2_table(693) := '0D0A20202D2D612D636869702D72656D6F76652D70616464696E673A20302E3036323572656D3B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E6973';
wwv_flow_imp.g_varchar2_table(694) := '2D63757272656E742C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D73656C65637465642C0D0A2E742D547265654E6176202E612D54726565566965';
wwv_flow_imp.g_varchar2_table(695) := '772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702E69732D73656C6563746564207B0D0A20206261636B67726F756E642D636F6C6F723A20233131313131313B0D0A7D0D0A2E742D';
wwv_flow_imp.g_varchar2_table(696) := '547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F';
wwv_flow_imp.g_varchar2_table(697) := '704C6576656C2E69732D636F6C6C61707369626C65203E202E612D54726565566965772D726F772C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C20756C207B0D0A20206261636B67726F756E642D63';
wwv_flow_imp.g_varchar2_table(698) := '6F6C6F723A20233061306130613B0D0A2020636F6C6F723A20236566656665663B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D686F766572';
wwv_flow_imp.g_varchar2_table(699) := '207B0D0A20206261636B67726F756E642D636F6C6F723A20233139313931392021696D706F7274616E743B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F';
wwv_flow_imp.g_varchar2_table(700) := '772E69732D686F766572202B202E612D54726565566965772D746F67676C652C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D686F766572202B202E';
wwv_flow_imp.g_varchar2_table(701) := '612D54726565566965772D636F6E74656E742C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D686F766572202B202E612D54726565566965772D746F';
wwv_flow_imp.g_varchar2_table(702) := '67676C65202B202E612D54726565566965772D636F6E74656E74207B0D0A2020636F6C6F723A20766172282D2D612D74726565766965772D6E6F64652D73656C65637465642D746578742D636F6C6F72293B0D0A7D0D0A2E612D54726565566965772D63';
wwv_flow_imp.g_varchar2_table(703) := '6F6E74656E742E69732D73656C6563746564203E202E6661207B0D0A20202D2D75742D74726565766965772D69636F6E2D6F7061636974793A20313B0D0A7D0D0A2E742D547265654E61762D2D7374796C65412C0D0A2E742D547265654E61762D2D7374';
wwv_flow_imp.g_varchar2_table(704) := '796C6542207B0D0A20202D2D75742D74726565766965772D62616467652D626F726465722D7261646975733A20312E323572656D3B0D0A20202D2D75742D74726565766965772D62616467652D666F6E742D7765696768743A20766172282D2D612D6261';
wwv_flow_imp.g_varchar2_table(705) := '73652D666F6E742D7765696768742D73656D69626F6C642C20353030293B0D0A20202D2D75742D74726565766965772D69636F6E2D73697A653A20312E323572656D3B0D0A20202D2D75742D74726565766965772D746F706C6576656C2D69636F6E2D63';
wwv_flow_imp.g_varchar2_table(706) := '6F6E7461696E65722D77696474683A20312E373572656D3B0D0A20202D2D75742D74726565766965772D6E6F64652D69636F6E2D73697A653A203172656D3B0D0A20202D2D75742D74726565766965772D6E6F64652D69636F6E2D636F6E7461696E6572';
wwv_flow_imp.g_varchar2_table(707) := '2D77696474683A20766172282D2D75742D74726565766965772D746F706C6576656C2D69636F6E2D636F6E7461696E65722D77696474682C20312E373572656D293B0D0A20202D2D75742D74726565766965772D6E6F64652D696E64656E743A20307265';
wwv_flow_imp.g_varchar2_table(708) := '6D3B0D0A20202D2D75742D74726565766965772D6C6561662D6E6F64652D696E64656E743A20302E36323572656D3B0D0A20202D2D75742D74726565766965772D746F706C6576656C2D6C6561662D70616464696E672D793A203072656D3B0D0A20202D';
wwv_flow_imp.g_varchar2_table(709) := '2D612D74726565766965772D6E6F64652D70616464696E672D793A20302E36323572656D3B0D0A7D0D0A2E742D547265654E61762D2D7374796C6541202E612D54726565566965772D6E6F64652D2D746F704C6576656C20756C2C0D0A2E742D54726565';
wwv_flow_imp.g_varchar2_table(710) := '4E61762D2D7374796C6542202E612D54726565566965772D6E6F64652D2D746F704C6576656C20756C207B0D0A20202D2D612D74726565766965772D6E6F64652D70616464696E672D793A20302E373572656D3B0D0A7D0D0A2E742D547265654E61762D';
wwv_flow_imp.g_varchar2_table(711) := '2D7374796C6541202E612D54726565566965772D6E6F64652D2D746F704C6576656C207B0D0A2020626F726465722D626F74746F6D3A2031707820736F6C69642072676261283235352C203235352C203235352C20302E31293B0D0A7D0D0A2E742D5472';
wwv_flow_imp.g_varchar2_table(712) := '65654E61762D2D7374796C6541202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65207B0D0A2020636F6C6F723A20766172282D2D612D74726565766965772D6E6F64652D73656C65637465642D74';
wwv_flow_imp.g_varchar2_table(713) := '6578742D636F6C6F72293B0D0A7D0D0A2E742D547265654E61762D2D7374796C6541202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702C0D0A2E742D54';
wwv_flow_imp.g_varchar2_table(714) := '7265654E61762D2D7374796C6541202E612D54726565566965772D6E6F64652D2D746F704C6576656C20756C207B0D0A20206261636B67726F756E642D636F6C6F723A20766172282D2D612D74726565766965772D6E6F64652D73656C65637465642D62';
wwv_flow_imp.g_varchar2_table(715) := '61636B67726F756E642D636F6C6F72293B0D0A2020636F6C6F723A20766172282D2D612D74726565766965772D6E6F64652D73656C65637465642D746578742D636F6C6F72293B0D0A7D0D0A2E742D547265654E61762D2D7374796C6541202E612D5472';
wwv_flow_imp.g_varchar2_table(716) := '6565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F70202E612D54726565566965772D726F772E69732D73656C65637465642C0D0A2E742D547265654E61762D2D7374796C';
wwv_flow_imp.g_varchar2_table(717) := '6541202E612D54726565566965772D6E6F64652D2D746F704C6576656C20756C202E612D54726565566965772D726F772E69732D73656C6563746564207B0D0A20206261636B67726F756E642D636F6C6F723A20766172282D2D75742D626F64792D6E61';
wwv_flow_imp.g_varchar2_table(718) := '762D6261636B67726F756E642D636F6C6F72293B0D0A2020636F6C6F723A20766172282D2D612D74726565766965772D6E6F64652D73656C65637465642D746578742D636F6C6F72293B0D0A7D0D0A2E742D547265654E61762D2D7374796C6541202E61';
wwv_flow_imp.g_varchar2_table(719) := '2D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702C0D0A2E742D547265654E61762D2D7374796C6541202E612D54726565566965772D6E6F64652D2D746F704C';
wwv_flow_imp.g_varchar2_table(720) := '6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F70207E20756C202E612D54726565566965772D726F77207B0D0A2020626F782D736861646F773A20696E73657420766172282D2D75742D70616C657474652D7072';
wwv_flow_imp.g_varchar2_table(721) := '696D6172792920347078203020303B0D0A7D0D0A2E752D52544C202E742D547265654E61762D2D7374796C6541202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D';
wwv_flow_imp.g_varchar2_table(722) := '2D746F702C0D0A2E752D52544C202E742D547265654E61762D2D7374796C6541202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F70207E20756C202E612D';
wwv_flow_imp.g_varchar2_table(723) := '54726565566965772D726F77207B0D0A2020626F782D736861646F773A20696E73657420766172282D2D75742D70616C657474652D7072696D61727929202D347078203020303B0D0A7D0D0A2E742D547265654E61762D2D7374796C6541202E612D5472';
wwv_flow_imp.g_varchar2_table(724) := '6565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702E69732D666F63757365642C0D0A2E742D547265654E61762D2D7374796C6541202E612D54726565566965772D6E6F';
wwv_flow_imp.g_varchar2_table(725) := '64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F70207E20756C202E612D54726565566965772D726F772E69732D666F6375736564207B0D0A2020626F782D736861646F773A20696E73657420';
wwv_flow_imp.g_varchar2_table(726) := '766172282D2D75742D70616C657474652D7072696D6172792920347078203020302C2030203020302031707820766172282D2D75742D70616C657474652D7072696D6172792920696E7365743B0D0A7D0D0A2E752D52544C202E742D547265654E61762D';
wwv_flow_imp.g_varchar2_table(727) := '2D7374796C6541202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702E69732D666F63757365642C0D0A2E752D52544C202E742D547265654E61762D2D73';
wwv_flow_imp.g_varchar2_table(728) := '74796C6541202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F70207E20756C202E612D54726565566965772D726F772E69732D666F6375736564207B0D0A';
wwv_flow_imp.g_varchar2_table(729) := '2020626F782D736861646F773A20696E73657420766172282D2D75742D70616C657474652D7072696D61727929202D347078203020302C2030203020302031707820766172282D2D75742D70616C657474652D7072696D6172792920696E7365743B0D0A';
wwv_flow_imp.g_varchar2_table(730) := '7D0D0A2E742D547265654E61762D2D7374796C6542203E20756C207B0D0A20207472616E736974696F6E3A206D617267696E20766172282D2D75742D6C61796F75742D7472616E736974696F6E2C20302E31732920656173653B0D0A20206D617267696E';
wwv_flow_imp.g_varchar2_table(731) := '3A20302E323572656D3B0D0A7D0D0A4061742D726F6F74202E6A732D6E6176436F6C6C61707365642026207B0D0A20202D2D612D74726565766965772D6E6F64652D70616464696E672D793A20302E3572656D3B0D0A2020203E20756C207B0D0A202020';
wwv_flow_imp.g_varchar2_table(732) := '206D617267696E3A20303B0D0A20207D0D0A7D0D0A2E742D547265654E61762D2D7374796C6542202E612D54726565566965772D6E6F6465207B0D0A20206D617267696E2D626C6F636B2D73746172743A20302E323572656D3B0D0A20206D617267696E';
wwv_flow_imp.g_varchar2_table(733) := '2D626C6F636B2D656E643A20302E323572656D3B0D0A7D0D0A2E742D547265654E61762D2D7374796C6542202E612D54726565566965772D6E6F64652D2D746F704C6576656C207B0D0A20206D617267696E2D696E6C696E652D73746172743A20302E32';
wwv_flow_imp.g_varchar2_table(734) := '3572656D3B0D0A20206D617267696E2D696E6C696E652D656E643A20302E323572656D3B0D0A7D0D0A2E742D547265654E61762D2D7374796C6542202E612D54726565566965772D6E6F64652D2D746F704C6576656C20756C207B0D0A20206261636B67';
wwv_flow_imp.g_varchar2_table(735) := '726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D547265654E61762D2D7374796C6542202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D6375727265';
wwv_flow_imp.g_varchar2_table(736) := '6E742D2D746F702C0D0A2E742D547265654E61762D2D7374796C6542202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702E69732D73656C656374656420';
wwv_flow_imp.g_varchar2_table(737) := '7B0D0A20206261636B67726F756E642D636F6C6F723A20233966316530643B0D0A7D0D0A2E742D547265654E61762D2D7374796C6542202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E6973';
wwv_flow_imp.g_varchar2_table(738) := '2D63757272656E742D2D746F702E69732D73656C6563746564202B202E612D54726565566965772D746F67676C652C0D0A2E742D547265654E61762D2D7374796C6542202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D5472';
wwv_flow_imp.g_varchar2_table(739) := '6565566965772D636F6E74656E742E69732D63757272656E742D2D746F70207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D547265654E61762D2D7374796C6542202E612D54726565566965772D6E6F64652D2D746F704C657665';
wwv_flow_imp.g_varchar2_table(740) := '6C202E612D54726565566965772D636F6E74656E742E69732D63757272656E742D2D746F702E69732D686F766572207B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E742D547265654E61762D2D7374796C65';
wwv_flow_imp.g_varchar2_table(741) := '42202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702E69732D686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A2023613431663064';
wwv_flow_imp.g_varchar2_table(742) := '2021696D706F7274616E743B0D0A7D0D0A2E742D547265654E61762D2D7374796C6542202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F77207B0D0A2020626F726465722D7261646975733A2030';
wwv_flow_imp.g_varchar2_table(743) := '2E323572656D3B0D0A7D0D0A2E612D4952522D6469616C6F672D2D646F776E6C6F61642C0D0A2E612D4952522D6469616C6F672D2D737562736372697074696F6E207B0D0A20202D2D612D69636F6E6C6973742D6974656D2D6261636B67726F756E642D';
wwv_flow_imp.g_varchar2_table(744) := '636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746F6F6C6261722D6261636B67726F756E642D636F6C6F722C207267626128302C20302C20302C20302E30323529293B0D0A20202D2D612D69636F6E6C6973742D6974656D2D74657874';
wwv_flow_imp.g_varchar2_table(745) := '2D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D64656661756C742D636F6C6F72293B0D0A20202D2D612D69636F6E6C6973742D6974656D2D686F7665722D746578742D636F6C6F723A20766172282D2D75742D636F6D70';
wwv_flow_imp.g_varchar2_table(746) := '6F6E656E742D746578742D64656661756C742D636F6C6F72293B0D0A20202D2D612D69636F6E6C6973742D6974656D2D686F7665722D6261636B67726F756E642D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D6261636B67726F756E';
wwv_flow_imp.g_varchar2_table(747) := '642D636F6C6F72293B0D0A20202D2D612D69636F6E6C6973742D6974656D2D73656C65637465642D746578742D636F6C6F723A20766172282D2D612D69636F6E6C6973742D6974656D2D686F7665722D746578742D636F6C6F72293B0D0A20202D2D612D';
wwv_flow_imp.g_varchar2_table(748) := '69636F6E6C6973742D6974656D2D73656C65637465642D6261636B67726F756E642D636F6C6F723A20766172282D2D612D69636F6E6C6973742D6974656D2D686F7665722D6261636B67726F756E642D636F6C6F72293B0D0A7D0D0A2E612D4952522D64';
wwv_flow_imp.g_varchar2_table(749) := '69616C6F672D2D646F776E6C6F6164202E612D49636F6E4C6973742D6974656D2C0D0A2E612D4952522D6469616C6F672D2D737562736372697074696F6E202E612D49636F6E4C6973742D6974656D207B0D0A2020626F782D736861646F773A20696E73';
wwv_flow_imp.g_varchar2_table(750) := '657420766172282D2D75742D636F6D706F6E656E742D696E6E65722D626F726465722D636F6C6F72292030202D317078203020303B0D0A7D0D0A2E612D4952522D6469616C6F672D2D646F776E6C6F6164202E612D49636F6E4C6973742D6974656D2E69';
wwv_flow_imp.g_varchar2_table(751) := '732D73656C65637465642C0D0A2E612D4952522D6469616C6F672D2D737562736372697074696F6E202E612D49636F6E4C6973742D6974656D2E69732D73656C6563746564207B0D0A2020626F782D736861646F773A20696E73657420766172282D2D75';
wwv_flow_imp.g_varchar2_table(752) := '742D70616C657474652D7072696D61727929203020327078203020303B0D0A7D0D0A2E612D4952522D69636F6E4C6973742D6974656D202B202E612D4952522D69636F6E4C6973742D6974656D207B0D0A2020626F726465722D6C6566742D636F6C6F72';
wwv_flow_imp.g_varchar2_table(753) := '3A20766172282D2D75742D636F6D706F6E656E742D696E6E65722D626F726465722D636F6C6F72293B0D0A7D0D0A2E752D52544C202E612D4952522D69636F6E4C6973742D6974656D202B202E612D4952522D69636F6E4C6973742D6974656D207B0D0A';
wwv_flow_imp.g_varchar2_table(754) := '2020626F726465722D72696768742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D696E6E65722D626F726465722D636F6C6F72293B0D0A7D0D0A2E612D4952522D726164696F49636F6E4C697374207B0D0A20202D2D612D69636F6E';
wwv_flow_imp.g_varchar2_table(755) := '6C6973742D6974656D2D6261636B67726F756E642D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746F6F6C6261722D6261636B67726F756E642D636F6C6F722C207267626128302C20302C20302C20302E30323529293B0D0A20202D';
wwv_flow_imp.g_varchar2_table(756) := '2D612D69636F6E6C6973742D6974656D2D746578742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D64656661756C742D636F6C6F72293B0D0A20202D2D612D69636F6E6C6973742D6974656D2D686F7665722D74657874';
wwv_flow_imp.g_varchar2_table(757) := '2D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D64656661756C742D636F6C6F72293B0D0A20202D2D612D69636F6E6C6973742D6974656D2D686F7665722D6261636B67726F756E642D636F6C6F723A20766172282D2D75';
wwv_flow_imp.g_varchar2_table(758) := '742D636F6D706F6E656E742D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D69636F6E6C6973742D6974656D2D73656C65637465642D746578742D636F6C6F723A20766172282D2D612D69636F6E6C6973742D6974656D2D686F766572';
wwv_flow_imp.g_varchar2_table(759) := '2D746578742D636F6C6F72293B0D0A20202D2D612D69636F6E6C6973742D6974656D2D73656C65637465642D6261636B67726F756E642D636F6C6F723A20766172282D2D612D69636F6E6C6973742D6974656D2D686F7665722D6261636B67726F756E64';
wwv_flow_imp.g_varchar2_table(760) := '2D636F6C6F72293B0D0A7D0D0A2E612D4952522D726164696F49636F6E4C6973742D6974656D202B202E612D4952522D726164696F49636F6E4C6973742D6974656D207B0D0A2020626F726465722D6C6566742D636F6C6F723A20766172282D2D75742D';
wwv_flow_imp.g_varchar2_table(761) := '636F6D706F6E656E742D696E6E65722D626F726465722D636F6C6F72293B0D0A7D0D0A2E752D52544C202E612D4952522D726164696F49636F6E4C6973742D6974656D202B202E612D4952522D726164696F49636F6E4C6973742D6974656D207B0D0A20';
wwv_flow_imp.g_varchar2_table(762) := '20626F726465722D72696768742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D696E6E65722D626F726465722D636F6C6F72293B0D0A7D0D0A2E612D4952522D726164696F49636F6E4C6973742D6974656D20696E7075745B747970';
wwv_flow_imp.g_varchar2_table(763) := '653D726164696F5D202B206C6162656C207B0D0A2020626F782D736861646F773A20696E73657420766172282D2D75742D636F6D706F6E656E742D696E6E65722D626F726465722D636F6C6F72292030202D317078203020303B0D0A7D0D0A2E612D4952';
wwv_flow_imp.g_varchar2_table(764) := '522D726164696F49636F6E4C6973742D6974656D20696E7075745B747970653D726164696F5D3A636865636B6564202B206C6162656C207B0D0A2020626F782D736861646F773A20696E73657420766172282D2D75742D70616C657474652D7072696D61';
wwv_flow_imp.g_varchar2_table(765) := '727929203020327078203020303B0D0A7D0D0A2E612D4952522D6469616C6F67496E666F3A66697273742D6368696C64207B0D0A2020626F726465722D626F74746F6D2D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D696E6E65722D';
wwv_flow_imp.g_varchar2_table(766) := '626F726465722D636F6C6F72293B0D0A7D0D0A2E612D49472D627574746F6E2E612D49472D627574746F6E2D2D636F6E74726F6C732C0D0A2E612D4952522D627574746F6E2E612D4952522D627574746F6E2D2D636F6E74726F6C73207B0D0A20202D2D';
wwv_flow_imp.g_varchar2_table(767) := '612D627574746F6E2D6261636B67726F756E642D636F6C6F723A20233466346434633B0D0A7D0D0A2E612D4952522D6469616C6F67526F772D2D6865616465722C0D0A2E612D4952522D6469616C6F674C6973742061207B0D0A2020636F6C6F723A2076';
wwv_flow_imp.g_varchar2_table(768) := '6172282D2D75742D636F6D706F6E656E742D746578742D64656661756C742D636F6C6F72293B0D0A7D0D0A2E612D4952522D6469616C6F674C697374207B0D0A2020626F726465722D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D62';
wwv_flow_imp.g_varchar2_table(769) := '6F726465722D636F6C6F72293B0D0A7D0D0A2E612D4952522D686967686C6967687450726576696577207B0D0A2020626F782D736861646F773A20696E73657420766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F7229203020';
wwv_flow_imp.g_varchar2_table(770) := '302030203170783B0D0A7D0D0A2E612D4952522D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20233263323832353B0D0A7D0D0A2E612D4952522D6865616465723A686F766572207B0D0A20206261636B67726F756E642D63';
wwv_flow_imp.g_varchar2_table(771) := '6F6C6F723A20233334333032633B0D0A7D0D0A2E612D4952522D6865616465722E69732D6163746976652C0D0A2E612D47562D6865616465722E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20766172282D2D612D6D';
wwv_flow_imp.g_varchar2_table(772) := '656E752D6261636B67726F756E642D636F6C6F72293B0D0A2020636F6C6F723A20766172282D2D612D6D656E752D746578742D636F6C6F72293B0D0A7D0D0A2E612D4952522D6865616465722D2D67726F7570207B0D0A20206261636B67726F756E642D';
wwv_flow_imp.g_varchar2_table(773) := '636F6C6F723A20233331326432613B0D0A7D0D0A2E612D4952522D736F72745769646765742D7365617263684C6162656C3A6265666F7265207B0D0A2020636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D6D757465642D63';
wwv_flow_imp.g_varchar2_table(774) := '6F6C6F72293B0D0A7D0D0A2E612D4952522D736F72745769646765742D736561726368203E202E612D4952522D736F72745769646765742D7365617263684669656C645B747970653D2274657874225D207B0D0A2020636F6C6F723A20766172282D2D61';
wwv_flow_imp.g_varchar2_table(775) := '2D6669656C642D696E7075742D73746174652D746578742D636F6C6F722C20766172282D2D612D6669656C642D696E7075742D746578742D636F6C6F7229293B0D0A20206261636B67726F756E642D636F6C6F723A20766172282D2D612D6669656C642D';
wwv_flow_imp.g_varchar2_table(776) := '696E7075742D73746174652D6261636B67726F756E642D636F6C6F722C20766172282D2D612D6669656C642D696E7075742D6261636B67726F756E642D636F6C6F7229293B0D0A7D0D0A2E612D47562D7461626C652074682E612D47562D636F6E74726F';
wwv_flow_imp.g_varchar2_table(777) := '6C427265616B486561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20233331326432613B0D0A2020626F726465722D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A202063';
wwv_flow_imp.g_varchar2_table(778) := '6F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D6D757465642D636F6C6F72293B0D0A7D0D0A2E612D49472D7265706F727453756D6D6172792D6974656D2D2D73617665645265706F72742C0D0A2E612D49472D636F6E74726F';
wwv_flow_imp.g_varchar2_table(779) := '6C732D6974656D2D2D73617665645265706F72742C0D0A2E612D4952522D7265706F727453756D6D6172792D6974656D2D2D73617665645265706F72742C0D0A2E612D4952522D636F6E74726F6C732D6974656D2D2D73617665645265706F7274207B0D';
wwv_flow_imp.g_varchar2_table(780) := '0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D69636F6E2D6261636B67726F756E642D636F6C6F723A20233441413445433B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D';
wwv_flow_imp.g_varchar2_table(781) := '686F7665722D6261636B67726F756E642D636F6C6F723A20233066353638653B0D0A7D0D0A2E612D49472D7265706F727453756D6D6172792D6974656D2D2D7365617263682C0D0A2E612D49472D636F6E74726F6C732D6974656D2D2D7365617263682C';
wwv_flow_imp.g_varchar2_table(782) := '0D0A2E612D4952522D7265706F727453756D6D6172792D6974656D2D2D7365617263682C0D0A2E612D4952522D636F6E74726F6C732D6974656D2D2D736561726368207B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162';
wwv_flow_imp.g_varchar2_table(783) := '656C2D69636F6E2D6261636B67726F756E642D636F6C6F723A20233441413445433B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D686F7665722D6261636B67726F756E642D636F6C6F723A2023306635363865';
wwv_flow_imp.g_varchar2_table(784) := '3B0D0A7D0D0A2E612D49472D7265706F727453756D6D6172792D6974656D2D2D66696C7465722C0D0A2E612D49472D636F6E74726F6C732D6974656D2D2D66696C7465722C0D0A2E612D4952522D7265706F727453756D6D6172792D6974656D2D2D6669';
wwv_flow_imp.g_varchar2_table(785) := '6C7465722C0D0A2E612D4952522D636F6E74726F6C732D6974656D2D2D66696C746572207B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D69636F6E2D6261636B67726F756E642D636F6C6F723A202332344342';
wwv_flow_imp.g_varchar2_table(786) := '37463B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D686F7665722D6261636B67726F756E642D636F6C6F723A20233064343932653B0D0A7D0D0A2E612D49472D7265706F727453756D6D6172792D6974656D2D';
wwv_flow_imp.g_varchar2_table(787) := '2D636F6E74726F6C427265616B2C0D0A2E612D49472D636F6E74726F6C732D6974656D2D2D636F6E74726F6C427265616B2C0D0A2E612D4952522D7265706F727453756D6D6172792D6974656D2D2D636F6E74726F6C427265616B2C0D0A2E612D495252';
wwv_flow_imp.g_varchar2_table(788) := '2D636F6E74726F6C732D6974656D2D2D636F6E74726F6C427265616B207B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D69636F6E2D6261636B67726F756E642D636F6C6F723A20233342383342443B0D0A2020';
wwv_flow_imp.g_varchar2_table(789) := '2D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D686F7665722D6261636B67726F756E642D636F6C6F723A20233134326434313B0D0A7D0D0A2E612D49472D7265706F727453756D6D6172792D6974656D2D2D67726F757042';
wwv_flow_imp.g_varchar2_table(790) := '792C0D0A2E612D49472D636F6E74726F6C732D6974656D2D2D67726F757042792C0D0A2E612D4952522D7265706F727453756D6D6172792D6974656D2D2D67726F757042792C0D0A2E612D4952522D636F6E74726F6C732D6974656D2D2D67726F757042';
wwv_flow_imp.g_varchar2_table(791) := '79207B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D69636F6E2D6261636B67726F756E642D636F6C6F723A20233342383342443B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C61';
wwv_flow_imp.g_varchar2_table(792) := '62656C2D686F7665722D6261636B67726F756E642D636F6C6F723A20233134326434313B0D0A7D0D0A2E612D49472D7265706F727453756D6D6172792D6974656D2D2D6167677265676174652C0D0A2E612D49472D636F6E74726F6C732D6974656D2D2D';
wwv_flow_imp.g_varchar2_table(793) := '6167677265676174652C0D0A2E612D4952522D7265706F727453756D6D6172792D6974656D2D2D6167677265676174652C0D0A2E612D4952522D636F6E74726F6C732D6974656D2D2D616767726567617465207B0D0A20202D2D612D7265706F72742D63';
wwv_flow_imp.g_varchar2_table(794) := '6F6E74726F6C732D63656C6C2D6C6162656C2D69636F6E2D6261636B67726F756E642D636F6C6F723A20233342383342443B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D686F7665722D6261636B67726F756E';
wwv_flow_imp.g_varchar2_table(795) := '642D636F6C6F723A20233134326434313B0D0A7D0D0A2E612D49472D7265706F727453756D6D6172792D6974656D2D2D686967686C696768742C0D0A2E612D49472D636F6E74726F6C732D6974656D2D2D686967686C696768742C0D0A2E612D4952522D';
wwv_flow_imp.g_varchar2_table(796) := '7265706F727453756D6D6172792D6974656D2D2D686967686C696768742C0D0A2E612D4952522D636F6E74726F6C732D6974656D2D2D686967686C69676874207B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D';
wwv_flow_imp.g_varchar2_table(797) := '69636F6E2D6261636B67726F756E642D636F6C6F723A20234646424532413B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D686F7665722D6261636B67726F756E642D636F6C6F723A20233836356430303B0D0A';
wwv_flow_imp.g_varchar2_table(798) := '7D0D0A2E612D49472D7265706F727453756D6D6172792D6974656D2D2D666C6173686261636B2C0D0A2E612D49472D636F6E74726F6C732D6974656D2D2D666C6173686261636B2C0D0A2E612D4952522D7265706F727453756D6D6172792D6974656D2D';
wwv_flow_imp.g_varchar2_table(799) := '2D666C6173686261636B2C0D0A2E612D4952522D636F6E74726F6C732D6974656D2D2D666C6173686261636B207B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D69636F6E2D6261636B67726F756E642D636F6C';
wwv_flow_imp.g_varchar2_table(800) := '6F723A20233945413741443B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D686F7665722D6261636B67726F756E642D636F6C6F723A20233265333433373B0D0A7D0D0A2E612D49472D7265706F727453756D6D';
wwv_flow_imp.g_varchar2_table(801) := '6172792D6974656D2D2D63686172742C0D0A2E612D49472D636F6E74726F6C732D6974656D2D2D63686172742C0D0A2E612D4952522D7265706F727453756D6D6172792D6974656D2D2D63686172742C0D0A2E612D4952522D636F6E74726F6C732D6974';
wwv_flow_imp.g_varchar2_table(802) := '656D2D2D6368617274207B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D69636F6E2D6261636B67726F756E642D636F6C6F723A20233342383342443B0D0A20202D2D612D7265706F72742D636F6E74726F6C73';
wwv_flow_imp.g_varchar2_table(803) := '2D63656C6C2D6C6162656C2D686F7665722D6261636B67726F756E642D636F6C6F723A20233034306130653B0D0A7D0D0A2E612D49472D7265706F727453756D6D6172792D6974656D2D2D7069766F742C0D0A2E612D49472D636F6E74726F6C732D6974';
wwv_flow_imp.g_varchar2_table(804) := '656D2D2D7069766F742C0D0A2E612D4952522D7265706F727453756D6D6172792D6974656D2D2D7069766F742C0D0A2E612D4952522D636F6E74726F6C732D6974656D2D2D7069766F74207B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D';
wwv_flow_imp.g_varchar2_table(805) := '63656C6C2D6C6162656C2D69636F6E2D6261636B67726F756E642D636F6C6F723A20233945413741443B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D686F7665722D6261636B67726F756E642D636F6C6F723A';
wwv_flow_imp.g_varchar2_table(806) := '20233265333433373B0D0A7D0D0A2E612D49472D7265706F727453756D6D6172792D6974656D2D2D696E76616C696453657474696E67732C0D0A2E612D49472D636F6E74726F6C732D6974656D2D2D696E76616C696453657474696E67732C0D0A2E612D';
wwv_flow_imp.g_varchar2_table(807) := '4952522D7265706F727453756D6D6172792D6974656D2D2D696E76616C696453657474696E67732C0D0A2E612D4952522D636F6E74726F6C732D6974656D2D2D696E76616C696453657474696E6773207B0D0A20202D2D612D7265706F72742D636F6E74';
wwv_flow_imp.g_varchar2_table(808) := '726F6C732D63656C6C2D6C6162656C2D69636F6E2D6261636B67726F756E642D636F6C6F723A20234244433343373B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D686F7665722D6261636B67726F756E642D63';
wwv_flow_imp.g_varchar2_table(809) := '6F6C6F723A20233439353135363B0D0A7D0D0A2E612D49472D7265706F727453756D6D6172792D6974656D2D2D696E61637469766553657474696E67732C0D0A2E612D49472D636F6E74726F6C732D6974656D2D2D696E61637469766553657474696E67';
wwv_flow_imp.g_varchar2_table(810) := '732C0D0A2E612D4952522D7265706F727453756D6D6172792D6974656D2D2D696E61637469766553657474696E67732C0D0A2E612D4952522D636F6E74726F6C732D6974656D2D2D696E61637469766553657474696E6773207B0D0A20202D2D612D7265';
wwv_flow_imp.g_varchar2_table(811) := '706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D69636F6E2D6261636B67726F756E642D636F6C6F723A20234244433343373B0D0A20202D2D612D7265706F72742D636F6E74726F6C732D63656C6C2D6C6162656C2D686F7665722D626163';
wwv_flow_imp.g_varchar2_table(812) := '6B67726F756E642D636F6C6F723A20233439353135363B0D0A7D0D0A2E612D47562D7461626C65202E612D47562D63656C6C2E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20233139313931393B0D0A7D0D0A2E612D';
wwv_flow_imp.g_varchar2_table(813) := '47562D2D656469744D6F6465202E612D47562D726F772E69732D726561646F6E6C79202E612D47562D63656C6C2C0D0A2E612D47562D2D656469744D6F6465202E612D47562D63656C6C2E69732D726561646F6E6C79207B0D0A20206261636B67726F75';
wwv_flow_imp.g_varchar2_table(814) := '6E642D636F6C6F723A20233064306430643B0D0A2020636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D6D757465642D636F6C6F72293B0D0A7D0D0A2E612D47562D63656C6C202E612D47562D636F6C756D6E4974656D2069';
wwv_flow_imp.g_varchar2_table(815) := '6E7075743A6E6F74285B747970653D22726164696F225D293A6E6F74285B747970653D22636865636B626F78225D293A666F6375732C0D0A2E612D47562D63656C6C202E612D47562D636F6C756D6E4974656D2073656C6563745B73697A653D2731275D';
wwv_flow_imp.g_varchar2_table(816) := '3A666F637573207B0D0A20206261636B67726F756E642D636F6C6F723A20233030303B0D0A7D0D0A2E612D436869702D72656D6F7665207B0D0A20206D617267696E2D696E6C696E652D656E643A2063616C6328766172282D2D612D636869702D6C6162';
wwv_flow_imp.g_varchar2_table(817) := '656C2D73706163696E672C2034707829202F2032293B0D0A7D0D0A612D776F726B666C6F772D6469616772616D202E612D546F6F6C626172207B0D0A2020626C6F636B2D73697A653A20766172282D2D75742D6469616772616D2D746F6F6C6261722D62';
wwv_flow_imp.g_varchar2_table(818) := '6C6F636B2D73697A652C203372656D293B0D0A7D0D0A612D776F726B666C6F772D6469616772616D20746578745B6A6F696E742D73656C6563746F723D22676C797068225D207B0D0A2020666F6E742D7765696768743A20766172282D2D75742D646961';
wwv_flow_imp.g_varchar2_table(819) := '6772616D2D69636F6E2D666F6E742D7765696768742C20363030293B0D0A7D0D0A612D776F726B666C6F772D6469616772616D202E612D546F6F6C6261722D2D73696D706C65202E612D546F6F6C6261722D67726F7570202E612D427574746F6E207B0D';
wwv_flow_imp.g_varchar2_table(820) := '0A20202D2D612D627574746F6E2D626F726465722D77696474683A20756E7365743B0D0A20202D2D612D627574746F6E2D626F726465722D636F6C6F723A207472616E73706172656E743B0D0A20202D2D612D627574746F6E2D73746174652D6261636B';
wwv_flow_imp.g_varchar2_table(821) := '67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A612D776F726B666C6F772D6469616772616D202E612D546F6F6C6261722D2D73696D706C65202E612D546F6F6C6261722D67726F7570202E612D427574746F6E3A686F7665';
wwv_flow_imp.g_varchar2_table(822) := '72207B0D0A2020626F726465722D636F6C6F723A20766172282D2D612D627574746F6E2D73746174652D626F726465722D636F6C6F722C20766172282D2D612D627574746F6E2D747970652D626F726465722D636F6C6F722C20766172282D2D612D6275';
wwv_flow_imp.g_varchar2_table(823) := '74746F6E2D626F726465722D636F6C6F722929293B0D0A7D0D0A2E742D526567696F6E2D2D6E6F50616464696E67202E612D546F6F6C6261722D67726F7570207B0D0A20206D617267696E2D626C6F636B2D73746172743A20766172282D2D612D746F6F';
wwv_flow_imp.g_varchar2_table(824) := '6C6261722D6974656D2D73706163696E672C20302E3572656D293B0D0A7D0D0A2E742D526567696F6E2D2D6E6F50616464696E67202E612D546F6F6C6261722D67726F75703A6C6173742D6368696C64202E612D546F6F6C6261722D6974656D3A6C6173';
wwv_flow_imp.g_varchar2_table(825) := '742D6368696C64207B0D0A20206D617267696E2D696E6C696E652D656E643A20766172282D2D612D746F6F6C6261722D6974656D2D73706163696E672C20302E3572656D293B0D0A7D0D0A2E742D526567696F6E2D626F6479202E612D576F726B666C6F';
wwv_flow_imp.g_varchar2_table(826) := '77417070207B0D0A20206D61782D626C6F636B2D73697A653A20343072656D3B0D0A7D0D0A2E692D683234302E742D526567696F6E2D2D6E6F50616464696E67202E742D526567696F6E2D626F6479202E612D576F726B666C6F77417070207B0D0A2020';
wwv_flow_imp.g_varchar2_table(827) := '626C6F636B2D73697A653A2063616C63283234307078202D20766172282D2D75742D6469616772616D2D746F6F6C6261722D626C6F636B2D73697A652C203372656D29293B0D0A7D0D0A2E692D683332302E742D526567696F6E2D2D6E6F50616464696E';
wwv_flow_imp.g_varchar2_table(828) := '67202E742D526567696F6E2D626F6479202E612D576F726B666C6F77417070207B0D0A2020626C6F636B2D73697A653A2063616C63283332307078202D20766172282D2D75742D6469616772616D2D746F6F6C6261722D626C6F636B2D73697A652C2033';
wwv_flow_imp.g_varchar2_table(829) := '72656D29293B0D0A7D0D0A2E692D683438302E742D526567696F6E2D2D6E6F50616464696E67202E742D526567696F6E2D626F6479202E612D576F726B666C6F77417070207B0D0A2020626C6F636B2D73697A653A2063616C63283438307078202D2076';
wwv_flow_imp.g_varchar2_table(830) := '6172282D2D75742D6469616772616D2D746F6F6C6261722D626C6F636B2D73697A652C203372656D29293B0D0A7D0D0A2E692D683634302E742D526567696F6E2D2D6E6F50616464696E67202E742D526567696F6E2D626F6479202E612D576F726B666C';
wwv_flow_imp.g_varchar2_table(831) := '6F77417070207B0D0A2020626C6F636B2D73697A653A2063616C63283634307078202D20766172282D2D75742D6469616772616D2D746F6F6C6261722D626C6F636B2D73697A652C203372656D29293B0D0A7D0D0A2E692D68323430202E742D52656769';
wwv_flow_imp.g_varchar2_table(832) := '6F6E2D626F6479202E612D576F726B666C6F77417070207B0D0A2020626C6F636B2D73697A653A2063616C63283234307078202D20766172282D2D75742D6469616772616D2D746F6F6C6261722D626C6F636B2D73697A652C203372656D29202D202876';
wwv_flow_imp.g_varchar2_table(833) := '6172282D2D75742D726567696F6E2D626F64792D70616464696E672D792C203172656D29202A203229293B0D0A7D0D0A2E692D68333230202E742D526567696F6E2D626F6479202E612D576F726B666C6F77417070207B0D0A2020626C6F636B2D73697A';
wwv_flow_imp.g_varchar2_table(834) := '653A2063616C63283332307078202D20766172282D2D75742D6469616772616D2D746F6F6C6261722D626C6F636B2D73697A652C203372656D29202D2028766172282D2D75742D726567696F6E2D626F64792D70616464696E672D792C203172656D2920';
wwv_flow_imp.g_varchar2_table(835) := '2A203229293B0D0A7D0D0A2E692D68343830202E742D526567696F6E2D626F6479202E612D576F726B666C6F77417070207B0D0A2020626C6F636B2D73697A653A2063616C63283438307078202D20766172282D2D75742D6469616772616D2D746F6F6C';
wwv_flow_imp.g_varchar2_table(836) := '6261722D626C6F636B2D73697A652C203372656D29202D2028766172282D2D75742D726567696F6E2D626F64792D70616464696E672D792C203172656D29202A203229293B0D0A7D0D0A2E692D68363430202E742D526567696F6E2D626F6479202E612D';
wwv_flow_imp.g_varchar2_table(837) := '576F726B666C6F77417070207B0D0A2020626C6F636B2D73697A653A2063616C63283634307078202D20766172282D2D75742D6469616772616D2D746F6F6C6261722D626C6F636B2D73697A652C203372656D29202D2028766172282D2D75742D726567';
wwv_flow_imp.g_varchar2_table(838) := '696F6E2D626F64792D70616464696E672D792C203172656D29202A203229293B0D0A7D0D0A2E742D526567696F6E2D626F6479202E6A6F696E742D70617065722D7363726F6C6C6572202E6A6F696E742D7061706572207B0D0A2020696E7365742D626C';
wwv_flow_imp.g_varchar2_table(839) := '6F636B2D73746172743A20322E3572656D2021696D706F7274616E743B0D0A7D0D0A3A726F6F74207B0D0A20202D2D6F6A2D636F72652D746578742D636F6C6F722D7072696D6172793A20766172282D2D75742D636F6D706F6E656E742D746578742D64';
wwv_flow_imp.g_varchar2_table(840) := '656661756C742D636F6C6F72293B0D0A20202D2D6F6A2D636F72652D746578742D636F6C6F722D7365636F6E646172793A20766172282D2D75742D636F6D706F6E656E742D746578742D6D757465642D636F6C6F72293B0D0A20202D2D6F6A2D636F7265';
wwv_flow_imp.g_varchar2_table(841) := '2D746578742D636F6C6F722D6272616E643A20766172282D2D75742D70616C657474652D7072696D6172792D74657874293B0D0A20202D2D6F6A2D636F72652D746578742D636F6C6F722D64616E6765723A20766172282D2D75742D70616C657474652D';
wwv_flow_imp.g_varchar2_table(842) := '64616E6765722D74657874293B0D0A20202D2D6F6A2D636F72652D746578742D636F6C6F722D7761726E696E673A20766172282D2D75742D70616C657474652D7761726E696E672D74657874293B0D0A20202D2D6F6A2D636F72652D746578742D636F6C';
wwv_flow_imp.g_varchar2_table(843) := '6F722D737563636573733A20766172282D2D75742D70616C657474652D737563636573732D74657874293B0D0A20202D2D6F6A2D636F72652D69636F6E2D73697A652D6C673A20312E3572656D3B0D0A20202D2D6F6A2D636F72652D69636F6E2D73697A';
wwv_flow_imp.g_varchar2_table(844) := '652D736D3A203172656D3B0D0A20202D2D6F6A2D636F72652D646976696465722D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A20202D2D6F6A2D636F72652D646976696465722D6D61726769';
wwv_flow_imp.g_varchar2_table(845) := '6E3A20302E3572656D3B0D0A20202D2D6F6A2D636F72652D666F6375732D626F726465722D636F6C6F723A20766172282D2D75742D666F6375732D6F75746C696E652D636F6C6F72293B0D0A20202D2D6F6A2D636F6C6F722D737065637472756D2D626F';
wwv_flow_imp.g_varchar2_table(846) := '726465722D636F6C6F723A20233333333333333B0D0A20202D2D6F6A2D706F7075702D62672D636F6C6F723A20766172282D2D612D6D656E752D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D6F6A2D636F72652D62672D636F6C6F722D68';
wwv_flow_imp.g_varchar2_table(847) := '6F7665723A20766172282D2D612D6D656E752D666F63757365642D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D6F6A2D636F72652D626F782D736861646F773A20766172282D2D75742D736861646F772D736D293B0D0A20202D2D6F6A2D';
wwv_flow_imp.g_varchar2_table(848) := '6C696E6B2D746578742D636F6C6F723A20766172282D2D75742D6C696E6B2D746578742D636F6C6F72293B0D0A20202D2D6F6A2D746578742D6669656C642D62672D636F6C6F723A20766172282D2D612D6669656C642D696E7075742D6261636B67726F';
wwv_flow_imp.g_varchar2_table(849) := '756E642D636F6C6F72293B0D0A20202D2D6F6A2D746578742D6669656C642D626F726465722D636F6C6F723A20766172282D2D612D6669656C642D696E7075742D626F726465722D636F6C6F72293B0D0A20202D2D6F6A2D746578742D6669656C642D74';
wwv_flow_imp.g_varchar2_table(850) := '6578742D636F6C6F723A20766172282D2D612D6669656C642D696E7075742D746578742D636F6C6F72293B0D0A20202D2D6F6A2D636F6C6C656374696F6E2D667265652D73706163652D62672D636F6C6F723A20766172282D2D75742D636F6D706F6E65';
wwv_flow_imp.g_varchar2_table(851) := '6E742D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D6F6A2D636F6C6C656374696F6E2D6865616465722D62672D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D6261636B67726F756E642D636F6C6F72293B0D0A20202D';
wwv_flow_imp.g_varchar2_table(852) := '2D6F6A2D636F6C6C656374696F6E2D626F726465722D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D626F726465722D636F6C6F72293B0D0A20202D2D6F6A2D636F6C6C656374696F6E2D62672D636F6C6F723A20766172282D2D7574';
wwv_flow_imp.g_varchar2_table(853) := '2D636F6D706F6E656E742D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D6F6A2D707269766174652D67616E74742D6D696C6573746F6E652D62672D636F6C6F723A20766172282D2D752D636F6C6F722D3135293B0D0A20202D2D6F6A2D70';
wwv_flow_imp.g_varchar2_table(854) := '7269766174652D67616E74742D7461736B2D62672D636F6C6F723A20766172282D2D752D636F6C6F722D31293B0D0A20202D2D6F6A2D707269766174652D67616E74742D7461736B2D70726F67726573732D62672D636F6C6F723A20766172282D2D752D';
wwv_flow_imp.g_varchar2_table(855) := '636F6C6F722D31293B0D0A20202D2D6F6A2D627574746F6E2D6F75746C696E65642D6368726F6D652D62672D636F6C6F722D686F7665723A20766172282D2D75742D70616C657474652D7072696D617279293B0D0A20202D2D6F6A2D627574746F6E2D6F';
wwv_flow_imp.g_varchar2_table(856) := '75746C696E65642D6368726F6D652D626F726465722D636F6C6F722D686F7665723A20766172282D2D75742D70616C657474652D7072696D617279293B0D0A20202D2D6F6A2D627574746F6E2D6F75746C696E65642D6368726F6D652D746578742D636F';
wwv_flow_imp.g_varchar2_table(857) := '6C6F722D686F7665723A20766172282D2D75742D70616C657474652D7072696D6172792D636F6E7472617374293B0D0A20202D2D6F6A2D627574746F6E2D626F726465726C6573732D6368726F6D652D62672D636F6C6F722D686F7665723A2076617228';
wwv_flow_imp.g_varchar2_table(858) := '2D2D75742D70616C657474652D7072696D617279293B0D0A20202D2D6F6A2D627574746F6E2D626F726465726C6573732D6368726F6D652D746578742D636F6C6F722D686F7665723A20766172282D2D75742D70616C657474652D7072696D6172792D63';
wwv_flow_imp.g_varchar2_table(859) := '6F6E7472617374293B0D0A20202D2D6F6A2D68656164696E672D746578742D636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D7469746C652D636F6C6F72293B0D0A7D0D0A3A726F6F74207B0D0A20202D2D75742D62617365';
wwv_flow_imp.g_varchar2_table(860) := '2D66696C7465723A20696E766572742831293B0D0A20202D2D612D646174657069636B65722D63616C656E6461722D6461792D63757272656E742D6261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E32';
wwv_flow_imp.g_varchar2_table(861) := '293B0D0A20202D2D612D646174657069636B65722D63616C656E6461722D6461792D63757272656E742D746578742D636F6C6F723A20766172282D2D612D70616C657474652D7072696D6172792D636F6E7472617374293B0D0A20202D2D612D64617465';
wwv_flow_imp.g_varchar2_table(862) := '7069636B65722D63616C656E6461722D6461792D63757272656E742D626F726465722D636F6C6F723A2072676261283235352C203235352C203235352C20302E32293B0D0A20202D2D612D66696C6564726F702D69636F6E2D616374696F6E2D6261636B';
wwv_flow_imp.g_varchar2_table(863) := '67726F756E642D636F6C6F723A20233030303030303B0D0A20202D2D612D636861742D757365722D7072696D6172792D6D6573736167652D6261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E3235293B';
wwv_flow_imp.g_varchar2_table(864) := '0D0A20202D2D612D636861742D757365722D7365636F6E646172792D6D6573736167652D6261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E3038293B0D0A20202D2D612D636861742D73656E642D6275';
wwv_flow_imp.g_varchar2_table(865) := '74746F6E2D686F7665722D6261636B67726F756E642D636F6C6F723A20766172282D2D612D627574746F6E2D686F7665722D6261636B67726F756E642D636F6C6F72293B0D0A20202D2D612D636861742D73656E642D627574746F6E2D636F6C6F723A20';
wwv_flow_imp.g_varchar2_table(866) := '236666666666663B0D0A20202D2D612D636861742D6D6573736167652D616374696F6E2D627574746F6E2D6261636B67726F756E642D636F6C6F723A20233632363336343B0D0A20202D2D612D636861742D6D6573736167652D616374696F6E2D627574';
wwv_flow_imp.g_varchar2_table(867) := '746F6E2D73746174652D6261636B67726F756E642D636F6C6F723A20233439346134623B0D0A20202D2D612D636861742D6D6573736167652D7072652D626F726465722D636F6C6F723A2072676261283235352C203235352C203235352C20302E32293B';
wwv_flow_imp.g_varchar2_table(868) := '0D0A20202D2D612D636861742D616374696F6E732D73746174652D6261636B67726F756E642D636F6C6F723A20233439346134623B0D0A20202D2D612D6469616772616D2D656C656D656E742D69636F6E2D636F6C6F723A20236666663B0D0A20202D2D';
wwv_flow_imp.g_varchar2_table(869) := '612D6469616772616D2D656C656D656E742D7465726D696E61746F722D746578742D636F6C6F723A20766172282D2D75742D626F64792D746578742D636F6C6F72293B0D0A20202D2D612D6469616772616D2D656C656D656E742D7465726D696E61746F';
wwv_flow_imp.g_varchar2_table(870) := '722D6261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E32293B0D0A20202D2D612D6469616772616D2D656C656D656E742D6261636B67726F756E642D636F6C6F723A2072676261283235352C20323535';
wwv_flow_imp.g_varchar2_table(871) := '2C203235352C20302E32293B0D0A20202D2D612D6469616772616D2D6C6162656C2D6261636B67726F756E642D636F6C6F723A20236263623662313B0D0A20202D2D612D6469616772616D2D6C6162656C2D746578742D636F6C6F723A20233030303B0D';
wwv_flow_imp.g_varchar2_table(872) := '0A20202D2D612D6469616772616D2D6E6176696761746F722D626F726465722D636F6C6F723A20236263623662313B0D0A20202D2D612D63722D636865636B626F782D6261636B67726F756E642D636F6C6F723A20233231323332353B0D0A20202D2D70';
wwv_flow_imp.g_varchar2_table(873) := '7269736D2D636F6D6D656E743A20233641393935353B0D0A20202D2D707269736D2D737472696E673A20234345393137383B0D0A20202D2D707269736D2D6C69746572616C3A20233943444346453B0D0A20202D2D707269736D2D6B6579776F72643A20';
wwv_flow_imp.g_varchar2_table(874) := '234335383643303B0D0A20202D2D707269736D2D66756E6374696F6E3A20234443444341413B0D0A20202D2D707269736D2D64656C657465643A20234345393137383B0D0A20202D2D707269736D2D636C6173733A20233445433942303B0D0A20202D2D';
wwv_flow_imp.g_varchar2_table(875) := '707269736D2D6275696C74696E3A20234443444341413B0D0A20202D2D707269736D2D70726F70657274793A20233943444346453B0D0A20202D2D707269736D2D6E616D6573706163653A20233445433942303B0D0A20202D2D707269736D2D6E756D62';
wwv_flow_imp.g_varchar2_table(876) := '65723A20234235434541383B0D0A7D0D0A';
wwv_flow_imp_shared.create_theme_file(
 p_id=>wwv_flow_imp.id(65787634492722757049)
,p_theme_id=>42
,p_file_name=>'65787634064761757045.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/logic/build_options
begin
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(65787164465126730967)
,p_build_option_name=>'Commented Out'
,p_build_option_status=>'EXCLUDE'
,p_version_scn=>15640172958892
);
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/security/authentications/oracle_apex_accounts
begin
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(65787164794675730967)
,p_name=>'Oracle APEX Accounts'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>15640172958894
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00000
begin
wwv_flow_imp_page.create_page(
 p_id=>0
,p_name=>'Global Page'
,p_step_title=>'Global Page'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'D'
,p_page_component_map=>'14'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_imp_page.create_page(
 p_id=>1
,p_name=>'My Watchlist'
,p_alias=>'HOME'
,p_step_title=>'MENJFLIX'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
':root {',
'    /* Updating movie title size to make it more prominent */',
'    --a-cv-title-font-size: 24px;',
'    --a-cv-title-line-height: 1.5;',
'}',
'',
'    /* Update default width of images */',
'    .a-CardView-items--row .has-media {',
'    grid-template-columns: minmax(32px,128px) minmax(0,var(--a-cv-icon-spacer,44px)) 1fr minmax(0,auto);',
'}'))
,p_step_template=>2526643373347724467
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(65787178170115730991)
,p_plug_name=>'MENJFLIX'
,p_title=>'My Watchlist'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2674017834225413037
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_plug_query_num_rows=>15
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66746977487929386801)
,p_plug_name=>'Watchlist'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id,',
'       movie_id,',
'       user_id,',
'       watched_yn,',
'       watched,',
'       case when watched_yn = ''Y'' then ''Watched'' end as WATCHED_LABEL,',
'       case when watched_yn = ''Y''',
'            then ''Marked as watched '' || apex_util.get_since(watched)',
'            else ''Added to watchlist '' || apex_util.get_since(created)',
'            end as movie_status,',
'       title,',
'       poster_url,',
'       release_date,',
'       to_char(release_date, ''YYYY'') as release_year,',
'       floor( to_char(release_date, ''YYYY'') / 10) * 10 as decade,',
'       runtime,',
'       vote_average,',
'       created,',
'       to_char(created, ''MM/YYYY'') as created_on,',
'       created_by,',
'       updated,',
'       updated_by',
'  from watchlist',
' where user_id = :USER_ID'))
,p_query_order_by_type=>'ITEM'
,p_query_order_by=>'{"orderBys":[{"key":"TITLE","expr":"\"TITLE\" asc"},{"key":"RATING","expr":"\"VOTE_AVERAGE\" desc"},{"key":"RECENT","expr":"\"CREATED\" desc"}],"itemName":"P1_SORT_BY"}'
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from watchlist',
' where user_id = :USER_ID'))
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(66746977598287386802)
,p_region_id=>wwv_flow_imp.id(66746977487929386801)
,p_layout_type=>'ROW'
,p_title_adv_formatting=>false
,p_title_column_name=>'TITLE'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>true
,p_body_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Release Year: &RELEASE_YEAR.',
'<br>',
'Rating: &VOTE_AVERAGE.'))
,p_second_body_adv_formatting=>false
,p_second_body_column_name=>'MOVIE_STATUS'
,p_badge_column_name=>'WATCHED_LABEL'
,p_media_adv_formatting=>false
,p_media_source_type=>'DYNAMIC_URL'
,p_media_url_column_name=>'POSTER_URL'
,p_media_display_position=>'BODY'
,p_media_sizing=>'FIT'
,p_pk1_column_name=>'ID'
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(66746977660688386803)
,p_card_id=>wwv_flow_imp.id(66746977598287386802)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.::P3_ID,P3_PREVIOUS_PAGE_ID:&MOVIE_ID.,1'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66746977757983386804)
,p_plug_name=>'Filter '
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_02'
,p_location=>null
,p_plug_source_type=>'NATIVE_FACETED_SEARCH'
,p_filtered_region_id=>wwv_flow_imp.id(66746977487929386801)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'batch_facet_search', 'N',
  'compact_numbers_threshold', '10000',
  'display_chart_for_top_n_values', '10',
  'show_charts', 'Y',
  'show_current_facets', 'N',
  'show_total_row_count', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66746978696020386813)
,p_plug_name=>'Get Started'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<strong>Welcome to your Watchlist!</strong>',
'<br>',
'<br>',
'To search for movies and add them to your list, click on the <strong>Add a Movie</strong> button above.'))
,p_plug_display_condition_type=>'NOT_EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from watchlist',
' where user_id = :USER_ID'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(65935246733836215601)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(65787178170115730991)
,p_button_name=>'ADD_MOVIE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Movie'
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:2::'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66746977865495386805)
,p_name=>'P1_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(66746977757983386804)
,p_prompt=>'Search'
,p_source=>'TITLE'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_SEARCH'
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'input_field', 'FACET',
  'search_type', 'ROW')).to_clob
,p_fc_show_chart=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66746977993964386806)
,p_name=>'P1_WATCHED_YN'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(66746977757983386804)
,p_prompt=>'Watched '
,p_source=>'WATCHED_YN'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC2:Yes;Y,No;N'
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_collapsible=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_actions_filter=>false
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66746978033797386807)
,p_name=>'P1_DECADE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(66746977757983386804)
,p_prompt=>'Decade'
,p_source=>'DECADE'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_collapsible=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>false
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_actions_filter=>false
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66746978184811386808)
,p_name=>'P1_RUNTIME'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(66746977757983386804)
,p_prompt=>'Runtime'
,p_source=>'RUNTIME'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_RANGE'
,p_lov=>'STATIC2:Over 2 hours; 120|,90 minutes to 2 hours;90|120,Less than 90 minutes;|90'
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'manual_entry', 'N',
  'select_multiple', 'Y')).to_clob
,p_fc_show_label=>true
,p_fc_collapsible=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>7
,p_fc_filter_values=>false
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_actions_filter=>false
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66746978215138386809)
,p_name=>'P1_SORT_BY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(66746977487929386801)
,p_prompt=>'Sort By'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Title;TITLE,Rating;RATING,Date Added;RECENT'
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(65935246880868215602)
,p_name=>'Reshesh on Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(65935246733836215601)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65935246968779215603)
,p_event_id=>wwv_flow_imp.id(65935246880868215602)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_imp_page.create_page(
 p_id=>2
,p_name=>'Movie Search'
,p_alias=>'MOVIE-SEARCH'
,p_page_mode=>'MODAL'
,p_step_title=>'Movie Search'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Set posters to be the same size/ratio */',
'.a-CardView-media--square:before {',
'    padding-top: 150%; /* 2:3 ratio */',
'}',
'',
'/* set position of the Card badge */',
'.a-CardView-badge {',
'    position: absolute;',
'    top: 12px;',
'    right: 12px;',
'    margin: 0;',
'}',
'',
'/* style the movie rating under the movie title */',
'    .movie-rating {',
'    margin-top: 4px;',
'}',
'',
'/* style both the movie rating and the star icon under the movie title */',
'.movie-rating,',
'.movie-rating .fa {',
'    font-size: 12px;',
'    line-height: inherit;',
'    vertical-align: bottom;',
'    opacity: 0.75;',
'}'))
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'23'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(65931363694545060702)
,p_plug_name=>'Popular Movies'
,p_title=>'Popular Movies '
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>10
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(65794516926652996089)
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_plug_display_condition_type=>'ITEM_IS_NULL'
,p_plug_display_when_condition=>'P2_SEARCH'
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(65931363701473060703)
,p_region_id=>wwv_flow_imp.id(65931363694545060702)
,p_layout_type=>'GRID'
,p_grid_column_count=>5
,p_title_adv_formatting=>false
,p_title_column_name=>'TITLE'
,p_sub_title_adv_formatting=>true
,p_sub_title_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="movie-rating">',
'<span aria-hidden="true" class="fa fa-star"></span> &VOTE_AVERAGE.</div>',
''))
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
,p_media_source_type=>'STATIC_URL'
,p_media_url=>'https://image.tmdb.org/t/p/w500&POSTER_PATH.'
,p_media_display_position=>'FIRST'
,p_media_appearance=>'SQUARE'
,p_media_sizing=>'COVER'
,p_pk1_column_name=>'ID'
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(65935247457212215608)
,p_card_id=>wwv_flow_imp.id(65931363701473060703)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.::P3_ID:&ID.'
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(65931363819412060704)
,p_page_id=>2
,p_web_src_param_id=>wwv_flow_imp.id(65794517624354996089)
,p_page_plug_id=>wwv_flow_imp.id(65931363694545060702)
,p_value_type=>'DEFAULT'
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(65931363925279060705)
,p_page_id=>2
,p_web_src_param_id=>wwv_flow_imp.id(65794518025228996090)
,p_page_plug_id=>wwv_flow_imp.id(65931363694545060702)
,p_value_type=>'DEFAULT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(65931364062174060706)
,p_plug_name=>'Searched Movies'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>20
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(65794522564351996093)
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows=>25
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>false
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P2_SEARCH'
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(65931364390149060709)
,p_region_id=>wwv_flow_imp.id(65931364062174060706)
,p_layout_type=>'GRID'
,p_grid_column_count=>5
,p_title_adv_formatting=>false
,p_title_column_name=>'TITLE'
,p_sub_title_adv_formatting=>true
,p_sub_title_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="movie-rating">',
'<span aria-hidden="true" class="fa fa-star"></span> &VOTE_AVERAGE.</div>',
''))
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
,p_media_source_type=>'STATIC_URL'
,p_media_url=>'https://image.tmdb.org/t/p/w500&POSTER_PATH.'
,p_media_display_position=>'FIRST'
,p_media_appearance=>'SQUARE'
,p_media_sizing=>'COVER'
,p_pk1_column_name=>'ID'
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(65935247544785215609)
,p_card_id=>wwv_flow_imp.id(65931364390149060709)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.::P3_ID:&ID.'
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(65931364462716060710)
,p_page_id=>2
,p_web_src_param_id=>wwv_flow_imp.id(65794524076917996093)
,p_page_plug_id=>wwv_flow_imp.id(65931364062174060706)
,p_value_type=>'DEFAULT'
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(65931364513264060711)
,p_page_id=>2
,p_web_src_param_id=>wwv_flow_imp.id(65794523280815996093)
,p_page_plug_id=>wwv_flow_imp.id(65931364062174060706)
,p_value_type=>'DEFAULT'
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(65931364660387060712)
,p_page_id=>2
,p_web_src_param_id=>wwv_flow_imp.id(65794523687415996093)
,p_page_plug_id=>wwv_flow_imp.id(65931364062174060706)
,p_value_type=>'ITEM'
,p_value=>'P2_SEARCH'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(65931364793938060713)
,p_plug_name=>'Search Bar'
,p_region_css_classes=>'padding-sm'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65931364801711060714)
,p_name=>'P2_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(65931364793938060713)
,p_prompt=>'Search'
,p_placeholder=>'Search for a movie...'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>2040785906935475274
,p_item_icon_css_classes=>'fa-search'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_imp_page.create_page(
 p_id=>3
,p_name=>'Movie Details'
,p_alias=>'MOVIE-DETAILS'
,p_page_mode=>'MODAL'
,p_step_title=>'Movie Details'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Customize Movie Header Card */',
'.movie-header-card.a-CardView {',
'    /* Increase the font sizes for movie name and tag line */',
'    --a-cv-title-font-size: 24px;',
'    --a-cv-subtitle-font-size: 16px;',
'',
'    /* Add additional spacing around the header content */',
'    --ut-cv-subtitle-margin: 16px 0 0 0;',
'    display: flex;',
'    padding: 24px 0;',
'}',
'.movie-header-card .a-CardView-body {',
'    /* Remove unnecessary padding */',
'    padding-top: 0;',
'}',
'.movie-details {',
'    /* Center align Card Body text */',
'    text-align: center;',
'}'))
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'23'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(65935247006651215604)
,p_plug_name=>'Header'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc:t-CardsRegion--styleB'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>20
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(65794511766089996085)
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id,',
'       title,',
'       ''https://image.tmdb.org/t/p/w500''||poster_path as poster_url,',
'       ''https://image.tmdb.org/t/p/w500''||backdrop_path as backdrop_url,',
'       release_date,',
'       runtime,',
'       trunc(runtime/60) || ''hr '' ||',
'            extract (minute from numtodsinterval((runtime/60), ''HOUR'' )) || ''min''',
'            as runtime_friendly,',
'       vote_average,',
'       tagline',
'  from #APEX$SOURCE_DATA#'))
,p_source_post_processing=>'SQL'
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(65935247114857215605)
,p_region_id=>wwv_flow_imp.id(65935247006651215604)
,p_layout_type=>'ROW'
,p_component_css_classes=>'movie-header-card'
,p_title_adv_formatting=>false
,p_title_column_name=>'TITLE'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'TAGLINE'
,p_body_adv_formatting=>true
,p_body_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="movie-details">',
'    <span title="Release Date">Released &RELEASE_DATE.</span> &middot;',
'    <span title="Runtime">&RUNTIME_FRIENDLY.</span> &middot;',
'    <span title="&VOTE_AVERAGE. out of 10"><span class="fa fa-star" aria-hidden="true"></span> &VOTE_AVERAGE.</span>',
'</div>'))
,p_second_body_adv_formatting=>false
,p_icon_source_type=>'URL'
,p_icon_image_url=>'&POSTER_URL'
,p_icon_css_classes=>'w100h150'
,p_icon_position=>'START'
,p_media_adv_formatting=>false
,p_media_source_type=>'DYNAMIC_URL'
,p_media_url_column_name=>'BACKDROP_URL'
,p_media_display_position=>'BACKGROUND'
,p_media_sizing=>'COVER'
,p_pk1_column_name=>'ID'
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(65935247220501215606)
,p_page_id=>3
,p_web_src_param_id=>wwv_flow_imp.id(65794512417818996086)
,p_page_plug_id=>wwv_flow_imp.id(65935247006651215604)
,p_value_type=>'ITEM'
,p_value=>'P3_ID'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(65935247356066215607)
,p_plug_name=>'Overview'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3'
,p_plug_template=>2322115667525957943
,p_plug_display_sequence=>30
,p_location=>null
,p_plug_source=>'&P3_OVERVIEW.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(65938883571401333166)
,p_plug_name=>'Movie Details'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(65794511766089996085)
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(65938884047829333171)
,p_page_id=>3
,p_web_src_param_id=>wwv_flow_imp.id(65794512417818996086)
,p_page_plug_id=>wwv_flow_imp.id(65938883571401333166)
,p_value_type=>'ITEM'
,p_value=>'P3_ID'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(65939099125143333193)
,p_plug_name=>'Buttons'
,p_icon_css_classes=>'fa-chevron-left'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66746978327107386810)
,p_plug_name=>'Cast'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2322115667525957943
,p_plug_display_sequence=>40
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(65794504268988996080)
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows=>10
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(66746978481425386811)
,p_region_id=>wwv_flow_imp.id(66746978327107386810)
,p_layout_type=>'GRID'
,p_grid_column_count=>5
,p_title_adv_formatting=>false
,p_title_column_name=>'CHARACTER'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'NAME'
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
,p_media_source_type=>'STATIC_URL'
,p_media_url=>' https://image.tmdb.org/t/p/w500&PROFILE_PATH.'
,p_media_display_position=>'FIRST'
,p_media_appearance=>'SQUARE'
,p_media_sizing=>'COVER'
,p_pk1_column_name=>'ID'
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(66746978539469386812)
,p_page_id=>3
,p_web_src_param_id=>wwv_flow_imp.id(65794504840869996081)
,p_page_plug_id=>wwv_flow_imp.id(66746978327107386810)
,p_value_type=>'ITEM'
,p_value=>'P3_ID'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(65935247622331215610)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(65939099125143333193)
,p_button_name=>'ADD_TO_WATCHLIST'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add To Watchlist'
,p_button_position=>'NEXT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from watchlist',
' where movie_id = :P3_ID',
'   and user_id = :USER_ID'))
,p_button_condition_type=>'NOT_EXISTS'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(65935247771671215611)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(65939099125143333193)
,p_button_name=>'REMOVE_FROM_WATCHLIST'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Remove From Watchlist'
,p_button_position=>'NEXT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from watchlist',
' where movie_id = :P3_ID',
'   and user_id = :USER_ID'))
,p_button_condition_type=>'EXISTS'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(65935247850477215612)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(65939099125143333193)
,p_button_name=>'MARK_WATCHED'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'I''ve Watched This'
,p_button_position=>'NEXT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'  from watchlist',
' where movie_id =:P3_ID',
'   and user_id = :USER_ID',
'   and watched_yn = ''N'''))
,p_button_condition_type=>'EXISTS'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(65939099598496333193)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(65939099125143333193)
,p_button_name=>'BACK'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Back'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::'
,p_button_condition=>'P3_PREVIOUS_PAGE_ID'
,p_button_condition2=>'2'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_icon_css_classes=>'fa-chevron-left'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(65935248100224215615)
,p_branch_name=>'Redirect to previous page'
,p_branch_action=>'f?p=&APP_ID.:&P3_PREVIOUS_PAGE_ID.:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65935248266854215616)
,p_name=>'P3_PREVIOUS_PAGE_ID'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(65938883571401333166)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65938884415714333172)
,p_name=>'P3_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(65938883571401333166)
,p_item_source_plug_id=>wwv_flow_imp.id(65938883571401333166)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65938884808124333173)
,p_name=>'P3_ADULT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(65938883571401333166)
,p_item_source_plug_id=>wwv_flow_imp.id(65938883571401333166)
,p_source=>'ADULT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65938885203270333173)
,p_name=>'P3_TITLE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(65938883571401333166)
,p_item_source_plug_id=>wwv_flow_imp.id(65938883571401333166)
,p_source=>'TITLE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65938885644134333174)
,p_name=>'P3_VIDEO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(65938883571401333166)
,p_item_source_plug_id=>wwv_flow_imp.id(65938883571401333166)
,p_source=>'VIDEO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65938886098379333175)
,p_name=>'P3_BUDGET'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(65938883571401333166)
,p_item_source_plug_id=>wwv_flow_imp.id(65938883571401333166)
,p_source=>'BUDGET'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65938886433864333175)
,p_name=>'P3_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(65938883571401333166)
,p_item_source_plug_id=>wwv_flow_imp.id(65938883571401333166)
,p_source=>'STATUS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65938886801085333176)
,p_name=>'P3_IMDB_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(65938883571401333166)
,p_item_source_plug_id=>wwv_flow_imp.id(65938883571401333166)
,p_source=>'IMDB_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65938887232297333176)
,p_name=>'P3_REVENUE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(65938883571401333166)
,p_item_source_plug_id=>wwv_flow_imp.id(65938883571401333166)
,p_source=>'REVENUE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65938887615817333177)
,p_name=>'P3_RUNTIME'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(65938883571401333166)
,p_item_source_plug_id=>wwv_flow_imp.id(65938883571401333166)
,p_source=>'RUNTIME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65938888094104333178)
,p_name=>'P3_TAGLINE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(65938883571401333166)
,p_item_source_plug_id=>wwv_flow_imp.id(65938883571401333166)
,p_source=>'TAGLINE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65938888415567333178)
,p_name=>'P3_HOMEPAGE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(65938883571401333166)
,p_item_source_plug_id=>wwv_flow_imp.id(65938883571401333166)
,p_source=>'HOMEPAGE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65938888810404333179)
,p_name=>'P3_OVERVIEW'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(65938883571401333166)
,p_item_source_plug_id=>wwv_flow_imp.id(65938883571401333166)
,p_source=>'OVERVIEW'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65938889264446333180)
,p_name=>'P3_POPULARITY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(65938883571401333166)
,p_item_source_plug_id=>wwv_flow_imp.id(65938883571401333166)
,p_source=>'POPULARITY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65938889671496333180)
,p_name=>'P3_VOTE_COUNT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(65938883571401333166)
,p_item_source_plug_id=>wwv_flow_imp.id(65938883571401333166)
,p_source=>'VOTE_COUNT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65938890092033333181)
,p_name=>'P3_POSTER_PATH'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(65938883571401333166)
,p_item_source_plug_id=>wwv_flow_imp.id(65938883571401333166)
,p_source=>'POSTER_PATH'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65939090491950333182)
,p_name=>'P3_RELEASE_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(65938883571401333166)
,p_item_source_plug_id=>wwv_flow_imp.id(65938883571401333166)
,p_source=>'RELEASE_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65939090850468333182)
,p_name=>'P3_VOTE_AVERAGE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(65938883571401333166)
,p_item_source_plug_id=>wwv_flow_imp.id(65938883571401333166)
,p_source=>'VOTE_AVERAGE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65939091286306333183)
,p_name=>'P3_BACKDROP_PATH'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(65938883571401333166)
,p_item_source_plug_id=>wwv_flow_imp.id(65938883571401333166)
,p_source=>'BACKDROP_PATH'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65939091622236333184)
,p_name=>'P3_ORIGINAL_TITLE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(65938883571401333166)
,p_item_source_plug_id=>wwv_flow_imp.id(65938883571401333166)
,p_source=>'ORIGINAL_TITLE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65939092027363333184)
,p_name=>'P3_ORIGINAL_LANGUAGE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(65938883571401333166)
,p_item_source_plug_id=>wwv_flow_imp.id(65938883571401333166)
,p_source=>'ORIGINAL_LANGUAGE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65939092400654333185)
,p_name=>'P3_BELONGS_TO_COLLECTION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(65938883571401333166)
,p_item_source_plug_id=>wwv_flow_imp.id(65938883571401333166)
,p_source=>'BELONGS_TO_COLLECTION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(65939101318101333195)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Add Movie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'insert into watchlist',
'    (',
'        movie_id,',
'        user_id,',
'        watched_yn,',
'        title,',
'        poster_url,',
'        release_date,',
'        runtime,',
'        vote_average',
'    )',
'values',
'    (',
'        :P3_ID,',
'        :USER_ID,',
'        ''N'',',
'        :P3_TITLE,',
'        ''https://image.tmdb.org/t/p/w500''||:P3_POSTER_PATH,',
'        :P3_RELEASE_DATE,',
'        :P3_RUNTIME,',
'        :P3_VOTE_AVERAGE',
'    );'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(65935247622331215610)
,p_internal_uid=>65939101318101333195
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(65935247900387215613)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Remove movie '
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'delete from watchlist',
' where movie_id = :P3_ID',
'   and user_id = :USER_ID;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(65935247771671215611)
,p_internal_uid=>65935247900387215613
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(65935248060819215614)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update movie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'update watchlist',
'   set watched_yn = ''Y'',',
'       watched = SYSDATE',
' where movie_id = :P3_ID',
'   and user_id = :USER_ID;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(65935247850477215612)
,p_internal_uid=>65935248060819215614
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(65939100920420333195)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(65938883571401333166)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Movie Details'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>65939100920420333195
);
end;
/
prompt --application/pages/page_09999
begin
wwv_flow_imp_page.create_page(
 p_id=>9999
,p_name=>'Login Page'
,p_alias=>'LOGIN'
,p_step_title=>'MENJFLIX - Log In'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2101157952850466385
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'12'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(65787171171979730983)
,p_plug_name=>'MENJFLIX'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2674157997338192145
,p_plug_display_sequence=>10
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(65787172862937730986)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(65787171171979730983)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign In'
,p_button_position=>'NEXT'
,p_button_alignment=>'LEFT'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65787171631820730985)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(65787171171979730983)
,p_prompt=>'Username'
,p_placeholder=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="username"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2040785906935475274
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65787172078412730986)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(65787171171979730983)
,p_prompt=>'Password'
,p_placeholder=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="current-password"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2040785906935475274
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65787172436315730986)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(65787171171979730983)
,p_prompt=>'Remember username'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_label_alignment=>'RIGHT'
,p_display_when=>'apex_authentication.persistent_cookies_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', '',
  'unchecked_value', '',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(65787175073765730988)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Set Username Cookie'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_AUTHENTICATION'
,p_attribute_04=>'SEND_LOGIN_USERNAME_COOKIE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>65787175073765730988
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(65787175580829730989)
,p_page_process_id=>wwv_flow_imp.id(65787175073765730988)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'EXPRESSION'
,p_value_language=>'PLSQL'
,p_value=>'lower( :P9999_USERNAME )'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(65787176025673730989)
,p_page_process_id=>wwv_flow_imp.id(65787175073765730988)
,p_page_id=>9999
,p_name=>'p_consent'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_REMEMBER'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(65787173177557730987)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Login'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_AUTHENTICATION'
,p_attribute_04=>'LOGIN'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>65787173177557730987
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(65787173684663730987)
,p_page_process_id=>wwv_flow_imp.id(65787173177557730987)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P9999_USERNAME'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(65787174136578730988)
,p_page_process_id=>wwv_flow_imp.id(65787173177557730987)
,p_page_id=>9999
,p_name=>'p_password'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_PASSWORD'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(65787174632479730988)
,p_page_process_id=>wwv_flow_imp.id(65787173177557730987)
,p_page_id=>9999
,p_name=>'p_set_persistent_auth'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'API_DEFAULT'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(65787176901736730989)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>65787176901736730989
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(65787176511230730989)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>65787176511230730989
);
end;
/
prompt --application/deployment/definition
begin
null;
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false)
);
commit;
end;
/
set verify on feedback on define on
prompt  ...done
