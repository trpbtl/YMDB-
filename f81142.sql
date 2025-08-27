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
,p_release=>'24.2.8'
,p_default_workspace_id=>65780209069246437300
,p_default_application_id=>81142
,p_default_id_offset=>0
,p_default_owner=>'WKSP_YEFLIX'
);
end;
/
 
prompt APPLICATION 81142 - YEFLIX
--
-- Application Export:
--   Application:     81142
--   Name:            YEFLIX
--   Date and Time:   11:44 Wednesday August 27, 2025
--   Exported By:     EYRAMAWOYE@GMAIL.COM
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                      6
--       Items:                   52
--       Processes:               10
--       Regions:                 17
--       Buttons:                  7
--       Dynamic Actions:          2
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
--           Page:                 1
--       PWA:
--       Globalization:
--       Reports:
--       E-Mail:
--     Supporting Objects:  Included
--   Version:         24.2.8
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
,p_name=>nvl(wwv_flow_application_install.get_application_name,'YEFLIX')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'YEFLIX')
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
,p_logo_text=>'YEFLIX'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Release 2.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'YEFLIX'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>15
,p_version_scn=>15649314451534
,p_print_server_type=>'INSTANCE'
,p_file_storage=>'DB'
,p_is_pwa=>'Y'
,p_pwa_is_installable=>'Y'
,p_pwa_manifest_display=>'fullscreen'
,p_pwa_manifest_orientation=>'any'
,p_pwa_apple_status_bar_style=>'default'
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
,p_version_scn=>15649313819292
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(78714803019093751906)
,p_list_item_display_sequence=>1
,p_list_item_link_text=>'Install App'
,p_list_item_link_target=>'#action$a-pwa-install'
,p_list_item_icon=>'fa-cloud-download'
,p_list_text_02=>'a-pwaInstall'
,p_list_item_current_type=>'NEVER'
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
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF4000000017352474200AECE1CE900000207494441545847ED96BF6B145110C73F337BB95C72C108062CB450FF018B20F67612B1523810535809F707A85859090AB66922';
wwv_flow_imp.g_varchar2_table(2) := 'D88970C6D652AC14D458A408442C043B8B144792DDDB7D236F776F8D22E4EDF9AB705FB7CC9B99EFFB7EBF33AC00C63F3CD20068180861E0344A4FA62AAB7EC2B162A3EFACDB9716F308567A7A60195B01FE0E32E161E08DCED1167F1D46662CBA21DB25';
wwv_flow_imp.g_varchar2_table(3) := '8493C013ED401166C78CF32E663760BA8200F83A2BD26149BFB17023DBE53169DEE2BA445CDB177BE652EE5A113BE804033847C4A36836AFE7935E5ACA1557BC714DDB1C17AD7A2D67319B01F48F6B052DA20878A55D8EFA460699188BD9906308ABD174';
wwv_flow_imp.g_varchar2_table(4) := '056CD31CCB2E39E8E1553C98019F7153DAF4B568E6CFAD6C8F05317ADA1ACBCFFD2C6180FB33004E21BC88BAB9081EF96B4B492CE384282A109BB1E46286C1ED0B39832418D75CD319CE482BFF3433DE5AC21111A6109E5BCA9D40F38DEBD506D09316F7';
wwv_flow_imp.g_varchar2_table(5) := '74A6A0DCE0832538313A287D17F3BEDE7BEA33E00578A773CC8A5F3AB06D199F49F962C6D51F96538812B519F0451FC83497B55DC9B041C24397F2B486F92696C0279E4519E4662C0CF4D18DB8607BB5CCF74B007CF28676992F978F9F864BE5520AA17D';
wwv_flow_imp.g_varchar2_table(6) := 'FF9D8924F005D6B5CB420960DD322EBA9DBABDABE5556B0CC75D1A000D03390368BECCFF4F13AE4A8743E52FDA96396E5BFC77C770A26E3F499A781135001A067E17035F016443DD017DA262710000000049454E44AE426082';
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
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000090000000900806000000E746E2B8000000017352474200AECE1CE9000011F849444154785EED9D0BAC65557980BFB5CE3DF731032243B1A4402AA95468A3060C0C63D44AD256C6B642D25806DB6AC1CA23';
wwv_flow_imp.g_varchar2_table(2) := '6D221498110D95192D3323880A58682452666C476340D40ADA34054D4DA5D232DA5241243C74221419C581B9F79EC75A3DFF7E9CD73DE7DE7DF6DEE79C7DEEFC2B3933F7B1D7EB5FDFFDFF7FFDEBB10D9A540219246032E4D5AC2A0114208520930414A0';
wwv_flow_imp.g_varchar2_table(3) := '4CE2D3CC0A90329049020A5026F16966054819C82401052893F834B302A40C6492800294497C9A5901520632494001CA243ECDAC0029039924A00065129F662E2A40470347757DD601871F22437600D80F3CDFF579AE68FD1F374052FFAB81F5D1E774E0';
wwv_flow_imp.g_varchar2_table(4) := 'B540B968822A487BAAC0F7800780FF88FE7F14F0E36ADFA80112CDB2A10D96D38023C6D5F95552EF0BC077229804AC6F45DA6B24DD1B254052D7DB81CDC01B46D2BB43AF12816707F0D55169A5510024E6E8CF802B805F3FF4C6742C3D16B3761DB00B10';
wwv_flow_imp.g_varchar2_table(5) := 'B337B4346C808E05BE04BC7E683DD0829793C0830D5FE96DC0D09CEF6102F41B0D53F5CF8040A4697C12781C381B7878184D1816406F04FE491DE4610C59AA32C5D11688BE912AF73299860190681E9915ACC9BBB15A5E26091C04244C92AB26CA1B2081';
wwv_flow_imp.g_varchar2_table(6) := '46E0118834154F02028F402430E592F206E8EF8177E7D2322D645812B8239A15E7527E9E00C954FDF65C5AA5850C5B02E703F2C79E39E505D01CB00F3832738BB480514840D6D98ECFC394E505D0C5C02DA3E8B9D6919B042E016ECD5A5A1E004919DF8F';
wwv_flow_imp.g_varchar2_table(7) := '1645B3B647F38F4E023266BF9975C9230F80CE6A2C8EDE3BBA7E6B4D394A6023F0B52CE5E5019034E0AD591AA179C72681AF03A20052A7AC00CD022F0136750B34E33825E080C380F9B48DC80AD05B80FBD2569E57BE2C9DC8BA136B9C75E724BF3381FB';
wwv_flow_imp.g_varchar2_table(8) := 'D39695A5FF52E7FB81ED692BCF23DFE1184E31A58E2D8C71A7040EF93A86A4FD6BA97B3F8E87BCFC11A64B12763FD5D8A6FA3571856DC52D05346CC502F03FDEE517124ED705C97555B4872855095901BA3B5AA44B55791E998EC772BD9DE504235D8911';
wwv_flow_imp.g_varchar2_table(9) := '09BB158E67FB107622F48CF76C72F31C4CB123544A5A6F2C1FB0D32D787B00D46A87B4277C4040FB4FEADCE0AAC1C6E73127D96E734EDA36640148FC9EFF8B36BEA7AD3F733E31E07F656678AF9D89CAEA0F4CA73E22D0027FEA0EF280AF0F8C9074FE6A';
wwv_flow_imp.g_varchar2_table(10) := '5B66A399A2D4B317DD34B5DA55033EE1AADCE9EBC8D7634ECF36E241C7A46D4316804E8AE23F69EBCE259F74E02C33C5763BCB51035DB866A8E1D9ED2B6C758BD407688DD4790C864FDB32AF30213E9DBAAF53EF84BF6DFDEC49EFD8EEAA3C841B18DC01';
wwv_flow_imp.g_varchar2_table(11) := '9A39C8A32734D6C79E1C2443FC6C16800A11FF910EFC1A961D7696D3CD543454D15F7B60D67CDF330BF2D4E3DE71AE3BC8739181492244D13EBF6F4A5C6ACB1C2626A989870FBEEBD43D9DDF09A8FFE26B5CEFAAFC3C4965A37926753C280B409B1AD1E7';
wwv_flow_imp.g_varchar2_table(12) := '3DA3E9DFF2B588F1BADCCC70819D263664CBE5681FD29FE1F9805BE01E5F23A93B2D0B7F97D9327F1099AF6EE73CD4484B311292E5C0D78DAECA577C3D717D2390F179C0E7D2D49305A0C2AC7F4927DE684A7CDCCEF1CB0399B170C7F91DBEC276B74825';
wwv_flow_imp.g_varchar2_table(13) := '8104A5AE938DE183B6CC893DBC1F01A77DD6D7325FA122DCE7EBFCA5ABB2AF28C62BEC73EA75B12C008D7D0ADF3EDE4760D85D9AE37594068E6A7EC7D7D9EC16783C814F22E6EB6DC672B92DB3B6474DA1368A665B1DF3404F1DC3175D85EB5238ED09D8';
wwv_flow_imp.g_varchar2_table(14) := 'CEF2C865E2D7A729200B4072FE684B9A4A8795E75DA6CCD57616098F3793F841BE3322D4F254C2A79EC773B55BE0AB09CC98CCFA2E34539C6BCBC42ED6D2FEF49E09BE88E73DF50A4F144BFB48F353C782B200245B012E1A160C69CA9599D13DA5B51C3D';
wwv_flow_imp.g_varchar2_table(15) := 'A01993A9F44D7E915B5C65C598FE89187696A6392ED63EBD1CA0A0F19DE14B719E255C70A5AB0EF7A0561AC1C1CE28283C70EE2C00156EFBAA7466A79DE51DA6CC54E8C976CDC00C4114AFC7FAC5F7BCE31237CFD3CBB8B652DC5B4D2988FF94A5F0F6D9';
wwv_flow_imp.g_varchar2_table(16) := '7987E83BBD20F9D5013C5BEA151E2C92EBDC6AF3DF01E2D30E9CB20024955E38708D43CEF01A2CBB4B6B83AB3D021B138C659B096B832AFC32FCF7250317D7E7B9DFF70FEDC9D2C5565BE6CD762AE0B01DA0F688413757F2E8FF526773BD1A840B0A9814';
wwv_flow_imp.g_varchar2_table(17) := 'A07850C47CDD549A6343D3996E57437D5506CEC04D6E914FBA4A5F137332969B4BD3C8FA5B908CC7F8CEC59250F1891B1D6A28016D1ECF2E5765B7AFB358407A0005281E9769E00233CDA57686B53DCD58FF117C14C71FBB833C1B38DD9D494CE2F9668A';
wwv_flow_imp.g_varchar2_table(18) := '0BEC14B647B8B0FF0D2B86A7BD63A7AFF2A02F4CE4B9BB7B0A502C11D10DA79B52B0B4F1AA60A893A7790397D5E783A06237424762B8CE9679AD29F559A4ED3295A18A0A3C9E6FFA1A1F75357E5A4CF3250D5580DA311133B6CDCEB0D194B1911989C673';
wwv_flow_imp.g_varchar2_table(19) := '89A268BA3211697B5C85ABDD6287A9915F9D692C9B6D9975CDF5FDD883EAF6D43B4DE64B783EE5AADC5D8C85D37E7F4D0A50BB64C4DC6C32653E686783ED76ADD477CE1DB9D2861F50E7C2FA7C10548C93DC4FF35E33C53BED5438FB6A2FB1596467AC29';
wwv_flow_imp.g_varchar2_table(20) := '7CC4F0231C97D72B3C595CEDA31AA8D79FD589C6F219BB865F6D5BEC4C62CC7E81E75AB7C81E5F6D22741C26D03EA7059BC7BA8C62BB86EB01C9977C8D1B5C6DC5F85292B60DF119D540DDC25D23013F3BC3D9761AD3C329EE391886607FCE675D956BDD';
wwv_flow_imp.g_varchar2_table(21) := '4230E8B1F9DA62CB1C616C5856141EE8EF5F851E94CCB8DE555F0CB44F2127EF2D212840DD40C89AD5AB8DE5CBA5B5CCCA98F73800D53DC197A9B70CF55EEFB8CACDF3300E99D5BDD39478B72D33176BB32063BCDE15D7DC1979969F3E8CE72FEA8B45D8';
wwv_flow_imp.g_varchar2_table(22) := 'B6BA92F252807A49E865187695E6787D9F3D83BDB590E14063BAFD21B7C89DBECACB03877C8AD704FBAE4DB080116A9E562471A926F2C1CAFEB5AEC2D7BD1B68B3DA4A233DA4DF2B40BD042BCEF43BEC14D79AB97069A33B75A8A5D63762C6648BC747DD';
wwv_flow_imp.g_varchar2_table(23) := '22273570B9C64EF3326329E3A318503B44B1BB1C171E6A31D9A826EB5E05DBB6D18F3F05A89F645E89E58ED21C2798526B837D606DBA8C5AB016116F60F43C856353FD206719CB39768AB5984803094461EE96E689F7218645C8C2E91E57E3365F9B04F3';
wwv_flow_imp.g_varchar2_table(24) := '254D5680FA0124FB84AEB2339C2731A1E5F47F174F6282AE740BFC0E9E638D65CED8C01F921DD0F289E1E9FE5F7EF31CE19EE77FCB70646848A64A35D0A08215687ECF4CF1377696239B8BAB2B972251A0BDBECA4F7D8D75C6B2C61866308129ECD4402D';
wwv_flow_imp.g_varchar2_table(25) := 'ED1333F86DEFD8E1AAFCA4E873AF961854032D87C4AB8C6587914DF762C6FAA5A5F3B4453CF7F945641943C202B32604483450CB99EEF481E4A89084016E2F76E4B95B080AD0720089E9B9C6CE729E9D666AD998502744E22AEDF5150EE238AC71F263D6';
wwv_flow_imp.g_varchar2_table(26) := '100024673F5A00451A280A0FEDF39E2DBEC26349634F2B2BC3513CA100AD24E5379B121FB3731C130C7D92B05E08D34F7C9D47A9723816398D311D40D402A8E94C7B82C8F55EEA5CE6AA45DDB6A13ED04AA0F4FBBDC4736436760ACB99B1A5B9652FCF43';
wwv_flow_imp.g_varchar2_table(27) := 'BE12681E3163A2CDA68C693AD20250EC9CBFD4D0425B7D856F4E8EF31C775835D04A60C9205F68A7B9C2C8D9B1FE9E5077393225FFA19733EC2E98CA0B40E508A0EEE9FC63BECE25AE1ADC77336149014A32607266ECAED21AE442866E8496BAD0E14FC4';
wwv_flow_imp.g_varchar2_table(28) := 'D8FDD8D778B2719AF4B068265636E248475A285A26A9E2F98CAFB1AB784776928846014A2225D11837D859CEB1654A49DCA0A8D017BDE30784ABF332132BFB500B4979B1167A5A9C6757E1A944FE5592D68EF4190528A9B8DF644ADC68E7F8A5662CB98D';
wwv_flow_imp.g_varchar2_table(29) := 'A43EDB85E4EE8EC77C8D1770CC055AA8A5810420014BCE94DDEC6A9368BE44740A5052805E81E186D21C6FEA3EC1BA049ED60F8223C9D4F891AF0733B138A0588A4CD97E7C70DEFDBEC95838ED252A05282940A23D2EB2D3BCCFCC040E71D2B4E03DDFA5';
wwv_flow_imp.g_varchar2_table(30) := '1A2CA8CE4A445AA6F381FF6382CBA2AE77B54959385580920E7AAFE744AF9C116DBA976B61FAA74E95E4BCE787D4F8392E780D5130138B623F7751E736579BB4D84F7BD755030D02956CBAFF4869968D41483079DAEFEB3C626AC171A169D1429EE0A4C5';
wwv_flow_imp.g_varchar2_table(31) := '5FBB2A8F167FD7E1721D5580926320830F7F62A7D962A683E0A0A43EFE7347B13255FF6F5F09B6B4CA2E47D96CFFEF383EECAAC17579139C14A041064F60F9152C7B4A6B3861201D24F7FBD4D867EACC7971A6E14A5F65AFF7C53CF19E5C280A50725985';
wwv_flow_imp.g_varchar2_table(32) := '4F8A23BCA334C31F765C10DCBF947803EB2FA8F388AF0557C83CE11D97FB89F67DE20E2B40830224EEF3A9A6C43FDA35C1D43C4CFD0C59EBE7153C4FF91A07707CDAD7B87772A7EEEA440F0A4DF7F302CEAED21AD62F59606D77AD3B43D6F2DD33BEC683';
wwv_flow_imp.g_varchar2_table(33) := 'D4D8E6AA3C93B511C5C8AF1A28CD38C8C630B94B486E78ED7DD773EF52653676ABAF70BBAF4DBAF3AC262C0D38ED79E4D4E9174A6B3976D913AC9DA64D2EE6DCECE6B9B3C7250C59DB33A6FCAA81D20A5ED6C4FED6CEB1DE24BF9C538EFD5CE116827363';
wwv_flow_imp.g_varchar2_table(34) := 'AB24294069075200FA949D0BA2D3ADB8741F673AFAB102D492F62081D8EE312AE415778382D41BA07046D67EE773FB1CADD6F8DD5637CF677DB508EFBA18B4CBBD9E570D94568A31401B827B0FE31B13E3197DAF6D66E13B36B6B94576F98A029456F0D1';
wwv_flow_imp.g_varchar2_table(35) := '1E92C25DB239687F9A0045477E4264C2F75F74DF391F5FC9596DEC46FCB05B50803A4EE70E2AF97013D2AA0128F081FADF02DC1164947DD2DB0280D484A90F1438D1B39CD13CFADC757F6F33421DDFBE2A770819B6B979762B4003AE24766AA9D5A5816C';
wwv_flow_imp.g_varchar2_table(36) := '09EBDB7D9EB6AF832F5BDF87002D04EF1A2BC00BE306B71D4B73A8139D568AFD6761FD4B14684280D484A909C370B39D63832905CB19490E6B28401A076A4A40349000F486AE8B1796EEB16FBD3641000A6761AA815403459168D140E1A9F9089DE66BA2';
wwv_flow_imp.g_varchar2_table(37) := '22D6DA88520DA41AA84303B59632926C6C0D6F72551F2814A16AA09E6B61315FBD81528054032DD14062C204971899E57491FA400AD08A4EF4726101054801EAE303258B268500E962AAFA40105CB2204E746CC23AFFB67A4785421F685123D1EA447702';
wwv_flow_imp.g_varchar2_table(38) := '146F285B2998A800A909CB66C20C6CABEB52869AB03613D6B9A575795F48A7F1AA81B269200D2436E5A781C4650389BD3591FA40AA81BA34906C2893B731274B1A07CA07A01DC09664222FEE53CB9DCAE8B7B96315FA403B81F7A719A52C264C2ADC9EA6';
wwv_flow_imp.g_varchar2_table(39) := 'D222E569013415ED076A7FF3A0B474E9A47E15027455E3C212510803A72C005D0CDC32708D05CBD0A981BAB7B4B603146FF3809A5F75FB812E016E4D33345900DA24EF554B536991F284001DF23ED079C0E7D28C4B1680CE02EE4D536991F2A40268F505';
wwv_flow_imp.g_varchar2_table(40) := '123736EE1EFD5A9A71C902D019C11581139E8EC270A39D65BD910B37DB8FF474DD37D566DDEA8D2B7E3F525FE01F7C75125EA89B64843600DF4EF260F73359003A09F87E9A4A8B9447A6EEEB08DF4638487A01CF8B89B6E00F52EAD89E3D1978244DED83';
wwv_flow_imp.g_varchar2_table(41) := '49ADB306B926F067C175839A26590272C1EC918D697CAA8B66B3002442BB1FF8AD49969EB69D6F34C6F12D69E59015A06B1A81920FA5AD5CF31542025B1BAD90714C95B20224E4DE97AA66CD5414099C19599254EDC90A90FA41A9C45E984C99FC1FE945';
wwv_flow_imp.g_varchar2_table(42) := '5680A40C09409D5B189168430691C0E71BB32F0908A74E7900B42AE241A92538D91953C77FE26EE70190942541A8F5932DCB43AEF50FC89BAFB2F63A2F8056C5BA5856614E58FED4EB5FEDFDCC0B2079ADFA13C0711326C443B5B9FB8057121EF3CF94F2';
wwv_flow_imp.g_varchar2_table(43) := '02481A71367077A6D668E65149E0EDC057F2A82C4F80A43D9F682C6FBC2F8F8669194393C027814BF32A3D6F80E4257EDF6ABC05FBB4BC1AA8E5E42A01597AFA5D20B77734E40D90F4566CEB430D6DF4F25CBBAE856595C0B3C0EB00F93FB7340C80A471';
wwv_flow_imp.g_varchar2_table(44) := 'A700774530E5D6582D28B5049E8A7CD4EFA62EA14FC6610124D51D1545A97F3BEF466B790349E05F813F029E1F2857C28787099034412E3EBDB9F1923FD980AF69F412F85874F44A2ED71F4A1A364071A30520F1FEE58DDB9A862F8179E07C40D6BA869A';
wwv_flow_imp.g_varchar2_table(45) := '46059074E258E03DC09F03C70FB557876EE13F6E04736F8B3E122C1C7A1A25407167C4AC4920EBA2684A398E360C5DB023AC40CCD33DD1DB93E464C5D0CC55AF3E8D7BF08E88A696326B93CFA90DB52B1BBC656944D35209C8D2831C64903049FCF92FE0';
wwv_flow_imp.g_varchar2_table(46) := 'C0B884356E80FAF5FBE868162733B9F8B30E387C5C821A71BD02C4FE68E624B3A7F8F3DC88DBB16275450568C586EB03C5908002548C7198D8562840133B74C568B802548C7198D8562840133B74C568B802548C7198D8562840133B74C568B802548C71';
wwv_flow_imp.g_varchar2_table(47) := '98D8562840133B74C568B802548C7198D8562840133B74C568B802548C7198D8562840133B74C568B802548C7198D856FC3F315260DCD914E42F0000000049454E44AE426082';
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
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000C0000000C0080600000052DC6C07000000017352474200AECE1CE900001C3649444154785EED5D0BAC6D4579FE66ADBDF779DC8B427DD4161BA9D536694CAD519BF848C598D496448D2DB4B6B615512F95';
wwv_flow_imp.g_varchar2_table(2) := '5BB0F581CA25451AF10158E4E1AB51A311C5A280586DABB646B4DA081A3486A04405B1C542042B72EEB9FBB1667AFE79AC99596BEDBDD73E67EDEBBD67FE1DB99E73F65AB3D6FCFFFFCDFCEF110014F8C31448940282019028E779DA9A020C001684A429';
wwv_flow_imp.g_varchar2_table(3) := 'C000489AFD3C790600CB40D214600024CD7E9E3C03806520690A300092663F4F9E01C032903405180049B39F27CF006019489A020C80A4D9CF936700B00C244D010640D2ECE7C93300580692A600032069F6F3E419002C03495380019034FB79F20C0096';
wwv_flow_imp.g_varchar2_table(4) := '81A429C000489AFD3C790600CB40D214600024CD7E9E3C03806520690A300092663F4F9E01C032903405180049B39F27CF006019489A020C80A4D9CF936700B00C244D010640D2ECE7C93300580692A600032069F6F3E49300C04BB3011E8F2CE2767C28';
wwv_flow_imp.g_varchar2_table(5) := '82801080D27F54BE653651C7FC49FF4D5F44BF9A0BCBCF41001F5223DCA2E4D2256A15C0C9598EC7891C4205873B28F3DEE61DE9FDDCCB9B57A2DF647914848080B2BF85D79979E5003EA20ADC7C18E6B37482CD79401200F803D1C37BF2352D307147F8';
wwv_flow_imp.g_varchar2_table(6) := 'AAB038C1163017DBEFCB1F9BC95500789B1CE20A355AFA6923C70B817766031C2FB218006D385922C60A7DE51E0B6FDCA7144E9323FC70E9B3F9798B7F22E703FC32325C99ADE13119094D28F4D30EC7A9AF8A7E1D6DBEE7B36A82BF958770FF9285E6D9';
wwv_flow_imp.g_varchar2_table(7) := '22C31BB3959992136C5C53AF6BBAC65046E1B372820BD404B4B3EDF64F9B75E3A8A7C1606B066FC856F017827E9ACE7A2FE456EFA96D184E4F2295C9AA10A41E09817B20F1FCE2207EB064B5E15D591F4F143DAFE9CCE54E5D1D8AA7E5BF27B56813C0C5';
wwv_flow_imp.g_varchar2_table(8) := '72844F2AAF30CD7DC4517C41120020FE9C247AB8385BC3318E597AE65555A0B2BA5B9DDF1807562D2AD52807120FA8D7C843F8A81A2F4D1C1E01E0DFB2158C04E9F0B18E1F286FC1F3AB7F8D85DD593B046067D6DCA5245E2E87B86B69B338B2064E0600';
wwv_flow_imp.g_varchar2_table(9) := '0F83C0C7F23DF8B5527066E9FFDAD2B51B42691D4FE19C35270570932CF04772798AC3CB450F2FCE7AF63D0C00AACA5AB8BFC510992F78B4A75DAF26B8404EE65FBC4BAE480600C4AF73C500FBB215EB2D098F070CC95011A1AAE1E85C42B47BE8EF9CE6';
wwv_flow_imp.g_varchar2_table(10) := '6C3073A27C00B72FC10E5807F0C16C8013441EF8728C14FA7D8BD674E15E29F8A6BA5F04D2AB5F9F445FA00F893F9423DC5EF172ED12596F9C465200781404BED0DB8BDCB9354B9234093D09B893A106C3B7728B9399CBD50817C961E732F3942DAFCFF9';
wwv_flow_imp.g_varchar2_table(11) := '591FC75A77AEB6414A154E59E3DE3FD688747D0F68B6080C8C6E5413EC4F68F5AF9A789D33ED481CF083D91A9E4946E4CC97B3925FDA09750098BF381133BFD1BFB742E294E260A7DE20F2CBBF54E4787136F0D10CE7A99D71CEAD736B3A24DBFDA18486';
wwv_flow_imp.g_varchar2_table(12) := 'B710142882718E1CE13F966CC41F693291D40E40C43F51E4B832DB03154591C2B560860AE4EEB154F302E4D5A0FB047056B1892FAAEEF4E86321F0A6AC8F278BCC86E9BC1885964C10B928ED8372C58F76330F7FF3BDC2F720F18A628CBB97A0BE1D6942';
wwv_flow_imp.g_varchar2_table(13) := '1FBE4F72007804043E98AFE137451E2ACF0BF3C8ADA6D593960B015C5E0C71891AE955B58BCF6385C0FBB31518EFBF357E83C875680A6B933CD8C0EA813FFB46916DAF70B51CE3525560793EAC2E28D1FD18C9018084E840B68217913A312D0EB6433A7F';
wwv_flow_imp.g_varchar2_table(14) := '594D70863C84FB3A5A4D5F2E729C96F5A7AEFEF5D76D767FFA740FA7B01940DD0F89F38B11BED4D1FBEE907C87F5F6E40040D47DB6E8E1A27C0DC79500984686AA7728162C6368061F7BF90350788E3C88EF76A44F7F261FE058E45AFF2F03D95531A94D';
wwv_flow_imp.g_varchar2_table(15) := '214677E8EB37F94E3E1BE8FB4AE25439C2A1C32A7A47C6C39204C0B100AEEDEDC563497C6B2008B4EAD2CD6957CC72098DC95625220DF90F6A88B7CBD18EB97C22042EEAAD96618972C0CA43DDAB796BC4FCE4053F066F799D52B8544DF06145194DE97D';
wwv_flow_imp.g_varchar2_table(16) := '920400B1F9D5D900AF10B3736AEAE25035399B058644ED76483CABD8C04E4C617ADA45591FBF2B5CF0ABBEDBCC16D9D02CAE18F7F6C69FA2C0C9C5083F4D4FF64B8B6A499AF0914D518A0CDF94EF45DEB8047841775E925ADEE08CFB9CD8FD893C88AFEC';
wwv_flow_imp.g_varchar2_table(17) := '60653D010297E603FC9256B46C5C22246BB0A8874EAD52D443CF8FDE229CEE6F739994C05572844B76F08E473697E7BF5DB23B0091E6DDD91A4ECAFA20E7A2092AE9CC362F2835EAB8E0988DA44502E822B07E3DB94A8DF15A7968DBA6E5F3448E57667D';
wwv_flow_imp.g_varchar2_table(18) := 'ACD99C2497A1EDE4D8BDAA16785B1BE0D7F9D24F154584C365EF90D5FDBFBFED379C2F6047FA154903E044D1C3FBB335F4A7D9BA11F71C40EC1F837DD36ADBB52FEE100A274F36B6E55B5F03F05AD1C34994FB5326E53524FFD8A7BA3A98AAD263725623';
wwv_flow_imp.g_varchar2_table(19) := '53BDDCCCFE534D709E9CE0670C80231DA7CB79BF5F84C0FBF335FC562D2610E6F938B521ACA50976021B08303938F132FC7F00CE2E36F1AFDB088A91DAA30B5F32DA9102010E65D96D44D5A870D58ED7E40B3C3F4260AC14DE21C7B84A15098B7F220531';
wwv_flow_imp.g_varchar2_table(20) := 'D3E043A6E56BB3159C9E0D8242994AD198BBB9548DBC1E5D8FA4D55D33EF94435C288758D4C7F24C91E1C26C103B5A4B5DA7B2A2DB686EEC940D5520BAC0E40BB98DEB7F21F1CA6284EF262DFE89038044F95922C7253A2650172A23FBA1F7A444C3D40C';
wwv_flow_imp.g_varchar2_table(21) := '9CE86A016D049F213771EF82199657647D3C4918DF7F4D852911DD9CDAE6C53CAC7036794B7407FDF77935C10139EE2C5ABD9C3D7AF9A3266D031079F700F844BE07BF81CC251958ADD9AE959A422DC914D6CC58C13D28149E536CE0B60582628F84C035';
wwv_flow_imp.g_varchar2_table(22) := '54F6A8352D0FCC38C3D3F9F89B5D9DA55DA27F30D71A43598112AA29F0F5AD0541B97C713CFC4F68C9D9C3FF6287F389FBB381568548D0C3D533DA20232004925EA5609C6FA0C1B468506CBFE8E12F75E18B11FE52A5B7C2ECABD32A0681BFD2DC67AFF7';
wwv_flow_imp.g_varchar2_table(23) := 'F6BA89FE5284FA851D04E90E278F96F52C060080870B812F647BB1D77954426A070665BC13B4231D6D1E77288967161BADEC002AD97C4F36C063C8300F1A9C5493309AD522E7C60DAFAEAA490AE7CB313E9DB0EFBF89BDCB02D85133EEC5D90A4E1171BE';
wwv_flow_imp.g_varchar2_table(24) := '7D6C1F56F59B3A006A1A79B040BF60B2812FB7D0B89FB695F27C5E46B93F667C33A6D997CC7056110A7783122A559B2544AFB9F74E2571961CE3AEC48DDFF9D6DC5123BADDBCE893B31C5767EBD04907D5D87869D94E59F5AD7486067074A5802E963FBB';
wwv_flow_imp.g_varchar2_table(25) := '981D142383775FD6C3A9A2571ABF5EC3273D3E2CE40FBB6205482BA365E1243C98AE93135CA226E8BE66AD1B3E1CEE51DAEDE387FBAD7E0ECF7BA810784FB68627239F532DB6C8CB7948FC40289C32D9C08F66ACBCC741E0CD591F4F10048550BFF7CF8C';
wwv_flow_imp.g_varchar2_table(26) := 'FF5A15F2F0DDEADF51C0EB2D7284CF2D60902F32DBA3F15A0680E51A89DCDF64039C95ADEA9AE1A66A996662B523E1FD14149387F0E9196D537E5D08BCB72C7C09D519F39261C667BDFD61D3B615FF8DD49E538B212840C71F4BD31925A5C9D1E86922C7';
wwv_flow_imp.g_varchar2_table(27) := '15F91A1EAA74E67D3CFFD0BB334DE6431DC888AC8DC01A4FEAFBE40817C8E1D4AAAB33B31EFE34EB1B0096CF882D8B6ACA43FC92B1A9EC4162FE7EA51CE332367E2392B55BBE128102B51EB92A5BC71332532ED9AC842C408C8A51F04D59E034B9897B1A';
wwv_flow_imp.g_varchar2_table(28) := 'D4A03E808FE7033C0C19F228EA1CAB3F1E963ED2EB8CE3596F46A58E2F280EE1870BBC7E0A9732002A5C3E2D1BE8368A2E31342C98315E744BB28ABF3FDA50B5440645B7F6F742017F2C377063C32AFC0C21F04631D016880680FE04D675B0215599E663';
wwv_flow_imp.g_varchar2_table(29) := '17B52DA8DC4A6E90055EB3C4AE75472B58180015CE3D08C0D7FAC760D505C5AAAAF51C4E9704A5F685B6E19453A768A82BD518E7C8B8F89014AE37663D3C5DE420FF8F6BE4EE7014F5E60A02D41E245EDD323D1E5C4F207331FD7B861CE2EB1CF9AD718F';
wwv_flow_imp.g_varchar2_table(30) := '01D020D06FC957F1678212E4EAAEC46DAD74D67D49D9A2F742E1E99307B0110C743C80B767033C7CABF333752CA2CB2310CC786835726DF68CD0790ADCAA0ABC5A4EF063F6FD3300DA08F013448E8FE5EB5899B5FA4FA90F8E3576938519C8A3FEFAAFE5';
wwv_flow_imp.g_varchar2_table(31) := '215C1FA8232721C399791FEBA4FE4068E12721AEB5C0AD2C57EED7AA6BD49BCD421F8AF12135C1BBE5A45524BA0D7D76D335BC033470F321948B9FAFE1A9361DA15C38A3CAF359AEA0A0476728FD165037A0C08B8A835A20A92A79BFC86D651A74208E40';
wwv_flow_imp.g_varchar2_table(32) := '40A387FF453641101FAE9AC255EFD54FA0F077C5185F6D1185DE4D82DD762E0C80064A5116CE993626D09FAA37CF598EB5B0876BB4DF4E7E24803F9F6CE03648506D32E9FF8F1219FA5B3F3B00981E703E17D4AFF2A1ABD3FC1CEF00DE10A66F6F5105F6';
wwv_flow_imp.g_varchar2_table(33) := 'CBB1EEFBCF9F3A05180053A4E277448E77EB988013C2A0EC2AF4F0545BC385E385E77505C1B5CDADA1CE2F0EE1C36A8C2741E040D6C78A10E82BA1CB33DD0EE01A21BA54E61804FEB750E777562FC51DE82CB337AB31AEE7C8EF54EC3300A6908656E28F';
wwv_flow_imp.g_varchar2_table(34) := 'F7F6E0892AF77A7CB9DEC6C641F5C8B9785DAE06D4CC9A7DB51CE15C39C41922C353448E5502806E516E0EA9A3FF6235C800B07ECE999980DF2B8C0540BAFF8652F8BD6D54A3A5B45330006670FB94AC8FB765742E637C665E6B0169D680744EC3EDAAC0';
wwv_flow_imp.g_varchar2_table(35) := '99C526F68B0CC78A0CAB5B0D70E90027AD0609E30572DE2053AAE360D5E4EB77203050D039A40AF8801AE35D1CF99DC92E06C00CF290E8DF98EFD5A9C9615BC29A08461E211A300C6035B9928C905E2937F1D0AD829907110084D00631B9418D1DE04160';
wwv_flow_imp.g_varchar2_table(36) := '2A039CB61F3639F72F1FD9010ABA3DFBE97284EFB1EB9301D07AC56EB8F08058C1E9B9A913284F4DF2193E916046EA7F79524BD0BAA1028CEFA909BEA5C6384E08AC1300AC0D40C1302A5B746A501C13306B566CF8568ABB15F02514BAF0E5673B997C02';
wwv_flow_imp.g_varchar2_table(37) := 'F7F20E3087C98F13193E9AEFC183178C08872B76FD1186ECD490E4136A13C721C31E08AD0691114CBB80DB0148F8C3E4E8D0F46D02023D6BAC802BD418FF9478CB9336F86500CCA112E5E85F96AFE244D1F75B40A492389527C85776EA4AD3F962952E13';
wwv_flow_imp.g_varchar2_table(38) := '37CA217E22141E440010D09E20B201080424F8A131EC9420F3FF21EBE2936A28E2BBBF18E10E567FE662800130874444A07D6280B3F3556DA41A99F2A906F1EDA13FA8496F37F79A8ECD664BF9B192F80A867808BC21EC0050DA01B6D4D77985C2346B97';
wwv_flow_imp.g_varchar2_table(39) := '74A75DA534F6D6417D5F4081B3656A475DCC95F5C60B18002DE8F67891E17DBD3D78B8ACAEBC2D6E8E2E89576D12D84D25F15F18E926BDEBAAEA09F2AA90177E1FF832EA901DD36232570A2F93637C8323BFAD98C300684126F2CA5CD95BC7535553B9E4';
wwv_flow_imp.g_varchar2_table(40) := '3412CE23AD115FF2D77F538DF06321718C329EA0FE566A744F4183C2E706C19C6813348976C7178440B84D1538951B5EB5E0EA6C2BADF500A95CF85CD1C3E5F99A5631A295B70D01A661C10AF49D6A826F8B09F65A000C0257A80E8AD9FA80AA31ECEADF';
wwv_flow_imp.g_varchar2_table(41) := 'DD2B905675C15674F953ECFB6FC39570FF6C7D7DB217524CE0F3F95EFCCAD43AB1792B7E48BAF85A52836EC0487B82A82BB406805EFD5D3CC06588D613E44277E85D903AEFE7479CF7DF5A4E17E15AEB4177EB855434FF6AB132DDB7125589CD22ADFBCE';
wwv_flow_imp.g_varchar2_table(42) := '8AAF92F8AA1A614328ECD511E12025C202C125C6B95D20DE8508204A17DC5F288B24CFFADAAECC310016A0DCAF8A0CD767EB3A326C12D4A60707EAFEA0BA015CB67950C0DD98E06B6A845F103956C81D1AA941C6CDE922C2CE200E57FF4DA5F05639C667';
wwv_flow_imp.g_varchar2_table(43) := 'D8F85D80A39500E24277267831F9EA2FCE56F1FB59BF522DD64C8CE9AB4BC3374AE1DFD5219D154A85312100743C40046A90B3430204FC50499C2147B83741BEEC64CABC032C403D22D68BB33ECEC956A36AB12A119BA201518B94B05D4AD002F1BB7284';
wwv_flow_imp.g_varchar2_table(44) := '3B85D441318A39F4847183FAA8F0947249057C0863BC4B2E7A0AC10293DFA597320016642CB551FF407F1D8FA4DE416D6A86DD2A5D6A4B0E1E96F4811BFF011B147BB0C830D8F2E868776883211CDA01342C05D59E2787BCFA2FC8CB208AB28D3B13BD85';
wwv_flow_imp.g_varchar2_table(45) := '84EF1FF3753CBB76ACD22204695E77865B827C33461843193528C80BA2665919759A08D2A41D033F252778D3368E615AE48D77EBB5BC036C83B3CF10393E9CEF31E90CB38CE17891F7515BFDF766D27F478DF13F3A2846EE50AB065150CCDA01A5016C1F';
wwv_flow_imp.g_varchar2_table(46) := '4DE710FF951CE156AEFADA0627D908DE16D1E8A61B7A7B7002F5F0298F56B2052BA573A8765C8C7D56E8BBA9E41409E01E59E01631D66911617D8031845D918CAFFFFAFA56C6E77972CCFD3EB7C949DE01B649B8976C6587BE215F6DEAA13B67C4067768';
wwv_flow_imp.g_varchar2_table(47) := '7047A114BE88A18E05B8A0585922493101DBB08B2030D1FD46C7F8882AD8F9B94D3E3200B649B8478B4C9F274047AD869F92A035CA36933AECE1631C420ADF9663DC2D0A1D147375C2BA2E805CA14A99FA0021701F24CE2EC6F80EA73D6F938BAC026D9B';
wwv_flow_imp.g_varchar2_table(48) := '70249C6FC956F1BCCCD709D43B37DB368581A7A7CC660BBA44545F62AC243EA7867888AE15F6EE50AA0DA688AF068312B851147855C169CFDB6662D8847B2783A4782FC9F40BB33ECECB56B1BAED6A31A25CC3CD4AE1268C3012E614CB9EB2F1002A96B7';
wwv_flow_imp.g_varchar2_table(49) := 'C62F758F384B8EB8DFE70E858F55A01D10F0045D2EB98EE36DEFA07AB31477CAD78C87041C287F54C0BDAAC037C4185491A67B05591018F507F8BE92D827C7DCEE7007FCE338C00E8947B75F92AFE2645D2E69066B5C5122B7672532161FFB528EB30985';
wwv_flow_imp.g_varchar2_table(50) := '9BD548DB00038A073857A805C09B8B313ECBA6EF8E39C83BC00E49F8DB22C327334A64AE7F9A89DB8EE454307FAB1AE37EA1B44B54A7475B1050DA33757BBE9B8DDF1D728F8DE01D139054926BF2753C5197B1B7350666BB42DD4BFDB79AE00E51608FF2';
wwv_flow_imp.g_varchar2_table(51) := '9D220808FF2C2778872AA61EB5B4E349253440BBE52821826C67AA27673DBC2D5B33258BF61313B64AE6E9BFFB6ECFC08692B8598CF5611D1415A678C026242E92137CA535D8B633A374EE610074C0EB478A0C57656B3A325C87C04E48ACF07535B26DD4';
wwv_flow_imp.g_varchar2_table(52) := '29314EE14E28BC8A1B5E75C0B519365B67A3273210A52CFC7DB68217662B65BB932EA64EED13EF51056EC304C7D83E411F50137C8CF37EBA20EF74A74567A32734D073451F74B41225B1F9B5857E32B15EE3ECA9B475D0BF564E7C77AD1E5C335CA57003';
wwv_flow_imp.g_varchar2_table(53) := '86BA5E98A2C0A7A8319FF2DEA15CED647FEEF0358EFEA12825E2EADE1E3CBA4C8E6B9A5393AF68B6E14CBBC0ED6A827B21F12FAAC07BB9E343A7C2C200E8909C6FC857F012D33FAE1211A890B989EA61AC204A9D0036A5C44D82CE139870BBC30EF955E5';
wwv_flow_imp.g_varchar2_table(54) := '52C743A737DCA32070436FAF39E9BD0282E632C99805D3AE192B858FAAA1EEF9139E2E991E85BB9F31EF001DD3F423F91A9E2E7A3A594D1F5431F3E3C83F9F0D57C8212E54A3B923763C9D5D3FDC7CCAEF7A12743BC133B2015E97AD4004155F75223708';
wwv_flow_imp.g_varchar2_table(55) := 'FE8C13286967B85C0360C800E8965DB34E78EBF849890C777A36C039D98A5683AAC971CDD533160C1A0044A4F02E6334D3BF97A9212E920C80AEC58877808E294AADD40F1000A696FDCE2379982C67AEA5E297CB2403A06356D55C15CB183FB931F76503';
wwv_flow_imp.g_varchar2_table(56) := '9C2B56CA33C58C9BDFD507CFD2F9839DC09E116CBAAE1800BC430EF15639E4FCCF8E256ADE72D4F1E376FF702F13039C9B1900846B79D4188BDA9BD8981819CAE5CFBAE39B078931A24D25FC27E408AF93436CB015D0A91031003A2527403B001DACA755';
wwv_flow_imp.g_varchar2_table(57) := 'A0E87853ABDD6B54F8BEA2E19ED06C0198EBAF530C808E59C52AD032081A014037B25250510FA0605F083BA70407D13BE0F81E720C8065F0CA3918E639AB97F5EC5D392E19C14E05728756C766ADA91A302B7F95F4FEB0BBF23460AB2E5DBB9503F47A79';
wwv_flow_imp.g_varchar2_table(58) := '8855A08EA58655A08E091A02C0B6CA2AB75AAD04E903F2CC43EBA1329F2B647E325021A05CA7C6DA0638C83640A71C6300744A4EE074EB06D5076B975DA043C3B622F825072A19A3E561D866C7201BE0F56C0477CC2D2E89EC9CA03E0E60551DEDE27186';
wwv_flow_imp.g_varchar2_table(59) := '2FB50425AF8F2F9E2C5521ABEA98ABBD926423017A076015A873767124B86B92EECBFA3820566D6D985569A27DD6F782F3515F6301BBF4092FFEDE4CBB4E4D18005D338B1B63754FD108005AF0AB91DD2AD5C37E2A2E0A509AC0360EA070AD3400601BA0';
wwv_flow_imp.g_varchar2_table(60) := '5B9EB10DD02D3D4D1C40E70209DB01DD5B02657598F300D50ED50B8DE3386A6CBC406C0477CC2E5681BA26A88B0394E5F1B3B21FC2874F5D8ACC0E72AD35827907E89663BC03744BCF32121CF687A83D22F0FC8406AF291C0EAFF6F60201E01CF60275CC';
wwv_flow_imp.g_varchar2_table(61) := '2DF602754ED09705C970CE84D57E9DC69D205C7F4CDCD77D221C08816BA57183F20ED02DCB7807E8969E0893E1E2A19B485D45850F84556B07D806E8985176380640C7747500C86D04B769E12F6B7FDB50DF1ACAD75A3728EF00DD32AC0D0BBA7DE22E1F';
wwv_flow_imp.g_varchar2_table(62) := '2D2C88F1EA8C776F3627499B96E7A427994019FD6832465D208C8DE0E5080E03A063BA3A003823D86BF6D552C759398875B6B00AD431A358055A0E41BD0A64C6B77DE1AC791B7486735DE2CAABDCFB34DB0ABC032C875FBC03744CD7660084490FC6D0AD';
wwv_flow_imp.g_varchar2_table(63) := 'A6429BBFDA33C5CAD278DF29886D808E19C53BC072081AAB40611A847F9E5F75EAEB4FF31D1408E348F03238C63B40C754F5156186B461BFFFD99547CEDC6D6EA7C2F5001D338A7780E510B4AA02393BC0B687B645EF0E1AA1B057D7A2F877930ECD45F1';
wwv_flow_imp.g_varchar2_table(64) := '5D738D77808E295A0D844D5369167D2C0360518AB5BB9E01D08E4EADAFAA06C28C69BB489FD0EAA30C84B822AC350B16BA9001B010B9E65F1C35C60A4A229B1BE5C6E48F8CE3E8E00C0200AB40F3A9BFF8150C80C56936F38E5A3AB4D9022AD970A565D0';
wwv_flow_imp.g_varchar2_table(65) := 'FAE9E4063D87BB42B4A657DB0B19006D29D5F2BA6A2438BCAD1DB12B57D9146956815A3260C1CBDAF164C14153BE3CEE0CE7327F9C4B34A6CC22C4E738C072A46A111E2CE70D76D9A84D2A503B23784A7186E51003603982C200E898AE517B743B769C10';
wwv_flow_imp.g_varchar2_table(66) := '57CD0C8D7B40985BEAD9A39C0BD431A34ADE349FDAB09CA725306A930D306D9599B9FA54BE642FD072848777808EE94A9DE1E88418D71EBDABC6AB9C0AD131A37807580E419BBD40B61DBA0B0BCF7C74F39AC43BC072F8C53B40C7748D5B2386FAFDB464';
wwv_flow_imp.g_varchar2_table(67) := 'B7FA0BD4D32704B745E9984F6E380640C784DD27FA3890B9D688CD8337117D1E237807E89851AC022D87A02100CA032EB406E4443C4C7808E30333D2E604709D9CE075DC1AB173A6CD5B783A7FE06E1FB00C84992A77F7BF200D9A28E04F0E683A4AD567';
wwv_flow_imp.g_varchar2_table(68) := '4E78F6F00EB01CC96100744CD76A45983B0FC627C3D57702FF0AE12E10B386BD401D338A55A0E510B4DA16252E8AAF3E33383BA0FCCA9C22E30FCD3640E09AE0E5F08B77808EE9EA5321CC6A6EFE35A591D17900EE4B7B16707971682B980641FAEC80EB';
wwv_flow_imp.g_varchar2_table(69) := '24A74377CC2A4FF2650C9CEA98F5384055E5097FF7F680CF040A8E8E2C8D01EE0EBD2C79E21DA063CA36778570821E46C22A3940DEF28DDFC8728893E13A6614DB00CB21A83E21860EC8A032C8D2C533BD35E2F4B708C0C22AD07298C54724754F57DD1E';
wwv_flow_imp.g_varchar2_table(70) := 'DD9D10131C76679E344DFD99BD1C914D7C8DB501B8396EB73C6315A85B7AA24D63AC120C51DD6F786C7C69FB6A8F10B95219001D338A55A0E5109454207D52BCF6E6042BBEF5E8387F50F5E9E1D991D67514388D04AEA123920A3E20A36BAEF10ED03145';
wwv_flow_imp.g_varchar2_table(71) := '9F24729C28C802F00765FB96E8DB7B188D758B2AF03935C1787B43F05D5328C00060D1489A020C80A4D9CF936700B00C244D010640D2ECE7C93300580692A600032069F6F3E419002C03495380019034FB79F20C009681A429C000489AFD3C790600CB40';
wwv_flow_imp.g_varchar2_table(72) := 'D214600024CD7E9E3C03806520690A300092663F4F9E01C032903405180049B39F27CF006019489A020C80A4D9CF936700B00C244D010640D2ECE7C93300580692A600032069F6F3E419002C03495380019034FB79F20C009681A429C000489AFD3C7906';
wwv_flow_imp.g_varchar2_table(73) := '00CB40D214600024CD7E9E3C03806520690A300092663F4F9E01C032903405180049B39F27CF006019489A020C80A4D9CF936700B00C244D010640D2ECE7C93300580692A6C0FF036F90AC97B98FBFD80000000049454E44AE426082';
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
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000001000000010008060000005C72A866000000017352474200AECE1CE90000200049444154785EED7D09B46C4755F657E7F41DDFCBC494481051441C968A013568507E08326884E0C46006C43009790103248F';
wwv_flow_imp.g_varchar2_table(2) := '218118027F08461488210681A58490041484806B610019038206111206414820E6272179EFDD7BBBFB9CFAEFAEE1549DD3A7EFBDEFDEEE7DFA74EFB3D65BEFDEDBA76B577D55FBAB5DBB76ED52904710100466160135B32D97860B028200840064100802';
wwv_flow_imp.g_varchar2_table(3) := '338C8010C00C77BE345D10100290312008CC3002420033DCF9D27441400840C6802030C3080801CC70E74BD305012100190382C00C23200430C39D2F4D17048400640C0802338C8010C00C77BE345D10100290312008CC3002420033DCF9D27441400840';
wwv_flow_imp.g_varchar2_table(4) := 'C6802030C3080801CC70E74BD305012100190382C00C23200430C39D2F4D17048400640C0802338C8010C00C77BE345D10100290312008CC3002420033DCF9D27441400840C6802030C3080801CC70E74BD305012100190382C00C23200430C39D2F4D17';
wwv_flow_imp.g_varchar2_table(5) := '046699000E03F0B3007E1AC0CFB8FFE9E77BCBB0986A046E06F02500FF19FDFF45003F98EA560F69DC2C10C01191828BA2CFE228DF5A9BEB888188E2F6AD7DBD9D6F4D3301DC0DC009009E00E037002CB7B38BA4D60D217000C00701BC1BC03F01F87E43';
wwv_flow_imp.g_varchar2_table(6) := 'F518ABD8692380FB3A8527A5FF3500E958D193C26705810CC047015CE3FE91B53015CFB4100029FEAB003C194032153D238D98540472007F07E0A500BE35A995DC6ABDDA4E003F04602F8067AC13C0FC561B2DEF09022340A00BE01200AF0670CB08CA6B';
wwv_flow_imp.g_varchar2_table(7) := 'A488B612C0E1005E02E04F002C35829C0815042C022B00FE12C00500EE681B286D2380DDEBCE98D301BC100091803C82C0A42040CAFF1A007FE1486152EAB5613DDA44003F09E00300EED70A64A592B38AC0D7013C0A00FD3FF14F5B08E0579CF21F3AF1';
wwv_flow_imp.g_varchar2_table(8) := '884A050501E036002702F8D74907A30D04F05400978B936FD28792D4AF820039094F03F0B6494666920980EA763E80B3271940A99B20B00902B43D4D5B867A12919A6402B8783D0C73CF2482267512040E1201720E9E7590DF61797D5209E05900DEC482';
wwv_flow_imp.g_varchar2_table(9) := '800811047810A0E5C0653CA2B62E651209E0A1003EB26EFECF6DBD19F2A62030F108F4D6C7F5FF59DF21F8F824D574D208E001EB07773E01E01E930492D44510181102FF0BE03800378EA8BC1D17334904405B7C9F5D8FB3261290471098560448F97F11';
wwv_flow_imp.g_varchar2_table(10) := 'C09D93D0C049210032F7E9C8250550C823084C3B0274CCF87100E86051A3CFA4108038FD1A1D0622BC01049EED0E1335203A889C040220D3FF2600F76A1409112E08F022F03D000F6C3A15D92410C0B9EB4112E7F0622FD204818940E015EBB5A0F1DFD8';
wwv_flow_imp.g_varchar2_table(11) := 'D33401D0AC4FB3BFC4F837360444708308502252B202C81A68E4699A0028A1C2331B69B90815042603013A3E7C465355699200E858EF57256F5F535D2F72270481559792FE1B4DD4A74902B802C01F34D1689129084C1802EF04F0A426EAD414011CB59E';
wwv_flow_imp.g_varchar2_table(12) := 'C78F32AB3625BF09AC45A620300C013A29787413B9059B5240D9F717651004CA08341217D014015C0BE0D13202040141A04080A2031FC38D47130470086CCA2449E3CDDDDB226F9211A00C42F7E43E23D004019C0AE02D93DC13523741A02104E8621B72';
wwv_flow_imp.g_varchar2_table(13) := '8EB33D4D108098FF6CDD2B825A86C03FB8ABEDD8AACD4D0062FEB375AD086A2102ECCB006E02A0BDCE77B4B063A4CA82001702ACCB006E0290D05FAE612472DA8AC05F03A06D7296879B00AE03F0EB2C2D6B58C8C35507CF4BE6B1A401E5501ECC0BADCC';
wwv_flow_imp.g_varchar2_table(14) := '67DA7CA08BA828CA1261BE43DFA5CFE817F3DE60097431DD6579171FD07DB616DF1B0ACF4A3B78607411B3A99AD6F62F4A412B20D136E38569BE6F8FA2BF69D35AFA93D2F667D33EF39AB29F52810AF80134F6E67DDC56D376B606F30AA27C980FE712C9';
wwv_flow_imp.g_varchar2_table(15) := '4D00DF5DCFF67B2457E39A94730F28BCBBB30BF7234D1878AA7FF38A4D8A1029B9D101AB10C31EFAE45DBA87B3F355D00292E379B84AF0B2641E872965AA5BD4CE29F9E67588DA1B9143FC3DDFEA0FE57DEC6524B7CDEB3EF637E8642045CAB23C9C0440';
wwv_flow_imp.g_varchar2_table(16) := '9779DECED2AA0911F2B26401A7A905A8424BBC86C49A12FDCDF746A1511BDD2511CAF83C32BC205FC557F5F8334C2DD0F1CDA48393944BDA5C55FAE8F7ADF0413C00635AA09F53AD7152BE86FF9CCC3B35C639CA8EE0BA699893008E5D8FFEFBE438519B';
wwv_flow_imp.g_varchar2_table(17) := 'B4B2EF0B854FA5BB91998A0D6877D92E8E95BE4E2BA2328850DCAA014A29DC811C2FC856F1218699F26E50F8CB640E0F4852DBA21DDE776349A2ACFAD6EA016EC8FBF863DD6B3E711EFFC0A2D4F89FE210CB49003319FFFFD664198F483A7EA1EFD6C2D1';
wwv_flow_imp.g_varchar2_table(18) := '82D86B72A9B7ED9AD86857B184A898CD6EC56CBFA6F1C6BC8BD7E935AC8D79D43C080A9727F3C8922428BF6B4EB586A12A76755FF7BB5BF15B1F08F90E22427979B6860FCCA2FA036CE70238096026AFFA7AACEAE04DC91252E7E6B380470A515A1E18AF';
wwv_flow_imp.g_varchar2_table(19) := '98FBD879C5369C62DDFCA9801B748653B215DCB6D329791302393799C3E314B5C63B30BD3BCF5351D9D6D9CE002374BEAD333C23EF8DBD3D63E6CBED16CF9624643BFDB3DD46CD6404E0BDA0F08E64093F61942658FD83BFB8AE3004105B0095E583D179';
wwv_flow_imp.g_varchar2_table(20) := 'F779B10E00BA1A78527600D7BB05C7763B69A3EF5114D7FBD2052C232919EDFE3B031640B4C3E1B701ACEFBFF214AB234F8C1A7FAFFB7863DE1FBB45330E9C465026DBC1204E0298991D80780090D3EC05C9029EA3E8EC539DC72CB208BCF2170544F6B0';
wwv_flow_imp.g_varchar2_table(21) := '577CB337E85E08FA6214F2ADBA8797E59460663CCF135482B3D37928EDD4987C11F4B3315668EBAE3C9CFCDABE56E96B1704F68FB723C779790F1F63706A8E07A91D97FA4D0094316BEC0F2701ECD05D34762CC626E078D5C145C912EE5623A1BC3AAE6A';
wwv_flow_imp.g_varchar2_table(22) := 'B623071F2C50CCA8767BD0F24980F50EA5F1E0FEBEB16C07D2FEFEA5C91C7E4E75C21C1EF159C44505CDF98F0769C15242DCF6F8E7CFEA3E5E99F771CB98973363EBF09D174CAE9CC59D17B3790942009B63B4E3372870E675C9127ED52F034C8935BB02';
wwv_flow_imp.g_varchar2_table(23) := '212AC87E6EA3802A0EC4B2E2784D3234A0149E9D1DC03F8D6137E027A0F0C6741E8746C13F45152383A40EAC2A01F8B6FB70A040611A14CEF476DDC3257936BBEA6F4164D14D16219B8C8F1D2BD8A41740B3E799C9029EA9E6315F5D056CA3F2C56C5929';
wwv_flow_imp.g_varchar2_table(24) := '2B57C047F23E4EC95746AE3C4F4B523C5DCDB9240E76D8448649499E734D16717D210CD06F1B46C3CEB5C193C05D3AC7E9797716F7FEAB238145375984CC3A0150FB8F55092E4D97713819EF758BA142996B2C836242D87815454BF0DB748E27652BB871';
wwv_flow_imp.g_varchar2_table(25) := '84DB6774690379FF1FA63A4510AF59EE57DC112198D7EFEDFB1D7DBBAFEFB7FC7C98B31D17AE10AD4C88F067F23ECED0FD31BA32B7C1B8CD7C85453759840801C018CED7A4CB3846D99800029EFED1AC5D10C210DD8F3705E2B168952A36031468EEBF40';
wwv_flow_imp.g_varchar2_table(26) := 'AFE12DF9E802838F0185FECEE1689558695EF9DDEA643865B9387FA7E8810EAAF143C1837066D6C54747485ECDE8EE48A4B2E8268B1021008BC013550717A7CBF6A04B69568F9438F60314DAE6075450946A684DEC0BF847DDC38BF355EC1FC138A4CDCB';
wwv_flow_imp.g_varchar2_table(27) := 'DF5729F6247320F58F09C0175F355EC2F980D862B16F95837D6C0C81765FF8B6CEF1BB7957D43F0C8E11F4E0C64508018C1DE22080F6D1FFA5B31B47BAEDB20125360BEB688AAD21891076337C39F065E438335FC1BF8F601B8DCCFF5726F3F8959203B3';
wwv_flow_imp.g_varchar2_table(28) := 'C25FB5BF3AE5DE08DF8239E814A1C6FFCDFBB852DBC06979C409389563E06C8A09485C3ED4EADE59E1F1774E36B7E22E1BCC5E6B867B13BB0A382B5BC155BABF636720ED60BC335D00C533D89D899AFDBB82B8E887EAC2C42E77025DB939A7B28CB855E7';
wwv_flow_imp.g_varchar2_table(29) := '382DEFCEF2D65F75BCB34CCE2C42640910FAF6FE48706DBAABB2C93BA855E599BEB2CAAED5FDF21FE988F0CBF235ECDF2105FCB1EAE0B484F6FE23F33F1EAA9119131F0D8E0796F56150D090DF3A8888C2041301EFD67D5C9CF741F90DE4294CBFB14321';
wwv_flow_imp.g_varchar2_table(30) := '04307688CB020E83C2C5E9128E47C71C13A6483AEB09F71931A203F60371012EF0A7ECF7331178B698E05BF81FE4F8DD6C3F6EDE0101D081DF2B9279DC879C7FEEECBF51DD888F7CB58D11E0A3988BE93E24FEB0518115A273BFEE438E3FCB7BF8F00896';
wwv_flow_imp.g_varchar2_table(31) := '2CCCDD394E712CBAC922442C80304EC8A97652328F97AB05CC15DAE30960583C9D9B31FDFE59A48161B1E064382DA4DD85E76607F0DE1D0405FD92527843B200ED531A85893B7469110A5C3EC068EA55218492D7221A795FC8339C9BF7764456E3D4C486';
wwv_flow_imp.g_varchar2_table(32) := 'CA66D14D16214200E521748C4A7151B2881F57EE486D31D3DB99DCEC9A17077EACDA044B3B0E018E4C81CAE49A2B850F675D3C6D076703CE4BE6F01895BA19DF9F4E0C418A712C80A9AED3F0D2918082D302B9F9AD4B2296BED67847DEC31B7426DEFFF2';
wwv_flow_imp.g_varchar2_table(33) := '3061D14D16214200E59E5D067061B28413686D5DB2A7AB3B007E562F12E63933BFCE09109381EDD65C6BFC4C7617F66D630AA32B6ADE962EE0EE9EA47C196E6A37CB8E4AB9E16CBFFDA008FC290500DA4343FEBBDF478EB3F22EBE303B39FFB6DA1B2CBA';
wwv_flow_imp.g_varchar2_table(34) := 'C922440860B0CF9FA2E6F0F27411BB6C107FE4271FF673AC81F55B80C50AC1154933F2997A1557E4BDAD0EBAE2BD13558AE7AA391C42114CA5E3C79E9486543992645B126F07967708E8B7CFE90CCFCBBB12F937D8432CBAC922440860B0778F82C2359D';
wwv_flow_imp.g_varchar2_table(35) := '5DB88F3F5AEB13861409418658031BA872E49B2BDEFA84CAF1E4FEFE8332AF9700EC5573383E49E1127F15E505B79E5D9854037BFCDC1F5B00F66F2EEBB1F37B5039E68C44DEC575E2FCABEB5516DD64112204504FEFE7A78BF8434AAE6948C0CDEA03D6';
wwv_flow_imp.g_varchar2_table(36) := 'BD5B5C17937EF47BF55DE74B88FF7CABD238293B802F1D8492FD24145E9ECCE1C769FD5F99D1C311645F8F7808D58436954E2D875D0A8AFEBB35CF7162DE352700E5194080453759840801D40FEF9F4A125CAB76157700F824E0E6EDEA4AC0070999BF6F';
wwv_flow_imp.g_varchar2_table(37) := 'B64C08CB85FD4AE3A26C0D6FD65B3B1B40253F56A5D89BCE61DE6F2FDA09DCD533DEF8AF5B06C43B1AA11E9543CC6669F046DDC35BD77700E4A945804537598408010C1FE25726CBF865E30C8C4DE4783BB01C1E3C60205426DDE273D7B3F4F1B5791F7F';
wwv_flow_imp.g_varchar2_table(38) := '9AAFE0AE2D681A39285F9874F05B6ACE65EB0DDB0BDE5D517B9A315A2414310D2579E52D4ECAFAF3475917DFD9419CC2169AD3E657587493458810C0F0717802250D4D976B6FFDB1D1E091CAD7F9FE864CC8854405DCA473736FC017B610674F390CDF92';
wwv_flow_imp.g_varchar2_table(39) := 'CE832E36A1F5BDD9918CB353C469CBAA094DE3669A6A572A1C0536BD2FEFE3B5BA8F036D56D1F1D69D4537598408010C1F294729852BD265DC5F9B4BB56AF206D699D1F5BB0025FDF329B615402702CECA577165DEDB74BE3D41A578493257A41CB33A1E';
wwv_flow_imp.g_varchar2_table(40) := 'CDDE3E22B050F0014744548D010F82F96C05392EC87BF8A0A60C00F20C41804537598408010C1FE4E4717F51BA803F520B2ED956A41246EF9C8295346560215012505C27E66770A5F11EDDC7DE6C15FB3650392AF592641E3F6FCEFDBBA1E144C5D52802';
wwv_flow_imp.g_varchar2_table(41) := '034D9DBCF3320A141AE031FB8EAFD70DD0F8B3AC8B6F88FA6FC47E2CBAC922440860E359EE51AA83D7A68BB89BB10236981307F4BE8E08EA6F13A4049B4FCCF6E3DB1B94FF2394C2BCB3602EF50CAB8F688844D9CA6D8BAA5EFFE126BFB76E68CEA7833F';
wwv_flow_imp.g_varchar2_table(42) := '17E57DF1FE6F3C2C587493458810C0C63DFDC350B8285DC4B1E8845CA01BAD06AAAB02BF7888F287FAD544BC4C7F41B682776D7036E039AA83A7A67348A3545FD59A979C8CC671190FA12A79F9CFC2DFC9023927EBE26332FB6FB6F661D14D162142001B';
wwv_flow_imp.g_varchar2_table(43) := 'F735CDFB7B93053C3D59303708F964C085132D3E345410C3F065800DCE29F6EDEC5CAD814F23C3EF65F56E373AEFFFF6741E47EB04A9BB8EDC7AFBE3FBCD9DC217A2AD0550B3FB3FC49251F8BACE7072DE1D4BEAF2CD34AA659FB3E8268B102180CD871E';
wwv_flow_imp.g_varchar2_table(44) := '65DCB9245DC2E1EE745D7982ACCCB2A563C21573C0DBEEF6F0BD5360FB5FA2123CB47F27BE5533FB1EA79489FE3B0C9600ACC410B8336009C4D6868909B2EF6E9CB148E1E27C0D7F7F1041499B2337B56FB0E8268B102180CD0729DD02716567177E1EA9';
wwv_flow_imp.g_varchar2_table(45) := '59837BE5DBD8DDE757D66135EEDD6D45661EA3A8F6AF39145EAFD770515EBE4294AC0E32FF4F4C522C4015B9FF821FC0D73FCA5B504A5C1F1385B70A5C5C43B48D49390A1F9FADE2CECDE19037E45E80D91B03272773382F5D42420A5BD8D5E192D07A32';
wwv_flow_imp.g_varchar2_table(46) := 'A8F96B11A5EB1D826E3F5F697C59E73831DB5F4A187A1480B393393C48A5481590B8F309547275860809BECB06467D6FC5C13F36EBCF05B904FE6E7164B34CCE2C42C402D85A97EF02707DE7101C52F8CC827297D43CCA1F50BF6BE0BAB538A0EF1C074A';
wwv_flow_imp.g_varchar2_table(47) := 'E30EADF19C7C151F8B9C81C722C18B930E8E508939FC433E097BFDA75D0A94064965FDEF7FAD0EA438213895D0478E53F22E6E9263BF5B1B0C62016C15A7E97AEF95E9024E25433C4EB067F4374AC21FE71028353F52C74223DD2C6C9C82405F0397E92E';
wwv_flow_imp.g_varchar2_table(48) := '2EC8D7CC09C10E80A7A804647D90BAD3EF3603A075EF796F4050F078560F16C6A02B302C0B880C3EAD33BC34EF89F9BFF5E1CA3239B308110B60EBBD4E413857A6BBB0646E1072CA16CFBAD51D0137B90FFAEB5CD716CEC050877F451FCFCF56F05D681C';
wwv_flow_imp.g_varchar2_table(49) := 'B6EE6D382799C34FABC4283E1180B502ACF2FBF8442FC61A06D535BF9FAE623B25FC4CF18794F0F31A9DC9B9FFAD0F0516DD64112204B0F55EA7ABC3FE2A5DC2AFA9D46D0746D980BC63C02B61E95460454671FF561CA167159714FF4FF3557C54F7F140';
wwv_flow_imp.g_varchar2_table(50) := '289C9FCC61592974B4C29C2202A025809DFB2D110496A9DE44E4A5962D80B023404B94AFEB1CE7E91EBE24E6FFD607822C010E06ABE9799766DC939379BC32590CB9014B3BEDE5609B38EECFCCB9C5C41BAFCEA3199B321143E1D5D92A2ED55D9CAC123C';
wwv_flow_imp.g_varchar2_table(51) := '4E75B0A014E60B0BC093401885F652303BFB5B0360D0F9580E0AA2773432A5F0CF590FE7E93E0E3E2FD1F4F4EB365AC23239B308110BE0E0BAFFC12AC5EB9245FC18E5E32BE501D84A394E318BFFC2D55B5E692919E7C7F33EF6E42B385725B87B926289';
wwv_flow_imp.g_varchar2_table(52) := '667FC0FCEB28650392A27FEE56C042F1CB03274A6852E9ECFD5AE3B5BA87F7CBDEFF563A2F7E874537598408011C5CDF1F423374B288DF4C3A262C77A3A71AF9BF9101603FB35DBEA2729C9F1DC07148B05B25C6E7405797932B90FC00443D9E04C2D1A0';
wwv_flow_imp.g_varchar2_table(53) := '78396067F8F2134BB09F7ECBDDF873C7C141206FCB1260B6C7C0496A1E2F49174CD2D078D7AFBA3950678A5B53BD7A3020ACD6BD29FF896C0DFF0F390E55CAF80016B44247D95D00527EEB0B08968037FC4B998BA26EF2BE02737CD871C3DBD0C71B64EF';
wwv_flow_imp.g_varchar2_table(54) := '7F3B8399657266112216C0C1F73F250D7D7F6717EE11250DAD2F65702D6EDF8BFE5E760E14E470A7CEF17EACE25E48B00BCA4401921390960134EBC7041076036273BF3CE3C71443FE3ECA28F8E89C48469E6D20C0A29B2C428400B6D1FD005E9D2EE229';
wwv_flow_imp.g_varchar2_table(55) := '8A5C73516460E9068E385D5830C90BB5343F94F7EDE39A9087FF7D7AC598FDBB3D01901FC0EC040402A8B702627BA0DE31F9E1BC8FB3777033D1F6509B9A6FB1E8268B102180ED0DCA07A904EF4E7619A75C599183F2950FEC94436F8315E0BB393EB767';
wwv_flow_imp.g_varchar2_table(56) := '95F6A6BC872FAB3E8E408225E703200BC012803661C189CB03E04BF1A6BEFD3FEC30F8DFE97F0AF83D3D5BC367E5D8EFF63A5F7C00DBC56D7ABE478A744DBA8C072B4A1AEADB35CC2B182F05EA7E8E49202C11F6E91CD7610D87120100A08BCB89707C40';
wwv_flow_imp.g_varchar2_table(57) := '507004FAC0E070DC28F802C252802E3BA528C61B748E33F31EEE1002D8EE8064999C59848805B0DD31009C9874F07A4A1A9AFBB0DCC19377B5E7016A5D0383C4D085C6E77417943E7CB756E6DA721B11A8902ABABC63704BD0D287577A770198AB16FD95';
wwv_flow_imp.g_varchar2_table(58) := '0C96BFCA7BF83B89FCDB7EC78B05B013ECA6E7BB472A85F7A4BB7074C51918CDB91B34B6E65291D28C6C4BF99AEEE32BAA6F7211506210BAB5788E9C787432B0080D7639059CF1502C07CC3DA6DE3168CBBB456B9C9777F16F32FBEF6420B24CCE2C42C4';
wwv_flow_imp.g_varchar2_table(59) := '02D8FE38A0FDF99724F338395928926ED8D26AA7F8217F1D22DFB9046ED319FE033DE30C5C32CAAF8BAD40B204BC0FA0CE1958642FF29DAC818F20C7ABF2AE1CFCD97EB7C74E9E9D95B2C9B78500C60AEFCE0BA70E7AACEAE035265BD0B0F2CA6450B20E';
wwv_flow_imp.g_varchar2_table(60) := '4A1FF95FCAEFF7748ECFA2871568ECA69060ED62012826C03901ADF2DB99DE98F9D131E17810AD526661DDC31572E3CF4E3B9F453759848805B0B3B1703F95E0CF93453CC4ECCC0F798606FED4BD1F13017DAEF15F7917DF51B9DB0E747E00931CC42F05';
wwv_flow_imp.g_varchar2_table(61) := '426E80B22510CA2272B813394ECDBBB8799308C69D213213DF66D14D162142003B1FB02F4D16F1743567C373078E04D779FD071709216CD8F906FC3983F52DBBEFEB0CD7EBAE090BF67E009B1BA07A3AD0B625BEC6246E1D5D43F60AD9FBDF79878B1370';
wwv_flow_imp.g_varchar2_table(62) := '14184E4F19266968B284C3E9D28EE8586DBD27C029FFB00F0B4F41F482D6B84EAF992F5254A03914E4CF05506050251E80D6FEF189636347688DD374578EFD8E66D8B14CCE2C42C402D8F988A0EDB977A6CBF805131310ECEBAA8E5BEBA0749997155EBA';
wwv_flow_imp.g_varchar2_table(63) := '3A3CF612D89FA9C46FE63D7C057D1CE6AC00130F60B2097B020849428A5D00DF340D7C1E19FE249743BF3BEF6DDB63232A67C362588408018CA62B9FAAE6F0AAB9252494CB2B3A703378F0C7D142DCBBC5197E9BEACBBAF2DC0D202ED29866F07FC40AEE';
wwv_flow_imp.g_varchar2_table(64) := '8904948D80B60369C9614F07DAEC40F42D9B33D0F18AFBBFA3359E9F77F171D9FA1B4D670B018C0AC7E92987A2F4FE7DEE10EC26652E39D97C584E1C24E4143D3211C2BCEFB5379CDA33456AE0DFB086BB6837C01D0C2A9601E40B707716581288F2056A';
wwv_flow_imp.g_varchar2_table(65) := 'E04664787EDEC3EDD30377D32D61999C5984880530BAB14499829E96CC5B6DAD5DE39767F6F23CED2C870DB20ADFA6FBB81E7436C046055230106D05FA74E1D598006F4F5CAEFB787B2E597F46D7D3B204182196D353D4CFA91457A6CB5836FAEFF9DBC5';
wwv_flow_imp.g_varchar2_table(66) := 'E7576EEBA9CFD7515D17944D84B55CE3D3E81AD39FCE0698658039DAEB4C7F131D584E177E2B34CECF7BF89C64FD19E54063999C5984880530BA71414943DF902CE261E40CAC145B3608066CFF217EA5F2867D068D1BF31EBEAB725066229327D0C70390';
wwv_flow_imp.g_varchar2_table(67) := 'E2BB9FC912A0750891C127758673F31EF68DAE995292F800640CD4214033F1A9C93CCEA1A4A16E1930982528FA668915E25F82F7BF4A24B7E80CFF859EF10390DF8142848D05E08E051B5F80B3085694C625791F57AF93803C234580657266112216C048';
wwv_flow_imp.g_varchar2_table(68) := '07061EE29286FE68296BFFD0E46091BFBEEC24F4DB7FC52070BE81FD3AC70DA06CFE307E809800CC6E80B9169C0841E15664786ED6C32DA36DA2942616808C8161089069FEDA74D19C11A050DDFAD49C1BE117F90E6A1C89B449F8453ACB9F682C9BBB02';
wwv_flow_imp.g_varchar2_table(69) := 'ECE1207F3290B611FDD980F7EA3E2E949C7FE318AC2C93338B10B100463F3E4E49E6B0375DC4725EBDAAC3EEF1DBBDFEB25550E87A114AECEBE57614A2D0E05B741F37A9BECD164C7E00EF087451C41470B4A4354ECCD764F61F7DF752892CBAC9224408';
wwv_flow_imp.g_varchar2_table(70) := '60F423E4DE4AE19A284FC060563EEBA41B1E3338B832087102DA84F57E18ABD8658282DC5D01141518650AFE0C32BC5866FFD177AE2D914537598408018C678C5C902EE20FD55CB106B09DE9E7FE3A99D52DC04AFAF0CA72E08BBA8BDB95C62E7769880D';
wwv_flow_imp.g_varchar2_table(71) := '09B65B82B902CECEBAB85E22FFC6D3B94200E3C2757ACAA50B3DAF4D7741D5DC113868EEFBE05FE7CA37A6C1D0458201899C811F47D75C1B6E72059A68406B057C0539F6E67DC9F937BEE1C43239B308110B603CA38414F18A6409C7D2D5DE35176F0EDD';
wwv_flow_imp.g_varchar2_table(72) := '012C8510D678010BD780C6A774173A81B93AACE3F6FD296DF89BF31EAED4B9DCF63B9EAE9525C0F8709DAE921FAF2869E892D90D088F53EA60065466FBAAD287DF43843FF90F346ECE337C2DC9708821006BFE7F0FB9F1FCDF20E6FF380713CBE4CC2244';
wwv_flow_imp.g_varchar2_table(73) := '2C80F18D9323A1F0AE7419D598003F8514A7FE6A0F0E0CCEFE7E07C12F10BA3AC767D0C53212932380EE0AF884CEF13ADD97C8BFF175AB5800E3C5767A4A270FFD8B92053C633D3AB066153068156CD6F44A6AB11E72DCA8FBD80F6D8E08AF41E332DD97';
wwv_flow_imp.g_varchar2_table(74) := 'DB7E37C371E79FB34CCE2C42C402D8F968D8A88447A90E2E4C967077F752BC9D179CC95114601407646E1C29960F3E555874DC580337A38FFF46866505ECCB29EB8FC4FD8FB7474DE92CBAC922440860BCC3E58791E0A274110F35177AD55E1332389E22';
wwv_flow_imp.g_varchar2_table(75) := '37818D1718F64D8D1FE81C5F43DF8417BD177DBC5932FE8EB7436DE92CBAC922440860BCE3853AF145E9029E8979B35D172EEF8A73067805F79785B8AEAF9E24AAF0009595698D9BD0C39D2AC773B23EE8F8AF3C6347804537598408018C7DB0E0C12AC5';
wwv_flow_imp.g_varchar2_table(76) := '5B92251C5184F9460ABFC1FC1E070B8700E2B8BE36C9C0CDBA8FABD0C58572EA6FFC9D29160017C6D32387B6E8AE4A97708CB2310146FD07EE0A88A7F73A93DF07098519DE870A911570427E0037C024249467FC08B04CCE2C42C40218FF682109272573';
wwv_flow_imp.g_varchar2_table(77) := '383FA1E33BC1B11767092E6A61D921EA96AAF3AFB23C7059818ECBF6E1EB42003C9D293E002E9CA747CE23558ABF49974DF2CEE00A1CEE162C9D15F4D642410ED175BF941310801000EB5861999C59848805C033708E57292E33045059C3D7DC08BC718D';
wwv_flow_imp.g_varchar2_table(78) := '82FFC01F2D4A95C2717DB100787AD24861D14D162142003CC326580076F8D89B7BDD4521CE39180CFF6887C0BC6B160ED1E357FFF64F9415F857FBFBF00D5902F074A6100017CED323C7130025EFA0558055EAA0C8E1A070755910F903CC7D5F6E716072';
wwv_flow_imp.g_varchar2_table(79) := '0E5A02A108834767FBC409C8375C58266716216201F08C9A920550D89065B5A79AD0EE80B50E5C0890FFB948356E6D81E23221BA1710C019F901BC4B2EFEE4E94CB100B8709E1E39250BC045F6C50C6F360783E68799BEB8E547DBCD81C2FF17BE4D3F09';
wwv_flow_imp.g_varchar2_table(80) := '01B08E1596C999458858003C03C73A01772175A6BB5FD56B97C63B5E0EF87B016D20A0258692CFC0AD03FC3282B2010B01F0F4A393C2A29B2C42840078064E6C0114578046B7055B9DB6B460FF3C984FD87CAA94BB79CCAE0DC82AA07C037BF2155CA5E5';
wwv_flow_imp.g_varchar2_table(81) := 'F65F9EDE945D00269CA7478CB100926593B8239CFD2B2F026C74A06DB3A382903AD43900FDA5C1E1DE00BB2ED893AFE26A2100AE01C33239B308110B8067CC9409C045F6BBDD009FFF2F72EF791628BC7D217238A68F9037F08C7C552C009EAEF41B3163';
wwv_flow_imp.g_varchar2_table(82) := '972604307688F9043C5275F037C99289DA33C6BE77F8F9AD40B33D486B7DDBED41B5ADD9EF0F068630A070C70095473E80AB641780AB43597493458858003C63C65B004400FEBA106FF25BA58EB2009B9EF7D7097B2760440C8AEE06F0F5B6A59D213E00';
wwv_flow_imp.g_varchar2_table(83) := '9E8E0CB6D9D8E509018C1D623E01D609B864CF02188D8F5380FB8D65DAEAF37E804008F64F6405944F02FA6F91BF486A157200000BBD49444154608F5EC5D5B93801997A94453759848805C03364CAA1C0CE073070674025EACF2B7C142A5CA5006F4FEC';
wwv_flow_imp.g_varchar2_table(84) := 'D12B42003C5D293E003E9CA747D2402090B102E2DC007EE55FD3E652EE80F2CE81F50FD02EC00AAE161F00D78061999C59848805C033661E99B86D40BFCDE7CC7ABF98B79D1DBC01C552D3380BED92811C87E5F000BBFEA70582F501F4791A2352587493';
wwv_flow_imp.g_varchar2_table(85) := '45881000CF68A65D80CBD22573936FDDE3BDFBE1B3E0EFB791812146C031827BD52E27C402E0E9C70274067142000C2073893004902CA2130591C517859B63412516F00942AB4BCE984182DDB0273F204B00AECE94C3407C484F8BA447501C80B300623D';
wwv_flow_imp.g_varchar2_table(86) := 'F7E1BF7EA3DF2EF707DFB06702FC5160BF9160D38BD1DB6201B08E1496C99945882C0178068EB500969C05609D7F76F5EE97FE56E90BAB60704D507F3B800B123A5DAFE01AD906E4E94CB100B8709E1E39712460D98FEF55BEE2DD2F5C821603F3968B14';
wwv_flow_imp.g_varchar2_table(87) := '0C21C39E34C402601E292C93338B10B10078868E2100130854A8737CD2BFC6B714450646552C960C5192305902F0F461A91B18440A013080CC2582E200FC69C0C2BA2FA506736B811AD3BF9C45D82F1CC28B440AE204E4EA496790318813026000994B44';
wwv_flow_imp.g_varchar2_table(88) := '95008A9C00FE1A8022E5973F17106AE67DFDF6BC807FC25FA9ACD3F3155C23C781B9BA9345375984C8128067CCC404107C488341016155EF677ABF64F0D784863C823115483E009E7EAC59AB8D4DB010C0D8A0E52F984E03BE395D36814041C9E37B7FE3';
wwv_flow_imp.g_varchar2_table(89) := 'BFC6F50BFB05B5AB03E72C140260ED5316DD6411221600CFC029A7040B3263579F0FECB59FC606BF57FDE8FFE8E660FAAB8402F3F4A35800AC384F8FB047A8149727CB2621488D3A97AF0D2FADF3ED326170F68F9D80440092118871B4B04CCE2C42C402';
wwv_flow_imp.g_varchar2_table(90) := 'E019368600DC12205C07E2E7FA721DAA4E3FBF381858FD9B0FEC21A1333221009E9E2CF878ECE28400C60E319F001B07B0888EB911C8A9B831E3079D7AB656E539BF6A01C4BFDB258010005F6F4A566046ACA743940F04325783C50A5ED2ECE0F01B6CF5';
wwv_flow_imp.g_varchar2_table(91) := 'B045804B09A65770958402730D1696C99945882C0178C68CD9068C7601AC9B2FBA28D49D04A85D1454A7FBE2B050D839100B80A71FC509C88AF3F4082BC7010CAEF987A409A80030C004C5752292139075ACB04CCE2C42C402E01938B1051024868C009B';
wwv_flow_imp.g_varchar2_table(92) := 'ADFA87C500F8EF0901F0F4A35800AC384F8FB0320184138036D14FE11808E32BDAE7374A4E57829975433972C0DF1B288140AC638565726611221600CFC0319180E66AB0AA77DFDEEFE715DB7E5A51F2D219007F8760F986204908C2D38F6201B0E23C3D';
wwv_flow_imp.g_varchar2_table(93) := 'C2E250606BB6DBEDBF61A6FD46267FBC8470F707CBBD00BC438565726611221600CFC879944A7169BA8CB9900268605E0FC77E87D5A99E16E8AFE203E0E947B10058719E1E61F1D5606587DFD6E67A8B4471A958294E88FE2A7703B28E1596C999458858';
wwv_flow_imp.g_varchar2_table(94) := '003C03C71C067267010694B950EEF289FF0DED0017062C4B009EFEAB4861D14D162142003C03A86A010C1EEF09413DD59880CD6C040905E6E9C3480A8B6EB2081102E0193CB10510DF07505EF707558F8CFD68D9195D18EA23097D3E00B91C94A723BDF9';
wwv_flow_imp.g_varchar2_table(95) := 'C6204D088001642E117435985902B8D37B76A74F419BFB016DC27F7BEDD726C77F2970C0C40DF8E161BF2F3E00AE9E74EB35067142000C207389A8A604F367004D808FBF247468A68078280C660B264ED893C9E5A05C7DE98CAEB18B1302183BC47C02BC';
wwv_flow_imp.g_varchar2_table(96) := '0FA0E3459ADEB5F7FD158140A5FBFF42A08FFD8A53FC62E2F7F7056A736DE09E6C15574B5250AE0E65D14D1621E203E0193365276035F95730FD8B84A1853BC05F271C5F23E4DE773B01C102E8F13446A4B0E8268B1021009ED11C4281CB4941CB198287';
wwv_flow_imp.g_varchar2_table(97) := 'DD12140D054F0CE6DA70B773A0E55E009E5E2CA4B0E8268B1021009EA1132C00BFDDE70EF70CE4FAB78A6DDF8A9387794BC0790B8B38007B73F89E4C6E07E6E949710232E23C3DA2621F40D9CF5FC7F375D78255A2013C01D07D81140A2C4E40CEC1C232';
wwv_flow_imp.g_varchar2_table(98) := '39B308110B8067DCD8C3404B98A34340D179002B3D6CE9D5E5FF2D5EA98B1072C78A840078FAD14961D14D162142003C03C75C0F9E2E998B418CCA9BEDBFAAF3CF7BF6E3BFC7EF473B01F6CBE6491470BA58003C1D5966ECB1CAE42480FF06F023636DCD';
wwv_flow_imp.g_varchar2_table(99) := '8C175E3E0B3018E7579EF9CDADA12169A0618C903484B60DCDE070C14409349E97D1DD80FD194799A5F9DF04703F0E499C04702D804773346A56651CAF3AB8BCB38834A76E2D5CF985266B8A10F40EC1CA72BFC02C1E1145988025132200890360195D1F';
wwv_flow_imp.g_varchar2_table(100) := '04F0180E499C047031F991381A35AB32EE8D040F4B5233910F1AF81554629740FC511D31386BE0933AC337753EABF072B6FB3500CEE210C84900CF02F0268E46890C41A0E5083C6D7D09F0B71C6DE0248063D797009FE46894C810045A8EC043D797009F';
wwv_flow_imp.g_varchar2_table(101) := 'E2680327011CBEBE04B89DA35122431068390247ACDFC47607471B380980DAF3DDF565C0911C0D131982404B11F81E80A3B8EACE4D00D701F875AEC6891C41A08508B0ED001036DC0470098067B6B053A4CA820017027F4117317309E326802701780757';
wwv_flow_imp.g_varchar2_table(102) := 'E3448E20D042049E0CE00AAE7A7313C0A100FE17C03C5703458E20D02204BA00EE01E02EAE3A731300B5EB3D001ECFD540912308B408817F00F004CEFA364100B20CE0EC6191D5260458CDFF269C80245396016D1A9252572E04D8CDFFA60880E4CAC120';
wwv_flow_imp.g_varchar2_table(103) := 'AE612572DA8200EBF69F07A5892500C99673016D1996524F2E04D8E2FFE3063545003F04E03B0DC4217075A6C811040E068146CCFF269700249B4E3B9D723028C9BB82C09422F05600A736D1B6A62C006AEB8F02F81280C5261A2E32058109416015C04F';
wwv_flow_imp.g_varchar2_table(104) := 'AD130065CC627F9A24006AAC240961EF7211386108B086FE56DBDE3401D0C9C0AF00386CC23A45AA230870207027800700B89543589D8CA60980EA74EE7AEAC9739A0240E40A020D22F00A37FE1BABC2241000CDFE6405489E80C68681086E00019AF569';
wwv_flow_imp.g_varchar2_table(105) := 'F6272BA0B1671208801A4FC71FFFBC311444B020C08FC0B3D7137FD0F1F8469F49218039007410E2B18DA221C205011E04FE19C06F0268FCAAE5492100829D96029F5ECF17F0409E3E102982402308DC04E0214D9BFEBEE59344005427527E2201D91568';
wwv_flow_imp.g_varchar2_table(106) := '646C8AD0312340EB7D527E22818978268D0008145A06BC8FAEA39B0884A41282C0681020739FCC7E32FF27E69944022070C429383143442A32220426C2E9576DCBA41200D55312888E68E449318D23F0D7EE046CE315691301A4002E04F0FC89434D2A24';
wwv_flow_imp.g_varchar2_table(107) := '086C0D01BAA5F1552ED02DDBDA5778DF9A640BC023F107002E75998478D1116982C0F611A0C49E34763FB0FD22C6FFCD361000A140BB031427205B84E31F132261E708DC00E07726C9DB3FAC496D2100AA3FE512244B8058551E41605211B80AC0C90056';
wwv_flow_imp.g_varchar2_table(108) := '26B58271BDDA4400BEDE4F74EB2AB106DA30C266A78E34EBEF755BD8AD69751B0980C0EDB86C42749AEAE8D6A02D159D46046E5E4F6D47E3F0320079DB1AD85602F0382F01782E80B301D095CAF208025C08D055F7AF01F0FAB698FB75C0B49D007C9B48';
wwv_flow_imp.g_varchar2_table(109) := 'F95FE802888814E41104C68500ADED49E949F989045AFD4C0B01F84EA03304146E49D72B5148F1EE56F78E547E5210D8E7EEB2A06BEDDE3B2907794601CEB411408CC90280E31D19FC36807B8D023029636610A0841DA4ECA4F41F5A77F051EAEEA97BA6';
wwv_flow_imp.g_varchar2_table(110) := '9900E2CEA28345F75F8F25F80500C7B8FFE9E77B4E5D8F4A83B68300DD58FDF9CABFAFB6D1A977B08D9F15021886CB7D2232F0C470DF830551DE6F1502DFAA51F6FF69550B4658D9592780114229450902ED434008A07D7D2635160446868010C0C8A094';
wwv_flow_imp.g_varchar2_table(111) := '820481F6212004D0BE3E931A0B02234340086064504A418240FB101002685F9F498D058191212004303228A52041A07D080801B4AFCFA4C682C0C8101002181994529020D03E048400DAD76752634160640808018C0C4A294810681F024200EDEB33A9B1';
wwv_flow_imp.g_varchar2_table(112) := '2030320484004606A5142408B40F012180F6F599D4581018190242002383520A1204DA87801040FBFA4C6A2C088C0C012180914129050902ED434008A07D7D2635160446868010C0C8A094820481F6212004D0BE3E931A0B02234340086064504A418240';
wwv_flow_imp.g_varchar2_table(113) := 'FB101002685F9F498D058191212004303228A52041A07D080801B4AFCFA4C682C0C8101002181994529020D03E048400DAD767526341606408FC7F1F622FC46D283C8E0000000049454E44AE426082';
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
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000200000002000806000000F478D4FA000000017352474200AECE1CE90000200049444154785EECBD09B86E69551EF87E7BFF67B8635551CC60A3182790C6A1E36C1CDA184D4CAB91C7A86DA2D1C7440D1A62';
wwv_flow_imp.g_varchar2_table(2) := '3F51718C8AD044318812A3FD1801318FDA6A9CB0A3498819341A2790108C1A670A65AEBA55F79EE1DF7B77ADF15BDF3EA7B0AA38F35E478B7B86FFDFC3FB7DFF5ED3BBDE55004CC8AF44201148041281442011581402251D8045AD77DE6C229008240289';
wwv_flow_imp.g_varchar2_table(3) := '4022C008A403901B211148041281442011582002E9002C70D1F3961381442011480412817400720F2402894022900824020B44201D80052E7ADE722290082402894022900E40EE814420114804128144608108A403B0C045CF5B4E0412814420114804D2';
wwv_flow_imp.g_varchar2_table(4) := '01C83D9008240289402290082C1081740016B8E879CB8940229008240289403A00B9071281442011480412810522900EC002173D6F391148041281442011480720F7402290082402894022B04004D20158E0A2E72D270289402290082402E900E41E4804';
wwv_flow_imp.g_varchar2_table(5) := '128144201148041688403A000B5CF4BCE54420114804128144201D80DC038940229008240289C00211480760818B9EB79C0824028940229008A403907B201148041281442011582002E9002C70D1F3961381442011480412817400720F24028940229008';
wwv_flow_imp.g_varchar2_table(6) := '24020B44201D80052E7ADE722290082402894022900E40EE814420114804128144608108A403B0C045CF5B4E0412814420114804D201C83D9008240289402290082C1081740016B8E879CB8940229008240289403A00B907128144201148041281052290';
wwv_flow_imp.g_varchar2_table(7) := '0EC002173D6F391148041281442011480720F7402290082402894022B04004D20158E0A2E72D270289402290082402E900E41E4804128144201148041688403A000B5CF4BCE54420114804128144201D80DC038940229008240289C00211480760818B9E';
wwv_flow_imp.g_varchar2_table(8) := 'B79C0824028940229008A403907B201148041281442011582002E9002C70D1F3961381442011480412817400720F2402894022900824020B44201D80052E7ADE722290082402894022900E40EE814420114804128144608108A403B0C045CF5B4E041281';
wwv_flow_imp.g_varchar2_table(9) := '4420114804D201C83D9008240289402290082C1081740016B8E879CB8940229008240289403A00B9071281442011480412810522900EC002173D6F391148041281442011480720F7402290082402894022B04004D20158E0A2E72D270289402290082402';
wwv_flow_imp.g_varchar2_table(10) := 'E900E41E4804128144201148041688403A000B5CF4BCE54420114804128144201D80DC038940229008240289C00211480760818B9EB79C0824028940229008A403907B201148041281442011582002E9002C70D1F3961381442011480412817400720F24';
wwv_flow_imp.g_varchar2_table(11) := '02894022900824020B44201D80052E7ADE722290082402894022900E40EE814420114804128144608108A403B0C045CF5B4E0412814420114804D201C83D9008240289402290082C1081740016B8E879CB8940229008240289403A00B907128144201148';
wwv_flow_imp.g_varchar2_table(12) := '0412810522900EC002173D6F391148041281442011480720F7402290082402894022B04004D20158E0A2E72D270289402290082402E900E41E4804128144201148041688403A000B5CF4BCE54420114804128144201D80DC038940229008240289C00211';
wwv_flow_imp.g_varchar2_table(13) := '480760818B9EB79C0824028940229008A403907B201148041281442011582002E9002C70D1F3961381442011480412817400720F2402894022900824020B44201D80052E7ADE722290082402894022900E40EE814420114804128144608108A403B0C045';
wwv_flow_imp.g_varchar2_table(14) := 'CF5B4E0412814420114804D201C83D9008240289402290082C1081740016B8E879CB8940229008240289403A00B9071281442011480412810522900EC002173D6F391148041281442011480720F7402290082402894022B04004D20158E0A2E72D270289';
wwv_flow_imp.g_varchar2_table(15) := '402290082402E900E41E4804128144201148041688403A000B5CF4BCE54420114804128144201D80DC038940229008240289C00211480760818B9EB79C0824028940229008A403907B201148041281442011582002E9002C70D1F3961381442011480412';
wwv_flow_imp.g_varchar2_table(16) := '817400720F240289C09940201F46676219F2221684407EE616B4D8A775ABB9C9800EC0785A0B700ECE4B7B84BEA678AD0BDD380BBDED73B04B2FDE25E65EBB786B7AA6EEE8C3BB153EBE6CF083BD9411C35420FF675FFC179469C2540A7D8B699C40DFF2';
wwv_flow_imp.g_varchar2_table(17) := 'F7F4CFA886A1D04F1DFF50F805F4C7898F35F1FBE99B604A4A61C3CB9697FE4E6F2DFC1B3D9FFC9E4FC6279AE4DF89CE4FD732629A3AD019F8A87C7E7D2D1F850E2CE7A3574CF4B35D175D071FAF602A2376013C7F4DFF9B5F0F84C047741DE8BF0DC292';
wwv_flow_imp.g_varchar2_table(18) := '96A52B98D86BD275C488C1D01668518691FFE55535EC653181AE609C4614DA73F41FED3F5D4B5E2F5EA2D18FCE4B4BE7E51597430CBAC4B41F263A2EBD40DFA167D1FD27AF97CBB5034DC0281747E7A76FE928B65B6C6FD3EFE9AB2B13A6B1C35406BC1A';
wwv_flow_imp.g_varchar2_table(19) := 'C02BC6A1758872EB2402478C403A00470C681EAE45E06A01FEB0BF86FBC611E87A601AD8A81636DC05F488EBF8C13D61B227B98681FCCF44CF4F710EF839294F68FBC71FFAFC1857233E4D64143A310AFC7A32E874147AA0D379C91910434EE766BBDEDA';
wwv_flow_imp.g_varchar2_table(20) := '733E2E3925F6B0E673EA75D231C45999B0A2073BFB1D137A7216C8A014F99D3B1728B87D2AF8C4F1067E512C5A7E2902F600A2E5F8C1B28927771D0674E8A6093DE1C878119E052B32C8F41DFB69E246CA0A89E3D6AB5360DB6824478E3741A7AFA4F783';
wwv_flow_imp.g_varchar2_table(21) := 'F789BA92E2EF91A361C7A93E1DBF682CB43F013A161D654D67554783F6075DA718765A6EF15AF968855E3D6228403FD2710A7A006BBD9FD2D17B659FD071E8F3401E2A5DEF2330E2EF0DFBF859FACCE45722708C08A403708CE0E6A1252AFA0E6CE393FB';
wwv_flow_imp.g_varchar2_table(22) := '154A59A19003E00F7F8BBCC5D05B442591BCC6DD1E704F1C455980DF04E316BD6B74EE41B81A6132FEEC60A8D99023C76433C776EA60E8D39CAFB146FC64E063E681320EFCB0E7EB13CB230F7E895EEDCBCE430FF97F55063C73B895DBE210042E9782D7';
wwv_flow_imp.g_varchar2_table(23) := 'F5DB78936787EA2E9195B03C8C9A6A7504ED01D6FE2B3FC5409CA37D3BAF6C30DD4B21ABA3491B7129E4FC64983D03C45B60B67BD429E4D7FA8EA13D605904F556CD35306FD3375CAD7BD0B1F7CB884B6BE003B09725A3FCA41C3B02E9001C3BC4CB3E01';
wwv_flow_imp.g_varchar2_table(24) := '6DB00F2E2BFCCCEA0A6E5036749008DEECAB3FA4F9096A719845DE9AFA0F0F4BC90268FA57FF353B6D7FE3884C9D82B9A9AF55664BDD5BF65F4B01BE5CE614A8097783A30F777FF05727A63A11921160A7A07061800D02B921EF3ADCAB69EC65EF8B78F7';
wwv_flow_imp.g_varchar2_table(25) := '84CBB3562BFC9D6903BB6E45D588473F2C947ED8C06A9E5E324571FDD49BB48D169C3773D66ADA47CB4656FEF114BDEE31B3CF5A1AE0CC4F34DE7A7D921510F7C037283B84D53190F7E97DB9B75B4B50B4D3360AF0FDC31ADF32AD33FD9F1F916347201D';
wwv_flow_imp.g_varchar2_table(26) := '806387384FD017E07F74D739854B695A0DB5BD7EDE3C50ED79E83BD3ACBDE0C85C010FAFC5BC4BEAD51C881A8B89CD8EA19F790FFA1A7B5B7CC87BC417BC0C2A4258581F0EC7BF538360764132173337836BC305D7007CCC7003AF8EF790DB8311F8B97E';
wwv_flow_imp.g_varchar2_table(27) := '1BD74BC14AF787147C74A5757D9DDE611EA01AD89A009A3DCE629287F78165712C5D6F59807A2AF5297C55D48F536E891E904F235982D60F5477D38D7B585CA90E4816C9920EEA54D81F889FF0688C78FAB0871BC228C9AF44E058114807E058E1CD835B';
wwv_flow_imp.g_varchar2_table(28) := 'B0FF75DD269ED95FC28ED6403DB1AA090149D146631EB1B350DF1EA2F3685D5FAB65037BEE0BC9CB8CB4D46585E06791DA2191A3781272C0F0566122329BAB1610E60F7A8F22838361D649B90C2FC51A5F3DEC6474A74B4648BF3B0A5ED96DE18D5DE7BC';
wwv_flow_imp.g_varchar2_table(29) := '8B5A94A98BC0443C2DBD5417CB0EA40699D7ED90828005E6BEBA9A6D3AA4E2C32F8D2529DD0C4E5D6D3828D5F7A4EC80970E742F9B2323C1BF6535E43E6CFB48E66AC21AC01F4F6B3C63A2EFF22B11387E04D201387E8CF30C00AEA0E0AEFE2ADECEE43C';
wwv_flow_imp.g_varchar2_table(30) := '21E271F8A4F9FA48C68FD6D14A04356BA051BDA55B3DCA53E6BE3EBC6BC1B7853F26161AAE80597C67F587DABE59844056642782EBFEB51C315F682A0348B4271C04AA7EEC7603DE6B7D5FC31358FA06F9CABEC7676003FB0AA6194AF5C13C748ECB107D';
wwv_flow_imp.g_varchar2_table(31) := '2FE186087B2FAE2FBB61B3748C330B4276A066162AEDA312526607090E2B1FFFD05A7E283CB5BE88FB96D5C9906E13FAC31DE3882F1E77F16F420669E97B23EFFF78114807E078F1CDA307045EB1BA8AA74C85D9DDF27F14554B6A96D3F831BA0E642B7B';
wwv_flow_imp.g_varchar2_table(32) := '581AF7BB1A06CF17F3592C006F36B5A520C275380FCBA2BF90698E59084B07CB9F9584A827B258CE0AC2962AF6947188342D6740F7B8D517FCE5BD1B780DC64CF1EA9AFCEA6A0BB7A6155665C286F225C478CFCA0046B8B436909AABD12E1109DBB963C4';
wwv_flow_imp.g_varchar2_table(33) := 'BA456265C80CABEF8910CA076A4A60F3551EA8A5EB0F7A8D7215565E88E7887B9BEF553A446A8642BE251F781A80DBB08FF71DD7C911C9A7E68921900EC08941BDEC13510CFC195D8F6F2F97B1A30FF7C0BD1703AE86961BAEAC4E7E98018F517E43FEAA';
wwv_flow_imp.g_varchar2_table(34) := 'F4026BC31756BE32C2DDA930ED0063F1AB4BC11989795827EB261F9439FBAB5EF3FC3BE307C4CBA7776F62C23F2DFB78FE7E960108D70F21D25BB984B7B25D9CD033D2ED634952E4B5E6EE51BC2E5B93F16F96AF0DBF1B4A807E1CA58550DB002B61BF66';
wwv_flow_imp.g_varchar2_table(35) := '1D3CEB239900EF1E891761357D7342FDB4E2347A4569EE6468168B76E33646FCE0B08FE7852E99653F31F2EE4F028174004E02E53C073F03A90FFA4D1BD7700F4902B85555231CEBED869731E9ADF94A2C81660B02A84D1AB6D67625F17E485A3746F44D';
wwv_flow_imp.g_varchar2_table(36) := '0ED78E29A97BD31E08550679969BA1888440678F2BBBA1E52E6A5583BBD9F1460CF880E1C68132F612B7C9F3CB063EB6EFB0E68E09DA23D565F294BF611E810F75A2B64C647DA3B50DF04044EFC6FF20A1BF6E17DD4721CB30DF4A7C5976B9BCDEDA3018';
wwv_flow_imp.g_varchar2_table(37) := '9B10DCE8AB9645F442F4BDE4C33E665AE303C77DBC69899B20EFF9D4104807E0D4A05FE6895FD05DC1A7A3C7D817F4810DFF40FCB91A7DCFE3C21A99C7B6C0963CAEC977AB14F0F9C46A87E7B646F8A1DF3B6418FC7546E66BDABC62B02A1E8C2B1A565F';
wwv_flow_imp.g_varchar2_table(38) := 'C22F9C0E41D98DEB18F1B1C3BD78F5C2CB00E4A0FD76D9C09BFB1E7D88C2DFD12723965EECE1A5D9FE9889576E86786AFE900BA97FA3EBC9BED37D129E86FC6D7C3A7A6BE9DC69A8E17FCD3A45A12ABD1B2B33C59BA31651569A9CF0FA611FCF40B6FE2D';
wwv_flow_imp.g_varchar2_table(39) := 'F3A9787A779D0EC0E961BFC8333F0D053FBF711B6EBAA25B60F87B545705764CFCA7B64EA9A1B5E76A48C51E48E7B267202E84B7E9C5346DAC21CF6CB9390956FFF7A40447A1B547DCA24239CBAC8BA1E922905752ABD7E634E1A5D31E9E3D2E571A981E';
wwv_flow_imp.g_varchar2_table(40) := '3C7F0905DFDB6FE16D71528287D4569FAF7DF786AF1130E7A40F61DAD7148D6B4CC48C8D6D096EE10B72500764206AD1C7791E7E1C7D6CDA7BAC63203C4DDD9D740FB2762954C96A5111BC639AF0AC71173F1315A416F974C89B3E6904D2013869C4177E';
wwv_flow_imp.g_varchar2_table(41) := '3E2A03FCE2C6353C7A127D77925295682BD66B6BDABEA6E26BFFBF67ED0F617F4712DE1CEA1AF53B2DAF618E1FFCBB5D876BC1558D1723056A59A28ABC84F6417636543658190424094BF7BA378E78AF05970108B66FEB7A7C7821E5FF80BC4A3EABC283';
wwv_flow_imp.g_varchar2_table(42) := '0BFC3409182B0578EEBF46E551A727966EFC2D96528A9BC35A0B67A23DD1999847F7D6FE21DBB616F7FD3AF9053648407407A4F325684490D430265C2913DE6FBD87FD6C0E5DF8D3F1E46F3F1D8093C77CF167FCCA6E135F5AB65927BD3EF3F471AD52BA';
wwv_flow_imp.g_varchar2_table(43) := '16C8C5CEEA06B840FEF367B01AE32A0C148E1FB483AB91A8755EEFF9B790DE3B04BC0720E47283A5F07B3022422DF2928BC36E4B780DF30A0A70752AF8D8F50DFCC6027B01088E2D14BCA6DFC25B881B6201B5CD65602359097731C5DF7E785A16BFF7FC';
wwv_flow_imp.g_varchar2_table(44) := 'CDB99A96CB9F3FEDF4E7CA2108B2BD911058FD93D967B7B6F0D9FE319E68D58DD21DACC7A8C24272919B23F083DD2E9E37103F2469218B7F389E3000B9E74E18F03C1D70070A7E7F750D778378001403D91356D1B16C4015DA933FF8CF75DBCA0335AAF6';
wwv_flow_imp.g_varchar2_table(45) := 'D563B5CFED830CFEC6E8FB5598F46FA809040FC312B9DE72D864AAE51CF30F558D5EABBC30DDCC4B873D7CCDB4BC3200E1F309A5C30BFB2DDCA3251A8E96434ABE59C5E801D8F7F6BE9881E10555EA67430C9DAD655BB7917D157DC510A5DB4C8A43B502';
wwv_flow_imp.g_varchar2_table(46) := '4239C92FC33C57EF3CD11294F25D24932067A34B7CEC0AF890DD1DDC95D17F3E1A4F018174004E01F4A59F92ECFB4F7757F0349A98E6817308C7C2039A7FEB067896BF8DB5F8C005A8B4AE8348CBA1C450900E0147E43A6EB89E4BDE27B5663BA731093D';
wwv_flow_imp.g_varchar2_table(47) := '392D46C39D928323865A3119B929D392A7E972FBF7B77EBDF7709FCC0A58D8A6F89EB281A7F52BAC8CA7E1B5FF9A68214C7468636DBD885E9D3DBD2AF15FBB34C2632D38028D0BE884012705E89AD7B28FB03A62CF691016E2B4C12CC5AF0213712D9B07';
wwv_flow_imp.g_varchar2_table(48) := '6C985D414E2BC5FCF78D033E6EDC5BD8EAE7ED9E1504D201382B2BB1A0EBA04DF757D0E1FB575740B3F16ACCAC4FF76A6B31D1F85E9BB0E70FFF19636B5E0E08CFF046F637623CCF2E841E7F33EC56372623547D9279AA3F5A9F5926E3C09A4A7B210BBF';
wwv_flow_imp.g_varchar2_table(49) := 'DC5F03BF3E001F37DDC4AF2D4CFA6593D8FFFD25DCD54DD820EF2E386FBE9491823F37FAA1B3B371B27495C445F3D17E877FB2A2C3D87C6F9B4FF6A54B0FBB7A948E7F085983867730CF528563DBC356280713AE4EC0F3CB3E5EBAA621C5F995089C3C02';
wwv_flow_imp.g_varchar2_table(50) := 'E9009C3CE68B3F236D3A2203FE497F9545810E8ABF04893EB2963AC09D1C81911FB021F43FEC416E0CEF985D30A958FD9D67921BF5C1201C102352CBE1EB2C80EA2B4451F868956A142BF5E5D661A1E42FDD1225AB5F3EEDE2CB171601FECD52F08DDD16';
wwv_flow_imp.g_varchar2_table(51) := 'DE8E8E1A42B935D206EB48C4ADAA90EA041CC030B2EE3D40372FCDC6F0D6F59847FEA6CD23930155E027F4EE5B3ADF3342EAFD7946626ED40FCB26045FD0BB43C891E50D2CE9FF4762C253875DFE0CE45722701A08A403701AA8E7391981E7630B9FB922';
wwv_flow_imp.g_varchar2_table(52) := '3A9831AE6AF4250FE699A28A4575B1201BD2C06D8776556113A3527BFE8CB96DDC83AA41105F24DF575FA38E79B1DEF1AA02334B2D18A7810C3FA50F34535CB504C53A501980AEE1C9D33D181732FA8D9C9E97F52B3C191BD87009E85A83EF54F1AFD242';
wwv_flow_imp.g_varchar2_table(53) := '668F2893D7D5B64B79A7C7D65A2AD08CCD2C09E0A27CBECCB37E4E5BC6439CCAE62A82447125F5CD39233391203AB67A1694FAEFA611AF9C067CC598837FF271787A08A403707AD82FFACC64089E520AFEC3EA3A8F3EA588D8B3B671E08AD2A96B19603E';
wwv_flow_imp.g_varchar2_table(54) := '19F020C1ABB602CE0C833902FA30B66A7EFC1078AF39AF8EAAB7CDE7BC335B5DF8036A6AFCE259B7A059D99872A8AF974E8509D74B870F5BDF8BD76158040FE0CAFD92D0BFD56FE3F5DA0DD15186C770E696C92AD2C4BFE7E4896B3ABA5FD82839B91378';
wwv_flow_imp.g_varchar2_table(55) := '50DB9FD742B330364D5056411D8746812A8A41B4FBCA59FD7A2E0FF0B58231CF323C10A55FD40281DB27E019C30E5EBDE8A740DEFC6923900EC069AFC082CF4F8FF5D7ACAE601BBD0C8121D217A76543E866D1BE8DF635629675E21DF6E4F508AE8DE2C5';
wwv_flow_imp.g_varchar2_table(56) := 'A65BCF7634FF751178880CDB87430C39CBD54AD45EC7199B93A06F3B84D017246082F4905E4B57F013C33E9E39121BE2627FD1C3E6734A87AFE83671430BE7F48FF1225A55664259DB28CD9AEAD21C8CE40FC12DEC8BB845DA9642BA221D48150E51E505';
wwv_flow_imp.g_varchar2_table(57) := '0251C47DB736ADD0640094CF32AA91F7EE82500EA06B59F31E1BF1614392FF2EF68E3FFB77970EC0D95FA30B7D85CFEA36F115DD259E854EF3F1241330534B69345963C2B7AD157B4A7E9EC2D5D62B1BCF6B51216FFEC63A04236E9965EA4EB30AC2AC3D';
wwv_flow_imp.g_varchar2_table(58) := '4C29E7D5AF68CA1161D95CE18D44807484ACC6FBEB0E58A1E049EB7B98DF70D1BFFE75D9C4ED1DD5FEC5C1A25E0C69E36CA7F879906EE5939848F1CE9076DC6F14EB711C23A6717DB42E64F31E2211D116D4B24EB225C5E5B35CC4036B13C866B16DD5F8';
wwv_flow_imp.g_varchar2_table(59) := 'A77ADD57A611DF8935BE7B1816A80271D177F8F9BABF7400CED77A5DB8ABBD04E02ED204183BF49D4DE9B3203C847CDAB4DF18ECF8946F9EB4B3D4BCBD8E55076DF25BEDC997B3C8FF06F919EED7368D013100E60CC490CE6A17B1913C661A8C4D6E6D85';
wwv_flow_imp.g_varchar2_table(60) := '613A9CE6112E4F059F33DE87FF6FBAB85AF084D85500FFADDFC29B24CF23A83394AA051814F5EC6F9C15983B74F2166FC3F4F1BFA165948F18351A826C6F233B317710BCB73F4A54EBFED06BB5ED42D7CE0E814D9CD497992322990A9187F61DD94F78C2';
wwv_flow_imp.g_varchar2_table(61) := '30E029E31A77A7F4EF857B9E9DB71B4A07E0BCADD805BB5E7A807E5FB9848FEA36B8DD8F59E19AE38D0F4F36C46E15667D608D4A8B026423DAFDC95BDB099BD6C0798866469E7F6F61A7D6A59B0C803CEDEBC4C03A094E3D898396ABC95D8B3C2C599061';
wwv_flow_imp.g_varchar2_table(62) := '2AF8C9710FCF1A6F5D681EC0B3BA0E9F5B36B1AF35FDE8CC79703ED7D58FBE9CEDFD10C9DB32595647FD4497DEB58452F001E7B2535E7C624108FDABF0377578947B7E520222129F948AE40F7C39811858FDD283A9A8A14CF8F5718DBF3F5E5C67EF823D';
wwv_flow_imp.g_varchar2_table(63) := 'A22EF4EDA40370A197F7ECDF1C6DC08FEA7BFC78B986BBCB88CEB555E4E13A6FA1139BAC023D96DAB790AC79085706BF7A0E9C701691D9FA65D1BF6911B0199FE56F6B8640DE290F7C79FED70FD0CC930891651536ACFC0349138B0341C7BA5626DCB977';
wwv_flow_imp.g_varchar2_table(64) := 'EF210C82B3BF860FF60AFFCD6A13D7A60EBD9778A20355C97FB3AE492FD330FAC1A63AE26EE5354B13D6CFFE54F5050E5EED014E4148EA182545CE3BE704E8EA1FE2445ABA48CA4CF57DB761C2178EBBF8F9891C89FC4A044E178174004E17FF3CBB1AD4';
wwv_flow_imp.g_varchar2_table(65) := '3FEBAF61C752C1330BAD49FB309E355881C3B2FD3369D75AC4370B32770E7419AA384028FCDB38D9F8B0B70975969510B7A0469B56D32609834026D4B6B7482FE41EF832E1323A7CDE70033F355D2C51187BC0BC6B2978E5C636DE3810E7410C223B409A';
wwv_flow_imp.g_varchar2_table(66) := '1EAFF57BA54C1ED2A1E7491975E3580F223805C10F90DFEBDE90658D56DDFED8CA504B54AF6F8A7B50CF218E425000D4C38424937F9EDD410C7F5CF354CA011F42E4BFE020E6432011382D04D201382DE4F3BC0D02CFEDB7F1D9DD8648C2DBF359657ABD';
wwv_flow_imp.g_varchar2_table(67) := '7F3E84DE563BAE7D61261B20B5DF9025F6E08D42FBAA3960A43379BA8B725CAD2B8B71A973645DA8868D897203D4CA68AE42EFA78EAFE5DBD05E7FD31E900487D5276AEA988EFF5FC6019F7901CB00B416FFB05FE173CB0ABB6341E948D08913E962BF2B';
wwv_flow_imp.g_varchar2_table(68) := '1C9157D918778FBE8D5E11FCB1436DB6F906CEC88F044C59F3761C70C8CE188BAFED4994D5E62D111E9B3307F40039702C9854C86A13037E705CE3F92C219C3E403E024F1F8174004E7F0D167F05B409FF42E9F08BFD55DCD2308F8C4333FF9D8DA93CC4';
wwv_flow_imp.g_varchar2_table(69) := '25F56EA3556B345EDBC6AC7C2F61A4F007347D6FBDE6FA7BE9DB276360C5819A5DB051BEF15F8E5C0F9676BD9D407C141B1FAC8E45750D94ED6E4BAE2D85DAA77EC7043C66B8712195E17EA36C63A79FB8E3C19BFD035B3E46ECB555A23650B6224FEA1B';
wwv_flow_imp.g_varchar2_table(70) := 'D429BCB116D3646FBCA66F9DFFEA90F9872E7A8AF34F625CE777F8B77A104AF73787E44CC7C863031E55808F1A76F1C719FE2FFE997756004807E0ACACC4C2AF83AAF3FF75E30A1E39762C9EC7F69D7EC919813052D533B9C20F68FED63E7AC5A6B0C10F';
wwv_flow_imp.g_varchar2_table(71) := '5179C804D7BAB0650082346C08D1DC0EF888D8309FA0B2CE24B60F8DE19E32D6A8552F48AD57ED273756C2E569C2D70C37F1DD1748148896F229005ED16FE34D1A3DD7EC7A8CBA2D0F33CFBD871481A6DFA96CC2D99CC8D5B0B50F59A24AD060F1655D9B';
wwv_flow_imp.g_varchar2_table(72) := 'E0E0E97AFA616C49AA92542526CC3E9F07324CF68B784D5AE6A0F64EBA82DF1BD7F8EC0BDCE9B1F047D8B9BCFD7400CEE5B25DCC8BFED2FB53C4CF5E5D56A114ADDA9A919FD57B258BAE29E4D875DD865F074B011E7C1B31AB1206AA34903A1C21728FD4';
wwv_flow_imp.g_varchar2_table(73) := 'C1DA4530179037AF21E6A7D90DF13EF298FBB5D6C29A9D18F1ABD3844F19EFBB300B4C487C2356F8EBF70B00DD5AF5D8D0C98B4C8CEBACFD2FE01DCB37079996324457151879F5CDC153E835CF5313ECA11530B8922DBE8D2331E30E047F247210EA01CC';
wwv_flow_imp.g_varchar2_table(74) := 'A334D28239A6F20A7A3B693CDE3E4DF8FBD32EFE6DD6FE2FCCDEBE0837920EC04558C50B720F7700F89F1BD778467CC772BBFA54AFECBA5A0AD6F09DFE546BF061AEA0465D95F21F0ACD96FE3FD01026F3038C9DCF2E883A196EAC23978CCFA16244325C';
wwv_flow_imp.g_varchar2_table(75) := '58FA0CBCAC60064EA35B8D082533312B4DE86C80EB7D87C7EDDF2DA5900BF045B6FA35DD166E4C1D3AD679085D16A19BD38CAB646BA42453BFC2634ACB4046A494E5A80E447C5B138CEBC11EF07791AB61D7154A00553542F79BBD5E5B00635B60A012F2';
wwv_flow_imp.g_varchar2_table(76) := 'DEA47DB1354DF880713793FF17604F5FA45B4807E022ADE605B897EFED2EE12F7734305622734EE14FA2C0A61E011BDDCABD5213E0B67A362ACE23FE281EA3A50355A013825E9D4058ABB8F5F7DE8910C45BE4C313C4EBE735E3B925601299B6301E789F';
wwv_flow_imp.g_varchar2_table(77) := 'BC79BBEBF195E34DBC64D8E336B1F3EC07103E9F800E2FEC37F0B6D2A3D3FAF8AC482E244C65029A34BF39004DD47D98759FF988761C8BBE6B72A8B6E25502A9381A92F10F4A7F71DDFC3355BB133CB4771E49E57D7823898B4601B49B5F3EEEE15B2F58';
wwv_flow_imp.g_varchar2_table(78) := '87C70578DC2CFE16D20158FC16385B00FCA5D2E147FA6BB8A57558D78CF387B226E39D10A82632F4965749E06091DD7854C11EB3F9F22A8B25E55BFE9D7F3AA4E66FAF3A109BFA69E6EA71FA8E369C0D7CB6AA4C68CDEE430FFCFAB08F4FA36E80F36CFD';
wwv_flow_imp.g_varchar2_table(79) := '15A4EFC10A4FDD5871C66315962A40DEE2EAB480386A39C4F87112743B65B9D9C8EE38C4124030EC9E715077B26A49D52992BE2B2C13650450A93DB0D3E8D213AE112C9761198381889D18F181E31EDE76AEDDB9B3F59CC8AB391A04D201381A1CF32847';
wwv_flow_imp.g_varchar2_table(80) := '84400FE0D5ABABB842B3E2B90D30C8A5C4DDAA250231D4FA645703E3CF797EBDFE14A2C776808BB5838563E86B6DECAFB4FD59387E6878585B09B555CCCC802432AC05CDA6DD0525004E77572EC3BA00778E1D9E30DC8DF32E0B446BF97BAB2DBC813238';
wwv_flow_imp.g_varchar2_table(81) := '8D50BF0A2E476545D7D48BE6D3EDAC07DD569599F3F4827FE8DD9B8C6A4D1555FE809618EAD6D0CE8E30702ABEAF9E3C6CF259A2C97D047367B494410EC05D65C2A751FAFF02387447F431CFC39C1104D20138230B91972108D086FC9A7E135F54B6B1EE';
wwv_flow_imp.g_varchar2_table(82) := '816E98B5D235D179EDE50E01BE95EDFD78F6708E0F75D7F6B74C822EC0BCB450D7C54C4C751424E9D01201E3745937F3AA15CFF7A721A3D8023184D6114FE7A6EF6932E273A69B78F1B07FAEB7C567971E5FBDDAC40D32FEB1415EBF9FFB54F567EDA610';
wwv_flow_imp.g_varchar2_table(83) := '5FA0A66282FE12AF42C31308399C6069430EA819352CC6BF1693E6EA83462EAC799F59FBA7F916F10416F71B078443D3E1130000200049444154E61F74C097ACF7F06FB5F7FF5C2F685EFC8543201D800BB7A4E7FF86DE0D05BFB6793BEEC188DE32009C';
wwv_flow_imp.g_varchar2_table(84) := 'EE9D49036BF41C837C7BB0B371F53CEFC1C130878A059913E036FD909CB1BF2694042C1CD5D634990FA02A776AA498F51E08836CDB421B63AD7917AC296A9CD6F8C8F1E6B9968BFDE16E85279615360A09FF30E9BF8A323916EA1B0463DE745CB4B9955A';
wwv_flow_imp.g_varchar2_table(85) := '9F39C4F82B6DA47E0042AADE52FCD1E9683204EA6CF8EBDCDF53B9E2A84C38F3059D67E009A789DB5749F7FF2A263C5DF91CE7FF93997770D1104807E0A2ADE805B99F7FB77115EF8E829E7400983D1F82480E0AAB71B654BD49F97914DE0E983F18CCEB';
wwv_flow_imp.g_varchar2_table(86) := '439F3F041A0D5AF068AD7EF30F8827EB671645AE914CD7CCF08BA557DB5FA70B4A02604E3620D538B9CC6B23F01EC33D78F3395DCF6B005ED56FE3CD3442D7F5136CDDBABA98C1C76A8C7348DD5BE626DA5DA9BFD79CBA761532D4B17BD071660D01F1C1';
wwv_flow_imp.g_varchar2_table(87) := '1AB5BEC8299847F521F960C908CDECEB56ABBBA3E114A8A3BA2AC00F8FFB78FE488D80F995089C3D04D201387B6B925704E0B3BA155ED85DC68E46C9068A6CD8DA9455ABE7FAB49E19F2D037A84FFFF0948F75E9F913DAA37AB11BACE6CA27971786E431';
wwv_flow_imp.g_varchar2_table(88) := '0F19B269854D60EA1A067AF54D2D623EB040AE7FD4036C9409DF35EEE039C3FEB9341E9F5F56F8B26E033775599C9DAF384743AA80CE447764A563ADDFED7124FFE9F11A3961CFBA98746F38747046FCE1379F1CE9D6DE1B4FDAB252D01E68F82461F1C7';
wwv_flow_imp.g_varchar2_table(89) := '69C26330E1C3C73DDC95C5FF7CA69D5104D20138A30BB3E4CBA24D4981F05B366EC3DBA791E563CDEC0A2EB5575C8CB20EF7310B1109FCFE7DC818F0035E0879B1CF5F05861DFAF8E1389C38585BC8FC9A8C3068667B56BAA8516E5013540344FDE2462B';
wwv_flow_imp.g_varchar2_table(90) := '27F2D89F61C0878E37CF1D798CEEF1A7CA06EEE83A6CB09CA37DD5AE076FE40C63FAA20F46C7A8C3796D9D541F40AD7D8DBA8D0F50F919B64D62D4EF0E045784E6A1FF6CFAD0BCDB40B344EEF81DE84050FD087550C771C2FFC480BF35AE97FC51CE7B3F';
wwv_flow_imp.g_varchar2_table(91) := 'E308A40370C61768C997F72DDD363EABDB6062DCFC4BCABBB1B7BBB66545829793ED660DDAFED64366C048FB5F3DB67D48A487BF868B314BDD181C0B69AD53C10F50EFA226186ACEDAAA0ACC991B001205FAC0F53DF87D169D393F5F94FE7FCDEA12EE82';
wwv_flow_imp.g_varchar2_table(92) := '68FF3B9CCEE953F12425CB8961B6F288DE27A508B801C4CA27F27B36C09AFA3707C0DA35DB097CB4569DEE9C303420ACAB1EBD767B460E47C31EAC5C445F73A374E8BB23DD84F6C82330E199E30E7E36A3FFF3B3711778A5E9002C70D1CFC32DD3C67C2A';
wwv_flow_imp.g_varchar2_table(93) := '0AFEC3EA1A6EFAC356BEB1812BFCBD5AD2B9DCBF1BF01A7C6A1E7846ECB3B0D06C4DE81BAFE44233FC7AB0A6883C4753D504957F20B308A4E65D3B0FCC9099AA5C950660411AAD6F6F4EC00BCB2E9EB7DE3B0F4BE6D7F80FCB8A273BEE1660A506F7800F';
wwv_flow_imp.g_varchar2_table(94) := 'E4D997EADCB89B17D3F421A8F79EFBA006D89608B44014CA0C765155797106A547FAB37D616584483751C1201F4AE55D86C189A3AE8ED2E1CA34E269C3EEB95AB7BCD8E521900EC0F2D6FCDCDC316DCE5FEFAFE2F652D06B2CE773DD638BF79C956DE22E';
wwv_flow_imp.g_varchar2_table(95) := '6E0882546C2489292F4CECB94E1F5243DD940342BA97A3CC204D60EA845E4AA85505A51F681B638C289BD0530ECE52B2512A9835E40BDE3A8DF880E1DE7391013003FE1FFB6DACB4E5B1B71ABDB5ED35065D1640A2679BEE18B224EAEC313E73048C4430';
wwv_flow_imp.g_varchar2_table(96) := '3F7EF4D1DE416D3F2E41FC40485BA708FCB42589D0F86FDCCD261B61624594F5007E68A0B1BF99FE3F370F9B855E683A000B5DF8F372DB5F8B6D7CE16A03EBAE23AA1DCA20517F2C0A44FB6FC23FCD033C0477523A90B02E0E6EADB579EFD68B536B0F1F';
wwv_flow_imp.g_varchar2_table(97) := '2A44CE0207F7CA41B08307465AE93463C1E7AC571D2E89331A66713CCAD55AF26D63C17B4DF7E20DE7A02190EEEE3D4AC1CF74C4FE975B32813C4FB4B05555B4FD66EB63C8A1F3AC8FBCDE382071DD0F94601A8ABF7902FA6FE808E1F5E25F5722A68C84';
wwv_flow_imp.g_varchar2_table(98) := 'F6DF3ACD93CFAB2D8CD4CA7820D3143E489C8DE8263C615DF0BED30EDEAE64D5F3F259CBEB5C1E02E9002C6FCDCFD51DDF06E08F36890C280FE86E24AA5C7D80F3F76E4D2B73ABA99987BF739CD65A5F7DA84773221F8B4A546B46D837356DEB2E0BFABE';
wwv_flow_imp.g_varchar2_table(99) := '826F24F9736D598F1F53CBC14699E9118E819AC809AC86F8A26907FF64D83D072E00F08FCB0A7FA5DF60934DF7544A27F31CCC0E3336748391E267CE98E17EA880A3B7DBC7E533ACBDCBEF4036C88807873043ED4FF3AE025B23D399083E84DF876F9790';
wwv_flow_imp.g_varchar2_table(100) := '5D2A1388BCF97BE380CF9ACEB788D3B97A48E4C53E6C04D20178D8D0E51B4F0A811FEFAEE0E94427EBA9A62C86434C869ACDF8A00E7C011BD443B686A7CC853E7D33B292F13DDC6AD4E39B45B78F4B753ACCB479925ACB09DE9D10648ADBD903B5C5CCB2';
wwv_flow_imp.g_varchar2_table(101) := '11F5E8A6250FECA16007139EBABE7152703FECF3D0F5FF46D9C2CDAE43AF1D0D9601A8A3964306C09231B1379FCFEEEE90384EA1DFDF2E4E564C106B1C82586208772251FFACF552951C6502641BDDCB8AB707AB2E627554AC99C0B24A8F1881BF873DBC';
wwv_flow_imp.g_varchar2_table(102) := '921DD5FC4A04CE3602E9009CEDF559FCD5D106FD8C7E8517E10A6E76404F79587A341FA203DB4C90E3C737B1C0453580270A562D1867F93724ED6081A33156F3DFAE853EDDE30CA2A64EE051A3191D4D637B22A04A1CF3B966AA865681A6FBBC1D051FBC';
wwv_flow_imp.g_varchar2_table(103) := '7F2F7E8B27CB9FDDAF8F40C14BBA2DBC9543FF2687623C7FBFF848C68F0F214FF15B32E780025FE473C472D021CE40F016C48FA86B116B48DE35E21321EDDA0FE9BE986906FBB54F0029365C2D05EFB72697ED2CAFD4D9DD437965278B403A00278B779E';
wwv_flow_imp.g_varchar2_table(104) := 'ED612040E354FF64F30A6E8E3DFA03A2EDF5291FA962355A0BF1A1D6FE6BEC182FA6467BFCA1F034BC92F434E770D00BA8678AE4B14611F0B004837A15D5E6849907566B9E260C7DC7B3015E3CECE079C3D99C276F083CBFDFC047827AFF0B46AAFEB7E2';
wwv_flow_imp.g_varchar2_table(105) := '09EA1FC9ABE7CA0E528711A3D93E94E6DA01324EB9F5FFE6298430BA372C4F35FAE10C4D6D42577736D4910F11C47FE455E670D0AE93B2D4A51178D9B88B17B854D5C3D8ECF99644E004114807E004C1CE533D3C0468937E7B77099FDA6F4A3B5D2CEB1E';
wwv_flow_imp.g_varchar2_table(106) := '98C0DBF200E4E11D5B0682F108EF95763DB259816F6ED1FA817384C7BFBDDE23FBA0776FD9EB079024367F64460F08064E1C80F57EC1BDD8C7FB9128D0198D2C29D5FF3BFD26DE5488AC5993F3E69445D563B7C9EE9055AA609BD637A74C7AFF3DA63EB4';
wwv_flow_imp.g_varchar2_table(107) := '2C5077057DD788087936461CBBE007D60D191C01FFBBDA797138ACEC246FB1974B7E49DA3C1F87117F71D8C39BCEEC2A3DBCCF5FBEEBE222900EC0C55DDB0B7567EF83825FDAB80D774FD41C77900478A811AD0272AE05DB3EC6AB731053B916E0793A5A';
wwv_flow_imp.g_varchar2_table(108) := '758124826C15E342E0EA079394BE3A092A4D6C697E67F8698D59CE5BCF1403566112769C5A7EC454F0C1C30DFC8F333A55EE63BA15BEB36CE096A2507915B60DE78F9A70E71CC04B0684750319E29ACF096281CEC23FACEEDF9201E6B4CCB615F4106D29';
wwv_flow_imp.g_varchar2_table(109) := '7F831CBB9DE9209725D2C4927ED0E3E985AC31E1F5C31A9F3ED177F995089C0F04D201381FEB94574904B3FE326E9F3A6C74D410A85F33A6760DEF347C0BC845A36146DAFFDCA4FC2D1320D2B3A244284CFE03357FF316EC8A9A16030B3D83A3314F3973';
wwv_flow_imp.g_varchar2_table(110) := '4FB9AADD35E4463188231117C6095BD384176307DF7406470493D17E49D9C0BBF61D2EB1488FC7FD4DC7857760284150C491A42BA3F0B085B8CDF5D174488ADE8492E4D5E175514741DF17CAFAE1E096BE0FDA50C62B0934813AFF41CF113D42CF02C8AE';
wwv_flow_imp.g_varchar2_table(111) := 'BA3E4EF85AECE04788709A9FD644E09C20900EC03959A8BC4CE04BCA0ACFEE2FB1408EF7FED55CAC04D791D5EF165F3B06F8B55A6B0FA43093F73D446EA68E960B6DFCF101EFD1BE0BC7E8001B354E1C27AA24F03CEAACA9688D39639F7953739ED80979';
wwv_flow_imp.g_varchar2_table(112) := 'EB38E203A67BCFDC6C00E268BC6EB58D3F9D0A36D491A2143C19500DE83D03134CB6DB6F23F97B663F68EEF0FB83E7660FAC9A65A91E42E56DE8A16706BBC9DE30D63ABF71D6DFDF7CD6C2B9FD3A9CA321D99BA18C782426BCF7FA7CB46AE6B324113004';
wwv_flow_imp.g_varchar2_table(113) := 'D201C8BD706E10B80EE0F7376EC3BD13575D6BF01E6BF4C13ADB03DEAD505486AB3ABF6AAA955CC66583B9E5886401EBD1D7E83590D6AC421019FCCC3CD763CE7906729A2AFDEBBD686635F532B844304DB88209EF31DCC0DB666284A7BD809FD1F7F81A';
wwv_flow_imp.g_varchar2_table(114) := '6CE2EE02262C5ACB9F5F571446B2B24C43F66B35170E73942CBD7FA00A133304073C33ED4608F31EAA4F58A37ACF28E81FED35DE6A5AD34DA2D618488834F4A7EB809F1CD7F8A61CFC73DA5B31CFFF10114807E02102962F3F5D047EA2BB8CA7772B6EE9';
wwv_flow_imp.g_varchar2_table(115) := '63BADEA8E646EBB2856AE44106D047F8725A3A14E7C52A37E95AFE30D86C81A613402C72D08F93633971FD002DBD32CD4CD8C7A70F461262E871F75C756B7E8C7740E7A3D900CF1D77F1C2F16CCD06F8D16E138F61A5C682D59C71E9D6BCD6FC8DA0E7D1';
wwv_flow_imp.g_varchar2_table(116) := '7C33984FEE3F72212287B2B1F70A95110CDD6FF3E3CDCA08D52351B947FD4563F8A3C244686430A7CC1CC4205DFCC8A9E0A3869BF893D3FD68E4D91381878C403A000F19B27CC36922F049DD0A2F2957B043AD57AECB5A05FEC588072177B524CE426F1B';
wwv_flow_imp.g_varchar2_table(117) := '02F4093F5381D152413D96B5021AB94F8D44185A23B507398E7C1BDA074D842608057824EA966E96E766269CBA1DFA291D31E2B57DC127EE9D1D5120CACABCAADFC61B749EC12ACA1D87C87B6E7B2D2B232F17B964D3FC57F8052D2D29CC9222EEB8B9CE';
wwv_flow_imp.g_varchar2_table(118) := '527006047DCA1151E144C87AAC08614CFEC3440866EBE09305D5D1B3EB9FD7F749F9EF8FA7353E7D4CE5BFD37C2EE4B91F1E02E9003C3CDCF25DA784006DD83F585DC3500A5666609AA773B404ADFE5CA5795BFABEF6987BE0AA4FF8C6B7B0BE75335687';
wwv_flow_imp.g_varchar2_table(119) := '59A3C612698019ADBC0DFBE1364689FC45C638640FE8F8AC5A78B03B810E4F324077AC3A3C6EF76EDC774AF8CF4FFBACD2E173BB2DECF02D8F22FD1BDAE49CAEA1EC0B89EEC57332B54457FA3BF034527C42B6256AF11F702A74BC702308E529035B8C78';
wwv_flow_imp.g_varchar2_table(120) := '129DF2C87E5B60FDD7244C509DAC5D05D27152304E136EEB26FC5FEB3DFCCC19EDCE3823DB242FE38C22900EC0195D98BCAC0746E09BBB4D7C4EBFC56233321B2030F4D838D7FAFC81D4BD8797D616E685F676021C1B01D51CE0EF5555D0B2033638C68E';
wwv_flow_imp.g_varchar2_table(121) := 'C7964ED5E64CE626E6A63D1A56126214A5F388B4B2D1A48D2ECADD4A5A7CBBEFF075EBFBF0DDC33E8653DE24743D3FB3DAC6E511D8D22709D5C30FF4EA05A7CA1C2D265E5AF7C3DC703BF6F5F1C4A4429DE320437B66B17863B41598F83213250AD2CCB1';
wwv_flow_imp.g_varchar2_table(122) := 'CED044FC21EAA7977BC942333ED6E2384C13EEC484F719764F7D2D4E792BE4E9CF2902E9009CD3855BF265BF070AFEEBEA36DC5346741449AA508BF46E5BF4DD4AEF0A5EDAC7CDE960FDD98CB5BDCFA60C84F63CF530547D6EA6FEAFC68B8E2706AA65FD';
wwv_flow_imp.g_varchar2_table(123) := 'F3078C2FAA43E10138AE425C59052125ED86DFAB1AE2A0186170B7EBF0C7E3888F3EE5D90064E7DF0D053FD75FC21B278AFC3DB617A8ADF43237D5D150CF8AFBB57A606A0D356A67D43DE3E38B159AF1E25028B900C15D2FE5818804B19D4FF751F3D952';
wwv_flow_imp.g_varchar2_table(124) := '3FC374268C01C8C38EA609AF2823BE7E9DE9FF253F8FCEF3BDA703709E576FC1D7FECAD5653C192BD8BC79B70EFEA4D6403410CCD4E6D7FAB191FE22ED3CF47A39152DD4FAE318A2D18888F19C9EEAAE3C33619987C50AE5FEDAE326D1BF51D03C51D191';
wwv_flow_imp.g_varchar2_table(125) := 'A1E938DDCC99F3AEC3F569C2BBEFDF8DB79CF2FA7F5DE9F1A96585FD42A37F2413D3C51BF5EC4827239CF9BEE5911321880CFF90A03928F91BC982A1154FC498ACB4A2C70F7F3F9005D2A7DEA11A01F10266F86A62827F4B77FBE8027CF4B0873FCCF4FF';
wwv_flow_imp.g_varchar2_table(126) := '29EFC43CFDC345201D80878B5CBEEFD410A04DFB79AB2DFC136CE33ED5D13BA00F6F527C1C7253781E5AF9E62D8016B58768D51503BD865C4B0B9EC6D6AC8287BB21ADEF1907538C5327C333D18A5E4C64EB4C3A7B2B972088C62642B972FD742B1B1DF0';
wwv_flow_imp.g_varchar2_table(127) := 'DCF52D7CE7481A81A7F3456BF01BFD166E4E052BEEC9ACA51431EE214A37C3AD1C87A6CDEF8186EBD831F49E259362D17C4C2BC46C80FC3E46EB522ED0EB8B7BC260736E46EDCE30ACB5AAE38E08BD941C1922138E23F0560CF8A4E16C75649CCE6EC8B3';
wwv_flow_imp.g_varchar2_table(128) := '9E5704D20138AF2BB7F0EBDE42C1EB37AFE03E6E033405F9466FA6227458B819A47AC58EABDEFC2C2C8C81BB59178966AD8C504F63EC7FD18D37B15821B2358437ED0A905355B32FF6A97A1CD6C2C8464C4B12E4109081BA6B1AF1E123B93FA7F345D2CC';
wwv_flow_imp.g_varchar2_table(129) := '3FBDDAC65B828364CE8D64DE85E8685917BFCA16507576A21197744B24FBD9F4077BAB27165CBD718641283FF0D26A819F7F1D2742CA1FDD5D698E62FC8FE0D8D0DF471D5B70FB38E139D33E5E3E9D3613E374D63FCF7A31104807E062ACE322EFE2A55B';
wwv_flow_imp.g_varchar2_table(130) := '57F1D16BAAAED3E43921EDB145745259B5360712CF9ECF9DE7E60F33CA4A39D3947FD4EE9F03EF4A846E042BA35FADB8C4A32628C34A81C687D3AB7403164C9E6A164C1D304C05B74DC0D386BBF1FA535AF96F292B7CE8AAC7D6146599438FA5DD76ACF9';
wwv_flow_imp.g_varchar2_table(131) := 'CB8D1F20F055CC8C4859A3F8F9ABAB9345E7B502BDADBDBE9F0D7B9827601D9A5AF23149679A2C6DB31CC43968F5FFE7DD82EC0000584FC063BB097F619FC6FEE65722707E114807E0FCAEDD42AFBC6ED90F291D5EB1BA8A5BDC3AA73572278A69D41CE4';
wwv_flow_imp.g_varchar2_table(132) := '81E9C11F9AB9D808BB34B03EC94DBAB7BE4EFC0A8AFCB88AE01D0687B4109A219FCB11AB715169002B5A7016C19C16571FD45AB6EB08CC26118E6AA42803F2ADB88517AC4F3E054D41F0AFF797704F076C470BA8C67E1EB1AB3D6E05FE0ED46C0EDBCE21';
wwv_flow_imp.g_varchar2_table(133) := '1B10B2384D12C14608F82FEBFE90B2417CA3666E341360CB6286FF0071319674AC540060639AF04A0CF847C3E9956016FAE1CFDB3E6204D201386240F370278BC06FADAEB311E2F633ED2FF77AF1A1A9FAA61E102EB68E1996F4BE58B6DA35A62CF3787B';
wwv_flow_imp.g_varchar2_table(134) := 'DACBEFBF527DF946D846F3D5AD8137811BB15AE254C8F56B936093ABF694772711AA243926BC6D1CF181C37D1C959ED4175DE607970E2FEFB7F0664CE835A76E0E8B754C78F39CDD97DF63ED82909B6FE803CA7750B9652E9048036025004426A0A74EFC';
wwv_flow_imp.g_varchar2_table(135) := 'A00DA7223CDD2CE163FC807957A05D8BFF3DFCC28F5980A1008F1D47FCD5610FAFCBF8FFA4B65D9EE798104807E09880CDC39E0C02FFA0DBC2B3FB6DEC4DA20CC80368F8694FD123C90257615979906BE43EF70362E44D86C76BC5957CC7B64CC7D67A3D';
wwv_flow_imp.g_varchar2_table(136) := 'F9C034C29019304FC4CEC5017F885F5D9EB066024C45A756108C156052C4420CA4AFEB0578EAFE3D78C309CF067871B7C2FF5636488599C598D4EF6A9CA9B6EDA1FE2906FEBE044D905E6BF273312676915CCDAF99D334237FC83164BD8262804E298C1C';
wwv_flow_imp.g_varchar2_table(137) := '506F15F4928C3A67F17D76F985D2FF136E61C0C765F47F321FF03CCBB122900EC0B1C29B073F6E046EA70141AB6BB887AD43C7843B369946E6E36F2B97DE634B8DF25DDFDF2D531B9236FAF26E08CCC058BC6EE7D349803E77402C9029C7F1256A6FBA18';
wwv_flow_imp.g_varchar2_table(138) := '7825087AAF7A0888677AF6D5A49103C06FC62626BC68D8C573A7932B03F4007E77B58D37A813B20A657FBD3583B8FD57B1B348BC910B0C548746C52F66478C74E9C289355BC2ABA0EBEDD99220215CC5876A4EDFA808528531ED86BAF6569D910487C932';
wwv_flow_imp.g_varchar2_table(139) := '03970AF0BC711F3F38922E637E2502E71B817400CEF7FA2DFEEAFB02FC68B984A7752B6C2AA38BFBEEADE0AE068AFAB6BDAF5FAD10A7FAF5F7D2D3AF297F9B0DEF497931B807BECC5E0456BFA7B483BA9F4FC79B11E0E88A9842E79AFFB5E0EF7A00C674';
wwv_flow_imp.g_varchar2_table(140) := 'B7CC85DE175DF930023BE31AEF855B0784F18E6B63FC8DBEC373B1C2DD34F6A78CA1042072BA52FEB0244C70C4341AB76C41950B08117F784D73FD8EB33617584BA0F2216ABB1ED5826C164328DFE8FB8DF1513344D52B29CAEE77C3EFD5897A7D942D20';
wwv_flow_imp.g_varchar2_table(141) := 'E5BFA78DBB84787E2502E71E817400CEFD122EFB0668037F46BF8117759771B39BD0595796A6DF6B42BE12002339CC46061BF9CF67D3873EF4DA3A160D9A73D09B893535ED2CD1A63819E25918B7405E13D2FE1A0E4BE52284C34D5360B58E2C4DABE583';
wwv_flow_imp.g_varchar2_table(142) := 'EBA5E029EB1B78BD87DFC7B71FE8CABEB7DBC0FB94153B2E36D340D2ED555A598A14DADEE8B58C91F90B563AF1648A1BF3DAC3EF863AF6EC99118F8C7EF3CB2CECE7CC8B0D16AA7517B9B2887F9081F6E3D6014F7C91A3FC1C723CCC07F9C5691FCFCAD6';
wwv_flow_imp.g_varchar2_table(143) := 'BFE3DB6479E41345201D8013853B4F761C08AC0AF0E6FE3AB3D20B39006643C9C6EA83DC8C4A65FE6BBB9FF6DEB3390B43043DE60F2C7337EE6A7C25A097934906BA52F84C3340E4898312A0F102F85DD52971DAC2CCF19068D5E48E05BDCA0698D0771D';
wwv_flow_imp.g_varchar2_table(144) := 'BE6BBD8B6F1E693EE2F17E5D02F0DF565BF853743A8869963257832D83750E4F9A54D25F35D09EBE885C006B166C58FC865818CD1CB303417BC0D2F39EB7A9551AD502905F58A6C84A13DE92A97B81A59D79090A6EC788BF39EEE15599FC3FDE8D96473F';
wwv_flow_imp.g_varchar2_table(145) := '3104D2013831A8F344C789C0F3FB6D7C76BF89919ABBCD9AEA839A1EDE94E2B739755E2726536A65038B61639ABE21EC55BFC246D7CEA3D8A64A1054EBA41AA06442EF05AC557D6B45B4A8DE0874076C68A3722706764F7501DE73FFEEE384976FED33BA';
wwv_flow_imp.g_varchar2_table(146) := '15BEAA5BE1DEB1A0B38C06395DF30B8D4E53F89BDBEA3000B15EF4FC51A4AF6E70B47C4E1D9A54D3FFD5E190EBD1497FD5C7F27C8AF814616C735838BF0AFD86BA2D68E4AF385E6B7CF8B03E569CF3E089C04922900EC049A29DE73A1604A87CFBBE5D87';
wwv_flow_imp.g_varchar2_table(147) := 'FFD85FC33DA3A49F3DC0B633068D7F6D0DD097682ABFEAC7BA588DD86C3D96D7916B343E912A0F1BF499C5D3F4BE7FB8D88869DA590D8FF7FFABDD2247847C17399EBCD34480F5B76EA63C5A251E40DFE1B611F890E1067E9B3A218E0561B9A49FC40A8F';
wwv_flow_imp.g_varchar2_table(148) := 'E8565AF797B64976A0A2BA9E1B4BB90F4F782818C61368EE69169DFB2D3C501681DF5C473A57ED5F75D2743680B96C9ED939643EC0BC1253B33C36FA4F5AFFB6A7113F50067C6B3A00C7B4C3F2B0A781403A00A7817A9EF3C811A087FC2FF75771270A36';
wwv_flow_imp.g_varchar2_table(149) := 'CC2299784F73B6D6AA7869C013F8418C7716BDB25176C2DE41DE9D49FE561D0133E4428C73E3AE9AF44D078296200E0213C703A9FA9D1BB2898703911BF27DE32EBE76D839725CED807700F8B5154DFE93FBA8437FEAA4A4A8A23C1BB750AF4BA36F8136';
wwv_flow_imp.g_varchar2_table(150) := 'B82BFAADB5F9B11FA4324D0D01D39E5874D3D2E5E94A8A741253F68B3E604CEF37FDFF5666E037CA7D09674364A1E91AD6EAE33D7A9AF081C30E28CF725C4ED6B12D5E1E3811780004D201C8AD712110A08DFCA5FD269E7DBF2EC06E209B19A94F6EF280';
wwv_flow_imp.g_varchar2_table(151) := '45E7073DC7B2CDA41923EDA965086D629611B034B3C80EABE1F17EB3CA07A834018DE8B5A6ACE5EADA43EFC2434EFBD7CC421B61B7D70A0C1D308E05DBD380C70FF71EDB5A7E79B78167F4BD30FC95D360D3FDAC2452548B210A0318E7E2C085CD1A04E6';
wwv_flow_imp.g_varchar2_table(152) := 'A3FF3C736F658FC374796D491D7F39CBA10397DCC150036E5E81790AEAB1705643A7FDD1B1F6BB8E7924AF9DD6F88231C7FE1EDB06CB039F0A02E9009C0AEC79D2E34080486A6FD8B886BBF9612F09F450025617A0D50810C29A32F2D51188C37C2CDC23';
wwv_flow_imp.g_varchar2_table(153) := 'C3EFB5658A10BD1E5F7BD0ED9E1AA119679F6B84E92C752B325BC65F1C89CE036A9336AE04428B9AE32C02F97EC4B5D2E12FEDDF83D71C437C4A51F5BFEFB6504A876D5F38155A1293EB11B4143BAA918D623EF6D2CA7E10AB5C3912C4D230DD8460CCED';
wwv_flow_imp.g_varchar2_table(154) := '9C5A8D697CB956D5A78EF4F317498AC02B395A3AB03FBB3AB43A6F4D130695580A701D055F36ECE167A7ECFD3F8ECF6D1EF3F4104807E0F4B0CF331F1102D1C8FFF3EE12FE6AD9101218D1FEBC3D2ED68CF5C46ED46B024024804D83DEEAFFCA046FA6FC';
wwv_flow_imp.g_varchar2_table(155) := '19F9AD4964373AB74D96C06AE06AA0639AD953DC36D7DE661498E132F1A0C04730C7457C1D31C03F867D3C6BFFE611A15A0FF3EE2878C56A0B6F29053DA700663A0BFCAB4ADA8B64486FAB8C898DF0D439ACCCEFCE95D5F92311707E77F1003E4D314C58';
wwv_flow_imp.g_varchar2_table(156) := '0C423FEE6D043645DC3BB5BBC2D20860F2E8EDD384A78CBBCAD1387278F38089C0A921900EC0A9419F273E0E04FE6ABF8197956DDC470FF99E7401D488F3441F8D4E2D9234E3517977622302AD9DEBFA4D94CBAF300F42FF527F6E4AFD517C88DB01D95A';
wwv_flow_imp.g_varchar2_table(157) := '57C19C98A150232A31B0F4B2C77A76E52A78CFA1C8126B8DC1DA10DF657DE388612DF8DA6E85BF52567C3DA4FCC777E11317396FA143776A4DBE4DE1D7124B2C1B5431A09A0DB1D248E4641AFC41DBA9B947C39C6BF8EEA4D5414082A3E64DF4A4967590';
wwv_flow_imp.g_varchar2_table(158) := '51C17A4FEC3412BEB40A23C652B02A237E7A58E3EBC71CFB7BC41B2B0F7706104807E00C2C425EC2D122F0279BD7B13F01245BDB8D12C5C55635E17B89D5778A5D480DAB6C0C97107C5EBC86A5FE8109116DA416584340E363C431B3CD14BC2026E43CB4';
wwv_flow_imp.g_varchar2_table(159) := 'D98143D6C16873F34C381BFF11B8DC019FBCBE17BF70C4DD00BFBCDAC62EC818CA44443BFFE10F0F933756EF4A819FD7F4E33D34C789D90112F60B24BF46A721386F0D85C39CAA5AA3F10A85BB69A153F4A0C3264E1AAD29E92A3CB68CF8A0F52EDE98E4';
wwv_flow_imp.g_varchar2_table(160) := 'BFA3FD90E6D1CE0402E9009C8965C88B384A049EDB6DE16F954D0C7D41DFA8E3D43EF26AA0AD662D91AC33F92DD05703668E02CBF606553F95F9AB2C72358F56AF8F8438E611C80194DF1EB2018D0352F5E93D3A7557452E8CEF24A6DE293A1F477CFFB4';
wwv_flow_imp.g_varchar2_table(161) := 'C6978F47D70DF0BE007E68F332DE3612F31FE84958C9661DF8A20581022F75C84445C1D9227CF3C4C26ACF0CB9FDC52274D370E023844C8DB555CE59FF46F474F26798D8D8746BDAF1F4845102D82E778D096FC4804FC9C13F47F9F1CC639D2104D20138';
wwv_flow_imp.g_varchar2_table(162) := '438B9197723408BC0780FFDA5DC5DD5D8F8E6469B59F5F227F3D47284E57E2997C1C4CC6D6DBFE82C1734740C3FE4681D7EACD4EF19773B5B2B84A7C9BB5FD491382A4F4D925B1A983217521C4F550100F7D0D745DA42370151D1E39DC7D6454C0E7941E';
wwv_flow_imp.g_varchar2_table(163) := '1FDB6F882A81661A18C726C5510BF17343ED24FB00BBB70BEA5AB423782B81D00991F12915520965EAB45CD386F47269CD6065F7C3EA651B15B111FB956C812EEA5500CF1B76F172C2F668B6661E2511385308A40370A696232FE62810A0A8F0DF7557F1';
wwv_flow_imp.g_varchar2_table(164) := 'E455416F1C80602C3D4DEFD1BD85816A914CC0C663D7203D6BBF136B1C2C217D948208914900ABB18CEA81EE8844865C28ED9B9FE2790235748DCD0D1901F369E85F72003E73B8C18CF577F68BD2EFFFA9DBC27E0136D049FA9F95FF6691BC3A06555447';
wwv_flow_imp.g_varchar2_table(165) := '4375CF0684064CBBD8E844C41BF61480FED2C6F4F2BFC28BB0AF1AD1D7C7983920FE9A509F512A67ED58D07651F709D5F853C398D9450000200049444154ED9F14256F2FC0FB0EBBA04C407E250217118174002EE2AAE63DE1CBCA06BEBCBFCC0FEFDAEA';
wwv_flow_imp.g_varchar2_table(166) := 'F58E809174B513CA9A91BEDE1810247DADFBCDCC4A1D30D332DFABCE80A4AB43CB9C5E980D00AAD98556B2C053FE9EC0088E875D3407C1447CE8F0CA61177F67D879A7CDD6FB771DBEBFDBC4DBB416CFA376029F429BF63C351F1A2804687300946BC1BF';
wwv_flow_imp.g_varchar2_table(167) := 'B2CC862E4554E98BEF71031EE633B8CF6546DDE812079C8AD9632D7036AD3FA09D9D64391AE91CA1D205753BFCDC34E0ABB2F73F9F2617188174002EF0E22EF9D6A85FFDAECDDB712F4B03AB0EBF0EECB1FCB5448BCAB60FA97A3154AD880067DE6D64AC';
wwv_flow_imp.g_varchar2_table(168) := '45AC4D141B4B0766FFDA49423291AE9517F61901B1F3E0908533E317D5F62CAEB6A202793A6B6A5B2B1D1EBDFF76BC33B23584CDF3BA153E8C781185D406C548B20220B72706AB1BB0624C3D4D5F91E60C88E3A56D960D7E8D4C9323D092F484846818B0';
wwv_flow_imp.g_varchar2_table(169) := 'C3333F995E9B3B72BC8C07D3FC72EACAA590AA8B3881030A1E83099F38ECE0B796FC21CA7BBFF008A40370E19778993748B6FA07FACBF8B0423C00FD6A8ACFC14AF1835F15F782E29CB4E3573A9FB7A8A987608C81C65AD1B13A95FED574B53B20F6BE38';
wwv_flow_imp.g_varchar2_table(170) := '41D05AF97C38CD5CBCC8848A94F61635F01B8A9D5CE7583A5C01F00FC69BF88161EF612FFE260A7EA5EBF1D6D2B3B432DD0AA5FEC9F0CB50A5E020F9F7EA0918033FA4EBED0D8245C8A8901936B260ACA8C4994EF12E821F515D9030CAD79C33AF97CCB3';
wwv_flow_imp.g_varchar2_table(171) := '25DA2A6852C3A19A41CB226D811376A6353E7ADC7FA7B3280F7B01F28D89C00920900EC009809CA738790468637F6AD7E3BBFA2BDCC2C62682DAD8C6B9967B9B3F9EA7EF59EA9759FF2AB8E3E37DEB10A11AC5B7F729843D9B94131C090F6B1BDD3CD3A2';
wwv_flow_imp.g_varchar2_table(172) := '8B5D856D246C8C03754CE4CAA5ED8EED9E9E6B28137E7518F08CE9E18B027D42D7E19BCB26EE1539255555544720301F9A3B3E60F02B57D0ED7208E9E3F5C73A7C63750F33E476D2E06848F786BC38B6624A0B68F42C94E6C90BAADAFF2E5340B3157ADC';
wwv_flow_imp.g_varchar2_table(173) := '310E78CEB887974D49FD3BF94F6E9EF124114807E024D1CE739D2C0205F8B3CDEBB8A54200B4D9FB411D008E3AC5380B794D19F86EE8AD0E5FC7F8D6EE00ADFFB7197EBD3789D855CCEF90E856C86C329CD8CC5E6BA02273DE58FF7E4C43F0503D011111';
wwv_flow_imp.g_varchar2_table(174) := '22FADFB569C2BB0CF7E0D6C344FC4558E1A9FD067A8C3CFD8FFE8FBB006CD261D00368AE3E92F4FC5AF51BEDD96B20D651C9C68D50BB2C9E833F9D34FBA1D1BA953C7C9892F841B586104A124DB7822A09190FC15C41EFD2C0C4DAFF8F9F46BCE77A070F';
wwv_flow_imp.g_varchar2_table(175) := '3F7FF23041CFB72502278C403A00270C789EEE6411F8C6B28DCF5B6D725D97A7D849E0A7817988D025860E11A44693518826449EB5E25FD3FD6EFB425B3C8FADD5F2426B0F2D0F1ECEDB08D17BE82BC38A1A1B377318F4CAAB3B31E172E9F0F9EB7BF193';
wwv_flow_imp.g_varchar2_table(176) := '0FA31B80D4FE7EADDFC65BC861D2B648AAFD33764ABCB38C88671FC204BDA8E6171B253C07E2A5181B7CA07F31036F3C494F1B54110067FE37EA4BEE7BA93317DB1467E5013DA6EC86396F83320213FE13467C5992FF4EF6839A673B1504D2013815D8F3';
wwv_flow_imp.g_varchar2_table(177) := 'A42785C0934B8F5F595DC67D63C1D44DE8281B6001A95955AD4BB304AF1AA183436CC2D4400F2BC991B01ABD5816CF2AF8B1431ADC23D33AF0A631ED6CC1E5376EE235CDED2D76FA89155FC1C6D7568347EF938447C17F9EF6F059C343CF01FCF5FB59FB';
wwv_flow_imp.g_varchar2_table(178) := '5F5F367143858B8843C13440E62998A4AE1225BD3252BD03213B069C39D1622248728F22B72C5FDE3D10CB197C5C3A06D56CB8F75050318C8C86601C0DC58333254D1345ADF91FC81298131032138F9E80CF1EF7F00BD9F97F521FD13CCF2922900EC029';
wwv_flow_imp.g_varchar2_table(179) := '829FA73E7E04C878FD727F0D77922A2045B45CD60DAC70AEF10791DDD8E2EE856989405DC94F2DC93CD5EFA6DE457D6C82A09D538C9F18BCE038B80AE04CBCC6D97295F91EB9F2D5841A59B17618D06DDE568027EEDF03620234AFFD7360FFCE7E85F741';
wwv_flow_imp.g_varchar2_table(180) := '8F9586FB74BD648C7BAB95CFE4806BAADE261BD64C41E3CCE8451C2819845FCCA73207CEA0B3FFC569A86D97E233997310BDBB5959207A7EEDC846DE11549AB9D6014F1B72F0CFF17F32F30C6701817400CEC22AE4351C1B02B4C19FD96FE0D9FD6510A7';
wwv_flow_imp.g_varchar2_table(181) := '9BA46C83B9F748BBB1F5731BE269FC9AB6F7A3A856BF98766B1AA8AF33A9DA50CE96A3F309A3C09094232C354D4793AEC383E9FE39587A280FC9EDA85B00CB02BF647CF0D56C72925ED56DE1CFB8F58FFAE10B4A272448D32BB0AE0AFE9D5117CD39E01B';
wwv_flow_imp.g_varchar2_table(182) := 'A80DFAC68550BA85F613D06BC64A908C86D93D86DABCE7AD7E16F5F36B14A936DC7702201FF2C0D34D7B39CDCBF084823863DBD380EFEF467CDB3AA57F8EED0399073E5308A40370A696232FE6A811A00D7E19C09F6C5CC75B0BB0650E8065AC037B5C6C';
wwv_flow_imp.g_varchar2_table(183) := '4675105C15C834FC67917F24F99B1A8E31CE3D536DC70F52BFDE1DEF5E874C0A6CB802312A6E58F7C181D1634701A1E8405044FB1BD3884F19EF7BD01980CF2A05CFECB67073020FFF91AB924E00A32888E18F7C80CAA5884A7DA617E051BDEA28D4AC80';
wwv_flow_imp.g_varchar2_table(184) := '7100B48EC0F7531BFD2DB0377B6FA5027793BCA4D2EE1ABB36931EA850D637F05D69EFBFADFAE330E2E9C31EDEFEA0D13AEADD9AC74B044E168174004E16EF3CDB2920409BFC7B5697F1F158E984BF265CD7BEB1CA3C131B3493FF8DAC7B17B5A9F5FA9A';
wwv_flow_imp.g_varchar2_table(185) := '4A10AB6E06C65FC1D16660B785C9365E2FD74F6308A02BDB200CB5910C825861EF4C08CE8485BE5406B81D2B3C71FD363C9821C174FA976185C7D20C054EF96B470365020839E347E81A9A567F7406A4C441678E530D35D8F7FA7CAD2198BD6762E66C6F';
wwv_flow_imp.g_varchar2_table(186) := 'C4DC077F6F2F98FFE101F794B66AAAC642CD08B407A0D2CE388DF89D52F0B7879D87562F3985FD9CA74C048E0A8174008E0AC93CCE9946E0C3BA829FDEBC0D37F6476E67B35ABA7F00383B5C237169D5AB516FADA12B9DCD1504AD194DD3F54A7E6372A0';
wwv_flow_imp.g_varchar2_table(187) := '91DA6CECB032F9AA6B6129FE8E53E25512588D21390DCA7F6B83DDA607418CAD090A99FB41E36CCB84ADFBC7F83E67DCC177FC396500C2E136D00C854DBC898C3FE43F755B540700EC18D06FED3F714664E92D7BA2C901FE7533CE375607420FBE67F1A3';
wwv_flow_imp.g_varchar2_table(188) := 'B05F75A3E4F60259D01C20C7CBCF5F3982FE86E839CCF400E838841139218F98802FC01E7E7ECCDEFF33FD41CE8B3B5204D201385238F3606715013244FF7D7515DB5C5BB71EFC763CB004F61266D63EFE432253B3C6FAE9F128568D5475163416D7F1C1';
wwv_flow_imp.g_varchar2_table(189) := '31C415096269218C1D075E3A5020CDF055527D34FEF2220FFE03F862EB266E7FFCBD69C0FF3EBCE33200DDCAFFD975F8BCB2C112C264E689F427E97EC933103F403A01E4DF6E9AB4E3A09ED882F418CDD3B5B32360EA7BF3683EDCAB391C8E3A631C4192';
wwv_flow_imp.g_varchar2_table(190) := '1B8ECE06996C73346246417D88884A534CA1E3AED92929B8731CF094712FB9FF67F5039CD7752C08A403702CB0E641CF22025FB3DAC217C33401AAE134529B26AEDD4E8B61ADE6D523558F8B3986546DFC10A5DACDBBBEBCCA0CD301988360197275008C';
wwv_flow_imp.g_varchar2_table(191) := 'D3A6EF8B36CFAEC00DAA0B1769E0DF1009FDD0FCCD485981AEE076F478D2FEDB7137A7F41F60650AF0AFD0A32F2B6C927127A3AD86D7E600AC349A26BC6A7D3EAA1454C7C987FC78E4AE77E0C65C4B25F6EB689A671ED481CE003BA6AD4E3314A8666EE8';
wwv_flow_imp.g_varchar2_table(192) := '7D9E8588B76DAD953CE6B760AB4CF881718D178CE40EE45722B01C04D20158CE5A2FFE4E1F07E0751BD771A34905CFDAC734EDEF55628DA4637FB9F4F13556DE0BD462BC437DDEECBD5AF55ADF0F63F50EB3708173104BDFA1A3BE2D69C72B0A4695C2F8';
wwv_flow_imp.g_varchar2_table(193) := 'D558F042DCC4B7EC3F7084FB68003FBEDAC25B261AFD2B697E51FE13632F5A00A25FE8E9FF20B3DB44FEFC037B3B81F57F9095EFFDFF512D286A1BB8A354272E5AA9C3DF7260BAA2B84C51B5511E72B188A2BF29E2243D11C0070DBB78C3E23F2109C0D2';
wwv_flow_imp.g_varchar2_table(194) := '10480760692BBEF0FBFDB9FE1ADE8B86F5702940DBDBD458CD836391BDB51C8084DEB5B66FF9FEF01ACD545788EBBC00B2A42A68DBA6A1F9C51AB5F2F774426A9193A3587C6D3F59F5DD87EA845677EF430CE1F7D017ACC7116F1E467CF074DF03AEFEDF';
wwv_flow_imp.g_varchar2_table(195) := 'EB3AFC1FDDA6A7E94901D08CBD1B7F7E5A9824B03119EAB58B632023750561F95B24353A27C0EF5BEE39122F23DFB2A6F4A5DC406D89363C88B1F145D336CAA015F480647E7B1BF12430E28F31E1D3DF89C1490BFF48E5ED9F6304D20138C78B9797FED0';
wwv_flow_imp.g_varchar2_table(196) := '10A0CDFE0C7478F1C66DD8C120E961FA1F6798E9F1EABC59AFCFB3A4AFD6ECCD38C7C8BC7E1FBA0734E8ACF5F02AF4C3756CCFA387E202A5ED63B780FA071654CFEC9D03102584F8351AB90FECEC008F1880F71EEFC65D0F00D9F7751BB8AD741CFD73AD';
wwv_flow_imp.g_varchar2_table(197) := '9F658035FAD74C408CFE9948D9E8001C54FFB3A0DB1326873C6D64D052255256F285CD68D00B5652E59C4B203E933A67E63F69E29F9D91489050CF42E48405B16B0578F67A073FA9398287B6A3F2D589C0F946201D80F3BD7E79F50F11814D00BFBF791D';
wwv_flow_imp.g_varchar2_table(198) := 'FB9376030C14D5CBC7A00E85114BA2F17B7386984EAE669B0C8DD0F55DF8470D8FF912B1342089F13AEF560C9576B77B65A055050C49F036B09D11EB64A6BDB81C4628246EC30A137702FCDFE3EE01C49E446D92FD166E6A5684C87FDDA48EC024CC7FCA';
wwv_flow_imp.g_varchar2_table(199) := '96C83C002D6F502660E62F7106C0CF6F1AFCF51163FE8E97577CB88F62EF4E45B8449FD4571D027FBF1AFCE005C57CC8E13B43791074AAF5441A1113DE6FDACDD6BF87F839CA975F0C04D201B818EB9877F11010F8D66E0B9FD96D3303BC73453A8DF0AD';
wwv_flow_imp.g_varchar2_table(200) := '54ED916335378DC18F544125C7993D62636DED8064DC9B06F6AA6267FDFA35636F79FF3A40E840592298B81913411D03296BC86860A1C0D10C84612AB87B1AF17EC3414580BF5B7A7C3CB90D1DC9FF4AE46F697FBA221B076CE43FFA99FE9F7FF60C8A64';
wwv_flow_imp.g_varchar2_table(201) := '342A3DC2EE416978DA36E9E24A31CBC15845ED80F99026254D06BA866444746D8CBD696BE70B256FA00CC3283206C206D0E3F4D3841FC180E727F9EF217C7AF2A517098174002ED26AE6BD3C2804DE1305BFB4711BEEEE46ACC80BA8397AB529149313BB';
wwv_flow_imp.g_varchar2_table(202) := 'DFDAF882A6BFDBF6968ECF664E3F4D95D3176255EFD3970234710942A1DF69F55E519FD7B20F8C2F5663A62D7B265C1433DEC681179DFB82AB98F0FED37DF8A3910606D7A0F75F762B8CE870995AFCB4CE4E22409405684B01DA02C855FE560B805B0525';
wwv_flow_imp.g_varchar2_table(203) := 'CDE16C3F6E19F4997BD6CD470E8A644BA4F232ABDDC7150CA9FD980179C78B1C1E69079E6EB4AA9DEB3D3C7A1AF141E32E131FE78ED683DA48F9A244E09C23900EC0395FC0BCFC878E006DFA57F55771BDEFB062DD97108136443E13F3519A8005E8E194';
wwv_flow_imp.g_varchar2_table(204) := '96D696928188C898A46F24F75B5D5E5E1033046A8A7D625EED97D78339314F8CA626F8CDA1504DFCE8C548745CA98512A4B3E9C3F70EB7F00DD3BEC5DB783F147C55B7C21E0A360BB0A2D4BF46F7C201A87A00D5E82B81924A064DB41D8A28B391BEA602';
wwv_flow_imp.g_varchar2_table(205) := '6CBE962448942E58AB2176D11561074E089846181C0D093F60DC07D50969BC3B428198FF2AD0F4C671C4A74C7B69FC1FFA4728DF7141104807E0822C64DEC68347808CD197F45BF8AAB28DDDA0C0C759690B052D92AD797F89654DD2974C913B04648E3A';
wwv_flow_imp.g_varchar2_table(206) := '15C8B1364079A3C9FCF27B75701045BD5216108E7F35EA211BA172C466C084CA67CE4A24BFCBEFEBB568B6822B0D964F90389C688FBBE8F15EEBBB3DFEFFD2D2E1695D8F4BD40FAFE9FE5A06903ABFFC27F7C2AD81B13DD04B0DF3F640736CCC6109A447';
wwv_flow_imp.g_varchar2_table(207) := '9EE45753F2956959EF300E41E2579B68924110320D2D7B437918DE5950531D744E5A29FABA76FF8A7DE3B88F1F66D9E2FC4A049689403A00CB5CF7C5DFF55500776D5EC3DB466D2D63235A236C26D391A1EAAB3E6D9D346F996E0FB3C5CACC235935CC55';
wwv_flow_imp.g_varchar2_table(208) := '01AF36028AD1162120AD0968175F4C89573D01A31558C6A1A6FCC529316D3C7711E2A5691F3C69105DC70AEF3FBC0D7FC8C440E065A5E02656D8EE8A7600E80440FA3B9301218A80D636A9530AE93CA21340AE4F98F2530B00E228E8ED4527C54B2B337C';
wwv_flow_imp.g_varchar2_table(209) := 'EAA694757092A1FD41C7360B61D2EB33EA4435D4C09049B0B1CBD54D584F131E8D09EF3DEE428A21F995082C1381740096B9EE8BBF6BDAF8FF4F77197FB9B344B74042912E191853D971829EB601B22126ABA8ADFA14C95BBB994BFA7A137FAD27C86C81';
wwv_flow_imp.g_varchar2_table(210) := 'C69269182F9901AB9D73E4AB3FD7A83EBC8FBFADACF9224284FCD5E8E998E10D3AFA74051B1DF02FA63D7CF57A071F5980CF2F52FF27634F2D80D42D40837F4807807C1FBA0651055475409DE2CBE5009605568745CF6F1810444AFFD38B0BED96AAA710';
wwv_flow_imp.g_varchar2_table(211) := '44161A68BC2DD3DA032B3C72BED0E5C0183109D09CB7D611084385F9B0DC11318DF8E9698D6F98D2FC2FFE41B07000D20158F80658F2ED7F4CD7E387BA2B20957C19773B810CAA10D4ABE9B0447D25ED59BB5FAD0F041B6EBE83B6FAA95050987627AE80';
wwv_flow_imp.g_varchar2_table(212) := '1C43BF654B4B06DC280962CC4323E2482C7DE95F579681BE578FA6D72CC793D7F0FF068223BD976AE0FBD384F75EDF8B2F47C1E30B91FF3AAC50B0A14E001977CA0E98F25F2D03442540715C4C2950847F9A8286CF10603E02B5131E68D26B15FBA27F54';
wwv_flow_imp.g_varchar2_table(213) := 'FD2035E84138D1090C8A457409A202E07C6FD3FDAF51F018009F3CDCC26B97BCF9F3DE1301CFD6251489C022112878FDC635ACCDE813F39D8C1419DB406E93A97E0A90B3D7E53526FB4B61B8D5F9A31176329EF3D2F440CA07B04C7625EDB5116CACFC47';
wwv_flow_imp.g_varchar2_table(214) := '6A9BF10BC4C8CFA3DE705D555250CC65075C9D267CEA701FFE1A266C4F1DB6BA0EA48F4019007202282742930025F20F12C0DC21601C007198B853C053FD5583C0380B3C3D901D9BEA30D4AB95F09DB228E61C988E813B2FEACCD4EC4AE83408FC0CCF91';
wwv_flow_imp.g_varchar2_table(215) := '348C7ED55770AEC6849DAEC3CD611F9FC8AD7F312BB3C80F40DEF4C211C80CC0C237C0D26FFF1BB0852F586D61AD212767003C726E35E803D34EE46883FDB05E7FD7B7D7483C12FF8CC8E6FCFC38E636EA05541FC1C9728D10D0215E818909F1B5CB74E1';
wwv_flow_imp.g_varchar2_table(216) := 'A68C21048582A1A3147FC16BC75BF82FD33EEE9C7A6C958E07006D901330EB02104D804A06A40706D7E6AD2CA0290CABD77376429F2AF40F6755669D0A2E96347FFAF0CFE19706B0FECEF502F92595AF117335BA7A31B522FD195A8FB836153C77DCC5CB';
wwv_flow_imp.g_varchar2_table(217) := '93FCB7F48F7EDE7F6600720F2C1D8127951EAFE9AFE0AD14F552B43AAAA955F65A9C7557ABCC1AE906D95ED7BD6FBA0766C301543AB7D1EA536B28364E4DDC2CB2F5298521D0B724BFCF0AD09281D84609C943B7A1F716D219F63161739CF0C2F13E3CB1';
wwv_flow_imp.g_varchar2_table(218) := '900350B0C96D80E21C6C30F14F9400C9B0DBBF3C02D8390012561357C00A266CF0AD78A22509E3083067C223F1B639CF6FD72E38645FE63C013944F480663B58DF5BBB08AA3012E1F8A832E17DD63B3CF238BF1281A523901980A5EF8085DF3F19B87F5F';
wwv_flow_imp.g_varchar2_table(219) := 'AEE0497D8FAE2B28830EB1516B2576B52AD3896D554BAC76488CB792F9CC3ECDC877962EF00F9CA6CE25513063B45BD41C66DDC8FBB433C1B21516E7F27554325ECC6CC761795266908BBE3A16FCB3E93E5CE1C8BF605BEBFF9C05D0885F888012FDB340';
wwv_flow_imp.g_varchar2_table(220) := '904D0954432F1A00E2346852A0FD374C0BAC7FA81981B964B1FA5CCE14A80FA75AFC980F548A0D85B6950F15516612E3845F2E039EB9261728BF128144201D80DC038B46803E005FD86DE21BBB2DDCE20C8018D346C34E6BFD3633A0D5ED17531207F814';
wwv_flow_imp.g_varchar2_table(221) := 'AA6BAB81F768DC4AD7C66177FE804EC2B3749C9616B8BB2014FD2DE297C592097B6DDFA166FC63062210066BCC2C52B8F4F6D74E7BF815ECF310A0EDFB53E39BD40D40D901D3036041209D0360BC00D52E1002A0A02491BFB50AAAA3A2A44AF14B8405E8';
wwv_flow_imp.g_varchar2_table(222) := '0249D6B1E029C89813B1AE8820BE141C9CAA3458D7C97BFEEAE8C07064456C2AB8B30CF86BE33E7E7B32C9A6456FFDBCF944C009CB094522B04804ACA6FDD68DDBF0564A815306C0DBF0B44FBF76058AF90D72C0967217925AD50CE0D745E65A9005748D';
wwv_flow_imp.g_varchar2_table(223) := '011D6D67E773A3AF7C00160C5276202724E239F4676E03B4F0FBC06020EB6890A535263EF938F41F69E1BF10F7E25DD0B10EC0A5A963921F1101A90B800C36290352E4CC385159400DB9AB020651207304A4FC50EB18DC5A690390ACD461AD7DC6B7688C';
wwv_flow_imp.g_varchar2_table(224) := '7C2D11D8B440CB708843A1AD9A4D0DD34A116D1E404497C01C009242FAC8713F7BFF17F949CF9B3E0C81CC00E4BE4804007CC7EA0A3E99A3DAB9FC8C7C4424E0D696BE5002709D008BEC2DC9CEAF95B89BE364CFF2D7F241AD7D6B306F7AFF41F567CEF7';
wwv_flow_imp.g_varchar2_table(225) := '53532ED174540BB471C57A9D4C8C73395EA3C94512C1C4DAFFDF3BDC44D74DB88A0E5BAC032025004EFFC7D1C03E15508CB3A1E4FF2A299071D21B6302A03930EE39D99FE5459461D0367EE12D987197AA828A23359DFFF5974A38348905530C14672764';
wwv_flow_imp.g_varchar2_table(226) := '714AC19571C28BCA1ADF3D10FB3FBF128144207C54138C4460B90890ADF9C0AEC7BFEEAFE12649034BBCACA6BB6AF34BA4DD8EDB6D456DAB81F5E8DDB20755DFC70DA444CA95DFCFEF0E4438E1066889400DA25F5A534A5063A9AF0966DEAB04664DB56C';
wwv_flow_imp.g_varchar2_table(227) := '2F4ECD04FC0EF6F1EFCB1E1E3375D82632E024DD002C07AC913C1102298A17C9A49AEA8F590082ABFEAC038FE8F243F3BF89F8C45B89A246E65789DC727500E2CE6C320207988E915CA845932293101F370D78DAB88F7BB3FABFDC0F7ADEF90104320390';
wwv_flow_imp.g_varchar2_table(228) := '9B62F108B0512BC0EBFA2B6C005764CADC4ACDEAD39502E8843A63AAC788DE4BF11AFABB3B6143045D184FE602D4F641798166CAABB3507D92B66ED7587B359A75D69047D1BEC87460ED74A03BDB1E07BC00B7B81B60BB83380013390085D5012913C003';
wwv_flow_imp.g_varchar2_table(229) := '81D4F88B0E80D4FE4D28C8220913036271207D8D383041B9D052FD4E1C8C3750BB26CC09104C83C850D04F6822984838B4B5E3B9BF1D8632E055D31A5FA4531017BFE11380442038D84988CDEDB06C04D4727FED6A135F8C6D0C3EACA7A692D9D8E8EB8C';
wwv_flow_imp.g_varchar2_table(230) := '80C7B3022CA46E25F7DC7F083C3E4F5D0B99D095804573B09105941A7A25FA85D17A7A6D559868D6EE173B144CD15045019C92604A8105B8328CF83EDCE26BBB424EC034B12600197C7204E85ACDF89353C0DAFF6ADCCD31B09B25D120E70178B6C09A04';
wwv_flow_imp.g_varchar2_table(231) := '2319500615314F2064412CE6B73282945DE47F1ACD40BD11C99804208D67107238A464F4A861C233A67DFC7AF6FE2FFB739E779F1980DC0389C06108901DB90D05BFB7710537C65E24F094006746484C991607384D5D5BEFB8E6ACD1AE7404980A9DA6A2';
wwv_flow_imp.g_varchar2_table(232) := '2DB8350A80FF6C93EE02FBDD2D5FED0334A3E8DEBA29E48530B8D6FC0F6F95AFB176185C84823F1CF7F1B365178FEDB41B60EAB0C19A00322889DAFD580B804A01E60070541FA581AD3D5246031969AF23F61D3B0CF14BB911513FD93914A1F0EF9A0271';
wwv_flow_imp.g_varchar2_table(233) := 'C261ED7688C24052F397EB61D54165468E248A344DF8D0712785FFF2A39F08CC10C812406E89442020F013DD653CADDB10195C32242C0B1C86D3560BAC016B3B764F0869649A44BEC7A25429E75BFE3F92F1A2E50B9D7D1AC9FB48DF98D6E7B7AB117562';
wwv_flow_imp.g_varchar2_table(234) := 'A29F2DD4CF83C9F7F7687D5EB30E3422F8D234E105E34DBC4BD7F158E06D25034A07801A7FAEF153F44F06DE8CADDCA945FD62802D8E97F05C6605486A40CA1C152F2F0DC4F728D7D2FC1A1703542961F32DACC452E7106A91C5D3FFE2846C763D5E32EC';
wwv_flow_imp.g_varchar2_table(235) := 'E08599FECFCF7922901980DC0389C03B42E033BB0D7CFBEA32769488466D6F4D775FE00698A9B714B52604FCF536D087DF7F80B12E465CECF2ACCF7066049D26387302CCA1509FA3BD2DB7FD9A3C0F3E8715208C3DBF35013F3ADDC47D05B8AE9A00D20A';
wwv_flow_imp.g_varchar2_table(236) := '28C69D0981361C88BB016C12A03A49EAF2444740CEA103965A2F48932B266A643407D734D4F755F225A3A7A3935D46D8699A9652D19647D36C00304CC0E3FB82A7EEEF24F92F3FF689C02108640620B7452210102063F786FE3A6E9271EE0A7A9D0DE02F';
wwv_flow_imp.g_varchar2_table(237) := '994FF58B9F20750E6C3CB0E4BD8DC56F0A7866F82576953E7515CAE17F6A082B87F6493BDE865889EC6AFCF41AAC4C501D168BBCAB8361DD899C59B032C6FD62487F3A0DF809EC3119F0D204E60188E1A7813F12D9AF3495CFE4BF300488D2EED2D257B9';
wwv_flow_imp.g_varchar2_table(238) := '93F41EE6523A5EF3328044E8C61090B1CAFA3B9F6F2C5D12A6A710A0D134439C33606A03765C9A4054F0DA32E2F3C7BDE4FEE7A73C11480720F74022F0E720508017AE2EE153A91BBE74282379009A0ED0F4F501329DE6AB5968C72580B5F6EFBC008B88';
wwv_flow_imp.g_varchar2_table(239) := 'B942ED17211DFA95C8E76630480B2B0F4EA70F86F43FF7D8DBEC029DBFA7250AE72A98E2A00DE9514120D709D011C4D7A609CFC14DBC2B0A2EA3C7A68A01514B2019FB9E3801DA9D20530265E80F13FFD4BF20136C3C09C90648FBA0DCAF8E3FD6EB23A7';
wwv_flow_imp.g_varchar2_table(240) := 'E1404B9F51FDCCA151A2A0555DD8A75001215336A85D93F22A7324A8EE7F7D2AF8FBD30E7E5E31CABD9F0824022D029901C81D91080404E803F1FEA5C32B37AEE1ADA4933F90ACAF0AD49041536B6469F738044888FCAA1E6866CF54F1B498CD097913F0';
wwv_flow_imp.g_varchar2_table(241) := 'F1E13FCA72B7FE77D51A1062A166016C1E81B1FCD90F880D7212F9D6E983CAB43727A15125B428B976196E61C24F8DBBB80713AE74055B902C006540281340065B8880D5B04B1BA06632B4BC6F9D0074067A8F47F5FE7DE52AB893E2F7545B2E1B25007E';
wwv_flow_imp.g_varchar2_table(242) := 'E16C5E823B48AD68C0A81E1861F7C871C053A7350F3FCAAF4420113888403A00B92B1281431078F5C6355CA5C978A345AEE1A372B010ED6D7BEC10B0818F1AFF3A82475BFD7CB89036B8998E005F8645BD4DE75F308C410E38F2DD3C22F606801A715BC6';
wwv_flow_imp.g_varchar2_table(243) := '81EF201CBFA61E481A78C25BA6113F865D3CA10819901C0062F1131FC0BA01C4E8D7FFACE79F2EBD4E06AC82419CC257A69ED4F16D76806809883BA057A8CE92996BCD69482F8046FE368AD8CA17CD4021274E02AB0978C5B88F7F3CA5F25F7EC0138107';
wwv_flow_imp.g_varchar2_table(244) := '42201D80DC1B89C02C034006E81F6D6CE3CBB0897D63B15BDADEF5F62B31CDDE5E7BD2A5186E4C75230706F2BE1A62D3C1531A218BDC0421A0785D6132A09F2FF6C7FB1802EDAD37B33A9F0F50837F61E69328901EFBF204BC70BA178F251E40A16E808E';
wwv_flow_imp.g_varchar2_table(245) := 'DBFE685430CD0390C1404208A4070747F8D416A87979E70258A924BC8E1C0F1A253C6A2B2167088AB4EC49E7402D8B580B21E316BB17FCC63D55E2DD054E942C60ADFFC78F033E68DCC31B7377270289C00322900E406E8E4460860019A43B00FCEEC635';
wwv_flow_imp.g_varchar2_table(246) := 'DCADA96F23D1B3C134153B2D405B76BDC9D26B342F87D6C8D7046C3CF72D86CC860155A5A1D62391B241ADA5F31183B320AFB67E7BF104BC713128E479BC1D9319A1E3808CFD7F1C77715737E29ACE06D8C0840D74DE0520A440AEE0AB54B046FB2C176C';
wwv_flow_imp.g_varchar2_table(247) := '6D81A377364819C0D40E25B637B222F304FC5A5B17C0C881869F95042C6F5009848A95960886D2619C26FCD1B8C667613F7BFFF3D39D30E12341000020004944415408BC0304D201C8ED91083C00023FBE79154F1F890DAF956C22BDE9F43D4BA7AB5C9F';
wwv_flow_imp.g_varchar2_table(248) := '93DCEA18606D796F86D298B152423FABFDA9136096910D624D8C9BB174E7C2CB06F55831F320CA84B5BA5EE3EA388C203A25CA3120233D01BB18F052ECE009A5C7659E0648D301A5FE4FB30158088809802414D44906408D3A3925FCBD46ED4202B47B95';
wwv_flow_imp.g_varchar2_table(249) := 'EB952C813A2CAEDC27D733E704F02BC314C5F69D912550751AD6A5C3ED18F1D5EB7DFC78CEFDCBCF7622F00E11480720374822700802F4C1F8947E85EFEE2E6387357D6AEC699C3527B805319ECA67A3BFD26021AD64ABF5AA1AF7A1313F10FB6CD6B0D3';
wwv_flow_imp.g_varchar2_table(250) := 'D638A3DFF6BAD7AE00551B6C9C022B016809421D8BAA49105D82AAB14FC724337A75EAF0A2E93E3CB203AEA0673960EA0890C9803A036022674054014DFD903B02A22890B536F2F96D1E4035F3E6D8C8C842712A1ACD7FADFBBBE471200A4ADEBF8E37AE';
wwv_flow_imp.g_varchar2_table(251) := '3A091376BB0E7762C4FFBADE49F39F9FEC44E0CF41201D80DC2289C03B40E00F565750A61E1D4BCA8A3116232E6D70819CDE18EAA01DD830E139A875553C9B3550AD34671042105FD3E7356E169BAA7902BDA6905CF79E42FF70C7F27A7426BC41CF5BF2';
wwv_flow_imp.g_varchar2_table(252) := 'B13102BF5476F0BB18717BD76173043641D2C0D2F2276A8035DD6FAA8016ED4B3640AECD6AFBE6281947C0E27F530DF474BFFA395531A0B615F2DDFB0DB5CE93102EEB6BFF0DF6F035033101F22B114804DE1102E900E4FE4804DE0102CFED2FE16FF71B';
wwv_flow_imp.g_varchar2_table(253) := '14CCD7C4BC4DF89B7597995A5DDBC2165BDBF42FC168D7B477E0C1B9104E35F2D21D20D1B49508C490B652C46EEB354D501D15BD583FA17CC3FF1B888D94B3D89F06BC64DAC1136D36007543B01050EDFB674220EB1E48B70391045B5960CB0E848E8080';
wwv_flow_imp.g_varchar2_table(254) := 'B3674F2C43A0DD139E19302FC1DA288DE3E0982B27824ECE72CDD2C970FB06F08C9D5DBC365BFFF2739D08FCB908A403F0E742942F583202FF4B29F8CDD535DCA38DFF94F6F63635B5B6CEF6F7B1B512D97BC23B46E05E8A2783495279AA33A0E6D8D3FD';
wwv_flow_imp.g_varchar2_table(255) := '117437DA9108184A12AA3D209AFBAA43A0EF69E6ED1891C06A081E54D7C700FDE90A0AFEF9782FEE283DEB01D06C00E201F0786066E60BF39FF8102C02A411386B052838E410D8FD5B17049D2536FF894B5527029AE25F2503D4D287B5043A55B0CE4FD6';
wwv_flow_imp.g_varchar2_table(256) := '974F9CF2A7BE820F9FF69083FF96FCA9CD7B7FB008A403F06091CAD72D12014A53BF72E32A9ECCC437AA03CCB481397AAE4DFB66F82565AD89F9AABFEBBFF3BC808DF73D045D172032529FC9E59A00D06C9640AC854B47416845D4F6423B8D95192C0320';
wwv_flow_imp.g_varchar2_table(257) := '750A2102D2FC835F9DF6F0DB65C0EDE8B82570830704110F60D4F63F11051225402D096896226602BC24A0990233EE96E617A7C03C91AA91E88E42F3840AA97F73706ABF03B631E2A565C0B7AD33FDBFC80F6BDEF44346201D80870C59BE6149089091FB';
wwv_flow_imp.g_varchar2_table(258) := 'BBFD26BE095BD863D95C8B58956CAFA96A93D6AD3DFF9520C0C62EE8EE8B7360B300044DC9EE8B0196A85D0CB853E34C57203210EDB5BA20C24DB0427A9C1C549D1167CF9941F6F27FCD6CD084406A77FCAEEE26DE75A26E800E9B5A02A0098174652C06';
wwv_flow_imp.g_varchar2_table(259) := 'A45C065107D416401E172C3FD79A7F7D8F8E26F236465356AC49126D1BD456C798C98F3441C74C5F4077FD580C78EAB08F9B4BDAA079AF89C03B81403A00EF0478F9D665204052B86FDEB8EED2C01E5DAB219C5101AC455D7BF7A56EEF416E0D76E5770D';
wwv_flow_imp.g_varchar2_table(260) := '0940DF1A52F56C9667D133ABF9A96BC066963302B3D799617781A0D60938F0C1E7924565175019E0BBC67B71278D072EE400581640DAFE645C72CBFCB79FE9BE4CB1CFDB0243A42F03828C8310FF8DFBC9688DB3FAC96CCBC924C58927FFBD7ADAC7174F';
wwv_flow_imp.g_varchar2_table(261) := '19FD2FE3539977791408A403701428E6312E3C02FFB45CC2A76D6CA048A1D9070499F6BEA5EB5D1740ED969B2F97AC57E29D6AEA7355DFBA0A663DF30E6A3C8893FE4CF06766D8D51BE1E32A61B0761946F6BC92EA834E019B652E49C835BE7ADCC7EBB0';
wwv_flow_imp.g_varchar2_table(262) := 'C6EDAC0A48D2C0240844FDFF62C0AB22A065004425D0CCBB740854E7C76E83A3FE60D7EDDB9805B0BC48749DCC55700F4BA58DE9FE1E35019F3DEEE29793FC77E13F8B79834787403A004787651EE98222401F920F2D3D7E6AE32AEEA3D900CD7D6A88ED';
wwv_flow_imp.g_varchar2_table(263) := '4E416CE3ABA36C63746DAD7D94EF77FE80F1DDEC779632E07355F5C16ADFC2B1F582F810614050F415EC7B3D9CD7DD5D6727D4D289E5304EC0D634E03BCA2E9E441302490FA0EBB9E64FE2407DA7F57F6D0BA4EB62996066058AB743BA01F6256D8216D5';
wwv_flow_imp.g_varchar2_table(264) := 'CB6FDDB83B7720021B4A01E1D58DF1A76B5665C6AD32E02FDEAFFD9F5F894022F0E0114807E0C16395AF5C3802BFDB5F463F7558912880A6EF8913281F220B6B2351ADCEABA75EF5FA124BE16BF4AE1D06DE0160237C3DF52F86D3C7EA9AB890FC525508';
wwv_flow_imp.g_varchar2_table(265) := '85FD1FAFA53A1AB1C570DE9D506B04CCC21F27EAAA63F62045FD3F8C5BE8C709DB7D87AD49DB01B5C7BF92006B0B2009FA70E4AF53F95837815B0695B0A09742A788D50FD701143204DF13B32402CFC11C86D087C1AFBB324D7831F6F03DE4B5E4572290';
wwv_flow_imp.g_varchar2_table(266) := '083C6804D20178D050E50B978EC0576203CFEA2F618F0CB332F0A915AE06BAB586EE0A766A4C63FB9A197249B92BAAA1ACC0AFB5E0D9330366EDABD29F4C1B92C983F2A58E45B5B52E49A062857509DD4F31FDBD9865B0898613FE70DAC72F4EFB782495';
wwv_flow_imp.g_varchar2_table(267) := '014ACF6D7E3C1DD09C00BD7DAEF573578098F2A80DC0CE92121AA593A24E0434AFA5710802266DB6457EAA2ED6847529782C46BCEF7A0FBB99FE5FFA4734EFFF2122900EC043042C5FBE4C04E883726729F89DD535DC6D037C28E54D51670CEE9BA8DC44';
wwv_flow_imp.g_varchar2_table(268) := '7662AC2BD670DE923F57FC230B2AAFA926301ABE6AEB541637120AAB30411D0BA05698A273EE64E0EB8C3C81D83D207FA65BBB44D175B98527A0483BA06601682E0011F0BC1B40897F7464E101A8D1E7F6C94A0A34D21E7316C335CB58E13A23218A2985';
wwv_flow_imp.g_varchar2_table(269) := 'D14607361FF95FBF390DF8A24CFF2FF3839977FD4E21900EC03B055FBE796908FC64BF8DA7932E5E57235D36503A20871BF76C84B0A5FDCD1A86E855EAF55A3A5042A085B7FCA10C1901A7D2B9F84D9CAEA7858359C620AE8B27C6CDC6B761B444D4B16B';
wwv_flow_imp.g_varchar2_table(270) := 'D0320B00D7FE7F74BAC9428897481A98B8003A17C06480A523809AFE5423406980754890DCB845F992E1971A7F94FDF52C80E1E1624AAE70E0B2855614B9A32BF8CCFD5DBC2AA3FFA57D14F37E8F008174008E00C43CC47210F89C6E856FEDAE62874C22';
wwv_flow_imp.g_varchar2_table(271) := '7D7A5417A84EE40B2975D7FCD771C03EE0A6ADE97329C08272AF8D0B7FA0A910842E019F27A0D05B8A9F4DA51A5B5111A8E1B8FFE4D30225040F09030EFB7DD4B0A601FE80CA00658D47713BA038002C0AE4FDFE5AE7D79286C802AB2E4030F2221D5C47';
wwv_flow_imp.g_varchar2_table(272) := 'FEF02D1B469A33F06B6C7E2FC7B2DABF282800EBA960DD0DF89861AF260C96B315F34E1381771A817400DE6908F3004B42808CCF5D1BB7E166A15AF804D29F9D7F8838F067432AC8C4BE81FA5A35D45A3EE08898D3FEA1C66FC65DABDEF32900DE4D3FEB';
wwv_flow_imp.g_varchar2_table(273) := '1C3083EEC58359DB5DFD7BA8FBABE310F2F02C674CFECDF634E13BCB4D3C111D2E4F858703AD781CB00E087225C0CA0130C6BF4C08AC1D0B360048AE4DD0A00C820015E58DE5575626D0A484BB1384EDE571C28BB08F7F319274517E250289C04345201D';
wwv_flow_imp.g_varchar2_table(274) := '80878A58BE7EF108BCA0DBC6A7F59B3208C798E7DE041069EBC6E0732D209911E02A7C21131027048AD7E0EC7E0AD179E29DBA1387310465E84F1C0F6CE754BD80707C3EB29729D4CCEA3954B2D0D79806EC6CA3C3BF9A6E629FC605A3C336AB024A1640';
wwv_flow_imp.g_varchar2_table(275) := 'A4805514485B01A9038059FF4E10ACEA8966EB63FADF52FFF67A1BB328C65FB3275A4EA1A3924E01C1FE8469C053C67DEC2C7E47260089C0C343201D8087875BBE6BA108D007E65D51F0AB9BB7E3C634B26E7E63978D81AFC23FD22D50CD9EE5E7B99CEF';
wwv_flow_imp.g_varchar2_table(276) := '120281EA1F6A0135ADDF9A7C83DE33029EF237CF8127F4687DC2F3004E9F9FB7D69153627579261F6A346E4444BAFE3F1DF7F0EFCA3E1E499A00240DAC9D002BED3DE46C80CE03A47B16895F120B927B13235FDB05E51EA236407D1455B44CFC37645958';
wwv_flow_imp.g_varchar2_table(277) := 'DC48CA23BF30EDE1CB33FA5FE827316FFB28104807E02850CC632C0A01FAD0BC6AF31AAE8F14057BE81FE8FD3AF347A357318DA3B4EB0507217603D4A83C48064562807A19E21428D1D03FBD9621A88E445376D0D751E46CAD87CDF76C8BC51B91976A67';
wwv_flow_imp.g_varchar2_table(278) := '837110268AFC27FCD3720BEF32155C22554095066622A03A03C6FEB751C1A513431D237C9E0F600EC7A19A00460C9C3B045A2BE924CBF1B8718D8FC61A7F640ED8A27660DE6C22703408A403703438E6511686C097ACB6F075D8E2F4B3A7E6F9D3544975';
wwv_flow_imp.g_varchar2_table(279) := 'FCFB28016CED821ADA573A9C4EED53432CAD7216CD9B43108F5BB30A7E6E3AAF89F0C57FC3BAD8BB466ADF73A7A06D07143FA03A3564BEA90C40ECFF9F9976701F465C4187AD4264C04E9401B58ECF863F1A752E094869C2320C361B207437BA83606795';
wwv_flow_imp.g_varchar2_table(280) := 'E149A34C5F9444816B078C5D87619C70A30CF8A4F55ED6FE17F6B9CBDB3D5A04D201385A3CF3680B41E00E00BFBF793BEE19A50D802478B9B6AF2D81A2E513A8698D51D7E4BDD6F9395A579B5FA579DDB3D0A398C84FABA827A4C15A6FB7B202530FD998';
wwv_flow_imp.g_varchar2_table(281) := 'B725004F2A44B120F3354C9528D41EAC61809C807BA67DFCF8B48FC7960E97006C74051BA31879290148E6C033003C34A86DF76393AEE70EFA45EC20585984F134AAFF8C2F319682DBEF7FFF374C7BF87FC71CFCB3908F5BDEE63121900EC031019B87BD';
wwv_flow_imp.g_varchar2_table(282) := 'F808FCCBFE323EA25B7114CC869B8C1669D3B3CDAD1DEEA6FA23D96A33D612B147C11B472C10002B81BF0A0349CDDE0C7BCD23C4624495CB0B33038C73E0EABF4648947F6336DDABEFCE0900AE4DC077E2261E558807A065009F015027034A1640B20196';
wwv_flow_imp.g_varchar2_table(283) := 'EEB7D1C03C2B803A28F5F2C5F0CB63484A055A843007C59321569C28B8B30C78CA7ACF3A302FFE46CB3B4C048E098174008E09D83CECC547E093BB15BEA7BF8C7D7500E48E3552AFF6B9AAFA86DF49FF7B2008EA001D394688DA75F46F4533140E6CF08F';
wwv_flow_imp.g_varchar2_table(284) := 'D8D4503590485C8EA27988592BA09BD39825D084456D47545E803A011BC384FF50F6F0C669C095AEE759011B5A02E0C980CC0590B4BD7003A41BE0200740C609DB97A9001AD5AF8E0AAEE50F233CD220A2579435BE61C8C13F17FF13967778DC08A40370';
wwv_flow_imp.g_varchar2_table(285) := 'DC08E7F12F34027FD45FC39ADADE540A976603B0ADF57A7FD0AE6FB3F19A0A17CBCCED81DAF6A67E846708DA06C0A015A00DFD5CB3B71E7A3EAFCC18885D0431BB20D1F75C73401D8B304DB066283AD50418B13B4EF8A1B283C7970E97A90C3089209068';
wwv_flow_imp.g_varchar2_table(286) := '0208B7C07800F66FCBF6974C41603668AE40EEDF7402C475D1D7691981B80B8FED277CDCDE0EFEE042EFAABCB944E064104807E06470CEB35C5004BE61B58D2FC016F64C158FC603CE2CAF9B3BD3F79F05F962F02BF1CF0CB82502D44550C53E358BD6C7';
wwv_flow_imp.g_varchar2_table(287) := 'AF517EED28506D01D5E08F2A7F956427A9F989E48CAD1D510BF39EA4F0E97DA10831511960C23F9BEEC3634A8FEDAE607314E3CF4E40D0FDB709803220488C396516AC0BC14B00EAED9893531D80FA68B2720739496FE9467CCA7E92FF2EE8C7296FEB84';
wwv_flow_imp.g_varchar2_table(288) := '114807E08401CFD35D2C04DE1305BFB2BA86B7290780D3D956C337E95F09B8995D2F847691FEE55ABE3A03AECE679D7C3629705636A8D9813052D85B0B55104042F7B62B40BAE76B9B5F180F28D7A4AD801A79D7E9BD9A29D0136F00F88571077761C4B5';
wwv_flow_imp.g_varchar2_table(289) := 'AEC71665014818C83220B329816CF8F9FF640411B7059A4C41D02F60DC664E8864442C17303107E11B99FCA7FACB176B2BE5DD2402278E403A00270E799EF02221401FA05FE8AFE0F19D24BCA9466D6A7F915527FAFA6E69A546EFA440AB70CF8D76680F';
wwv_flow_imp.g_varchar2_table(290) := '6CCD77250106429FA8E699D53425A220A2E35E4695DCADD7AA3206E60704EE81BC469C9881E481A7013F50F6F078503740110740237D62FDD3C86036F29ED2AF8A8104419403D66A84E0D1E8FF9B68909225EF9F4AF8288C78CAB047EACBF99508240247';
wwv_flow_imp.g_varchar2_table(291) := '80403A004700621E62D9087C61BF81AFEF2E6160932725001B5CE3F16BD0EBF77E7D15D1F199785C7F17031E0DA3B1F3855750C57EBC461E4883D678E857200DF816D70BD7DEB3FAB15CA0EFB4BEBF2842E4172387BA02E0C5D34D3CA60097D0638B6481';
wwv_flow_imp.g_varchar2_table(292) := '479A0D401C00510194FEFF36FDDF92FD8283E02D896AF4AD2BA00083720A5623F0D358E339E37AD99B2DEF3E11384204D201384230F350CB44807AE2EFDAB80337CA886E20C5BF907FD7613852FB8EB2C09C0E90B0DB34FC6B2E9E7FDD8EEAD1F707C32C';
wwv_flow_imp.g_varchar2_table(293) := 'B65DDB0ED5AB882A8192D56F4583EA20407556663A01752EB0CD3488237BE58A89E1FF1BE31E7E176BDCD175D8A296C0897800728DE40870F4AF11BD9301D5B1B1AA064B035B49207839740CCA66D0EBC80120C7E1D113F009D31E7E9F3816F995082402';
wwv_flow_imp.g_varchar2_table(294) := '4782403A004702631E64D10814E025E5323E6EB5C234D418DC0D3427BD4D0D4F72ECA182DF9206F51329257AEDFD8F117E101872B67FC8FAB3DBD018F53A9CC87907760EAB4378D9A0AE62F4453829A1A506BA722AC1AFA6012FE132007089C6041319B0';
wwv_flow_imp.g_varchar2_table(295) := 'D3C89F9D01798F3B017A4DCC03088D8EF2BDB51B8A534465044D856028233B1537A7119F90D1FFA23F6679F3478F403A00478F691E716108D087E8A34A8F1FD9B8865BC3E0F5F998AE6F5402831890C9E2599CAE34C12A236499F9E032189BDEA60432DC';
wwv_flow_imp.g_varchar2_table(296) := '2DFF4F958934D6AE3EC901DD211BACA3EC4489F0BD87B1560B84B0A8ED8A05B832022FC14D5CEB3A5C9AC05900E7019802A06505746CB00C46B236C0AA76605C886AF8A90A62BD0FA4FCB7C65763C44FA5F2DFC23E5979BBC78D403A00C78D701E7F1108';
wwv_flow_imp.g_varchar2_table(297) := 'D007E9BF6F5CE719F56CC824DC96289E2BE212CD5358DCD4EE6B975D2D0918233F30F5B58DC099FDC220B44839BA0FA6290C8CFAADD10062E9DFB4036A72413B12848450BB1295B7E841B9A6EAA9CEFFDFCB1E5E33AD7127B50416EA0628201D04D64420';
wwv_flow_imp.g_varchar2_table(298) := '2E80CF06503960CE088853E29980F004E292809D48B307630F3C7A1CF0DEEB14FE59C407296FF244114807E044E1CE935D6404BE72B5892F9DB6B46E5D3075403169E0406C33EBEA1FBE86FC2731B2187CA708B031F7297A742C961D0EB979B3AACC09D0';
wwv_flow_imp.g_varchar2_table(299) := 'FE7EE317C497856C80D303F53DB6369580584B10CE0DE4D140D26D7009135E3CDEC293940740BA009CF6C7C49A00E20488EC4FFDAF720A2CFD6F1A00F61ABE3D6B11EC3AFCEC7A0FDF3425F9EF227F76F2DE4E078174004E07F73CEB0544E089A5E037FB';
wwv_flow_imp.g_varchar2_table(300) := 'EBB89727D9299B9F0CAEA7F1B5AF3D84E2D26F5FDB000345DFBF8DCC7E510DACE9730DD8154D35AEAEE627CE40D4F4D1C4844FE4A1338B8CB0B5064AE6C2C7091B634F2F8253F3FAFDD604FCD8B4C33310783600770348FD9F9C00CB00D0C5B154303B24';
wwv_flow_imp.g_varchar2_table(301) := 'CA0DD02BE649813E0BA0CE4F10F80A1E55467CECFE2E5E7F01F74BDE522270DA08A40370DA2B90E7BF30085050FECA8DCB78B769C5064F0CAF10DC24E5AEA130E7E6832C8F5BE5DA9FEF69F8AAC8531D82F03BB1CF64C4F5BD4AE8F3E8BEE92510A8E3D8';
wwv_flow_imp.g_varchar2_table(302) := '01C9B8EBF85D35D0338AA296326C3C5028374C135E3F0DF8CF658D4716EA060036551A98B0E895B760ED7F12E16B39406B0F552EB8CE1D909C812438DE82017F63A0E8DFDCA00BB35DF2461281FFBFBDAF0BB52DCBCE1A6BED7DCEBDE7547527316DB7E9';
wwv_flow_imp.g_varchar2_table(303) := '0E2679323E28017D8B3149D5BD55010941440441F107411402E253104CD7ADDB20312F86EAFB53DD1862828218302A24FAA2988009C98B12440D0924F1A51534A9EAEEBAE76F2D1D3FDF9863AD733A6F397BEDB5BE0BDD75EF39FBEC35E737E73EF39B63';
wwv_flow_imp.g_varchar2_table(304) := '7CE31B07478004E0E04BC001AC0981BFD29FC83FD89D8966ACED665B4C74D0B6D77D025ABF0017F085E82D3E91191380182EDDFE20A17787BECCCD434D1FBA803C2EED2CD5FF53353DAEF35E7850530CEE528806C65535181E40569AE7D3D157F6328816';
wwv_flow_imp.g_varchar2_table(305) := '3C7C4C44DE1B5FC91FEE3BF70318430B805B7F442BECA08FDB3FAC7DDD10282200962ED0668ADE4F4047F28DA3C8DF954BF9B98187FF9A3E239CCB7210200158CE5A70242B40402D71BF74FA75F2653BB0D5170082BA383DF3D49D0AF55B9CBE809046FE';
wwv_flow_imp.g_varchar2_table(306) := '450CE077F85B4855B3202B054CCD012C81CACF6438BF3E2B4841BC3B2A185A06A085EA711CEB6B34F4FF6FC657A2CD795FEB7A3911FD5F34074AF53F3400DE3409510B6F17EC24C669851B065BD46410F9848CF21DC3059DFF56F0B9E01496890009C032';
wwv_flow_imp.g_varchar2_table(307) := 'D785A33A5204F450FBB1FD99FC407722834AE006F507CC6B7DCC0AEAFD2C77CF4311397E3BE6EB391F7D038654D1378F7E84ECE114A8377D4418EC68AD69043F6B7D445930505A076284B32F65614296233A0DD0B7FEDDF15A7EAEBB944F76BD3C1C3B39';
wwv_flow_imp.g_varchar2_table(308) := '313BE0D18D812232E16240AF8A30F31F730D0CAF83921AD0F7EBFB4EF632CACF8C57F2233734FE39D28F02877D040890001CC1227188C7838012803FDAF5F20BBBD7E57735AC3D4C8D6FCCA4275BFFA2499007DFEDD60E3FFCD927330FF414E87954A0B9';
wwv_flow_imp.g_varchar2_table(309) := '0136B6E039FE497D61BEAF69112C4DE039857C4C2A0BDBF7421D101588F1DA202276FC0749504F8097DD57E4D3B293D310039E84FE215D01F3E6EF73D5D6C110006696222A1FF4DF6A30F4C67021FFF378969E23250247870009C0D12D1907BC7404F450';
wwv_flow_imp.g_varchar2_table(310) := 'FEC5FDD7C927BA511E4CF2D750E44F0FE11AFECF9B76D4D1EBEDDDCAFAB29B1F72FFE836D0BCFD2392DECEF7B8E54303E0B895E4FF9C24E0763FE30EFE734D23909E06A1D457C5FFCF0F17F27FBA413E2E6E0DAC0D81F486AF29113CD5FC01E25F2D3210';
wwv_flow_imp.g_varchar2_table(311) := 'D50151773074BD9510FEFA70257F6D64EDFFD2F73AC777DC0890001CF7FA71F40B44403F547F797722FFB07B281771E09A002F6EF75E761777F4AAE2B393B2C5DED12E1804A0B800A5267E9EA387CE0F64C05B04F86D3F2505C02C4A10112FC8EE85700E';
wwv_flow_imp.g_varchar2_table(312) := 'C2D82DD4EF3776D716C4F53FBEAF1CE7C3F1467EB6BF904F1901E8E5544B01D514A8F3BCBF9204AF068876C0838A0A3512109420DE5623149F187AF9C1F142FE037DFF17B8BB39A435214002B0A6D5E45C1683C0436D10B4FFB87C18CD71FCDCCCDEBD45';
wwv_flow_imp.g_varchar2_table(313) := 'C617897818FF400D50DB0547DEDFC3EE711347FE3ED30921AD434501BC0550B63F797D491758C41FC602AD0BA1D193A237A8C2C3B4052E3D0FCF47912FCA57E59B940074BDDDFCF71A09889BBD7B023809D0295AB7C0F81E46A3FFBD1A7BF903722D7F72';
wwv_flow_imp.g_varchar2_table(314) := 'E0ED7F319B9903592D022400AB5D5A4EEC5008E040FBC2837379FBAA97AEEFED90AD1F3617E1C5574A74205B05EBEB35860ED280DB7718E7D4033A2FE4B71A0220D21023B2B76B07BB9FF1E15350AA13BC340FE32B28C6EBF5626EE34C3D837700FC4FC3';
wwv_flow_imp.g_varchar2_table(315) := '85FCDF6E9033D3013809503F0475F553412052011EFEF7C884BE877E1F7A83875D27FF4CAEE4C7B4A702ABFF0FB585F9DC8D20C0CFD846169AD3BC5F0434B0FD9D5D2FFF72F79A7C2554EE563F1FB6BF2E7CAB963BDE6827BDF0D02218C38E9B3A5C03F3';
wwv_flow_imp.g_varchar2_table(316) := '821E56804E0822DC0F2F7F480DC0108ACFBE9FC6ED05FE8B20BCF88327D41318DF77AFA04860989ADF53199AD6B81EAEE5A7BB4BF943DD4E1E58FEDF7D01F2F68F2840128010043619837CBAEFE5BBAF2EE44BF68EFC430488C0EF27022400BF9FE8F2BD';
wwv_flow_imp.g_varchar2_table(317) := '378D807EB8FEC7FE75D94BEFED71F5E0C3B91629816CE99B87774036D106A810B0CAF7A257006EC829DA6B04E276BEBF84F45125805BF92C4DD00406614ED432043638D3357A0B3FEF5A10C6009A06F827F2917CC3A86900316B609403A2FE1F2E7FF66F';
wwv_flow_imp.g_varchar2_table(318) := '7DDFBE35215202F45BDD8DFCF59B1BFAFE6DFA93C3C9DF17022400F785349FB349047EA87F203FD83F906BBDE5EA217E13A90034ECA9518088FF3B2968E63F13FD3D0EFBDA10A0EBEDF528CDF3F4426DDF1BCD818A0E21C58279F837F1615A05A754206C';
wwv_flow_imp.g_varchar2_table(319) := '7A2D6A507D05A60E7DFD30CAAFCA95FC4637C8EB5D27AA83381DBC2990D5FDE3E61F2E89EE0E18E58CE3287F5046F95BE3B5FC02C57F9BFCAC70D2F78F0009C0FD63CE276E08814F4927FFFDE475F960F0EE807A48C6399AB500FE210C5BDF10F1E55D1E';
wwv_flow_imp.g_varchar2_table(320) := '9FD094034048E771F34C22E0204D1740809CEABFF00C28AEFA4801E84BCBADBE15E6E170F6177863215802FB81EE7FB417818F4BF3F93F295F954FF77B395321A0E6FF23B1A19206BFF97BAA41A7A4DF73E7C2514EBA51BEE7E68AB7FF0D7D3E38D5C322';
wwv_flow_imp.g_varchar2_table(321) := '40027058FCF9F4B523D089FCDBEE5CBE7DB73755FD6EF076BA79F64213E0D7F6384EDBCDB8B6FE9BFC1CF47CF8B199DB5F33008EF2BF92DF6FC5087E104FEFF1681694A186E801806A85F6FDC92F8F880CBC3676F2CFC78FE42C7A033CD0E640912A5072';
wwv_flow_imp.g_varchar2_table(322) := '00D2E02E80285114796D14F9A9E1469ED1F877ED9F08CE6F410890002C68313894F521A01FB0EFEFF6F28FF72E06EC07B50684223EEC7463DAEE1580AB7EFB1E9AE7E0A2DE1AE8C457C2F77FD2C2376FF470F0CB87B8FFBE8521D0A1B0B50C461AC12FE6';
wwv_flow_imp.g_varchar2_table(323) := 'A50351D80BEBC19D8421FEE2C5004D84F8EBC3B5FC6A772D5FDF75F260ECE5246EFEE607809F49AB63271A9F9641FEC4CD955CAE6F0B70464460B10890002C766938B03520A01FB05311F9EDDDC7E52BEA711FE580B8EAE33035939D894B1F3CFBC3B2B7';
wwv_flow_imp.g_varchar2_table(324) := '5908781E3EAD7511848FD767B920BAF84D4B0133A3009E11EF848A3E2706401E22C0523A689CA3B626F4AE87F02554F9DE0313037E553EDDEDE46CEC641FA57E46005A20C1C8806A15F4EBBF31DEC8DF1C6ED6B0E49C0311381A0448008E66A938D06346';
wwv_flow_imp.g_varchar2_table(325) := 'E01FED1ECA9FEB4F6550073C9B889FE238F8B3116F3D81D1B4274BFCA25A7E52EE8776BAD3A27994F4A5462072F74E3CBC4361530DE25ADFBA04654622BE34A0956FA80EAC843142FA503518091845CE65947F21AFE45C8580D61EB8B7835F0F7AB50836';
wwv_flow_imp.g_varchar2_table(326) := '23A088506855C0378D83FCD5E14A7EE598179863270247880009C0112E1A877C7C08FCF17E27FFF1E463F2E1F54DDCB0BDE94ED6FD232480168010E5672F809833A2F645E93FB9AFC7C19A96BD719BCF9B7F96FE37E290D503214C689A801A6728258619';
wwv_flow_imp.g_varchar2_table(327) := 'BE68C245A326C1239418FCD67829FFB9BB916F1C3B7706048188E0818EC72200FD281F934EFED4F505C57FC7B7AD39E223478004E0C81790C33F0E04F483F6CB27AFCB276E44F6E6F0E7518049555FD4D64F8AFE0B31C87481DDE25D951FB184A2E29F89';
wwv_flow_imp.g_varchar2_table(328) := 'FA4A14C1E5057AFB8FC3DF94FD55F38FF7F35F0B1EE9AFCD875CBC989D064327507F89E8FBA91EE06C18E527FA8FE433E35E1E74DADED76D81F54DB53F80FE8C7A049CED3AF9A9AB2B7949E39FE3D8C81CE5AA10200158D57272324B45403F683FB83B95';
wwv_flow_imp.g_varchar2_table(329) := 'BF270FE4CA9CFAD0DFAFA9ED917CC7C19BD9FB2614F0E921078FE840D1074C3FD0453F904C219E52BB0CC2D12F0EE67848F4FF2BA23F3C3BE21645B0133600002000494441542953344F03FF97A60AF49C3F1DB5FAE19585FCD5DE77AF5A8010FE990150';
wwv_flow_imp.g_varchar2_table(330) := 'B8077EB21FE53BAF2F29FE5BEAC6E5B8568D0009C0AA9797935B12027A00FEEFD38FCB07C36887E18D1E9CE60CD8EEF6460B22969EEAFA6823E862BB10F7B5F27E53F3DBF710580813A196C70F85BE128F96E6CFE841F20980153901FCFCE4BD0B096852';
wwv_flow_imp.g_varchar2_table(331) := '44C817757C6E75A8FFFFBFC66BF925B916F5425021A04601AC14D0C63E5AC1DF6F8EA3FC6D36FE59D236E55836840009C086169B533D2C02FA617B2667F2FDFBBD0C6EAA6F2D736B87DD14E0E3C68E9CFD5C885F5CF54AC1A04BF4EC67FC9DA6F1054802';
wwv_flow_imp.g_varchar2_table(332) := '2BE728FD08229250B3FD68633CD70564D7E23423F2E641FA75753AD0273F1C3BF909F9483ED3EDCC15D045809A0250CED2CBA7C641FE527729FF95B6FF87DD987CFA66112001D8ECD273E28740E0BBFA9DFC4CFF31F98A0C32A833605803E7751CCE7890';
wwv_flow_imp.g_varchar2_table(333) := '0722BC8F807C8A035BB91E08C0E4B02EFEFDF9FDA83FC079DB9CFC22AB901D01E3B8AFD502C6271A0D48D6E25A46573320641061861311F9F9F1425E7512D5006A0BDCC9AE1B65184779FDE646BE97C63F87D8867C261168114062410488C07D21D0C96F';
wwv_flow_imp.g_varchar2_table(334) := 'ED5FB710B9B5C2B5B2C022D52F0E7FAD1EDFC71655F92537DFBA04CC475F5D7EEF3AB71160C89F8B3C801711D47003247F115198B5138E5AC614079AB3A079F977A29E005F1E6EE4DF7757F2C9AE97134D0504C1795D447E72BC911F1FAEEF0B783E8708';
wwv_flow_imp.g_varchar2_table(335) := '108119028C00704B10817B46E09DFE54FE46F750AE7A250083110108FBF2B885CA3FDBFA350F7EF805D9911C37732BFBC3A739FE9B1FEEF229AF4D06517450A7DF7A0BC088089605198AC8184578043763A20C1080AA88BC368CF24FBB57F209E9E58169';
wwv_flow_imp.g_varchar2_table(336) := '019C607CB374F25DE3857CB90415EE7919F83822B07904480036BF0508C07D23F04911F9B593AF97DFE906D300DC95ADC79D1F07BB890371C8473C204C7EBDB40F5CA09000E70EAD967FA6118C6923DCEFBA01270571805B173FE52630EEF776C6C93560';
wwv_flow_imp.g_varchar2_table(337) := 'FF6BE2C2F61CB802EA7F4F46915F962BF9404679AD13D975BD9C0EA3FCCA78237F7FBC66EDFF7D6F3E3E8F0814044800B81D88C03D23A0B7F07FB57B5DBE23AB005A0A60D6D3C70203B8E8670BDFEC01D8D20238958BA46F32AB14ED4DF57FE609604E00';
wwv_flow_imp.g_varchar2_table(338) := '8507B48C44BCDBACEC10A77646139268447B81E81AA8AFBBE946B91906F9D9EE52BEA9DB59C7BFCF8C227FF6E64A7E9BC7FF3DEF3C3E8E084C112001E08E20020740E02F743B796FFFBABC8A7CB97F10A39C2F4F7CBF8D7B5E1D9DFB4AC9202A04D0D727';
wwv_flow_imp.g_varchar2_table(339) := 'DCF6EC500FB68043BA751F8CC906E7983C13CF4D95412B23406000BD8A5AEA217E289FD9188BF206FDD7EBC3283FDDBD926F107504ECE47AB8913F3F32F77F806DC7471281E9C5602AED253A448008FC7E23A067AFFA007CE9F4E3F215AD028864BE1DF2';
wwv_flow_imp.g_varchar2_table(340) := '511E58CBF7B26700CE56230410DDCF3D00601F343DE827B77634028093601CD4992EC09BCF54889E0E682D84FDDF4E527412F87B9522E8B7FA7194FFD65DC997BA413E239DFCE8782DFF5ABB22F20F112002074580118083C2CF876F1501FDE0FDC8EE81';
wwv_flow_imp.g_varchar2_table(341) := 'FC453991A16B05797E53F713D9EAEA01908A02EDEFEEBF1FF18296E28F1CBC37E4098FFE92F49FB614C689EF9508A915305251C5840831846B21A2061984A85508EDB93E847846FC671807F977F24AFE58BF933F7D7329575B5D78CE9B082C0801128005';
wwv_flow_imp.g_varchar2_table(342) := '2D0687B21D04F483F7EDD2C9CF9F7E5CBEAAA580D118A737337DDCAA5D800791A089EFA236DF647FE92004B19FE3E78D80FCA6EE5FF003194E8259BA1770A766DF9EEB8E82FAD7A425F0FF4F42E12421AB08A233A0FD74E41C9AB85FC58BA35903FF4277';
wwv_flow_imp.g_varchar2_table(343) := '29BF340E1601A0F87F3B7B9D335D2E022400CB5D1B8E6CE508E887EFBFEC3F265F6F277053F2E7ADBFCCBF5DBAB3BB8FEBFEA3594FBE143A007BCB881A846CBF96FDC5234B2401CA7F44F49BD6A008FCCDF0C748493EB7AA148B4F71300F9D0BDC8E2FE4';
wwv_flow_imp.g_varchar2_table(344) := '46FECCF891FC5A463356BEC09C1E1158380224000B5F200E6FDD08FC9D7E2F3FD49DC9AB928F9FDFDEED902F0D783426606577E5569F5DFBFC12DFCAF2F009B7DEBB4E2D90CBF7683F72F78E7353F6437C58BE964B11A17FF41C28CF43A242A3071E8808';
wwv_flow_imp.g_varchar2_table(345) := '79E338CAF9AE93CF5C7D2817EB5E52CE8E081C0D02240047B3541CE81A11F806E9E437F7AFCBEF486FB7EA3BCD79421CD86EED8A44DCD8676240FF4EAA05D31BC84845AB2374285BE97E6947846F457920DECF747E918C283F87543F740968718CB56A3D';
wwv_flow_imp.g_varchar2_table(346) := '034679D8F5F26DD71FCA876CFDBBC6ADCC391D2102240047B8681CF27A10D00FE0CFEDCFE58F8C27B2DF0D625581A8CB8F9BB509F53C3BDF1A00840600827EDCEC2120442E1FC7799113A6B740DEF8413042FF37790CA0AE8F0EF6E0C502AE19982AFFA3';
wwv_flow_imp.g_varchar2_table(347) := '2A20F58C1E31D0B6C0DF7AFD817CA55194F52C246742048E10011280235C340E795D08BCDC9DC95BDD4EF6DDCE6C725B73DD72FAC6298B7C7C14029493B750845A43383999E1381CCF888A83260E0CDD40841A527C581C085B55420410420B90D17EA418';
wwv_flow_imp.g_varchar2_table(348) := 'C022622C4A5EB43BE0B7DE7C4802B0AEEDCBD91C3102240047BC781CFA3A1078D19FC9DBFD5EFAAEB7DE00CD92B7B6F39DD6DF67EF800923F0B87ECBEBB73CFE24DE1F75FB596D306B22805B7D461550455062101361E02032846DB011843EAA179A8ED0';
wwv_flow_imp.g_varchar2_table(349) := '3409E75D27DF724D02B08E5DCB59AC0101128035AC22E770B408A858EEC5FE5CDEEC76F2408FEF21EAFC51828FEE7CA6A753CB5E74EABBA30C10DE0193031BFD83A73D07D2D027DB06238230ED3038E92A884E85B8F5479501DA1067BC2286382109A3C8';
wwv_flow_imp.g_varchar2_table(350) := '83BE936FBBFE40BE3A8E54011CED8EE5C0D7840009C09A569373393A047622F27C7F268FBABD9CA09C7FE6D4E7F77AEFA2A724C02EF010D8972C41DAF4260AC8C5B7A4028C86FC2B20052D35D05AFB3528A7FA83B0258E1F9E6B132A3FF1716B14C24202';
wwv_flow_imp.g_varchar2_table(351) := '4E00AEA80138BA4DCA01AF16011280D52E2D27760C08280178B1D308402F275A0980EE3FAD23CF741A93C8405083A2CEBFF58136819E47013CB58F3A7E1CCFAD540F263E5976984D807C086E44D4BA018298A46810C189994530F40A0F3BC914C031AC0D';
wwv_flow_imp.g_varchar2_table(352) := 'C74804D68E0009C0DA5798F35B34024A009EF567F256BF93FD68D5F3A583AF2BECF135DCDAFDF25DC300357C1FDFAD6E4269BB073701DCCCE345E1F467B9FFDA34C01E1DE580910B9838F8D93FCAA99F8684E15B0023A2F030D02A806F8908C0A2178583';
wwv_flow_imp.g_varchar2_table(353) := '23021B41800460230BCD692E13013DF29FEDCEE571BF33BBDC0CCCA7B80F57FE94D3DF8A0898CD2F047AB31BBA33081716B60642450F30EF3970074C084AF49DC8107E004E1440561A9140A4C043062E08348DC038C8C3BE976FB9F9C0AC8F274462994B';
wwv_flow_imp.g_varchar2_table(354) := 'C3511181D5234002B0FA25E604978C8013803379DCEDE5D41D004C31DFC7815D2AF07C1AF8C446099F68D420DC83F24BC8ED9728801FB9B8E3B7DA4084E74122602334310DAAA4E2961F00F409280B9CF1931883F63878D88B7CF3E507F28A3E004BDE92';
wwv_flow_imp.g_varchar2_table(355) := '1CDB86102001D8D06273AACB43C05200BB3379D4EF3D021035F818698AEC9209CC4E60BB5C57DBDE9AEFBFDDECBB1EF4E119DC2C86E62AC26414EEF493418968FE339311C6906BEE01B370FDC16BDD289FBAFE40AE78FD5FDE46E48836890009C026979D';
wwv_flow_imp.g_varchar2_table(356) := '935E0A021601E81FCAE3DD899C6A939D629CA34D77F4DC77654074F58B2E7FA9B62FDF9BD8F1AABB1F5AFD5A0B61B3187497803880ED3FF10F94F221FA60A1FE8838B4831F0F6B5A81660C14150AC508C83B1786EE6014399351BE7BF8B2FC6A0A1D97B2';
wwv_flow_imp.g_varchar2_table(357) := '0A1C0711D826022400DB5C77CE7A2108E8E1FEDEDE53000FC64E7A2BF52BC1FA94DE23FE5FD20048BDDB619D020293E95BE63FD804C2FC9329CFD20369158C5B7FE61BBE0650B542203B184FCD8A9A0F80CFABEF4679315CC993419300FC430488C0A111';
wwv_flow_imp.g_varchar2_table(358) := '200138F40AF0F99B464009C073A400F2423E15D5A58B5F75E5015140799F95E945C39F5914BE9EE9F6819F7CBF880CF3CA5F0C02B2FD6F2B018C5082770E9C9FE4E85C38CF548C9DECBA519E8DAFE473379772B3E955E7E489C03210200158C63A70141B';
wwv_flow_imp.g_varchar2_table(359) := '4520094077227B11D9E1448D933AF5FD85137846BD14E6C333206EE5387BEB199C24604622344D30C8282AD2F394402C040E761BC7B4D4EFF6521595E0FCB548698C227D2FF27CB894776F1801D8E876E7B417860009C0C21684C3D916024600F6E7F278';
wwv_flow_imp.g_varchar2_table(360) := 'D466401E2AF7AB7536FCF5E6402597DE8C7A022B1CD2A11668DDF96ADD7F150486A300C201B35B7B1287528A683F11A986462CD00630D2166010E5B74A76201E45765D27EF8FAFE4876F2EB6B5C89C2D1158280224000B5D180E6B1B0818013839973747';
wwv_flow_imp.g_varchar2_table(361) := 'EF05D0CAEFC0005ABCDEED75F42786A91D5F81AADDF41B39F0FAFF5608780BD93BD4FEB520A09522EA7BF4E138D068C0AD67224730EB136CAE87E385BC7B73C15E00DBD8DE9CE5C211200158F8027178EB46C0CA00B517809CB80FC0445C178E7A350A3F';
wwv_flow_imp.g_varchar2_table(362) := '13DF6944DF3BF1F947B9DDF9B3A2BF380BB628C0ACDAD0BC07200148914044163C4D10D9014806A057083E62DF359FE02252D4A58BEF2B01D108C0B320001401AE7B5F7376C7810009C071AC1347B95204AC19D0EE4CDEB466406ED4E3AA7DFFFB103EFF';
wwv_flow_imp.g_varchar2_table(363) := '535D5FD4FADFE1CDEFB6FFA5536044E9ED2DE33D1B2398DDE2717ACF047C5F4B03E0377F2FFF6BE58051B288EC401005FDBE753E940B797273C12A8095EE674EEBB810200138AEF5E26857860044806F75277643EE51805F457808A9A70D60D4DD65EEBF';
wwv_flow_imp.g_varchar2_table(364) := 'A4095A5ADE7EAADDEA3D6B60318208CD7B93207F155A0D375BE14644DA1BB5DE00A84E84DD6F8D3D585462128B7059433F8ABC944BF9ECCDAB95AD22A743048E13011280E35C378E7A2508A8F2FF3D1501CA4E4EFA4EFA9B164337239F98270ED85B1F58';
wwv_flow_imp.g_varchar2_table(365) := '7B4191DADFF20E6E51F968079879000BFB47B2DF7502255C50F09DB4F89D97109632C4FC915AB15086A65F7E9F0460253B97D358030224006B5845CEE16811D014C0E77767F296EC65AF04006580269F9F57044CEBF36705FDFE4FCBE5C7095C4BFA6AF9';
wwv_flow_imp.g_varchar2_table(366) := '5FE10CD129387EC2A3031629B047D7F23E24FD0B0398E4FB71D2CF96A212804EE4F9E86580FC430488C0E111200138FC1A70041B46C00880B603EEB40CB0973E42E77A3BAF45F976AC4F8500E56ADF8200B7D2F810ED4528E1D67B5432900ABEF27E1981';
wwv_flow_imp.g_varchar2_table(367) := '68A3B12F811BA49A0F6465EA190022A15C4289C973B992776F3EDAF08A73EA4460390890002C672D38920D22A01A008D007CDFB8935DA72576B3BC7DD2806ACEEF5FCCF23BC56D725BF743B87E3F2BF2F2465E0EEA78A18A04A35B800B09B3B6A050912A';
wwv_flow_imp.g_varchar2_table(368) := 'DF47C6A0A421EEEC59145109251F2FE4529E5C3302B0C1ADCE292F10011280052E0A87B41D04AC0A607F2E8F5403A007AAF5EC2957FDF9AD1FD0940041510D448D7EC3CF220955A57F07B4A5D8B0308BBB5E58C2FCB51C714640BC1A106589FE7C3738EA';
wwv_flow_imp.g_varchar2_table(369) := 'E50BE3054580DBD9DE9CE9C211200158F8027178EB4600ED801FAB06C094F2A57E2EB8409EF57AB0F6D1C0AFE4DF4B0D808C5DF60EF448FD3C70906181CA2C9027400DFFCCFA775E16986F5CAA11A662824C4FC084488505BD4600C60B7932D00970DDBB';
wwv_flow_imp.g_varchar2_table(370) := '9AB33B160448008E65A538CE552260EE78BB337943F6721ADD752C0D502A005A2CBF55057817DF26124C70AA02DF0BFCE02C1019FEE22130CFF923F880DA7EF50D88D24167132D3871AB32A0962DCE8A12C044FAAE9397E3A5BC4311E02AF73227757C08';
wwv_flow_imp.g_varchar2_table(371) := '90001CDF9A71C42B42C0CC71FA87F2589B01E91559CFF472B84F2EDF29CA8FBFE8EB87C132F556771F3D042664A05EEEB35990FFBC7DF827B9FE92F79F4804A22511A207490C60FE173F67E4636A4294535123A06E94F7E55A3E7B4D11E08AB630A772C4';
wwv_flow_imp.g_varchar2_table(372) := '0890001CF1E271E8C78F8055018406E0548FF2F0ED470460DA5C6F1E8BBF23369F07BEFFC5BBFCF9F55CFFDF38C31DCDFDD220A8B40B7641A2FBFFC35818CEBFD95B60D4BA85A1F909847E019107B803EBCF293F79395CCA3B034580C7BF733983352040';
wwv_flow_imp.g_varchar2_table(373) := '02B08655E41C8E1601D7003411A0690022145F1D7DA713D4D7843BFF5D9FE072EB9F28028A82DF5E527D02904E48B2106E02F3D0FEEF85F46C2C91D1C074EC79A6016037C0A3DDAF1CF8BA10200158D77A72364786401301BA0F804500EE34ED99DEF6EF';
wwv_flow_imp.g_varchar2_table(374) := 'D2E5F9353F4E6C33F3E9A5B3B202BDA587B56F6918E4EF3186E94F15F4215E105F03A6F3DF16134F207FAE6701FC1B9331AAC051D31DC3A53C6104E0C8762987BB56044800D6BAB29CD751206087E2EE4CB40A60A721FBBCF6DF7DC4CFEBEC6BE81ED583';
wwv_flow_imp.g_varchar2_table(375) := '93B44108FA70222BB9B8AB63607A0EE3DAAED506569258BBFBA94BA0BA0596E31D64459F1356C2532940F41E88F4037D008E625B72901B41800460230BCD692E13016B06B43F9737A497332DE1B3C83EEEE653F7BD3B84F67EE12FA1FC16D68FF79855FB';
wwv_flow_imp.g_varchar2_table(376) := 'B9DF7FA40F8AD3AF070FD01B608AD5EDD1A09220C800C4871877961EB6C1A1CDF117C74BF96156012C733372549B43800460734BCE092F09014B01ECCFCC08C8448068DB5BD200A528C0BEDF2EE661B653AA01F3C7BE668E00427D9CFE61FC8F2A8204A7';
wwv_flow_imp.g_varchar2_table(377) := 'D28D593C7FF62DFCC854B088B1B5EA04D700B017C092F61FC7B26D044800B6BDFE9CFD81118006E051B74F0280007BEAF26A1C3E0EDF6AED6B97FC0CC5470ADECAFCFC2A0E2E70EB266F1CA096F8853070F0F7A8BF1C329050AA0CD05638BB0C8E43FC50';
wwv_flow_imp.g_varchar2_table(378) := 'D8105B38C2A30D5651308A3C171280036F393E9E0824022400DC0C44E080087837C087F2B66A00540438B416BD38BC11E39F1FC29EB78F22BF88FD7B7E3EFE44BEDFF8811EC5A3D7E2ABE7BF89FF34E560617FBC8BFF3A883884FFAD441226E63FF531F8';
wwv_flow_imp.g_varchar2_table(379) := 'F9E82438E323F6CA3EC6F5B2BF9427572C033CE096E3A389000900F700115802021E0178286FF6A7F2404FDB1B3FE6FD563F53D2476820858013FB5D5CCD43E4076A9FFF0D915EBCAC7EDB8E7F4B23C4CDBD0263BEFED3F1446021B507CE43FC55ED7D35';
wwv_flow_imp.g_varchar2_table(380) := '84A05F0BC2D189D85C870B799756C04BD87A1C03119844F90807112002F78C808900776762298070D9D1D03A7475ED029EB1F7169B8F8A013B80E3E4B540000EED220E3432112586160128157E7ECB9FB604C22DDE53043A30FDA3B901380B4C9B0C2095';
wwv_flow_imp.g_varchar2_table(381) := '602F4BC7C1365433021A459EC92B797A7379CF28F371448008DC85005300DC1744E08008A406409B01F59DEC344E5FEED1F6AF493EBE4AF7EFD4E7B70842CC6B1ABA2FAD82FDB4F6F2BDEA0E38E11A410C6E3DB67D61A2092CE423BF1EEE86FA181701B2';
wwv_flow_imp.g_varchar2_table(382) := '19D001B71C1F4D04120112006E06227040042C02D09FC9A35EBB0176B2D3D31AB9F4B864C31C30CE6B77F04B316088F8D284A7FDC56FFA4112F05E91E3AFF7FD31DF30D20FD1BA374309883044CA01A4A4120B7C0D94C25484112C7073231FF3CBEE529E';
wwv_flow_imp.g_varchar2_table(383) := '5C530370C02DC74713011200EE0122B004045006F846B797077A60C76D7962D6631100FF4A54F0676EBDAAFFE7D500E90FE0A7720416200268B979C4119C534C8D03BC2C511D05239F1F79FE7CCB49EF9FF64E61248C6C400C7394F7AD1B2023004BD87B';
wwv_flow_imp.g_varchar2_table(384) := '1C03116004807B80081C10016F06E44E80275DE75500E1A887F07C36018EC47DA4ECA767F5D7B2F48D4A017B71A8F53D28504500D3524187A395077A81418B24D8F75430E8EC204943AB408020019507D1B958445ECA85A500901E3820F47C3411D83C02';
wwv_flow_imp.g_varchar2_table(385) := '24009BDF0204E090082002F078F4144086CBD3BDDFAD7433641F8731847C08B9E3C6ED67B796F8A9E82E0EE998A0BAF18D7D94F665D14089CF47798177F0F3AF4F8A09665D046B50C13D07A2476054148036405FA0DF7D395EB219D021371C9F4D040A02';
wwv_flow_imp.g_varchar2_table(386) := '2400DC0E44E08008A00AE0CDCE23002A02CCACBE1EA87183CF907AAAFD8B58B0B4FCCD233B7E366FEF16AA478E3FEEF8B8C107F1685A8000A4380C228590977E780BB454FF2479800A45400B62E329006A000EB8E5F8682290089000703310810322E029';
wwv_flow_imp.g_varchar2_table(387) := '80D60E78A7957671EFD630BB97F4158FFE54DB3543E04605102D68AD7E934EA4CF7FCBFD070D08C3016803DA577173F794C31D650210057AC82022066E4C946906240FD424105500EC0678C01DC7471381860009007703113820024A00DEDB9FCBDBB293';
wwv_flow_imp.g_varchar2_table(388) := '7D38E6217CDF047E2EE1874F1F1C005B394011EEB5947C4B1BCCEBF223015F7BF8B490BF13045CE7FB4827D4D2C4FCBB750084B8B0790B3457621F8C8ECE47385A3B601A011D70C3F1D144802900EE0122B00C043405F06C7F2E6F8D3BD96938DDCE7A1C';
wwv_flow_imp.g_varchar2_table(389) := 'C045620FFBBD99890F42F3F30BFAA46D300EE916D9376EE197F6699D3FC47E49293004A4031049881BBF75106C5463264C9CA612F481DA0EF85DA60096B1F9388ACD23C008C0E6B70001382402FA017CB6D308402FBBAE4B029091FE6AAC03F33DBD4B9B';
wwv_flow_imp.g_varchar2_table(390) := 'C84FC57E53A15EF60798D4F6C79BC43D7C6210588A01E2929E8778EB03E03682FECCA94531C2FDB52220C943F6187052A35F7F317A1500FF10012270780448000EBF061CC18611B008C0EE4CDEECD507A01D94EEF2DBE2F976D346E75ED4E2C749EB42C1';
wwv_flow_imp.g_varchar2_table(391) := '5B957D594760EF5A94FD598267B7F7F841AC41B511B6107FC80FAB3D4059AFCCF7E3B21F634E7BE18858988FC1D8C9732500EC05B0E11DCFA92F0901128025AD06C7B239043C0270266FF52772328EEEBA1F8975F3D7CF50403D75A7257AB5461F9DFD50';
wwv_flow_imp.g_varchar2_table(392) := '023839B7F3E4D7F2C0901A966282281298AEC1ECC65F7842AAFE2DFD6044C2BFDB0846CB08601CCFE4523EC714C0E6F63927BC4C04480096B92E1CD546104004E0B196019A08308E4A88FE50059037F57262E7698C03BDB40F84557F11053648E78D7F1A';
wwv_flow_imp.g_varchar2_table(393) := 'D198BE7CD6556812EF2F0D84C000CC77202A1152B4E874A08F28C4E7490036B2B339CD63408004E0185689635C2D02EE03F0501EC989EC4D04582C7DEAA753FFAE957F68C607AFBEB0DFCB5B776925A479FBF40FA8298256A7E74D804253E09778A70030';
wwv_flow_imp.g_varchar2_table(394) := 'F833811FC654BA0FEAFB8EDD102645539BE11A0DB088C028D2877EE0597F294FAFE803B0DA0DCD891D1502240047B55C1CECDA104015C0E371E7ED80A31F0082E976D062D2451390DEFEF0EA0B757E250288C71B0D48A2005250F2FBD56B60524ED07A08';
wwv_flow_imp.g_varchar2_table(395) := '9457C7D022567077056264255AC7407FFC282F854E806BDBC39CCFF122400270BC6BC791AF00014F019CCB63D9C9499401DAB42645FA2D2DE0877A1CC7B308418BD0BB5A3073FAF356BE4928FC500E537F57F927E1503D42211F89F5ED5F191133F02E86';
wwv_flow_imp.g_varchar2_table(396) := '734D61F10FD2AA85E772294F5905B0829DCB29AC0101128035AC22E770B408280178B1732740ED05E022C0F0D54FF7BE76139F7C608B1CC0457DB3EBF81C159308F83BCCC581B5ECD09A064D4A0E9D24B4D6C2D10CA85A0587CA1FDE02994C8852C57EF0';
wwv_flow_imp.g_varchar2_table(397) := '377C2157F40138DADDCA81AF0D011280B5AD28E7735408E807F0A54500D407A0B7DA7E2FF78BFA7E1CEC33ED9FDFD65BBE1E65FF3880F3A01F7B6FEC035FDFB0E985BDB09717C63B45E9A1571004A140150022FE455C08B321D70BA083417632688D844A';
wwv_flow_imp.g_varchar2_table(398) := '14E0E570214F580678547B94835D2F022400EB5D5BCEEC08104015C0A36E2FA7A1F1F3611745BFC7FDED866F1D006AD95D11F4217D5FB942FA0141CC975E02ADBF40A6FD4B094098FC7A4A006242FCB698FDD6805F41EB170025828B09F5E52E0CD46E80';
wwv_flow_imp.g_varchar2_table(399) := '57F284658047B03339C42D204002B08555E61C178B80138007F2A83B9507314A3F30FD56EE910048F5DB34AA723F0581700442803F3EDD79AECF0F703B95F54ADF9BA2DFC3FC9182483B627F8DD18F39C340BA02B1083C2FAA059A1961131EB217C062B7';
wwv_flow_imp.g_varchar2_table(400) := '2207B64104480036B8E89CF27210B032C0FEA1683BE0D368CB8B2E801E07F0F8F9D03CF99A70AF1EF091D4C76DDDAD795B57C0340B2A658238EB2762C1083EA446A00A0E03B65622D8C4FE41252278E15E00F6B5D657C84C8D5E8CDA0C886580CBD9811C';
wwv_flow_imp.g_varchar2_table(401) := 'C996112001D8F2EA73EE0747C009805B019F888B007131C7A18DC3350B03CAA86BF87ED23618877533E8F3AFC0DBA71CCE79A0C37E38D88337258AEE80884E4C2A0F5AD1A1690EE29F4E283C6A8067EADF4CF02817F284550007DF771C001108AEDFCA8C';
wwv_flow_imp.g_varchar2_table(402) := '0909112002F78B801B019DC91BDDDE52007A4BB608809DA12D976EFFC6B5BC98FF4F3D7DC2850FA578D9BD07073FD4FBE5BFE8E5E749FA0941682A3E3087E6F4E7E3F1F179897FAB2BA87D887CA85E52A85F7F365EC9D39B8FEE17643E8D0810813B1160';
wwv_flow_imp.g_varchar2_table(403) := '04801B83081C1001D300F467F2A8DFCB6984ECEDE67D97C1FED7CAE9EB6D3B6AF8EDE69D2D858B01004A0B914AA8E2C138C521D47322509486A512003CA14627AA2F412B1F2C1683610FAC3F4B2BE0036E363E9A08CC102001E09620020744207B010852';
wwv_flow_imp.g_varchar2_table(404) := '0093C47D1BD92C1890DF987F3DDD809A234F11F73703C13CD44B6321FD6B3F8A0C7AD36F0107C408E7263FF01082CB1F42FE5EC6388D32202AE04640D4001C70CBF1D14420112001E066200207440029007502DC87954F1AFA44FE7D92FBCFB6BE48E247';
wwv_flow_imp.g_varchar2_table(405) := 'DD3D788389F69A93A01DCE6631DC5C7B6AFD7E661B22329096BFD53D3002FD569190690880D6E845961F461743E726311B23171265804C011C70CBF1D1448004807B80082C01012300FB337953B40A4044ABF1EA815F7B01D8599E75FCED009E780086F3';
wwv_flow_imp.g_varchar2_table(406) := '5EA4E7234FDF047A13771E0BFD5BBB9F3CA85B33C248254C4EFC5A47187983F409F0C3DEC9873EB60A04E105D0C9FBD60BE01585474BD87C1CC3E611600460F35B80001C12018F009CCB9BDDCE0840AF4E3FEACC6729745802C7257EDAEDB7550B547160';
wwv_flow_imp.g_varchar2_table(407) := '1510B6EB7D4C31DE0FFABD08D5EBF3FCC0F6D0BF5FF8A7CE7E738CE2D571E8B7E882FD42812B600802F46B2E6E1479AE6580AC0238E496E3B389002300DC034460090858695C4400B41990D6CFE3302EF580773803B633BD590386ED6F84DB47F5DF2F9D';
wwv_flow_imp.g_varchar2_table(408) := '00F3868E023DB3FC6D6587692F1C5F77FE11ED80EBE5FF8E5242E70C45BF8092C0125D5042F37CBCA20FC012361EC740048A2708C1200244E000087833A03379247BD96933A0B1DDF6334E0EF53FCC7D9AF55FC4DB21DAD76A8069EDBD5DBD5B5CDF2FF7';
wwv_flow_imp.g_varchar2_table(409) := 'D9B8C795FAE6FD8FB99798A0DFE641105A55809FF3254530781582938D26004CF160BC873EE5E570254F680474809DC6471281DB083005C05D41040E88C02EDA016B0A407D003405306848DECE535CB50B038892BA21FE3B69EB5794FDE926180773B1E5';
wwv_flow_imp.g_varchar2_table(410) := '89103FA8007C07C2F0279ED9BC089C30E4E15E8C8A5AE9BF8F0FCD899C652049E0D500D6E4483A79395ECA3B240007DC717C341168089000703710810322A004E0F3BB87F2969CC8BE5702E0EE7B7EE6B6A4BF9EA7E8EB1786FD719B2F4D8061E9870841';
wwv_flow_imp.g_varchar2_table(411) := '51ECFBDB8121C484F5161F35FF38F051C75F4B07211CAC29023BE3115D881BBE5720463420BD08D0CA7894DDD8C9B3F1953C1D2E29023CE09EE3A389C01DBA07B95600001EBF49444154013F82420488C07D23507D00F65D27BB70CEF3C07B2BF29F1EBE';
wwv_flow_imp.g_varchar2_table(412) := '4D749721FE7218B762FFE6D5DFEAFA3D25906A7D4C383CFFA7F38F8E81850D649E3F87E664A5461C32DA3071077497C2E7724111E07D6F323E8F087C0D041801E0D620020744403F80CFFA73F9BEAE975EFF376BD6D3EAF7B3CA3E5FD1E801C4015E3D80';
wwv_flow_imp.g_varchar2_table(413) := '2E407EE14768BF510A0F30B4C31D8D83F427AD28B0441E8C2A04618020102E80165128642242124E5D8AF600A9019DDBFB72259FA515F001771C1F4D049802E01E20028B4000118047D90D70941EB5F9A8F977655DDCB2D3F1A7B50C8ED07BBAF4C4C10F';
wwv_flow_imp.g_varchar2_table(414) := 'F15F460FB2394F94F8A5B4A09A09B5D6BF9E362899FDDA19307205DE26381B0697960091C608612088CC17471280456C3C0E8208B00A807B80081C16012500AE013895934E9BE6A0B14E71D84B157D94DAE1202F39FDCCF10779F05B781CCE212BB82518';
wwv_flow_imp.g_varchar2_table(415) := 'F42B3F92F4D908085F4620A07912448C200986EA12504110E3C598E26D916AB0797522EF0F34023AEC8EE3D389002300DC03446011087804E05CDE522BE054CBB79B37740069C3DB0CF6F2F0D6EF990A3F43F768E1AB5FC3F91E8E7FD921B034FC318BDF';
wwv_flow_imp.g_varchar2_table(416) := '2A109C9A02414BE880D50643FE6F440A0068F6014021432130EF6B15007B012C62EF711044801A00EE01227040044C03B03B93C7DA0C487D00B475AE9DB1A5352F7C7DAB714F5CDECD38B0C803261D80531AA0EF151EC37188A3710F42F38820A815310C';
wwv_flow_imp.g_varchar2_table(417) := '83B2A63FA209FEA3D1E4277B07405BA0EFD0DB732C6D5084834E20BC25F017FE7F05C00FB30CF0803B8E8F26028C00700F10814520606580FB737924BD3CB023B295CDF9651B617C2DF7B3D3B9F9F64F7481ED060F2B5E88F56A495FFE0822F6785E6929';
wwv_flow_imp.g_varchar2_table(418) := '5C920FE140080B61680560131C864068F863038EF2456B4BECB90773378CD284F7BB0B79727DC132C045EC3E0E62EB083002B0F51DC0F91F14011080C7D27B04E0061D7FEAD5BEA5E971A8C7A5DA55FE26C46B7D0370E346932028FEDBE15F5B007B2CC0';
wwv_flow_imp.g_varchar2_table(419) := '5E6B418772B8E31A5FFC045A33A106DBBC8320BEE364A6B90DEA3F5FC8853CBD210138E8A6E3C389405E255AB13141210244E09E1198B403D632C074E2F1DB7376FABB75752F37FEF261464EDE1BFCF837265500D12DB07A05A44C007EFEEE0F5C1A07EA';
wwv_flow_imp.g_varchar2_table(420) := '286B9BC2D008444F01E709ED969F6985700FC62C9460BC904B797ACD6E80F7BCCDF838227027028C00706310810322E022C087F276A7BD007AEF06D8AEF711519F1AF9D603BB5CB2E1F2EF3F3E55EE4DFF99917A670879D13731A01EF52EF44B01612511';
wwv_flow_imp.g_varchar2_table(421) := 'A5CAA0380BB4C8BFBD61900EFBAFFF43DB18EB1FF5017872FD11530007DC737C341100022400DC0B44E08008782F803379D49DC8490800D19617463EB5655F560364539F763B473D7EB6138693702BC9CF9AFD6836E05CC1DD832606402021F35F107E8E';
wwv_flow_imp.g_varchar2_table(422) := 'ABC8AFA40E60FC939E009EBEB09F0D3740D500A83890550007DC6C7C341198214002C02D41040E8880F7023893C7DD5E4EECDC8C9B3762F468B19BFF6DDA8014EBA134103D04CA7D1F16C0EDC7913A983A018204B4B87F5CD9EDBD23888FDE01D53E20A3';
wwv_flow_imp.g_varchar2_table(423) := '03C54E207EC6D3029E630C9A225F18DD07807F880011383C022400875F038E60C3082005F0584EE4A4D4CBE3D6EF9E3BCDFD2F5BECB65A00F4EAB3883C2404F9F75BED80BD8DAFA5F93DB3EFE64376AB8F85300980D7F7FB77425658D20A13BF9F493582';
wwv_flow_imp.g_varchar2_table(424) := '1306D42CE8EB34958039A81110BB016E78C373EA8B4280046051CBC1C16C0D015801AB11D04EB41740DCCC9BC54E24D5FD2846599DFBFDC7F5FA96343F1BF83A2928D10493EAC5419E0183DA03A0761A0051881F98780C400018557F5EF2E7E3811F91AD';
wwv_flow_imp.g_varchar2_table(425) := '2508402CECFBE395BCC35E005BDBE69CEF4211200158E8C27058DB40C008C01E29804EBAC16FCFD99467D2DAAF16EFD7D2403F69BD65303AFD791D7EB411C8F7F39B78230E5E22E87776A3189921C8AF940779ABDFF64B2342FC39AC50FF4113108F4AE2';
wwv_flow_imp.g_varchar2_table(426) := '229D5501BC7BCD14C036763767B97404480096BE421CDFAA11C80840B793BDA813603B9C4102DC5AB726DBE3EF460E70A0C7C90C097EB97EBB600F2777890EE0C43791A0DB013B3F70DBE014FCD98F96387F69F35B5B16E7429532052412B4C191BE2109';
wwv_flow_imp.g_varchar2_table(427) := 'C0AAB7332777640890001CD98271B8EB420004E06DD94BAF464091A0C7CD3DA2FE45881779FECCC743E21FAE81492050AB1F21F9941178BB5F37E989C84189DDE3E86F39FE68F99B797C908FB20ED972D89F99EF91690CE8084679395EC9BB1401AE6B13';
wwv_flow_imp.g_varchar2_table(428) := '7336478B0009C0D12E1D07BE06049400BCE8CFE4CDDE9B01EDCCDCDFD57CDE1BB0DDF2B542002178B4EE73A19EDFAEA3DD8F1FC269C6EF077E0D144CFEAE37FD682674CB3C005104D30D20BC5F53035EEFEFC181F8BA0DC85F6F542045803E4C9601AE61';
wwv_flow_imp.g_varchar2_table(429) := 'D7720E6B418004602D2BC9791C2502E60468BD00765106E89D00ED6E1EA7A7DFD6E1C73F3DA6517197957F45C9DF22FC7138C7FBE2DE9FB775A8FB8ACACF49C16D43A13CD18BDB8F690DAC97408B2C1861402982A5367C602FBB6B3302E21F2240040E8F';
wwv_flow_imp.g_varchar2_table(430) := '0009C0E1D78023D8300269056C4E80229A2BD734801EA6460070BBBF556A17A059B0A07DD3C942D808D7D6BF50F7A77900F2FA71638F5B7CD20BE31BEDC5F3C74FCA130B71C88AC5185EF291788317E3A53C650A60C33B9E535F120224004B5A0D8E6573';
wwv_flow_imp.g_varchar2_table(431) := '08280178B93B9337B50CB0DBC92E8BF1DB55DE84742102B443D9EC78C5EC758708B1B77A7EBFDF975C4186E85B55005AFA22B2E02400B2028F2A34A3A0660484F70ED2D01AFF056F98D1843A8C2018D4006C6E8B73C20B46800460C18BC3A1AD1F016800';
wwv_flow_imp.g_varchar2_table(432) := '1E773BE9FB9DF45A06689F4AA8F6709EC39FBF95F7C5719C20E1C7EA1720F6039DB813D168D99BAF29C63D195C0852007D82A6296EFB13B5CE7FB55CD0CC802230F162F46E80FC430488C0E111200138FC1A70041B46C035001A01D8CBA9E6D0B5E95E2D';
wwv_flow_imp.g_varchar2_table(433) := 'B9B383B375F6F3431F657D7E64D76E7C96ED8FB23FCFC387323F0484803ADB075BB400C243532036239F38C5D16300063F291ACC6E416141686F1E3E043EB2625EA4118B4E3405402BE00D6F784E7D510890002C6A393898AD2190CD80C4AB007AD4E1E3';
wwv_flow_imp.g_varchar2_table(434) := '161E1A000BF99B756F1CFE50FFB553399BF4D4707E3986E39C6FB5FECD2EB89DD5D533206D85F3200FFA114AFF5679802A832A3008BF8192AED05F36CF2302F07B4624B6B609385F2270200448000E043C1F4B0414012500CF7767F28611805E76599687';
wwv_flow_imp.g_varchar2_table(435) := '263AA30C61D2632D7A950414CF1F58F7F961ED07B09FCF200A192F70517E1A05A19B5FA4EFF312DF1AF8B80741BBC57B74C1AB145186E8257F2D6591DF4A9F021F91353952D7C3EE529ED209909B9F082C02011280452C0307B155042C05D03FB476C0BB';
wwv_flow_imp.g_varchar2_table(436) := '3002D20FA517D6C5719E6581914B4F97BE62E15BDDF7E2EA6E47EEA0298426286C1FF876B067B95EDAFCA2AB508C6222E6C3811F44009188591D6266158C8BB41E062FBB4B794202B0D5EDCE792F0C011280852D0887B32D04F67A2BD62A806E2FFA77F5';
wwv_flow_imp.g_varchar2_table(437) := 'F2CFBAFFF87B9AED64F63F0E747B6188F14A983EC3EBB000AE3F67673B6EF9D10700A775E8016AC3A076E36F863F931E03881C44C9606D3EE881084F05A0E3E0FB7229EFB00C705B9B9CB35D2C0224008B5D1A0E6C0B081801E81FCA9BBD1280DECA004D';
wwv_flow_imp.g_varchar2_table(438) := '618F28BB5F9E71F5CF7F44559D41540B0633240F0F9FD4F8859190BE7FE4F0CDAD2FFA0000EB12B9CF3E032932CC5E3F3E20F72B88284446029C94585F011B9CBFA31200FDDA8BF18A22C02D6C6CCEF128102001388A65E220D78A003400EA03601A80F4';
wwv_flow_imp.g_varchar2_table(439) := '01083B5D34EAC1553C4EFB26B72BC23B3F7BD306203AFB34BFDE6A091C6D87BDD15055EE07C728577FE80622E0104B517A04541252CC8B4C7D504480FA965A06F8EEC032C0B5EE67CEEBB810200138AEF5E268578680F90074D10B407AE9A326DF6FF651';
wwv_flow_imp.g_varchar2_table(440) := '571FE23BBDAEB78B76F8FFEB398C7040F410403B1E55EBA1842F550551905F4B099D73F8ADDD530AD9C7D7F944E9FE87CA3F1F5BC40B8AE62083151853F6027092F1C5F1523E3BB01DF0CAB631A773A40890001CE9C271D8EB40003E008FD407200573AD';
wwv_flow_imp.g_varchar2_table(441) := '2C0FA9FD0CF9E3865F048293EFE58F42B9E7657F38ACA702FE9602F0B7F5D3BA7A048000B8D77F8418D09EB8861BA2C240AD8CA159C07FB305C138CA8BEE5A9EB217C03A362F6771F40890001CFD127202C78C40F60290BD9CC4E16B057C79B9AE96BC75';
wwv_flow_imp.g_varchar2_table(442) := 'A6ED068E0B7B29F88B5400C482ADA2C06FE825D37FAB6B6074F1ABDA030B47445D3F1C00732811354005417B2442134D04D88DF25CB40C90298063DEB31CFB7A10200158CF5A722647880034001A01500200173F4F01B49AFBA8EAB7197ADEDEC577B8AD';
wwv_flow_imp.g_varchar2_table(443) := 'FB010D8300CFE3DF22047990B7B2BC7A4B8FA33CDEB7750F6ACFF6D31D0D81DD27A0B41DC8A043532DD656C468074C27C023DCA81CF22A11200158E5B27252C782007A013CEA9400F422A3D9FEC4E19D8DFDD20ED895FBF1B18D8E8179A32F8EBC91EA0F';
wwv_flow_imp.g_varchar2_table(444) := 'C57F0BEFDBF11DC23C8F0394C3DA22FCB01D9E941EB442C23B9E0FE5617A1778DEA0390C6BD9A1191389683320128063D99D1CE7DA11200158FB0A737E8B464009C0B3FDB93C969D9C68B95C11DCB9E8AF39F359207FECEDDA5D6FF71AC557F1A0BE1645';
wwv_flow_imp.g_varchar2_table(445) := '0419E42FEF812881D30B3DEB83029851CF10863DA004ADEB60092C34CA10E5854618ECDD66750928190C8742F537D0D7BC6F2240A60016BD2939B8CD204002B099A5E6449788806B001ECA233991D37E946ED003DEAEE291436F55FE36FEFA894D838032';
wwv_flow_imp.g_varchar2_table(446) := 'B37271374A605981CEDB06971B7F8B24200AD07AFBC2E827D30D70250C0521EAFBB36B61440E8C60403B105F436F01FD51FDDF73B99077D90D70895B9163DA200224001B5C744E7939087833A07379A411804CE197EE7F50FDDBF7E2749FCBFE4317D06E';
wwv_flow_imp.g_varchar2_table(447) := 'E361C083033B1A0C39A70851619CFB2E3B8878423E2B5A0F171D823F126642D1E4EF8EFA7F270051531016C416C3D028851280EE52DEA515F072362047B26904480036BDFC9CFCA111B0BC7858019FA8BB5E1CCC7301DFAD2E7D59B31F33280D82D23A18';
wwv_flow_imp.g_varchar2_table(448) := '52817A50236A80C042F80836B15E95F187CB60141C54CB21F70A68EC243D044C6310D104E31121191C3BE93B8D0090001C7ACFF1F94400089000702F10810322001F80C7D60BA093DE9AF7205CEF03C3C16BBEFA71E8E6F98B92BE78917EDBC2FDC50238';
wwv_flow_imp.g_varchar2_table(449) := '55FB98A7F508F0433A0F7274130C5740D30964CF80E62B3C695214F9884C0994C0435816E5045C0320F2522EE409530007DC717C341168089000703710810322A02980CFEFCFE4ADD1AD80236A9F3E0010ECC153BFDDBA6B7F80494300270DC5A80F1D80';
wwv_flow_imp.g_varchar2_table(450) := 'BD64AF85F74D4C580E794B31845D70B9C447487F7094D2A020640AFE452F0E6CDE4345ABD0E2064676E4953CBDB9CCFE0507849E8F26029B47800460F35B80001C1201AF025002B08F76C0D3DB7F1B5B33E82982FB76F2437D1727B7DFCA1B49F073BDBA';
wwv_flow_imp.g_varchar2_table(451) := '09343D40DAF7A716201C01EE2211492EDA6BBC4AA07904640542442C941878196027CFC60B79CA08C021B71C9F4D04120112006E06227040048C00F467F276A77D0076B28BEB7A0BA1BB2B609EE5C577DFAFFAA560A0B8F7CDDD012B3F289776BFBB47DD';
wwv_flow_imp.g_varchar2_table(452) := 'FED4DBDF8F717C0B7FF747069128BD7FEDF84F1D42B314F2A081270E9C005CCA53B6033EE08EE3A3894043800480BB81081C1001D7009CCBA36E2727AA942F263D96CF37F57DCBC1271BC0986BBBDF281D549D003ED848296431E1C42CC835057963079F';
wwv_flow_imp.g_varchar2_table(453) := 'C8F784A14FBC5F79E1AD5F1C0839A4F17FB093B1F72643E155A0ED80DFBD79C514C001F71C1F4D0480000900F702113820025E0678262602B443B2DCB56B79DE7C8CD5A8AFFE48791DCAEF4635F929C77C4607B266BFD9088330F8F5BFE8FEEFF86BAD0A';
wwv_flow_imp.g_varchar2_table(454) := 'A8C3F392416D0AD49E6B7E04A3580AE0733717240007DC737C34112001E01E20020B4000BD00DE341F805EFABCAA4F73F876A86AB8002101940A94ABBDA7FF4775134EADE0D438A84DB856F165B7E1F87612047D5EEB0CECC1FFD40982520479A89AC4D2';
wwv_flow_imp.g_varchar2_table(455) := '1FA0FA0E28B9D014C0E7980258C0CEE31088C0D4578C7810012270CF08582F80DD991901EDA5973E34007690E3F446E8BD7AF847F2DE54FD79F842109062FEC945BE34FE8B931D797EAF06A896BF35A2DF4482514530E926888E4068255CFB17E8E37D4C';
wwv_flow_imp.g_varchar2_table(456) := 'FA24FDDF8BF1D25200FC430488C0E111600AE0F06BC0116C180125002FF767F23DDD5E1E5A77BF0043FD00DCF67F5216D03EB0B50D5F4BDE833478285FC3F0E5161F7FF7B35E6579E1FF1FE1FEEC3B30A9214454A1B5FE434581BD8BBEE754A8508B0FB2';
wwv_flow_imp.g_varchar2_table(457) := 'AD91BECCE63A5CC83BEC05B0E11DCFA92F0901128025AD06C7B239044000BE57F672DA89F4831EDA7114D7BAFA76CD8FB89D37F0B102BC08D3A7815011F1793EBEB6169E7A04640621DA07230C90B6BFB122FE8BA24518ACEE1F9E01201916B508725188';
wwv_flow_imp.g_varchar2_table(458) := '0B6EFF1601182EE40909C0E6F63927BC4C04480096B92E1CD5461000017843F6A256C07658A2956EC4E4330310A7B537F969B581B548C0CBFD9C11C0E4C7A17462617F0A6188CB7F6BDD5B72F9C517282311352091E4220698E34CD210C58C6A031CC4E0';
wwv_flow_imp.g_varchar2_table(459) := 'C5F88A0460237B9BD35C3E022400CB5F238E70C5081801D89DCB1BAA01E83AD9D5433EE71D363BB5D35ED6EFB77C7F9EEF518F6F71045304DA7DBDA118CF981FD87ACABB7A7F662254FF39290544BDBF1B01359BA1162F0089D0FFEEBA519EC9159B01AD';
wwv_flow_imp.g_varchar2_table(460) := '783F736AC7850009C071AD1747BB32044C04B83F9337C57B011801C85A3C2FDAB75AFD127DAFE1F8FC7A74F9AB423FEFF41739FCD017D434019E0301601ED6132BE11008460AC29FAD6F3C947165E0BF118D5A3D603F344ADFF5F27C7825EF3205B0B25D';
wwv_flow_imp.g_varchar2_table(461) := 'CCE91C2B022400C7BA721CF72A106855007B8B0058E55D1CF6B5214F5EE05B14DF3C03EEAC0A0C115FB9AC67DD7D9CC5534B7F341902F9C0CFCF748650F4E7CBE2CE6F2F8F9241A418505A982907D5377422CF6E5EC9D3E172156BC749108163478004E0';
wwv_flow_imp.g_varchar2_table(462) := 'D85790E33F6A043C05E011809DA6006AE79E38452D241FBA7D3FC99B835F3DB3ED5519EE87F26FD628C83A0196EA008B12E0BA1EB5FDB58EDF9AFC780AC27E59A018A046044ABBE04914C1E612635702A0AE87C305230047BD6339F835214002B0A6D5E4';
wwv_flow_imp.g_varchar2_table(463) := '5C8E0E815B0420CEE2A11CB4A9F79B8AF0D3A8BFB5E8F5E943D96FFFC87CFEAC9EB05DE35B3F00FB611518466421AFF151EB1703410AC289440D13D44E83752C4E3A2CDA31B21DF0D16D520E78B5089000AC766939B16340C0AC80B51780190189E8BFFD';
wwv_flow_imp.g_varchar2_table(464) := '9A1D377DBB5D7B301FF97CBD4B9BE42E6BF8B414301C00B2242F52092001490DA27A0077FAA811D4674CCBFCBC7ED09F1CCF6F83B8554950B9C6E491A5BF80A6009E4737C00949398685E21889C00A11200158E1A2724AC783007A013CEAF672D28DE603';
wwv_flow_imp.g_varchar2_table(465) := 'E0B5F855F5A74773EF2D7747BD9DABA02E32FCA5905F43F543FC1C6AFFD3137872E36F8AFD88D0BB5740FD6D909504F011F0314D35042E10CC6A82F23396B2306D013C0D464B713C1B5C034002703C7B94235D2F022400EB5D5BCEEC0810B0BCB86A00B4';
wwv_flow_imp.g_varchar2_table(466) := '1BA05601941B77E9011C75FC25A28F503F048313FFFDE61E38FF804F22F6818FDDFC23D2101283480BB408406B2F1C3A83D41244D81F8185AC0340D4A015071AD9192FE4DD9B8B2358190E9108AC1F011280F5AF3167B860042A0138452F00DCA9670E7E';
wwv_flow_imp.g_varchar2_table(467) := '990740D5BD4501FC009EDCDE23DCAF7773AD1230813E4A0BF5C68E96C0D571D0CC85423F9029088BF9437EE84F8D1B3F22070EED74A0191108DC21215402F079B990A7D724000BDE921CDA86102001D8D06273AACB43400F67D5003CD608803AE6CD3475';
wwv_flow_imp.g_varchar2_table(468) := 'F34E7D386F6F5502CCED7EEF9A6AA60B4A62BEA904278D03D1F62F0A109C19CC6C002D72A01E051949A8990B7803B481EC3A9117D797F2CEC86640CBDB891CD116112001D8E2AA73CE8B41C06EC5BB7379AB7311A086E8DB911AB7EBDAA66F62D2E3FEFC';
wwv_flow_imp.g_varchar2_table(469) := 'F67A1806C147005F2F6600138FA138CD272AFEF40FA84D089A00D02D8A21509C4138EB2F8C5E02C91A46D7007C7EB890A734025ACCFEE340B68D0009C0B6D79FB33F30028800BC6555005ED0971D006B283E3581A5BE1F423B508689C03F9B09677E3FE9';
wwv_flow_imp.g_varchar2_table(470) := '84BD97BF6155FEA3CE1F69055CED337B501A137A0AA049F99CB4808E34A28097E89376D2C97B21023C30EC7C3C112002B5EF07D1200244E0FE113002B03B132700BD74E6C71F99F7B4F26DE1F73CBBF125F4049A75F3AB327B4805B2AC7F66DC8359370D';
wwv_flow_imp.g_varchar2_table(471) := '40C1C12EFC9AFB0F97A120286A4FDCFA03E21EE103F69242FCF10885BE428B17DF1B2EE5738C00DCFF46E31389C01D083002C06D41040E88807E00B517C01BDD5E1E84EB5E28F6A2FE2E3C76517FE7C5807E392FE17D08F1ECB885C8CFCEEC388A7180BB';
wwv_flow_imp.g_varchar2_table(472) := '8DFFF44771C5CF10C13C6F506A080DAB9216986057450653CD801100B302660AE080DB8D8F260213044800B82188C001113002B03B9347BD36031AA537B97E53F7DB716BB77C1CC238C1CBD57F7670EB6D3DAC828C00D8ED3DFFB87B9FBB0A945C3F0842';
wwv_flow_imp.g_varchar2_table(473) := 'D40116BE60CAFF76EE4784C22203B8E98364C4B8839D6487C0F8B276037C6FB890CFDDB017C001B71C1F4D04CA6F83997328B1210244E0FE10D0B3F1B93A01763B39D5DBFA10863F33619F07004A5E1F3977EB14E8FEC1DED5AFE4E5432EE06580ED70B6';
wwv_flow_imp.g_varchar2_table(474) := '9767487F7A536F9A000FE54FC3FC1597161568C50125158097966082A53B8C00B00CF0FE76189F4404BE36028C00707710810322A01FC01FDF9DCB0F683BBDBEF72A807AD9D75B76E4F7F53CF6F3BD89F7901048495FDED6A3898F9EBAC60EAC6FA085E1';
wwv_flow_imp.g_varchar2_table(475) := '9548588BE18C34F831EFDF2BE1FDEA36A891040DE30F700C8C5C7FE809D26FA0F61DAC6E82A119FCD1F1529E5C7F7440C4F9682240042A3F9F0408090D112002F78B0059F8FDE2CDA7110122E008F0770F770211200244800810810D224002B0C145E794';
wwv_flow_imp.g_varchar2_table(476) := '89001120024480089000700F1001224004880011D8200224001B5C744E9908100122400488000900F70011200244800810810D224002B0C145E79489001120024480089000700F1001224004880011D8200224001B5C744E9908100122400488000900F7';
wwv_flow_imp.g_varchar2_table(477) := '0011200244800810810D224002B0C145E79489001120024480089000700F1001224004880011D8200224001B5C744E9908100122400488000900F70011200244800810810D224002B0C145E79489001120024480089000700F1001224004880011D82002';
wwv_flow_imp.g_varchar2_table(478) := '24001B5C744E9908100122400488000900F70011200244800810810D224002B0C145E79489001120024480089000700F1001224004880011D8200224001B5C744E9908100122400488000900F70011200244800810810D224002B0C145E7948900112002';
wwv_flow_imp.g_varchar2_table(479) := '4480089000700F1001224004880011D8200224001B5C744E9908100122400488000900F70011200244800810810D224002B0C145E79489001120024480089000700F1001224004880011D8200224001B5C744E9908100122400488000900F70011200244';
wwv_flow_imp.g_varchar2_table(480) := '800810810D224002B0C145E79489001120024480089000700F1001224004880011D8200224001B5C744E9908100122400488000900F70011200244800810810D224002B0C145E79489001120024480089000700F1001224004880011D8200224001B5C74';
wwv_flow_imp.g_varchar2_table(481) := '4E9908100122400488000900F70011200244800810810D224002B0C145E79489001120024480089000700F1001224004880011D8200224001B5C744E9908100122400488000900F70011200244800810810D224002B0C145E79489001120024480089000';
wwv_flow_imp.g_varchar2_table(482) := '700F1001224004880011D8200224001B5C744E9908100122400488000900F70011200244800810810D224002B0C145E79489001120024480089000700F1001224004880011D8200224001B5C744E9908100122400488000900F70011200244800810810D';
wwv_flow_imp.g_varchar2_table(483) := '224002B0C145E79489001120024480089000700F1001224004880011D8200224001B5C744E9908100122400488000900F70011200244800810810D224002B0C145E79489001120024480089000700F1001224004880011D8200224001B5C744E99081001';
wwv_flow_imp.g_varchar2_table(484) := '22400488000900F70011200244800810810D224002B0C145E79489001120024480089000700F1001224004880011D8200224001B5C744E9908100122400488000900F70011200244800810810D224002B0C145E79489001120024480089000700F100122';
wwv_flow_imp.g_varchar2_table(485) := '4004880011D8200224001B5C744E9908100122400488000900F70011200244800810810D224002B0C145E79489001120024480089000700F1001224004880011D8200224001B5C744E9908100122400488000900F70011200244800810810D224002B0C1';
wwv_flow_imp.g_varchar2_table(486) := '45E79489001120024480089000700F1001224004880011D8200224001B5C744E9908100122400488000900F70011200244800810810D224002B0C145E79489001120024480089000700F1001224004880011D8200224001B5C744E990810012240048800';
wwv_flow_imp.g_varchar2_table(487) := '0900F70011200244800810810D224002B0C145E79489001120024480089000700F1001224004880011D8200224001B5C744E9908100122400488000900F70011200244800810810D224002B0C145E79489001120024480089000700F1001224004880011';
wwv_flow_imp.g_varchar2_table(488) := 'D8200224001B5C744E9908100122400488000900F70011200244800810810D224002B0C145E79489001120024480089000700F1001224004880011D8200224001B5C744E9908100122400488000900F70011200244800810810D224002B0C145E7948900';
wwv_flow_imp.g_varchar2_table(489) := '1120024480089000700F1001224004880011D8200224001B5C744E9908100122400488000900F70011200244800810810D224002B0C145E79489001120024480089000700F1001224004880011D8200224001B5C744E9908100122400488000900F70011';
wwv_flow_imp.g_varchar2_table(490) := '200244800810810D224002B0C145E79489001120024480089000700F1001224004880011D82002FF0F6BE0F1DE3A467B880000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(65787168912547730979)
,p_file_name=>'icons/app-icon-512.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/yeflix_ui_gradient_jpeg
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '52494646E85F00005745425056503820DC5F0000302B029D012A38045F023E4D208B4426A3A298EC6D846804C4B1368A8AED0F1EE21BED7E555CBFFE3CBD7D3ABB88977FD7CCD4E4BD2C3C57CC83D357909FC7FBA7073DA34C6EC9F55D7A7667F67FF95C';
wwv_flow_imp.g_varchar2_table(2) := 'B64376457F6DD3DB861FF8FA6BF9797F2FCE1FE77FEDBA53FFDBF32AFFBFD50BC78FF55E9CF18B4306F3E365D0FE4B7F6CFDC1FA9EE93FABFE61FC5FD1BF0FFFFFF15FDD7FFE79C2F9B7F1FFF23FC4FE60FD7EF57DFFFBD5B7FFFFA7FDB4DFCC0E001F5D';
wwv_flow_imp.g_varchar2_table(3) := 'AFE07EB6FE7FFEBFFE9D9A669F34FFE9E8B3D6CFDB7947FA0FF2BFFAFFA9EBE557AE0AFBA8F8B7FEA79117FE5E7910A9E5DFFA79F3C6CFA2A7D47A2D7FF8F3CFF7D07372D43E9DE44F116E31E13A788F69A39D79A82B3EF18F99EBFF0F23B72844A09ACB';
wwv_flow_imp.g_varchar2_table(4) := '3D45687B79CD602DF5CB493B7D27E19EF9EE74C0E84398B6BB90BFE08E096EEDC6B3D3D53B9AD69BCC2F4C3CAEEFF4EA466DE1B90EECBFBB9EA23484DE3B35E31B8844612EA07FE47A26F2779FD2C893D9789A1D27E37AA71AE73BA17BB27E067B6E2FED';
wwv_flow_imp.g_varchar2_table(5) := '23C8CDF6B6289B8423E68434882C2279048B2A64EF615CF0F6C438935B84315B264162F98C48A73DA0CF9B73411FB94DF9397D326E4A43B3BBA52836F96C7D667C699942AD30D9E943635B608D7FCEB4776AF2B0CAB923104EF9828B7F4EB9DD8357680B';
wwv_flow_imp.g_varchar2_table(6) := 'DE285C170D3C8746DA6FF2D5D9F275B7240393A00C46C056440EDBE325A8E25F0E4E36A93151D41B71E4FF66B190BEBFE5B4F8E2CB70BDE8B50EF655077E213741E56B394379F84AAFD3C15F6BB9C35ADA3A299654DDFC442C1F52BD5E59588E1B870DAC';
wwv_flow_imp.g_varchar2_table(7) := '2141CFE132548EE8175AE6A833E901512E31D1F95AFC72D93987A451325E90657214F84BD3A82E9A103484FFB55D9CBDD9A2A49A48A1F88385D45CD7EE52D408733F81B1A86E26F6F927CF88A24308447406242DA836B9E966511E08296185057D30C0CC';
wwv_flow_imp.g_varchar2_table(8) := 'A80D9CB74FD9B3E7DF4BCA74D026DC656227242EE200143323B4865898433B0D20F50B5B3620C0948AB1DB70727C63A2C1855F5D132B142ADF22A24F3D6AEFC5B467E8DB8F0E1F203AFB8B49A1A392F3EBAABC57D857D29DB43A27C69B1AF88FF6947E45';
wwv_flow_imp.g_varchar2_table(9) := 'C864CC065BA6A758657BA7D0B3D2A30DC2CE06BE2196447FF48D260E6E3B210761D442D0F3EF8DC9F6379BD2FDC5D55FE7688730202C6EF34647578B67BA4ED15F2C395DB343FC037823C426ADF3E1C128E9ADF8B1A95B4B2D09CD572EB01033E6069457';
wwv_flow_imp.g_varchar2_table(10) := '994828F269FB4AED04D698192B36EADFDF00F467CD324BF67C8DE41BB0906D2CFC3B556A8C20943A6F26404309D5DE8AD5F9D314CBFD1FF1F99A8D8B7F9284E1A9AE5B53704274538444587DF87D5F378FF24B87493F327CB72C016471EB440A7DA86416';
wwv_flow_imp.g_varchar2_table(11) := '51F2909B9F1100D91BD71DD96EB4A2A1E431604C2A2D982B56AD5C096C9D99922A4ECFC4CA7DBCB8D214CB209E88288F885A61136C48C8A09E3505E5F2CBD55F15C9217E8632197B6444AB35D0500D3F1BE8EEA693EF7844564D6DDD97EF7D8AD4A16208';
wwv_flow_imp.g_varchar2_table(12) := '8730BF13873B8208E77A7E629700D2C48F3FBBB11253EFD9087155F3BB4A239BBBAC1493C948107FE6BC6B3734AA6A74BEAD89119815C4913B34C44F7233529AE9776D266C35D638DFE5ABB3E4D507186012ACAA5D50BDCC8E735C7FD06B4D93A03C505B';
wwv_flow_imp.g_varchar2_table(13) := '2E8DB211CA4B91C12F1D2DBBE741D1527609441D2679A432B22A62A012E40BE02C86C4EE7BD9455159EF2A3726D64AD84D39F075B70B3AD77EA59479957441C728D3567D174214B512B99EA1238AB2F29255EE69F1D894E3BF8A1FB61DA1E6D18FBBDF15';
wwv_flow_imp.g_varchar2_table(14) := '2471095C68B80B26E1EF7AD36F5D16D40211797E3326203EA8965A303184681972ADB5944B00E3345C771F3513BA6D69BC701AEEE1635BDC085FCA8849E8DD3BB2F85F8AB9BDEBEF8C67AD0FE7A59B406B9193808DB972AD776A8C031CE987B50752FA04';
wwv_flow_imp.g_varchar2_table(15) := '3B3E9F09A294065D6898E75B96C84E62B2E141ED0BD2630738A6BDE5675AAA0D43098655DFB9B10986F761E509B4CC8C6C740A5B4F508D8C15C5CDA900F0BB6012005AEF591A28491997A2DACA010674282FCC1CD39D5F869F7F6208B4D45246876D92BA';
wwv_flow_imp.g_varchar2_table(16) := '55B952B0F88E52BF7D3D6B96CFD12C4E180D90824110B8785B924F0F6A7E85DB0D37E6D23175C2BE09858FE78A2DD6722C342C7FEFDD2286DFA0111E9D828BD7B7FA1B6D103697BF3A7ECCE276280461EBDAF51B764B3AABE0985212494FFA05E282518B';
wwv_flow_imp.g_varchar2_table(17) := '549D680725A96615C05D53D4EAD943AE6F8A34D812ACDA344AB7280DD44F75CE262559AE820FC74B3D0B7C98D0B30861288513E2D9DB9E0D8870A88126388D02E99836BFECB45C1A0EFAA50590C55D6720569F29957231326EDECACB32977D686A834599';
wwv_flow_imp.g_varchar2_table(18) := '1E8D1BA6A527A61FC10E57209A4533175BCF8B174F9FA551AC729EF3A942D3FF4F886F499C6AC56A20B676E84297B9B10B0C1F5AFB81E0F30B9F46B65F91D7261314268D6505F8CD3320E07310487DA1FFEB94873BDDB249860235A7D03102ABD7365C1C';
wwv_flow_imp.g_varchar2_table(19) := '07B86E4A9A2F96FD2D062045DCF112A4CBBFD0F88159BDA9AEFC654F921C789E972F61791F7039DFA2DC11D21CF827FFB125C3C6C9A4B3B2E36716E3549C05C2F96C85BA79CA9E0E34FAB98C982FC6128DFA9ABD4EF04D3728243875AC24D289064CBD9B';
wwv_flow_imp.g_varchar2_table(20) := '1832B16857A6DE89C80064F624132575646E92462A818825D991057CF3F2EEE263EC48D18DACD891D6BEE8F630B2D3183F1630A014C8A96DB4BC9566B27EABCAD3E7EB6980C8E85A624388FCE89903672B0D62169844E32FD1998A07B9667DA453B5ED55';
wwv_flow_imp.g_varchar2_table(21) := '4EF93550D5304862B6120DE3E01180C27444695DE66ED2B61697713880C7494EC684D10F907C9FBAD7ED230DF7494DC1D2159F6105AEEE88B370D26F4B1A8307651D5F41121B17E7F770B7A966239F7C90E7A5BCF66AE541797CB2E791417BA055C72D42';
wwv_flow_imp.g_varchar2_table(22) := 'EA1E3E01180C274446C4DA4F51BD572B69FD151A1C330C59C61E74748D7EF470B5B85407471FACDD773526FA58F040D942241630B2EBA97E3EA8A3603F0E16760E17EADB30864F626EC9676FE3E9F944B4079D2E0D8E640A394C5BB97E3E41A31D312BDF';
wwv_flow_imp.g_varchar2_table(23) := '823D7763D3951EC49F7357454A009F82610D56D2F7E6223758F4F7ACE5DC89BB20FDD930EAC787E471A2AF85970BDC2E14D15F360EDDEB0A806817546E2CEC2EB602EBD071E6E630B2E19923CE781FAE8A282640975B153CE5B4C0382D03356D16C2FC3D';
wwv_flow_imp.g_varchar2_table(24) := 'F98C37DB71387DA64B3AA8047B7A27EC94EB72A1DFA269886B5C8122328AEDA36F6E34289549BBC070F4E422B5FCCFB48ACF35D241487C80A5E9F02D04FA5A74F683A290F49A65E346CCB934660B676E84297B9B0743537A04765A5DD8F4E6FA76BFCF18';
wwv_flow_imp.g_varchar2_table(25) := 'A37DD284D11F994CDFF356C2372EA895FA74495DC310DE16F153DB27BB77A8271426323EADF2248701E86D08F1F6914CD0A4C18522998BE63631A53493FD1FC4504C350FD3470E9503EF1849C39EB3EE245571720D05CD72B0B0D9FA606CDB4E6623A2BB';
wwv_flow_imp.g_varchar2_table(26) := '1DB418EBBDE00C6578753B93D22105AEFF583B77A00984914ADB075E353A03F9DEB620CD6AE744AF7A74A169906A1239412690BFAC7F011CAF765B7510974C2FAB299B28FB41707F691B6049AC97B9AE56167C43EE1E4D92DEC6FD0AF8DD997770ABB137';
wwv_flow_imp.g_varchar2_table(27) := '934C46420CC5F45B53F5678D25F2F5BA9282AF1348872B85FA82EB9728E165D76A20F42DF2636B3509A5660E5639A9746B540FBE94530834E5B54098C828A79BE99426B3EE1B5DE66E39626F56FC1A5E966FAC0EC33A80CD3359418642FEB4E0DAE3BFA9';
wwv_flow_imp.g_varchar2_table(28) := '349A65975DA7AB47B3809DD04E9B0ECEC41E9CF505E5D72A3D893EE6AE8CCE3B8795BE1DF066C26321E514787BE0B33B8793C26BADD61C1C0D34D7DBFAB3CE861B846A0A9013725A44D7BE542D563756562D09825AE5CB0CEDA73D25C954AECB4FC0313D';
wwv_flow_imp.g_varchar2_table(29) := 'EF2534CDD0439FD17D2ECC882BF74772E757AFFFB8AC6267F9F03C0041B3AD7DC4F165E7C1D5F944F32583F31874A2238079364B3ABBC5B476571F3554793783EE5C4BAF0E15A199C5A441FA60FE39FC65AC61DCDDB9D906400D732097628C49C1D84598';
wwv_flow_imp.g_varchar2_table(30) := 'FE5C17282695C9B2BA1AB9AA544E5F85CB8B9D8F4E547B127DCD59ED85B04175401E0EFBB9ACC319796992C2D810AFE4ADB16E6EF3064BF904FAC4F3CBA059CC40806E4BEF096B23DC15D7008F511D84C7420B3DBD139664EC0E0003144745005A3F5F93';
wwv_flow_imp.g_varchar2_table(31) := 'C655D0A9D9B4A375F204078196208118200F078120D1831D27CF68ADEEC7A741DF773599DA05FA84D67DD89BE5604918D9DB2CB18644C51AD9C9B5EADF237C0FC01E54CC8C356CF601851250C184E9E62D4D81F1C5E82B14C81BFA4C71CA5DBD1AE271FB';
wwv_flow_imp.g_varchar2_table(32) := '1C969FB9AE5B48822EC5E201095321763D1AD5017D42F342D1A7935B6B1B50BF369946BEECCADEE55F3BB9EB9B6BCDC358FEE94B506190BFAD383810B3B080C239C32697A36B9A7283D9C39EDC45505D0CD45E23018189D3B57B075946F2BA81E8D6B210';
wwv_flow_imp.g_varchar2_table(33) := '303764B3B4B6A8131902F979FCDF3FD9EB3C9F022B81D4F37E091D0C7C945FC00989975C60ED319A822C44584508CF1399D87F74ECA3C95D2A97B06DCD5CA82FC79F093B2C0916F2E8AF94B63A6743260FBF31B8A999306100BB01CD99E6D85A5DC4DC48';
wwv_flow_imp.g_varchar2_table(34) := 'C39C57D2E5401D30263A3A786435CAC2CF8334BFB2D3A1ECD6567258CFE5B6AE0A9B7C1FB51112C92774EFEB48E526C871966351E03C357F0B3BA86DCC6EDC9B0F8695448B8A1C485C4A3346E7F86B85FEFF96478CCFA2E7847895D7F74D272BDD8F4E5E';
wwv_flow_imp.g_varchar2_table(35) := '0D4B00E3D0D54F505E5D737D3B68067C202FA85E6829CBA6575A0949A2EA5BBC4A1B2083147734430700969AF56F8E8B5968028F4094CB2EBED1B2CABA48EF9FD6EF0BCB13BA616BB230A2A82C7872B6320CDC91ADE0050BAFCFFDEF3C4EE46F771F7468';
wwv_flow_imp.g_varchar2_table(36) := 'A0796741DF770B3B7F3694B92822F23EC77DE469E7216405ED1119BDC8F02D6F71D52A53B8C26BC8A900E0EC8C4F23AACBF420A916130A8498BC45E91639F5F980DF62838A359A7248597F484D139E5DC989FAA55C8EE5F6A1349821B83A99060DEEC54C';
wwv_flow_imp.g_varchar2_table(37) := '14FAAB309911C3DFC7450F4A2CED2DAA04C40BF0D5011D71F20E209896A0A052718034C20671BFCD1F6F91008493056E28854A02C1F56528487F77BC4002EDD4EEE81838136232117F52BBABA2DABC77575F73A4A710AE97FAD03948EF0DABCE63339D94';
wwv_flow_imp.g_varchar2_table(38) := 'AA15BD01B244DCE692044FA0BE2A27826F0B3BB68045D763C9903084307D03B0F6DC038F43548AA6DE7E983F31871A0D25BF8D52FF99844C2096709F31809F238ECE635693CB84BF5F626CC0D8E8B437CA8F65378C1CEE38C57E63275DBE71BB657CB94E';
wwv_flow_imp.g_varchar2_table(39) := 'D5DABD0C142880DFD16C1C5C71A3DDBE5873A5D023C3AC5AEBA7A15215D77C2171E249444D82FB250204654644639A7A9A94D7A0A8047B62A013705277B97B91F0B66DF6563757B7FE53A321610A23F3D759E20B234D1A99CD41F34769FDF68B5F3D5FDE';
wwv_flow_imp.g_varchar2_table(40) := '18A43106844EDFE246B2AAFCA46AA80C3485A693AD57FA946D603983FB1B1892882DD2ED4D77D16D5F4C1ED48C191794590D868B0056A7225DF2B18DCB78DE563D7030770927A395C2475AF48B39C0FA203532B5E494736F0DBCFF651C2DF61713894B0C';
wwv_flow_imp.g_varchar2_table(41) := '93ADA13C7ADBCE410766FBE9706F62EC3D050BFBC1BB182842F106F5471CEF67513E1BB9C57AAA6223FC3D8E6F241B9929B46DC89F1F723F092EDD41918B41167287ECFBAB9028B6E0EACEAB6E5E091996EC6F21B54810BB83CC5A20B6A3533A7DF95B5A';
wwv_flow_imp.g_varchar2_table(42) := '9929F476E87A02BCFB61CFE96D4B3518F4342ED5E4F5618B5FDE9ABF14CEB03608264DE4412D694E3D429366A4E16EE9C2530A6408F7AF87DD0B82A9B8DB2F62CA76BF09D4920E5462669ABA6E872888927ED130B8906BCE505CBFFB951F2BF2E856DD5D';
wwv_flow_imp.g_varchar2_table(43) := '31A70838BDCBA19BBEA97A39E9E85AD5F386091B9FB0C8F0354E4D9D036EB8720CDBBE43532896F89D95AE701897188929A1BF741AB157A6345817750C2ABD16C8FADA659998607F7A6CBE1365286160E770D57809AACCB8657A08E4FA89E3E6CE5E80A8';
wwv_flow_imp.g_varchar2_table(44) := 'EEE17F40065778EEB27C0B69A3BC229A91DC904EE002215688161041AE06BF5BC493A17A2E2034F1E05F51E27FC7E258834E22FBF8BC4FFB38DB7E0C525899E3B5308DF88A77A5F15C25742D5A67B1335C7906828C7684E0E5DA779F1D61AC5BB1E188B9';
wwv_flow_imp.g_varchar2_table(45) := '1FA88EA3FCC6401DA4FE80B842B53BBB6794347F283228E5E3173217093097BE16BDB903486438411F2162373DD0645D2AD928924B6B99A94773A6EF62E0B2DCBD850867140000FEFFD19F5F364DFDFE5A28FB3399FFD1FB65A63BE6CE45FFE95BD7FF8F';
wwv_flow_imp.g_varchar2_table(46) := 'DEFC4563319FF1FBDF8891C45028CAF19F206619637B9784DA1F4FA8C2283D5E059573A58B5A3278357ECFF1118D76A3E8A7182DD75E6B5C4A0006001A9F4EC8F69F471E88FF07363EE4A27C1FAF2CA2A53C6D647B273AABC58EAF30A0A9D74EB80D3166';
wwv_flow_imp.g_varchar2_table(47) := 'F829FA6B1FF268584B243B3BBF90AD9DA9FF90EEA94152B8CBB74002B4E33F6A7841A971D13B959A3A0A25DD7E43A2F1918074842CCAD5D6815740BCBCBDCA247CFE26C6B5568FB549C7FD29CA252A7FC435EAEB27CBD5F5EC6441EE9AEE3A7003D40A24';
wwv_flow_imp.g_varchar2_table(48) := '2FF9C5644523B781CD5038585B9D9B9D3F622B7842687115BA50719D3B7F64EF7C41043E57E1CA6AA4CB2A57E30E20E8190BDFD520E44D51CAF968BF1EB88D6D8F4FB3DAB97BE8A334C131CD2B3F7E3917F0E499F92360A7D5D58B35DD0A81D4F0CEB656';
wwv_flow_imp.g_varchar2_table(49) := '75E8DE000728F6A2ABA093FAD83D687C310C4EC7E145D4A6929674BD336038B675757881BD5822C5F94D17E0B795CBB51476DE9F013CF1AC2C8FBE24F2B2863B9A441B8FA758EC5AE0B3766AFCE55DCDDCC9B3044E9DF0BB40ADC07F369D756E8169682F';
wwv_flow_imp.g_varchar2_table(50) := 'EF4B1441BC8D481A1167B7B7705C8600329E27FBD78E3B16531C46E626B471B03DD90E1214C44CD424E31053915C71EAF78044BA79838D28E110B3FFAAE83F3F7E34C5F8A3B42567BA5EB11150491D0E5705F71D42C85D550628BDAD4576EB9591ACF819';
wwv_flow_imp.g_varchar2_table(51) := 'D9D5B4850554B28FD16171AA40BBF86ADF2CE1439E89B05B4ECE57BD2FA901A458C2BF1409EE3F419AAC04CE61BC99FF7B4B3D00BFF6266B6893A58CB0139D5724B5E162BADE5393BFC929A9D33C32133F1FFDB1F437D7C5BA084DBE25E7FE87C7D796E9';
wwv_flow_imp.g_varchar2_table(52) := '849CC88645EDA118E9C5F59B7E9AA48466EA207D2F6EEB6BE57E7CDCFAB0E398C9DD3E9CC97DA662E14B26F3120723B0E06C0404426D34A50D508B59743C2BFAFB7383AE9D00F68ED07EEC2C31BABDE69B430D564CCBCE2822B15DB4DBE1365EEA6A2AA2';
wwv_flow_imp.g_varchar2_table(53) := '25DA404A3804477CEB79ABA2225EDDE139291D844F88E3DA36CAF0D56E66E7F524B552610C123331670B7623D52394B17BC38191EA911E543E52F9C7B4D66AC880630F02FFE8B1C0B5E3BBF0B9BBAD81F8141ED20ADBF0DD9E5DAF883ADC66678387991A';
wwv_flow_imp.g_varchar2_table(54) := 'AC7AA97D456D218889CB026CEC85248E6846E94460923D818EDF47B7A4B80F14CD49247A9730C4A358193D7D39D2E8D67A6CF97BE815FCAAAF6E2DDCAC2CC5EC6893CBD1C87F2A0AB91BD0AD31C61682D30B7687F9C4C69976C287D72BAB65B3078D5D3F';
wwv_flow_imp.g_varchar2_table(55) := '26B61DF4793BF0C0A82460B4ED246880513545042107FCDBEB0CAEE27D2733BAF2DBF944749C2EAFECD4A225BC8D4C1876F7DFBB06CBC2472A776B097177570D8EAF51B4DC728AFAF8EC5C06F87EC60165F8811AE2067E0C1D6CBBFB472E2A43B3E2E8A0';
wwv_flow_imp.g_varchar2_table(56) := 'AAA4983A4D94F2F17CC5F54581EB4FCCAD6F8E1C289B8F07FD1E3080B0F65451740AA701454DECF64CDF7F768387DB40A442EB4B1F148B785C65DFA5B9DCBCCC16073782A6DE4C0CF9A4F730B55FC32EE587D9E93E6C697DDE04B2BB4A0AD25C3BECC5E7';
wwv_flow_imp.g_varchar2_table(57) := 'CD1E0CF9BC1CA41C3490113BD3DCEC37CD469EE79974BFEF6A8CC788703DC7DE128B4BD21AE0EF53E23F57B711E122CFA42FE48C567645F078BAEC262F9B4B705306943D0B05BAEA6A929C07B673D74CB874C0CC49CB90858DC3EAFC205270A89F242B5A';
wwv_flow_imp.g_varchar2_table(58) := '4A1D8DC286D928F2D3A089CFCB7EA15CE6C8825F9A7BD86420B11EC474B647E15F757C778F4CD1D5C180A618CEC390AD1EB3067C9484DC97A81E82F706A969F0D06B7487E77C7BDB2DD4BBEF5F87E75AFE492931E975D411DBE79B9F3F167B8BB1E43503';
wwv_flow_imp.g_varchar2_table(59) := '573B7B9175BDF2F72FFE8A37CFEE9258E97EF9F908A9103C81472B5BB860E3A887F72FA7B41EC164ECA18B1BB4FCC63AD96430892664E603EED3474B5FC9511F04759DF83B0903615019D29D4F7315132B2101B5D36C1375D9F82A66BB89319FA6F32285';
wwv_flow_imp.g_varchar2_table(60) := 'E621948BEEBD4BEAFDE1763BBE73E9CE6522085B0825E55F026A718ACA4CA49510CDED782EC9A26BA0082B597A8C4B7350FB26763EC23F13A9E5972D77A8936292B4F4A5E71BF36577FEBE4C9DF0EF205AD96057BF080F9C81EC5CCB5A9727F3B95187D4';
wwv_flow_imp.g_varchar2_table(61) := 'DA14AE00CD9DB9722CC8F59425DFA7316C5804BE0BE1D44E24DF76574DDD61C1ECF90A373AE1D10D6CA4A6B3328E11E3EC7BE4F4A06D648AD423EE30DFAA3ABE9A13DA832139EAAE5ABAAB6CCD7DDCD04AD29315845D6C86210EF76F5067FEC25E2789B4';
wwv_flow_imp.g_varchar2_table(62) := '389EF3AF76F7DC4F9C932C473C321026C69F129904AFA6A03887ECE0159EE2E1723B47FF2C05F6537890471DCF65A8CB5C27F412508075CC3A1DE8783680B36EDBC4F424E5F359BE720210F0FFCF400AF871E56FD2625C28F22AD3846AD5DD8E57DCD477';
wwv_flow_imp.g_varchar2_table(63) := '27E15691F0F532FDBCD28699657F0BC09C994954DBB2BC24D7D96DD56D52909F36248BFBC77FB210B815E1D551EA67349C4B3C753C9544A05D01F32CA6E0A9E48FD74A844E9490B3648BB20DFF949BCEC036821E8DBA54818C6E97B5FCB711421B6779C3';
wwv_flow_imp.g_varchar2_table(64) := 'A10ACCFD727B4DBC9F5CC1F984847D26868AB85F671C5743BB0006D8D186711C02B89491F657EAD2EFF29DCC359BF5D9E445504EA93EF4BBDE371D7626C0EAE136664AC792B02E0290361B4C62A325A43CEE6C7CC3309617FA48358ACA5787E29DA4A8E3';
wwv_flow_imp.g_varchar2_table(65) := 'D081999C2CADC7D072CE9CC0CD43E1C73C9E0C4CA9285AA3270A25F8553E65505516896F228216D4148095628E6A267E250EAF4E4732E97D6671E995F864EC18DF166066707BF29EF0ECC72793D36E9E22D2189CE4961B32EB99F4563C5F3AEE651CBC71';
wwv_flow_imp.g_varchar2_table(66) := 'D3562CCAFB5A920EB161A077D4314DD33544F5CAA4E3D03B3842C372102B164A34686B171C6CD716AD3F4E5F09A4D228CCFEBEF9342703490B69F172AAF68CBF7A4D65CECCD7EF0B0AF5F6A2E5E3E04E98E0C20F118309D2F30DB7EC2F9800034420FA64';
wwv_flow_imp.g_varchar2_table(67) := '4BC9ECC9710CFEA31D9E356FEE3B3AA727BA5740AB1048F60766492CD0F96355889C661A8C89464C3E408AC4CE67D3A9E689BB8148FDEF0FD5F992CBBED47DA0F33C13A0B3BA3DA41B9D0ED3B5148D92F18A01298A13BC55729F3A9807E16D4445C8A591';
wwv_flow_imp.g_varchar2_table(68) := '415D4334D6E3A8F867F86CF3FF2A0BE039EF4E873F76552AADC9905829E6AB20F88AFBBA6EA04C91C3EA16E7A74ECB65833179A58BD86FEC54201082494AC2714363C70B8158AD870314E20436E31FDA40F45A90C4F1B0C53524B5BC07667BD8A3EE5D07';
wwv_flow_imp.g_varchar2_table(69) := 'E45B8AC0B9C5423348618787FE938F13206F309CDEB2E656C9334544CF27FB1F45D89CA4ADE46A20CC0D17C8161AE77968CFAB6D9BDC6E6FC0E90F59A9203D7B872EADF2476DC896AFAB819C9CBEA55A259166ABF54D9400C0F39A29D225EA70227BB602';
wwv_flow_imp.g_varchar2_table(70) := '1BA2A8B16F9C0C0011447899E2D2358FFA083C834530080032290B72C7E63F9375212867AA0D2AE815F2906B00453C6679868C602711C73E04767D7C60BC4F17661CFBE8FAF6E935CDA15396CAF3FD6811061804E4E4B8461F0120C023452902C038A84F';
wwv_flow_imp.g_varchar2_table(71) := '9D6EA3A1642531C828926DB0176BAD4AB1F7A591004BC805699E676756E8AD4F42ED9E3CEC0247B97D44F16158429E96A4BEC9283D9E73BC15202363F0B256CCEBD1BF889B53035FB03CBAC97F069ADF5AF0F820BA0FFC7B9006A9E368BDDF730E0005E3';
wwv_flow_imp.g_varchar2_table(72) := 'F115FCBBCE9BD0233A2F54377C525EE4E487DC68117CB9495BA257578EAF2B836119314A49B10D7E3DB27EED307E4CB0C4387C5BAB2143DCDA343C379471442E7D9B86E82ACCC381033259F2896C0CC340A2B4582AA764315196534279E030464AD42FB6';
wwv_flow_imp.g_varchar2_table(73) := '930725AEA4FB9FA40BB7BC738D46B3F4DB22E92213F682BCD145674AD9ED1BABE2E2A4CDB614F796E2D078C08A5ECFB592298BCD14CBC26BC48CE45E62B518BAED3EC7F5E62BF1F695B79F4B8B40E3B5E4C406BD5EC0068ED27E7E5E3D153D1EE1AA1B49';
wwv_flow_imp.g_varchar2_table(74) := '2DDE893E9A1AFFBAF96BA8329714B680ACA2B839464E68E6301AD80D61880A04983DCFC405EDC7A9FB81499A055BA84ED84A6A885CB6579612A7F2CBFF3FC3BBCDEBE242DCA4B8A5E2D6E26B866C82BBF0E72DF14CDD5B5468ECB3EF8E739CEBB5774ECD';
wwv_flow_imp.g_varchar2_table(75) := '61F18DAA3B2A74C83FFD8D4BCC90716EBB936A4EA37B3BC214E48EEC67C1D8A59B2A5D28D24F26144DDB1C16A7B4BD280CE67E76AA45BAF60471B00F7451CCBA610F585058A33259616AB73124240CC132F940CD0DFC8D10BA4685F4A98F2057FFAB3174';
wwv_flow_imp.g_varchar2_table(76) := '417DEECF5F5ADC215ACE6F0FCAC5CA820BAD6EAF10955406C8B25FA38381694C30DBF45E85141235BD3D25E626629F8A606326AD4265F34AC50DB476098B0FCE8CFFBCB80A2C30A9D9BA316D66E7DC34E7DF434E15BB91F1506E0FAC88ECC2AFCB465972';
wwv_flow_imp.g_varchar2_table(77) := '4C2EB5237A63CCE1A4DAE26E7E23BA1C9CE0CEBA9ED4B71E7B98E8DB5A02F413E5C4123DF4498EE92CAF8DC464BAFE76E9BAD4F6CFB580022EB51E68F6FC9311F2B43CC38811F0EF2D11930CEE628ED55A9BBD6E585A5FB0ADE8BB2B3A321CC78C49B8C0';
wwv_flow_imp.g_varchar2_table(78) := '03A295AD1BC2691BF4647D78002BF345581AF07BAC305D577B573E344A2688125B94C3F9AE1DBF3415F43211C47D6270EDD6879CB749FBE3BEF2E4639426D9B1AF01B9CC67FE4608E4B326CA2B46414C6BE7C1FC347EB978CEA1A4B2EBF1E39A71B6D459';
wwv_flow_imp.g_varchar2_table(79) := '923937013AEDFC6BC1A2F38D5EA4B257278B6E9E4072830CE6403C3C16F93B7ABACBBE082CFDACCF0C5B94E951BBA4B9CFAC82A23B77BD6DC070E68748242638223607B80115B83F38886E6C8A85A6FE8CAB5B058F0909E94ECA955AC7A81A6C13FF0F60';
wwv_flow_imp.g_varchar2_table(80) := '94EF99D63F5E75E934F06CE99F61ADA9E70F757F8BD081238EFF831A8A427231562F10AABBE06312A9C594EB56F9B14B20CFBEF42B21C20D3774B07F41BE397B71D23CD8DF2BACBE1121DFBFEA1EA8666AF628639812D136368727F6A6D09CE3218DB85F';
wwv_flow_imp.g_varchar2_table(81) := '79B4C77DCF3264C93E884D55CB6C7DDCBF4A4B41ADE4957F08C7B791972425E5CDC2143A396CC633EA5AED1E7838CC6299B4B1492A7B13D741DF68A44796E7CB5D00F6EF6B003FB210205651A14226AA54B30EC2B9562436C524952E948DB9809CA8F835';
wwv_flow_imp.g_varchar2_table(82) := '70E580921194A5C5EA13E9D432C2775D1531EA0250C2279A4EEBB69FF687EBC006ADD611C5AC81FDD648698238E7D78CE10F2D387B7AF2A7165864FABC36AE4BAAFDB1D46AADC1EBCD89297E3838CBAE082635613565D27DDAD80CE23589980D2F60412E';
wwv_flow_imp.g_varchar2_table(83) := 'E0E6C5A57184F772262BD979288D99A0BA1CD7692CB7D098377EB832212B129DA10BC857BDB43507FDED6D223F7608100532ED2052C37FCCC3BC58E37688A4501D22AFEBCE1EA567485A7DF9C962C2DE07997C97C607F586A81B26A0838C84C552D2526A';
wwv_flow_imp.g_varchar2_table(84) := 'D31BA401F5B1F7DDB80E848FFDA06A3B3AABB84D749D4EE4F1EC7988383CB0B46A1380D161DD2EF999BF7C8B30D538805B34D6E3193D67EDB4EC4C8BAF504F1FD7949674A535694E2A46740AEAF3DD53085889721007088C5656DC717E9CF45292C44979';
wwv_flow_imp.g_varchar2_table(85) := 'D63BA05E5556B0C5085F6A4F8303670A8FAD3343222DADA97523F93A4F305741445AC202C84DBAC148A00D4A37CF8316F85684AFDED87F4FBCBD91C25C0D09E884BA397662EE30F0C2189872E8D20D90A21B3FB660A983BE1C5D148679426F9EF06B3E0D';
wwv_flow_imp.g_varchar2_table(86) := 'D22C20AC2C208A9CCE8FD9EABE0DADEB6CB834CC55A2460113CE8EADAB5EB9973FFC742E7DF4AF9A357DC14B7FC88F2F6C2E2B1DA4512D9B729D74C280339E6BCBF6E3E59F88980EE71C62D78FCD325B204E432D8D0587D31C57CDA3002EC2108F695BAF';
wwv_flow_imp.g_varchar2_table(87) := '4F03EB4D377BDF57DAD17123EE0A1C4FB8061C3D68CCFC3F62619CA60BCED6A67CED47751246D39AE9D254B5459121BFE584841B05CE32E0FC45515E15D2D9DCA8689C782D1E353583EBA8B45F7578D2A7C5EBBAB2CBEC3BB6F2A4F508C7DFD1A2ECCA2E';
wwv_flow_imp.g_varchar2_table(88) := 'BE5700E383811FA38F426A29D51372D4A12523C11DE0440E883A12969882406166BC8D644D652856180B4BBA2E49261B056C0C6503B332D5BF23E9835DDB4DA27C02DFDD27F61A2D8B5BD22F24D6AD2CDB0B953406239441350F89BB10A64462AA154009';
wwv_flow_imp.g_varchar2_table(89) := '473839044BB20F8FA19A2DE0DC6C0A597C66B22BB48E74007B55D11A885C27C98E50CBB167F7D9376C5B55E03F766AB37F5B6637BA8838C19C75C33EB9C61E8FB342F68A3CBEED7A8EDFACCBD0A654C2C6C81BB1C54865AE0ED3FFF16680000B111C2666';
wwv_flow_imp.g_varchar2_table(90) := 'BC8AE70703F565904A237094B83D7F87C2B72E9DD97A38E6EAC432105E0952C0F1F90751A7A456048C5348BFFD182D77DC6435E0D77AADFD986A0B4344E072D639FF5BD196C83DA5B815A67BFD249620FCD3C207B8EE0BBAEC5E4B63C90787F0558C1998';
wwv_flow_imp.g_varchar2_table(91) := '90C79631E3A0E56451534B5BD9A20D02465AF840D94F860218C00337A207178A3874530CBABE9C8570D85E4B4D997C6E145758BD691A0AA2B67033F04B140A2D2BE4BAF078C154BDDA7DE3A1938944A04CC393E01BE5F265FB0906FE0662F5AF6CFD0DD6';
wwv_flow_imp.g_varchar2_table(92) := '3FB4DED0DCDF1237C09ED40E3A0400979414271AF988297D7FFBE43BC241E71CC3FAFFCB78A372D356D074F75F49D2824A03951C8AFAE66F787FFF4DA81559B545FB6900F953A59F3192F923CE2E3EEFA9F6947A89679468B2551EA7324F1962F40A7786';
wwv_flow_imp.g_varchar2_table(93) := '10F0C81972E9E4E57617C5F0A55F9C6E06D08AFDB163975DA5BD785A85B635C3C667EB2C341EBCE555EF00ACDC80D3F3CEB41565446CEDD2912246F85EC957390CBBCF216A963005FA7C87CBB1D922156D7B45D70C9FADEE983641991CEF4E6BD19276EE';
wwv_flow_imp.g_varchar2_table(94) := '727676BC25668BE9679DAC2FEAAEE85EF8D817F49F4023B885D301C5DFCA1476E788FD16E4198F99814F12AB161616AB43672ECEE66EB4713C764DA55762A5FD0CE3D3DD874C4CD255BBEAB28B188E224CA04EC31FDC87027D9AEE50F898423DCD5B1E61';
wwv_flow_imp.g_varchar2_table(95) := 'D9DC78513C7FB93BA18E19585F591B8CB1813A792BFD0A6046CBFB7DD329441A84B90E1460024CCCEA5D8322882DCB11857CE0705E2BCA199622CECD661B420C5F5EF26915D70F50EA26A3CCCBD3CFF501AEFFDF2B21252C0E9ECD882A2C0D0DBF3AD3F8';
wwv_flow_imp.g_varchar2_table(96) := 'DDFCEE370068C1CE2C62689EBCBBC3EA2D3FFF418D6736CD3B143F2910117E9D69925CA159C4EF2FCBC11D2ECF311E299EC77562F7126E08BD8F2C6C026CC1D0BD1276D698F2183779EB3864361EE8D88078DF23C4DD02A4EE7953F9C5C31DEA1E838C9B';
wwv_flow_imp.g_varchar2_table(97) := 'ADBE0259E71F6331773C769407C3459CE6B9791047ABE9C78E3EB57FCA675F0913E790C2CE23943E6795E9854F71100C4E022A780792DABB805CAAB96AF24A2EDE4929AAA4653F19BD5FFEF4E811667E0693C3E6CEDBFF706C87C8F783C68D90F7C8A58A';
wwv_flow_imp.g_varchar2_table(98) := 'BB4BCDC1289751EDAC429E480105140BB5B03618F5911D8324E4FB76D50E0E592F9109C2C65A95E1E0AC9EB688055F39BD980A26EAD290879884F6EE7006FCEF33D4A8848A03E5795FF3BB9CF5874726E69887C7CE674F886EA7831FD6E9F9E5E992D912';
wwv_flow_imp.g_varchar2_table(99) := 'C51F6B881E6E92CEAC414809DCBBC0929707303C5FB8818C2670CAB7AE74BEC615AB346995249267093F5181F2096F9D7E7C4096E946D489C840C62CF39B64473E5F3C05BDEB201F52C3E7E81BF01FC30CE76C07CAB7E90263D825F81D9E81E90FF8F193';
wwv_flow_imp.g_varchar2_table(100) := '48F19C7694F2CA3B6825CFA8E49EDAABA82F857875A1E7F45DF8ADF025592B071E96C0809175991B8213328F517E342A8EB0FDA724D3DD2E2D0680000F75416524E0EA522EB0C51D732CE43DC6EBD100F296DBF3B42D5897202C098DB427385AD5896D81';
wwv_flow_imp.g_varchar2_table(101) := '40FBF5FF365D60DFD4F073E2BAFAA196940C976D6653F091B5A185EB5952CA3540828E128DC675DB9E05998B0A8BA67CFDB1D9E901A6FB022F38A6738D51BC789B57282C62B46F204D4A17A4EC359FBA116767BA77B12185AD1C754490E2E47532EA02B8';
wwv_flow_imp.g_varchar2_table(102) := 'CD5448925FD5D84029BAFBD3C4E43C9ABAC5AE12469F505AECE340220F2969CD1D0759E8F497FA91550556429DD3F6BACBAABC7A99991EB4A47D32C25D995D0A48E93CEA8DC67A874346E2AFC2459DE4DED0C196397572F290E6448A40B9C350CB7CC14E';
wwv_flow_imp.g_varchar2_table(103) := '96521CCA9362496D8FDD569E81841D1F1BB8AAAF8A0DF96C26677427F82C02F68D1F78A9F26E146790F14992D1DA554D7705FA72CEE6DB7DDE029EDDE6510D5793B744797BADD74DF62F9611E85A67513B183A04E27C9D5ECE932259EF35266DF50942D8';
wwv_flow_imp.g_varchar2_table(104) := 'DEC46EA1ED936E71FC13A0CA59369F392D78B2461AE23B0555E534568DF014846A2B52C11304B8CF3F20E6E698B1A10FC5ADEF369370CD9764EDB1DC145376D2215B0FA78CE32AF039259734ED0919B690FA9428D26702701B9321CEA8AEB70C939243B3';
wwv_flow_imp.g_varchar2_table(105) := 'DDD91CBBA1737176E4F1075C408B9CC4ED301725796F17E129E912CC1D49D992B53551A7543ACBCAFD789678EE21BBF6A8729DB99333F4ABCAC11E7A90809E92377A54703773DD410E9FDDCB583899D4174F85D28FE784BCC0A14115E97F00008294EB82';
wwv_flow_imp.g_varchar2_table(106) := '7D8553ED65B42E95316C8E370B6F74D260AFF5C307159A30793A69D68BA59C55F0730ED1616A242A611DD447EBE850A4FE2E5623C763FB59FA1717B022E8F4EEA2F63984F9DE4C523331EE030279679CFAAE38B819F5E9C711089EDE63F3D963191D9F8F';
wwv_flow_imp.g_varchar2_table(107) := '64D8516D72FDD3465C03AE8913597F4103087BF091C90578062D3CB4AE86457C4CAB78EAF93050B85200670D090AE44F01B43866A62292EA17CEA8A0F5BFE3D6C852EB383E6E51E39D509C3838421F6771A6280AE93000B679804E5CE72C6DEFE8401DD5';
wwv_flow_imp.g_varchar2_table(108) := 'D35772E0A7D6A9A3D89BEA266751ECF4F8EFEA4D9ABAE6B1A0A38B2EA751A6142807EBEE0BAD2326D792260E4BAC541BCDD74CCD3A0A287DC020677969D2D7E36168DA6A3560B93673954DBC10A9B3999A62270B2E81F3A96337906CC2E4B0803577BCDC';
wwv_flow_imp.g_varchar2_table(109) := '19A441A789ED8D808377FC5609A51FA92D9F098E3A980927914DFF0A27BE8E02D8FCB7CE714DE14C6344FE5EDAF6E618CA12C402A3DB82141B6B1E4644538F8EE917B82EF0CDE2CD006DE898D5AE67B492B1EDF36632E4369DC9047C38BFC2372A2CA845';
wwv_flow_imp.g_varchar2_table(110) := '68C0B139ACEB3D5FCBA2788C90AB9CBB9C68542EECF42ED73CBBCCBE946D9B79900771767923E7B6AA6B3FC1FB43A0B5FB5D72FE88250ACB74DC8CBDC017D67655A3CAC32B672BC827F112E800F7F58A6EE8579482BFF7D11475B4862FB1D0460B374EB5';
wwv_flow_imp.g_varchar2_table(111) := '34D77216C0001A092F173ABCB84016D6AC746DAC6DDDE2C48FD1F299E4BF291E6B8A12799C39DDADA552078A3E0B3CF88026D36D0D4D2653D770045F72AFAE33B0843590052B2E9EECFF38C3E786D37984967D4C3ABF5FE7372D3F940FD512761021FB8A';
wwv_flow_imp.g_varchar2_table(112) := '2BA360ABDEAFC7DAC1FE5A56B6E11DECF5FAC1410E4553206F54667C9AFBD5CD97B6BD635376ACA9FF209DD8D9480B0A97F1D7E788EDB302D03487FB45BC47C0D7C42D648F5F2FA289D3DE720E28EE5DFFD6F51CA03D2975DF418085300E2794862D6FBD';
wwv_flow_imp.g_varchar2_table(113) := '21D0FD727B78A579B594FE422276852AB8C0874D0C913D22D11E1DDF338385D962884A2D802F9B296344FE2475F55481D649BA1E28CF8C5D8FFD71C995699213B78E35CEB9ECB442EC8B200EC324A734A33CE9522E72983546ED94772C93C6BC8B9EC3D5';
wwv_flow_imp.g_varchar2_table(114) := '75A8CA2E431E223F5B6C75E49A21EA9D279F06487669DAD580429CB7E29182C3C37DE977846CE7CCC82ED29203CA6C1532BB43CF319BEFCE8E1CE57A65F50A3964D9D5A9943E14D45D834ADD2EE3D49C5C07923650E1C982C0889B2626D9ED42FD7CBE14';
wwv_flow_imp.g_varchar2_table(115) := '602EE20D6925294AA11BA98D238965A269999A63E9F4F83DE84443D6DA3470FE7E3AD87713153D411D581A92641E3C72E902B39AFA92154185117E935C4069F7360ECD80026650285651355658A3503FBED5728C081FC6A539A8E2832D7A41E342CCA3BF';
wwv_flow_imp.g_varchar2_table(116) := '9A7A6B4BABAD9BF301A469009159010A35E14C5D1BD67AD83A5A611BF0A3ADABBE703872893302E62A2C32A9ABC6D2E67C0B1CBAF389C56E6A340DAA88F52F666443A69450D4F8D504876CE4CA0ABFEB4BA9614C2174242A1954CA3F86A7730FFD518A03';
wwv_flow_imp.g_varchar2_table(117) := 'C7B86C62E47F4190488A62017C33580D927D65A1C354E0C1CE822BA457585CCE2431BB90C3333C03865338F613F23634EDA41AD93F994CD4F5FCFAE120F65AF869461E7C310CFB2BA8DD431911F13832B56EE7D7293133FD71B048A9C6C977A65FE6A005';
wwv_flow_imp.g_varchar2_table(118) := 'B250C5E69028A211EC6A2F3BBB4641FE4EC23020BDC4685E25EE68D192285066CEA440559CBE661BE0920F55E8C88DF6B81CDB7B1F64CCBCE6D383146D4988379171ADED42707B45A3413AC596F0C067E2A52AD338198F2807AEACC47C649E78D14782B2';
wwv_flow_imp.g_varchar2_table(119) := 'CCFA72099BDB47338D3D039DD4D1C24CCF93D5007B364A07CB9BC752FDCFE0BE8F9FFDBF58F1F5E08CFDB11BF89909433A00143B0853C2731DA94FBDBDEA723CCD82C19DCAD599E9749D0B5576ADEF56BA35590F8AAA5380259D6AC1015033D4D9B60BB5';
wwv_flow_imp.g_varchar2_table(120) := 'C98C0C8DFB682103D56831B357BD2E32A5DE6948A43888F7CD37606E37C5CC0463F09F896959399C841E84487453F363D5BA614A3C1502659B661B683D8A2BE3654F95AA716B6FBF5CBBDC1CD84EA5E44997E7B349B74726D4E7001A06B6FEBF04AE0FBA';
wwv_flow_imp.g_varchar2_table(121) := '56C34C1441B264A82988CE5BC60EA25436CD1CFAE49BF98567E23D44BE3AECB41C866AAD5CB4D12B8B6FAD002D2F30A1DDBEE6E29A5D46E4BEF90E404EFDC0C87C1FB6FFD4897EEA99C046CDAA40BB22F3D7203896EF27A2E774EAFF1EC3938E11B393C6';
wwv_flow_imp.g_varchar2_table(122) := '496C26A5ADEA53BDADB5EDC42C9C238C012271BE6B25AD6B8FC5DEBDB0D3182F5B5D5F4EC5B6F5BEC26DF5CC52D64461F94DB2EDA5BC272403F6625EB7159021FE6152A846ED4D82BD55093D8E811A828A825EEADD7928A0A8CF422C564C2E935C981792';
wwv_flow_imp.g_varchar2_table(123) := '09ADCD168A349363882D94F352486B67B2A3B2493DC2E03592C98AEE0FBF4316847519842E45C4E7B8F6A255AFE84C475C3FB1C6625BA762D7CE2882F734C064E24A392A205C2C443CDD42A11E743A069AAD3920DD159747F7B1E44ACEBBE1336724B4EE';
wwv_flow_imp.g_varchar2_table(124) := 'ACB0A1F3D50B2D0A5035C61EBEE727B78FDB67507E87BD59E13008EC7605EE4037FC78183B3CF34F9E43AA94557D1359F59066B80D634F656D48F509A089B0C281A03E4578A49D15EB44B1F35D6ADF331D734E67F35B5334F82469AC6BB8D59E9C549718';
wwv_flow_imp.g_varchar2_table(125) := 'D294DEF345D599BC4210D96EB3CE2402C594EAE86578E1F921F13C9502BD4C56CC38D96799EA03733A0F27807B8655B38A8011F42ADF1FE2DA1697E0A2D53E4BDFD2126D6EDE3BA8DF312B23CACBCC1B08E951FDCCFC2B0C9FC388E3E4E1ED66BD684A20';
wwv_flow_imp.g_varchar2_table(126) := 'A50C8D88BD954AB45A76189B0D75D08546D19F5B15555591405C8278B8354E1113B488B442FABF08E4FDAD308FFFEE08D7717431D05B29E39B8A4CE4689E5E164EF3E4BF6A01ACA610A086EAC77B13B096EFAC764E8FFA000590AA7B024E0E8DB596C792';
wwv_flow_imp.g_varchar2_table(127) := 'AEC0AC84CEFD61A0A38FB504D8786E2096D6B401E4BFCA3DD30929E35CD6F2E910308AFDF787B7FAC809DA717987A598B08BAED3AD9FFDBD10767E4DF78706F2B5FB2FA28E57C39B023E3D27A265427BA59E0DB8F308E1827BEBE61E9D32AC4B9DD36FF6';
wwv_flow_imp.g_varchar2_table(128) := 'A185059D2947942A8387CB4E08C021E65FE50BB9F1CA9DC2EA8D4F3E09683A340FBD8F9E17AD5987B7F7D9A6EDFCC21F3E25AA0181F1666014619A6E12AB4A55130EB2002248808CC7167CC36BA081A04825029B540CCA953A411870000AFAD916B0101E';
wwv_flow_imp.g_varchar2_table(129) := 'A84EA52E0C257186F436C84DB501821804EEBD41A5916F12F2D0D5BE9DB759CF25449A0B257561443EA724410B5C2E60ED0092FA7FBD09C99A4D5E9E537B92F5E0CF33F3A06AEE1A684D6DDF7B689B3EF62368E424F0354A21B67FD824A5FFE4A4E1FE93';
wwv_flow_imp.g_varchar2_table(130) := '1CA1578E78675B88F0DC370A648A5AE2666D603A437F0061491CC6657739167F408D46EE22D9FABFC1FC9B0ACDF36A3735A8A08A4084EEFE476DB08215467E6B3A3AFB80C9375E9C04D312123A058AC6E71CFB797F9F7375A14AC0F320627342E93920CE';
wwv_flow_imp.g_varchar2_table(131) := 'E1D58B7F6B6BF78D5A637D09A956F2215354AEA724C30B45C0206E374F960753B835A2A91A1394A97D2625145D3B840C0D9AE6C11294553148029715F30E38DD643BF36E435D206C3E945EAA40349D5020A80B846776A12429372D44DF449F9A3F9F7203';
wwv_flow_imp.g_varchar2_table(132) := 'BADD9436FBBD6D9CE0C776122524449FD7C6ECE1FD9047B55AB3B3DB2EA89D45ABB560B09EBCC99692FF01F7A802E5C000123D0C85D37FD7D5B93B26C681D7AE8E7DE911A56B300E32E1BEE5A3B4A6C6E2F585CD289B4AD0A9496EE17BCC2A4987F98300';
wwv_flow_imp.g_varchar2_table(133) := '867507BD66D68F65955C040767957BADC9D9F8B9EF1919EFB1F342245695BA306010F519524AFE90B029F603E8209B2780D4472E8F1408AC18A7027B66DED798614362DC2A0567A4F1E98200D10802FB8B628CEDAB8A0FD693B3900E63192F3C9A4BF219';
wwv_flow_imp.g_varchar2_table(134) := 'FB4170890B8015492E5B6DAF0324BE984BE44523FD9ADD8484CA5BCDD21522DDA36773AF23B0EDDE97D372400C70DD6922731498A690158CC412C8E832121293FC05270D8A3D60F034B88A52D3DA106505FFBCD3E9C1FC8A17D291412DE39A789E7D2171';
wwv_flow_imp.g_varchar2_table(135) := '250DC6235468AA2BC9A5C54D95A33510671F92168417F50CFDD798F723FF8E0CB96BD982BC425E25A7E3BCB757DDFFCB0915D1C4B0106F11FAF8B9433B4B36C1E15B2B456DBDDC61F4CD3A05057937A6D36AF6329DC577699495AC0BF7DDED042D2B5858';
wwv_flow_imp.g_varchar2_table(136) := 'E5E24D313945494D9C596DA699445BAB1CE2678A580491408C87BF955C38D280001F295DD278059A055326D9B71600F888CD9A93615611FD5133F288CCBC2FDA0BA7A84FA1230A0E723C720D6BC09FAEA9F52D0CFDC8FCA684F54EE4A0772D55C0517A10';
wwv_flow_imp.g_varchar2_table(137) := '41AF45A626A658C15F67CEAAF45CB0C405133EF6451C50F6291E41626043F60367CFFE1D702415EEF299475B39626B8FD1F0C6248C746B56B7167B7247D001E2DC03B9F45D3BCE53E44C8DAC4F67EECD1BF28E629029525333C44EE95BC92F6A67E1B5D7';
wwv_flow_imp.g_varchar2_table(138) := '25D0F1473216495FB526D149424197951641F35138583D2080CB0D8BD0263081A8B4A3993C6ABD6E5EC95D8437E279DF778D268368FA431A262F2D7C049CC5A8A7A65AEDD241FCD09DA3C481487F99457B28CA42BF0E97288AC0B83752ECB16C161DDBBA';
wwv_flow_imp.g_varchar2_table(139) := 'BA03E53F99F066F9FAD485549F60B62F979D3DFA1D512955F73ECBAE969795CE65208B036AAECE05264EF58E4D3D14DEC4A033FD921C501B38EB3AE7CD2378CDC062E0097A16610B63E649303A52E7D83EB777BFEB93A068E80804D4A8BDBA60FE731749';
wwv_flow_imp.g_varchar2_table(140) := '142F77B31238A29EDAC9A1203836CE1845CEE380E72449C26A9A4C5C9730EA2561EC4ADCB80095F40ECE396E014851A2B16F700B0F6424A387E5CADC595B3FE0286DCD40E7DD44FDA9B7050A4348CFE9C2023C5D6A4A8A05E1FFA16CCC7C2F690E089DD6';
wwv_flow_imp.g_varchar2_table(141) := '09C08616F19ACEB50E40038E28AA22C043ECB805D2969F81FB87946F2AF37CAC100E9C545845120D8454BFC2124A20CFE3B4938181FDD88CC9516D866024A433F5ED55260803E9945852D05D4B8D21D7E911805DFDD812BF6C7B31FCD502A5748AC3FBC2';
wwv_flow_imp.g_varchar2_table(142) := '82F921EBF3C90447B80A8E53CF1DA24C74B7A0E1038431A7EB0576E5A63C694A934C70BD545E7D727D4EAB3AB5ADF630E350407D8B13982505C8E03151119AFA8F159D740D1643BE808872243AE4BCE3BC898397ED413471BA6397959778AF00E20E528C';
wwv_flow_imp.g_varchar2_table(143) := '36B187FC9B2CB933A25E35E9A919ED91C13BC6987E1979E8CB5C19D5A42ADC030E0B8014F60AB7A7392D301E849D246DEDDAA500A8FE5E7BE9957DFCD881B9D6A3BFDD3E67BD7B2D113065549BEF2276BF0071764B3688D1F6CDCC5C9F30A2E4AFFCC293';
wwv_flow_imp.g_varchar2_table(144) := '86A2D34FB2913DAB92EA42EF062D61377723E9483CDA438B8F86962D3D602E193DAC687E7DEDAC5F98F0E9F092B1D62BEF045C85151E9F221689161097D422B2B70201C22B97A08EEF67608836B9DB5C469D0C0F6D525981CD16C02AA9FCCA6208EFA666';
wwv_flow_imp.g_varchar2_table(145) := 'DC2F95CA4850DA725F6FFE924113FA93986DA9C48437EFECE8908859A631EFDB9B9DC093806A3D43408EB2285918243A26F966F63E67BB6218A0E244E64B7496C5F48F0810C792A063EAEA015583C34C3726C61A9099E4D029F6FEF0ED1ED231CCAA0A25';
wwv_flow_imp.g_varchar2_table(146) := '82E1EE890CC2EDE5B04B57F8F66D49426A1291EC823D5398743FCEE38035D0ACCF4DBF7DE539D4265B4ECA6BB89E2A0EBEFB1333160F6EBBF48EBE89DA9CD975CA5FC933F83786CFA414CFCB669106C7559A022B0910F2C39AB3FCA9655F2F55550D70BA';
wwv_flow_imp.g_varchar2_table(147) := 'EC0A63A94DEA3E833CB6DF0719B231808F30F3503693C7C403ED64451D5EF3510B137A6B1174EEB72BE31C1B52E846B918CE28922369B46D2739DA2297731CC331BA92204F5207513090EA1A4630A6808311975D19C6D2001EABC4CFCCB91FC20FEC9FBB';
wwv_flow_imp.g_varchar2_table(148) := '9E00AC5B43BF8CC3C67329CD9774BA9228D1198366F8A64A446CFB58EE78E60743F06B97868F3CC41993B0D7FF782E193288EECA407EFD57BA65B2E81D71A6DBB24F4C0316D41E277900001F3A897118CE4DFB365449E1DA748FF00BD30D44FCA96197D1';
wwv_flow_imp.g_varchar2_table(149) := '42D8924F525A6D5B262D8D627A6B96192211C153AE193911B02EA59E7A61509753822A106B434431CC682CE632B9818616174FBCE54F58C0861FFC16949A0591BD50BAA0EEB9DE100E3CD1EB7C6617C14C16E9585A5EDA27C462AFC30D908106AE24E4EB';
wwv_flow_imp.g_varchar2_table(150) := '17ED7D35FECE7C7C04A9C9CF4BA880F08F2349F6E84D4DBF9374806B2012DB5246A2FF1BD8C9D10B4C3E494037478BFE192F221F791409007116EE2D15AF8E24065681F37986E9FD54682672298269EF7E8A96B94B414554C955338B3DF0B3B8120CA315';
wwv_flow_imp.g_varchar2_table(151) := 'F4C7F029C9A92C14ADDBBF87D557A146A54431649E02C8B9D9C8AB7F18F48D06984354B536D8129286B423EFE5D7B402212C8A3CEB0601C45569412FA439B0A288E8A5E9347E0968F871017FE54C13DFE2701CBB497400119EACE9EC3A778D19C64DD328';
wwv_flow_imp.g_varchar2_table(152) := 'CD9A678EAD888D0832D5C3FE5650F21A7878BC1753C2C7CB0203BF373E601B6DFF384E58E26A709A3F99B16FC5CA644B2F29CC6C80A01B5E115A53EE37B5368F50F22A01939B2F011A1FEBC730BB8504EB42EF840DF689ECE1A07A934D4C18EDF84632DB';
wwv_flow_imp.g_varchar2_table(153) := '72A1DEE6D7EC1511E2481A393B8A7DE9E07B19F2604D0DA70367F4F311656493B48C16D5DA6A441F121EEE0C7F8002C07CFFB3A61202C2807B6CCBF8E52C9601864ABCA06EF681B2144FA53C5609692EE44A3116808BA94165E5A477A6650A4B0315227D';
wwv_flow_imp.g_varchar2_table(154) := 'D8793C5FFD1D7126D70348111D5781D47BC8CDE9298BDE913D757619D79A04F14D7EBF950FE7DBCCA6C29A49A459A5B41A924F1037E28F6C2648D82F10430E7498A2F04E384EE0CF43F36D07AA8D3A327B0915E3ED1CCE6EB60493B43197A643D0189F63';
wwv_flow_imp.g_varchar2_table(155) := 'C05B264219DF245C727167A39B27D8A9BF14CD854B832C53BCF568584574313C0B9EC3607112BD2EBF8E6CD4F16E5D4CB9676CFC15B61CD673D73A4FE335153461C9040C91192E1814CF54743574DE51B0A0F96D747B547E45808A998D00000940331DFA';
wwv_flow_imp.g_varchar2_table(156) := '910BB19CF125E0E4961CE1F86BE5F7321360D09B864BD1B4FED957F06941903249D6646ED8C0C3E4F6F3E521E96EDB94681EA4EB3E655CA7FC5F9F5209D4A69128A6E72D259920BABC1A6B3F5E9A6726239F48406DDFF0E4C5F01069D447AA60813047DA';
wwv_flow_imp.g_varchar2_table(157) := '475C3D27175951C1E26AA4EBBA956514A8D52F53EFD2332444E3BEA86435938A92B5CE2C4E9C65611EF1FBFDE92CD3340DF93FDB00BE83F604D108CA52AA58D51A4376FBA5E548CCA2FD5D9094A241DEBC9086EE8292A3691D19121713597D179BB13D2E';
wwv_flow_imp.g_varchar2_table(158) := 'D7E24D09BC9ABC648A10AFEC5706C7E9E4700D005B1CF8A400D4719DC36161179D281DF7E7B7AC4E6858632F15267BC7ABE94E099B69903F4A958C8AA376DEFCC92AB74AA6E57210B466C51CC5A31E22C8D81C9A8D5188B7B852B7069384B5A69912228F';
wwv_flow_imp.g_varchar2_table(159) := 'D849B09877D1C46022E74FD8F3D538841048F7290E5B3CB14D65AFFB8578B15ACCBEE86A792A2B0BF5F394BF637EDFAC2A60536FAC98172DB3B9D011E734C9E6251BC6AE3F1735C968037636D20885E7C2AA10F70729290006F7A4243BCAC6C0030E214E';
wwv_flow_imp.g_varchar2_table(160) := '0CBDF1310D909F892E4AAAB49D999BE3AB379E054B8813643366723532540AC03F0D136854255C6F844DD7CD78E6B8C1C2F54917F1D01E11BFBA45D9EC795CBB425510A55CFD7B7DD7D96F9642C88220A23C416918CF0A9029E15DB97B2560AD77D73DA9';
wwv_flow_imp.g_varchar2_table(161) := '5175A4927632ACBF6122A5D712A226A5BA28FF885042D95DB7B518F30E672F04BF3036BD3C99754ACA4DA1788061B688B44977472FFD754D776FD57D0D2672B5D8AD04799E4F76E074362D8A6D0D9B854B52E63DAD9924357F9379FA48333DA775DC7EB4';
wwv_flow_imp.g_varchar2_table(162) := '6064514D6480FF9B23AE0057183CE8B32E6BF971AE9126B51A07E2CAF20101AFFF534255B15A7B5D30A036D8380F2B615F6997EB01F0693E63AD57827F5BD4238DEA2DCACE0864484C5AA906A00B1A27E8E1EA6E4721F6A361923D9006709DAA014BEBFC';
wwv_flow_imp.g_varchar2_table(163) := 'A0874BC6F7621F97E0353FF31798C70E018A0EC91E94D69CE3ED225FDC1243DFF12269E080BE0E9728EB87D7A9201540F4458FD217A993E5DC73463E040030BCF2FF0557F54BB14A7B6B2B5BBB6DF41734C94CB8174200DB35BAAE3B9EE4019A81E61159';
wwv_flow_imp.g_varchar2_table(164) := 'CADBAD55C210A610440000F0BC7800A18238946834754C937EB998BCFD79423F63647910D32A355E75802CAFD0E8DFC172886743A91A2907D5EA3A8005C2563BA0B25A57A6BCC3568A225EA94E2CF69060C48704692161F4839240D42EB2987C95398367';
wwv_flow_imp.g_varchar2_table(165) := '6CA4653909AFD47334081C0DB8C2578B2CF62C4CE94F1058B8C7D9AEA4E57D12FD6428C671B31BB0A9256BCACB035E64AB3E71256C59B887FA661B80BEB064BC826E31A48FEA11B612A9AE71085071DD95F4AF4D080AB14AF3A9C1BB2833CD185B20CAB2';
wwv_flow_imp.g_varchar2_table(166) := '651F83E0B5F99BAA0180B11013B5719156F94581945281B5A2CE66B957EAAE93B74D0EBD7792C3F9DBAC003628419E75B0FBA3D757DB15529C31D6E8673CFBB2C9518F1BD9337040F83DC48F14B0D1325BE353E506341BB135039DB8FFA1CD0DAC1A9934';
wwv_flow_imp.g_varchar2_table(167) := 'F9C21BF43096A64A3ECF342FB8A681E3954B1AC9645684E7483672B5D967B269BE43E4BBC06211660FF3E3D6939608B00893EACE75E590C8E45C29933B382A427DE86200B36B10801C7E85060CEC7753FD03818A97054D959F1F3682630B9656245DA6ED';
wwv_flow_imp.g_varchar2_table(168) := '72BE3EC2D207A929F77550ABA7AF5DF91711D32CBA6BD24E77C43D9F72375EBAB2056A3DC8D175B78A52CE00FA6F328103CC9D7DF40F9C1C029E4136F6C6C5DDA3A13AAA00600B33D7A94DFCDBE0CDAAE4AA45A139A6D35C295EC5F8C74740D76E1F60F8';
wwv_flow_imp.g_varchar2_table(169) := 'D54DD53036DD39D61AAC314D84BACF04474A1EFFEF46A82D71ECF3189399ED650ED75FCAF8A5263EAF62FE70DC4A5E71DA29A094C04B214808DC5C6F0194BE5B47557B7DF186DA03E981EF1991B014745DED030371B013C549CC881B86DBC34ADFA39422';
wwv_flow_imp.g_varchar2_table(170) := '99643EB0C01F41079B6A55B208361313DC99617749EEECAD53AA4B8A042461E27131933DCB04B0006456822A65098EF0EA133D15BC1CB8F540B970925766DA84D911180BD2CB73980A0CF4819830D2E2A375AAB44A77784F580C2716912375D048FCEC30';
wwv_flow_imp.g_varchar2_table(171) := 'F73DEC6E97FDF9E089985A0909ECED5AF85C0F653327BB6DAD0AA2EF4316B7246E5CA9A95B64CC7D7D2084A7225B1AB050A17C980A0BD68A2B4C2BD530EE5E6FEBB8C434AB31A98CE8F70F915156AC0F6BA94B00FDD1ABCBC3B475799FC9857DB677DF98';
wwv_flow_imp.g_varchar2_table(172) := '9AAC6E2F2AA63512A94AAF7CA6E0793B1D4E5809A4E22F580BBEB55738645EA4975EF4B3605F8E2EC012DFF2A193CD1CC3008DD8ABF404D21B9D6F4F68609A69460A0D0E10D0248DC64BE4113B5A90217D8580A9A60386285B8128FDE046B145C5AB27CF';
wwv_flow_imp.g_varchar2_table(173) := '0E91EEB6F1B97DDA6090F827AA2042BC77206A4B4C0B26EFE52F722F4F5B2199D2FA73E4C2AC632147ED6599CE6A7DA91FD2ED09EEC715316573FD6993B0DDFC07986AE63410F9A50AEE556124E1F38E4A47802C63F3E64CEDDE37EFE84AE2188B6A9112';
wwv_flow_imp.g_varchar2_table(174) := '6F4AE555BA5FFE663FB38C762AE93EBB2DA86DED438440DD02672F25ECB0F3F54E04087285C85C79F8529452513F6B31D8BED9E36CAB0D68E3416264338C6A386CDDD574BCD325BEB70F61A6AD4BFF6523EDC2DA1A44ED9CB35DEBD32B1F5B21FA419803';
wwv_flow_imp.g_varchar2_table(175) := '760FC8F1DAC0AB4C689D37298D0A8C435451BBF9F220F08D0502520584673DBBC9B1D9A73BA9B7D25DA4443794054FEA5FEF9393EC12FA0D19687D55A0C4F654C3EA8CD59E4BB02CFFA98DC686109C2ED601AD72EA8BCA2893611CB01D1B9F3839990C13';
wwv_flow_imp.g_varchar2_table(176) := '582F52A064AFB53B1A8D616130DD08738FE8B21027779E79DF79B2057B8BBAD42F141C567006095C996D78571CB0FE7CC64D261EBB90464E6F93F8C785B5D70B0A1BAA4A789450BA961A7F12DFD11598DBFDD5CB97AE07AD90BBBA999F55541D6CFFBC6E';
wwv_flow_imp.g_varchar2_table(177) := 'C10FF5C363CA917D16207162561FFDE1378372B9631AD9B50C93D1C2C445092D12CDB7E171B6BF7CB53609D55AC90B0DC9AD8927E38CB07C05F8BCF72F2852B033D0F992330089586B70DB6C243C49F4642B5A2759B8CF63C768307F6D7CD3118AFB9F63';
wwv_flow_imp.g_varchar2_table(178) := '17A806E15D58355207915049B7650C36B0EA95F15361AE70E49EA4C14891034F1FED89DE61B858E807B8D82EE5E0A6FC383FA56E7BC17EFDF48C123E91FBBA36B82FA7F38B519403306CE6220AE9E4D5D5DB969D35B1232663969A06BC1AFFCAF579EE2A';
wwv_flow_imp.g_varchar2_table(179) := 'F6EB2F0DFBD95DFD5F61BBDB180484BB31A2CD00ECE4145C5166BC557334E067AE5F43A216288C1E22C87C678F998E7CC7FF2F8FF3AC30D5C293BEED2F1B1C3FDC36C83FE1472FFC2C49E9DEB8DE5EC57634D3F2B5322ACE2DE01EF1568A9258BE0EC1B3';
wwv_flow_imp.g_varchar2_table(180) := '9FCC61332CEA9AB9431D10C35390917CF9ABD8584CD42480E335A2E02322E57565E466C201D93DC8F5B99104B42392318ABEF24AD897591FD94058BCF4E34321B22CC54DA5D8A856564FB3E04B0792617461D40790ED698187926CECC09E1ECF6C30BB81';
wwv_flow_imp.g_varchar2_table(181) := 'AFDD6ADBCCE76AA0949BF13FD796E077483E3AFFD7E6E750165803C647803BD5FD587A75F8A9CE7F8F07DB361BADF8B5E7B224F54515DAF5F495C48C0227B6800C907ED8244DAB8D942B3C7409A7DC34992C5DBC3AA0B67F22B928CEE52C989273AA675D';
wwv_flow_imp.g_varchar2_table(182) := '145E9E8F967A942340300853D539D22A24F7D6CCABC404E025E2D9A520550FE16CFCF84229B6F2D345F48F1FD9064B0ED054F0555F74EFC33C55D185D3E0CD915C084F88DE8D7DFEB861DB09B6BECECD1C693862A2F74D6CF010BD3403CC7898A90A527D';
wwv_flow_imp.g_varchar2_table(183) := '940DD808C6A9E730E2BF555AB5862FF9A1036E9478E7DCCCBAF3151BB3DDC55AE636D04DD5694BF62A5445806563B13860AE492A96F0BE0C283777706D51403DCF43770B62B0F181AFD88FCC0F521D39A8D5304B0024F7B7C3FBB4EA65AE55CE93138CE0';
wwv_flow_imp.g_varchar2_table(184) := 'ACB3E0E28949465EF22B0154DF36C5E0E35290992BC88997CEE256704FC8F3190EA52ED0E23D813DC8257DDF2C49788ED9ADE81E720D7C06ACED4361AB5BAD7941D2A560E7BFA4CC966E70F56C2C7D3C466AD4B893D0F5E331D1592EBF01B4CBE58CB39A';
wwv_flow_imp.g_varchar2_table(185) := '14F5406AE4123AAED185A6DA9198BA266FF87A23078BF2E0D2F0530155C46ED44669A486676A80E4C101C86E8F75C080D5B0BF3C020BC49B47A03C5CEA57D3C45AEFE2DA2BEE453B069517E8EC289A50841B7C7721AC20F76CD4F5C2CCB266592B13C30C';
wwv_flow_imp.g_varchar2_table(186) := '4F0348EFB41D0275F60A7D3E27C404F1E360A8203178F066988CBBCD73B155A309F90B4B5E373889F7D82974E4A597A42D5EB0F1F8A8A42885BF871548260D907978DA69D65252C9676ED24EDC5CFDF9006E8232117FFDD9CCC8B283917972ABE517DDB0';
wwv_flow_imp.g_varchar2_table(187) := '145D3370240713233E634B0A541CCA670396C458BC23F7FEE36F3698DC8BEB3BDDC6A2EDFCE64D818A6D0394D68E78360A547B4A0760F4401C74C949C31FB11EE5C31F4C334B4752EF63614A66BE36E4249A18B9EBC7CFBB96CA0D2F2032C7B17CFEEA2D';
wwv_flow_imp.g_varchar2_table(188) := '1929001DAD16CD12B99BD21DCD22FCED8CBDDD86B6EDC99E51D734E736355A96BEC0D5B05F3F472B6C4AC46D2CCEAE4DB1EDC01CE673A08B183A9179B23CC3A239F65EA1D4420796B3934D49E1EE52E49C7779EFFBE55D5FEA554D62BBF51CBCB2B01EFC';
wwv_flow_imp.g_varchar2_table(189) := 'D44135C7F4F3F159AA4287AFF1D0534D5AF773816455843F1770B3F1F0E79DBF8948BE5FFF257E0CB0CAC3EA99D69C519BAAFE322A189BFD950B3F9DDE889DB4E02CC3AF3DF83B3768DEA15DD12C7D47370CCCE912CD2AD69A5079B0D0BB3CEB33156F01';
wwv_flow_imp.g_varchar2_table(190) := '701E6EB608536F9EB9ACACD939D3B4E8CAFA732C0A58586A2B92AA01F3CF60210C6EA5D19FF1964A8C398844EFCAA375BBD09D06F4CFB63DD849E7318DB4956F721903D5EF0D70190299618B8391C11E48739340C58FF5873BBCBECA80BC05E3A4FE113F';
wwv_flow_imp.g_varchar2_table(191) := 'DD4E05498E843ACE2BAE34F24C9747B6CA9220BB9643735E485CAD6ECDD5A24E62F8604115353C0F6E73B9EC01B6E4F207D5EDAA86C325087115408541C3EC6982F6641F6CCA32124742036B824C93E1A878EE87FE11DA9D99A6EA40A6DBEF6143E6A1FB';
wwv_flow_imp.g_varchar2_table(192) := '1374133552A62C6EA4C8E12571318E60092007D669EE0DA800695E510A9F7DECA2A15CDA30BBD2FB71F78982BF6275AFF798AEB2A84591631D235CC1B15759866CB35C71B31E61BC38E23DD1F21F8CD2C6FB96624BB9E5856DB82A7B13D8482358619BE2';
wwv_flow_imp.g_varchar2_table(193) := '2A1CE112FE7CDD9FC6574EBE80A48684033C4148E2636544197217AD8503B6E8C1E0BA41EBCEB956526630CD0354CA00DD0AEA343EAB0E8461FB299EB9AEB9C0CA72FA248B6A52A3F73EEFFC6B577990F14ED642B845EFEC8A0646D51FC58D009915230A';
wwv_flow_imp.g_varchar2_table(194) := 'AA9E951E1B08ACE167E2529D226994491B620C3AF296CD6351A8ACA6EBEAEB564A8EB7CD743960EF1A7353E1F5ABDF1CE0A10BCE777B7594BE73E9C317386B74CFD5FE1B714CD689AD14A1F6B986A62BCB0A9E0412BA90DB7070AC0B0FBB72882B9403F6';
wwv_flow_imp.g_varchar2_table(195) := '865A52ECAB91289EE6833CCF92A087589DCE80015F48A2F0543CC5245400AEE9BF91675D73DF37D8723E94767D3997E3046C2FB6BF01E4C32E1476CB7D32D4B830600D2A150C4F7BCB3EB94AF4760D88938DECDEC3E8E9B01D8C4C065F275431FF012ABC';
wwv_flow_imp.g_varchar2_table(196) := '0AF5CD5B1571CFDA91CC1FA82C33123397AE8DDC34B5E3594AEF9651A326F174BA170702A54207189061B13CB1818520B6649575195A9689C2030EE7BFD62C40B9540C0BBB2486E67C66B6B1A2FA97462F0DF2ECCEC31F5255871B6B258152DCF7F15602';
wwv_flow_imp.g_varchar2_table(197) := 'BCF764E340B7C792DE82493A397D5B22E7A424351E462DB66137903AA72FCBBEED1F6D7ABF512EEFA5AAC866B516F767AADD29905597C11044C97380C28A951A5B60250294B14EEAB0E90D90006DADC720638007A3F920960DEB06E89894DD16BD1AC32B';
wwv_flow_imp.g_varchar2_table(198) := 'A33FB01170D8328B8DCE216CB5B5DF0739C87EA1822B66845665101E069012AF8D82AC7D5386FBED8DA89AE1CEA87B804CAA1C48005B39BC03B335C2C514A5A9188CF0A49EFE3DF5701D1B4447D9DEF13A66180760A49E464040DE4CCA6DB05A878E1B6C';
wwv_flow_imp.g_varchar2_table(199) := '1D64F5E3B1C7313F6F52E0BBA6B9665B0476477F5020AF529C10790A0DC13647A85701645CB88E9AD9A6227A4D51C30E5EF74AC56FBACEF3D3A61A10675CD59C31DBC10D4BF769734E27DAC5DB050B381AA054BEF38C96A83A8CAC30A308CFB989CE3713';
wwv_flow_imp.g_varchar2_table(200) := '7D66BC1F39F7971B14039EA9B4F054BBA52A932D56D9415C83C5CDE7098FF966BC6707809CE50AC42AA197F4457A0FD6E425C87340D27E4063D7DCCE25293561B01F6B376D2800451CEC81E1B3CDF8C88A6A5AE17AEC67F81B1EE45CF29CDE51ED8B0839';
wwv_flow_imp.g_varchar2_table(201) := 'FB98C82DE2F9D7312239612C2A98FA3E726522953F81F589F989290EAB6FE6AD1AB55C4D009A9C24CC806C3D5AF8AC617B07D9CE1FFF85BE001E50CCB39CAE2EEE1A924D60BE2823508A2328195281C3DCAD425C9260826D1787DBA26A96168FB6A29D33';
wwv_flow_imp.g_varchar2_table(202) := '9D0BA27400D33BCC496EC2D34BCC97AF03E52FCC7E1B05223CB28808163F0E5867516F0780324943E89D0B7E0B38B6B9492CC9C3839EAAAF09E6BD14D8EED74682C0FA35B6C3D4B628FAF7CE2F517CA59181ACA43D344250708D9A4A546662CE0268F7F7';
wwv_flow_imp.g_varchar2_table(203) := '7C8071F02E603780223E41C03F6AF712F663ECFE72521F37E099EBD5C5E283C08106C5F3684C9B23535098A46E000006DED899A143AA956CFEEDA6F904E5BD81E66336E7F9B835269CE12664914D3636E3A870EE32A74232797C35AD290099F663DBC712';
wwv_flow_imp.g_varchar2_table(204) := 'A8824ED0888ABE80D98772588AAEB385FF19F9B91E7FE935A50A9E8B70F545549A9A7229194EC1DD4E333097345EBA59EB49FA1D7797FFAD104540B04CA85E63E060F3885E6EA06B14809C686CA18AFE6A01914D7BF648BDA35826E97BA3D66402995CD7';
wwv_flow_imp.g_varchar2_table(205) := '480273AF2DB355F2929BCE49395F5111682843019793A943F5DA35B2569611A90C451DB5DC56CFC8533BCFDA1658B982C7C3B867879F0EFE590F93DC3288A89B52952FF016CE989D2D398DD5BA2096ADFD5E8B7840EA52660A70DBD0EDFAD8B20A81CBD1';
wwv_flow_imp.g_varchar2_table(206) := 'C6E261EE2C6E23557C70BDE83CE452F2C0873238D0E0011308E3282A622B914764302050B43EEC7DD51E58534C6077775EE928D87A0EF6C00538916FFBDE073E26844877FAB86C455313BA4265C6BB442D41AB6C4B15525841D1FF79D4C32D1BF0CA4C91';
wwv_flow_imp.g_varchar2_table(207) := 'FB19DB4F06F8C3BE391D1E8BF2A2B6867328B153DD44E1AD68402D7B92537E941AEA9157DEB8150828E24A267232AEDB800A80DAF0626AAA822CA19BE3E8CBE9446C43515CB5F1D737A606DE0956950DDC046927C78AE81727797CB3919D019630D0F310';
wwv_flow_imp.g_varchar2_table(208) := 'EBD43BCF997F3237E17F6A90FE1CCC357E1E39D377B5243878EC0131FB10BB3E40658F5324C6604F74E77359EFE0835B61CD2312D9741DAA96A64157FAC80E68CD3D5153EB7BBED0ED69506ACE222B0F464E72D80F54346E95AD9219F56B9D0F3BF51F51';
wwv_flow_imp.g_varchar2_table(209) := '60004FC9928555CCEDA7C7D34B1125A7451E921428874EBC9A82D5B805A98DE10E3677F9916CDF36D7FD5CA43BABE53A848AB268745465770D5874B53DE3D8954C83D9BC0AB4A231F4E674AA070107B6FAA2BDA314C28A5D3C2FD60E405CE299FA0AE1DF';
wwv_flow_imp.g_varchar2_table(210) := 'F2CE8E6D68CFC6F4DBC3D4E8AECAE0E914D38670586DEE9C0A72DC5E997F65ECABBA0A0557C3A98A2AE1F7CBE861895C0BB422B521113534D0A0A2C184E5181A7F582FFBFBDC00C0A28528FDA5E07DD850C21D7F8B309D35DDCA10E72010E38C17922831';
wwv_flow_imp.g_varchar2_table(211) := '4D45966A088DBD7AB1B67A032D33729D4C6C52F0DB529643D2D7FA3E438E01563D22D8F96B15BBAA347041DFE100FA2137F15096731CD8A67695F71776E339163DF29F2E69345B32299BF8F5B64053CFDD4BDFAD9CA737B7811264A0DCD63F1210DE4DED';
wwv_flow_imp.g_varchar2_table(212) := '67AC126F6FD2DB55822592C75BE8F4B6AB36F6769C7C7C51136966CF9ED76D507A654AD651979EA88176DA7D819404B35C2672C98CC7E9F0D702E0C6954CA242764D8D421BDCE4CACE50B5996F582B76602D199F56BADBD44C44D58BE00BB02020376BA5';
wwv_flow_imp.g_varchar2_table(213) := '8A98042AA102FEF5595D799C79270CE8AE3702D264BA3465844B62412E0C0F681E994E5BFA19DD0F7818EEF24725C320DC74AEC4A138F53F144C68D9A14E1E1F31E0F5A21467F2586070EF6EAC1A5BD956350337B0E228074C17226CE7B787434E435080';
wwv_flow_imp.g_varchar2_table(214) := '8D3EDCAEE19103703D70C092D9EC7383D7098165E453537F0D5C6675339EE15DF8B4DAF0A4812C4B1E5C53B70CD2B6334FB86C00DC8F3C81FCE6E216CD0D5A7C230443EE4FE5CBF83A5CB25C543D1FD1063A9526FC87FBEA69D3D6AE4D327BAE7BB202EC';
wwv_flow_imp.g_varchar2_table(215) := '485EF77911C420003DA699551294A0C0DE8B3D9403CEE1692C7CEA8EBD1671EBA6A072EC7EB72124E01265DD9FDE0A7F604BFCEA11E04E63199A03ECB17AD418A129703F5F59F62B9A02C5CB40E3804A7B39891389BB1A0F3D2E87577094695CB278A472';
wwv_flow_imp.g_varchar2_table(216) := 'B4ECBA7679D390875C1043E466CED982C141D6650656A3C986F3B556AFF5510B3138FC4257AFA5E8BC94F5DBEFF240003F30755933725C5047F2298805A7C6504E2D07F820C7E0176E156A63C1527ADBF607D5C3DBD078249ACA9223E3F635C7F151A2B4';
wwv_flow_imp.g_varchar2_table(217) := 'D515E7C71FFD6C6317E52EF0C95826C806C097AB575396231CCB786806C97C94E791B77A295698651B06AF372CA117C37BA926CA09465E65EE1E4AE5AA720EFC930763520F3B6374FA7FB016BAD9146A576C33238075E5C6EECE9DFDBF8B44D967AC082E';
wwv_flow_imp.g_varchar2_table(218) := 'A6802A62A90C73308FFF1E3B36B1B3F27AFCE271503B94FC5D0B3557EE03645CF9A3B28BE51F0DC6D537BD7356D478E2DCBD60CC3C04C8E73AE4BA2D3B13172A9C44FC17610FA6F191B7A60953465F72B755A37E9897DB353407973B4067D8ED8269E33B';
wwv_flow_imp.g_varchar2_table(219) := '82D2E1273A55D8AFA5DCB31D1E9E68D99149B23929F8B78405FAF51F9FF5E50CAD01CC11F8BFF8F84EABA6C3F89D13532D0E121A6C62137F1382AEBA29D7B1185AC08D49F21B24CD856BFB3417CA3D07315CCD7474C703C503BF6DB6FDE33B7F7373809F';
wwv_flow_imp.g_varchar2_table(220) := '48354E27908BD9FE710012A937E44A355385FAE1BC1C6B23DB1C3DDBF7360496F1C8B21C293EAEB8B6F566DF24ADE238EDEB13BEB65019A4807AB3933DDAF712A9E6E30E1EF038C585BDA493A2800B74693A5D8D62A2D6AEDDA41BB01E42982A4ED03A39';
wwv_flow_imp.g_varchar2_table(221) := 'D4C9BBE593C9E9AA1190D2446189C4498D534B05F4E1AAEC9B09CF5C5CA6966D09BA56692B9CC62890A2C758C78BAC0DDE6FA4822795AB8F19EA5E51F580966CC0BBEA659086AD210B6F340000285392B73A0FBD6DD3C450ADE525EA34648E4B059CF146';
wwv_flow_imp.g_varchar2_table(222) := 'C54D42DD6FCF63A3AC87E96A17EE2D1384632BF34C65ACEC5A3771C820786A1F669CF735A4A0D435C4373850B143C4F6050320642C093E42950B97CC8326F581B46FA0284D845DB7EDA1F1DB0E1766AD88541896E04888A8216171CF53A71B407AF5BF7C';
wwv_flow_imp.g_varchar2_table(223) := '4F7444BE2F29DB5A3A78BC7916031440B503EE9AFA3BE6B0F6BEE94EE130CB266344354F856B8B4A468D8DF5BFE70E347E4CF9CB0A390AD7E968423CA133E1E33CD258D7DFBB7F641C98201758E8D4957216BA1E1340F792C592915CD2579BD6844BCD34';
wwv_flow_imp.g_varchar2_table(224) := '7B38CA4CFE3FC9EA55DF10F0FB69F2FCA285500DD8F2A61B37E9701B9DD26B622EDDDF03ABE89EBBAB596C56F92FB34D962208D4AC652F4BAFBF3895AC8AECB7561B97A76492CE353E72C7C7064CECF3AC9BEA8F34F4CAE7465B3B6227424829FDE331BA';
wwv_flow_imp.g_varchar2_table(225) := 'A4F451440E612B35E36568DFBFD74F93859C5CFD77F3794F1450C39855230C0372D57214EC70D770E72D4E0EF46FC7AD779A7B433368FA27B376A9DE012B47F3990F295B9CA0624832CA00CE2414E98988452EA63A3AFFB55E80E7741677A35C4AB50E0F';
wwv_flow_imp.g_varchar2_table(226) := 'AEA6916863AAAFDB3F5BC542B3DD82D0E07CB8FB86BF942CD3E6B8458E164CC911F20E321906E9BBA83C6DD04F519FBDC7402566ECDBA4372F611CFE5F33D461F233E0DF6C3DC9391FF98CB3A997E821281F6EF4204A5C07AC68D812B5F8AE0779B456CE';
wwv_flow_imp.g_varchar2_table(227) := '2D0572A50F195BE3F96F7DBCAB1B3A5B68E5481333108EA1FDC894444258443CAC8F20A9E24D0ACE46BB5598386EF9B8C2B352C62575F1FD7629A038A0C48664F4AF1029E2E080BA57445B0A3BFD2898ACFFFA8F1ED72E595168F74AA839CAE2F4A7C110';
wwv_flow_imp.g_varchar2_table(228) := '5F5CF6BBCC4D017EF6F55C51EB3129C2216308846684C3A9282E780057743635004B66E400069DF139A14C80D56D33ACD6C4B85A373765BF38C442C11C924125C34376F7D14648BC30B5DB96CBC99E3407A98828B8825AF8CD53002ABD1070B5F5916D77';
wwv_flow_imp.g_varchar2_table(229) := '361C0393ACE7BEE91FACF8B311EC04D32015A6488B9763CA1875C4D1A548EBE158C04A975600E244D5F841EDD06110D173459E84EE914066CC37257915A40CC99C8AA1592133B461B412C0B0B309154FCFFE1454C00CF77E0BFCD001D2DF1B5925365084';
wwv_flow_imp.g_varchar2_table(230) := 'F5AE61B3390AC1769BB827F1D1132DB149F6FD934BF41A5431F165A843B55074A2E491406A9D24C6DCFB1ACC568B13B875E3D726E4B1B9959CC6B981563F89CC92489C88900537FFD2B24EB1DF429D5792304C1D92BC55461C30A7DE7319D2BF74B94DB1';
wwv_flow_imp.g_varchar2_table(231) := '5D696278A767352096F592B8E80451A30CCB4902223D716B4B1226D502CF0C0078455AC0B24CF389F1FF45B1E61F4638078899FE13AA52040547539759E6451A5ABFDCF6F4B2E0B0960DB42045A68669E52B0CF35E0407ACDC64C9147BF39DC440FA90B8';
wwv_flow_imp.g_varchar2_table(232) := 'D75D7FA63267B5587AF0EB09B22167CFB83BF1C68E474F39822E3E0279289CB22B8FEE90F8F326EA931939E46CB88BC11C81FDFF4771E0E9C54726E06E85A65D5EB3FEFC9635BC482857F7DA1823674E9F7797D71E1F01CA2C3A0E425F950A5654DC8806';
wwv_flow_imp.g_varchar2_table(233) := '655B48421C42A9FB438B1333A2DFF6F1912E35A4C64B6294796FA6A51D278D0894938EF29C4F7174B6C58EB4B09F7F76E25DEEF14AEC94A1AE48688CD2A7E2ED235CBBC63681538352C27FA670029B5FBFA6DE38792A687D29B12FCFA94E8598B0A36EA8';
wwv_flow_imp.g_varchar2_table(234) := '5D5159FE6577AAFB3E695D1DBC0EEDB4BFB72476241432FA546BEF40A79D051F837D2FA56256B50BA073C0974139340CA6E8007004D3394C8A28E3D0C6B80B80001599B746710F3B0059EC82B872753B27D56B6C645BF7820D5BBABC0F196A148BE7FFEB';
wwv_flow_imp.g_varchar2_table(235) := '134381D1E47813F57EE4BADB8CB26EC31528CDB47E1091587DDB4E171C7B4C6AE36DCB3799C9AA8E82F16A54A3AD4EE8EB25F6B1C2D2E5D688129F74B1A1C3F0B630B7005950AED743859E8A6E212FC89D864EECD1B12ABF0F86A0F3B50BF4F61EC3FBE4';
wwv_flow_imp.g_varchar2_table(236) := '64383D96BC1C95BDD52FC5CAA5292848569F060BFF526B0E6F99CFA95CB0F08C9518B1AAD9B53A8A6A298A0426F0AF3FF42EB1702AB4FA8E93DCED8437E621D4C7C4370DDE487F0C79D6752CCC0FA1AEAF2A7F9116EDD0DC4C58003CBEDDFBE3EF54B114';
wwv_flow_imp.g_varchar2_table(237) := '23A7256016C9E609329DDA83B9C515E5F9DCBD0462AD5B52D80F9672B3364E42FFB96FD942ADEBAAA7013AD14F7A5F6603BA0861A0F4C84B63E1C5B36C6217E1501F9645E7C2A8D11E76D8086230BDC3C560EEB2F864DCC3D32CB593EC6D6B8CA6A31481';
wwv_flow_imp.g_varchar2_table(238) := 'E9BA877731A73B3D84684430842DC8893601A4533A428146553E583C143CE15BCB39C474F511BEBA030220FC062EE04E46BB8EF323237797FF0E064D3890AD900E9347DF6952BD20CC3B7F1498D76B7A564E420E92AB0087B590FFC405A05D5247DED65D';
wwv_flow_imp.g_varchar2_table(239) := '3513242D553B2243383E1819A38D5E0902C6A54309CC1C52B7716F09A6E5A9C411F0EDBE09021EE9C3FDB9B03A04CEE1E673D53A3FDDF534CF0CB460F653806F951467439874BA4A90C2BF25E27EFB1494EFB9A8F710F8CC211865A1DC4E51468FFAE45F';
wwv_flow_imp.g_varchar2_table(240) := '83F81945C59295C987F235180EAC92E48B3A59C36236676275FDA6111543DFB95D6AD4648995609A21DA9E847900543A96C07AC0F1FEEF3BC04EF8B9D7C0788AF675881EA7F4ABBD17A11495361EC552151715FA6D5615C84592C83BEE31B576A31A5DEB';
wwv_flow_imp.g_varchar2_table(241) := '3B1F187BF871EF9DBC348B223CC4E45DE529F9FED306F94B37D600908B73552B1CEB6DF35AC7ADDBF9FE6114C608D619D0442515B8DED124327C1170EFA9ADF4D2423747FC323578716334430072CFCCB753FEC2EE953A785A08F5AF8EAEE3AC61879AAB';
wwv_flow_imp.g_varchar2_table(242) := '8917CFFF6128B1B6FDA64F483807E8482180C3700C2D560244E5CF675FF03114B65505B41E7B1FBB57D2763D685D229C6A8F65ACF0BAAB23ADC546E9AA49AA7A536BE00C22F584921B1B3867F78D725E8684CB081D4464FAD9E831383E21C5EB36A4DF12';
wwv_flow_imp.g_varchar2_table(243) := '6F3195A2E824D7947ABC9BD1D1C76E25EB6B791BD93537C09939B40ABB8A3497374130D76B13E7F43C3E920AF4CB44BF09D30EA4A70C1B79D3B4BEBE3201832528FD416286F3D1B1FF6412222C163420EE1D09DF6535B4645D15D3A809197B978A11DC9D';
wwv_flow_imp.g_varchar2_table(244) := '64D07EDF037A71DB6C488C1F1AF0EE59D29ADF55681628CFB85DDD79F0FC8DAD2CA0D96F2488212A80F5894335DAF844AC9067F84901A7A53EFB520BDFE9FEC81EAC2EC2A786FCCE88C3A5A92A43878BE194969FBEB81E989C5F705DFE61EB3C71BD98D5';
wwv_flow_imp.g_varchar2_table(245) := '49645248D74F0C0AC269F0ADD5E7490B9F5EB74B72D9CBDEA23D815ABC3DED711DD0502783B30D865854C839A53719B16B0751D7478FF402135F3A82A1EE03225D27A81F35309B34B6AD960929E184144E3C189F88E0CA9EEC0EFFB80D7E6D9A3560D93C';
wwv_flow_imp.g_varchar2_table(246) := '6F82CC06FD8E8E70F7B9E43324DE5AFAA0B85BACFE84E1AA7511DD1822EB71BBE580A224C56EDA1F5DA4E9F04D430507E096120EA7BFD31D04BE0000';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(67462315735586731424)
,p_file_name=>'yeflix_ui_gradient.jpeg'
,p_mime_type=>'image/jpeg'
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
prompt --application/shared_components/user_interface/templates/page/yeflix_background
begin
wwv_flow_imp_shared.create_template(
 p_id=>wwv_flow_imp.id(67466288774076836111)
,p_theme_id=>42
,p_name=>'yeflix_background'
,p_internal_name=>'YEFLIX_BACKGROUND'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Body {',
'  background-image: url(#APP_FILES#yeflix_ui_gradient.jpeg);',
'  background-size: cover;',
'  background-repeat: no-repeat;',
'  background-attachment: fixed;',
'}',
''))
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover" />',
'  <meta name="app-version" content="#APP_VERSION#" />',
'  <meta name="app-tenant-id" content="&APP_TENANT_ID." />',
'  <meta name="app-alias" content="&APP_ALIAS." />',
'  <meta name="app-page-alias" content="&APP_PAGE_ALIAS." />',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim t-PageTemplate--standard #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header" role="banner">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="&"APP_TEXT$APEX.TEMPLATE.MAIN_NAV_LABEL"." title="&"APP_TEXT$APEX.TEMPLATE.MAIN_NAV_LABEL"." id="t_Button_navControl" type="button"><span class="t-Header-'
||'controlsIcon" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'      #AFTER_LOGO#',
'    </div>',
'    <div class="t-Header-navBar">',
'      <div class="t-Header-navBar--start">#BEFORE_NAVIGATION_BAR#</div>',
'      <div class="t-Header-navBar--center">#NAVIGATION_BAR#</div>',
'      <div class="t-Header-navBar--end">#AFTER_NAVIGATION_BAR#</div>',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">#TOP_GLOBAL_NAVIGATION_LIST##REGION_POSITION_06#</div>',
'</header>',
''))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" id="t_Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton" title="&"APP_TEXT$APEX.UI.BACK_TO_TOP"." aria-label="&"APP_TEXT$APEX.UI.BACK_TO_TOP"."><span class="a-Icon icon-up-chevron" aria-hidden="true"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs" id="t_Body_inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="region" aria-labelledby="page_success_id">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon" role="img" aria-label=''&"APP_TEXT$APEX.TASK.EVENT.ACTION.SUCCESS"!HTML.''></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 id="page_success_id" class="u-vh">#SUCCESS_MESSAGE_HEADING#</h2>',
'        </div>',
'         <div class="t-Alert-title" role="alert">#SUCCESS_MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" aria-label="#CLOSE_NOTIFICATION#" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="region" aria-labelledby="page_warning_id">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon" role="img" aria-label=''&"APP_TEXT$WARNING"!HTML.''></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 id="page_warning_id" class="u-vh">#ERROR_MESSAGE_HEADING#</h2>',
'        </div>',
'        <div class="t-Alert-body" role="alert">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" aria-label="#CLOSE_NOTIFICATION#" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>1
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon" role="img" aria-label=''&"APP_TEXT$WARNING"!HTML.''></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h1 class="t-Alert-errorTitle">#MESSAGE#</h1>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button class="a-Error-back t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row #CSS_CLASSES#">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES# #FIRST_LAST_COLUMN_ATTRIBUTES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'col-start'
,p_grid_last_column_attributes=>'col-end'
,p_dialog_browser_frame=>'MODAL'
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(67466289185856836118)
,p_page_template_id=>wwv_flow_imp.id(67466288774076836111)
,p_name=>'After Logo'
,p_placeholder=>'AFTER_LOGO'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(67466289652042836119)
,p_page_template_id=>wwv_flow_imp.id(67466288774076836111)
,p_name=>'After Navigation Bar'
,p_placeholder=>'AFTER_NAVIGATION_BAR'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(67466690152073836119)
,p_page_template_id=>wwv_flow_imp.id(67466288774076836111)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'BEFORE_NAVIGATION_BAR'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(67466690669189836120)
,p_page_template_id=>wwv_flow_imp.id(67466288774076836111)
,p_name=>'Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(67466691160527836120)
,p_page_template_id=>wwv_flow_imp.id(67466288774076836111)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(67466691695081836120)
,p_page_template_id=>wwv_flow_imp.id(67466288774076836111)
,p_name=>'Dialogs, Drawers and Popups'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(67466692145281836121)
,p_page_template_id=>wwv_flow_imp.id(67466288774076836111)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(67466692684638836121)
,p_page_template_id=>wwv_flow_imp.id(67466288774076836111)
,p_name=>'Top Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(67466693192620836121)
,p_page_template_id=>wwv_flow_imp.id(67466288774076836111)
,p_name=>'Banner'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(67466693633072836121)
,p_page_template_id=>wwv_flow_imp.id(67466288774076836111)
,p_name=>'Full Width Content'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
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
,p_default_page_template=>wwv_flow_imp.id(67466288774076836111)
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
,p_files_version=>74
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
,p_css_file_urls=>'#APP_FILES#yeflix_ui_gradient.jpeg'
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_FILES#less/theme/Vita-Dark.less'
,p_theme_roller_config=>'{"classes":[],"vars":{"@g_Accent-BG":"#9f1e0d","@g_Accent-OG":"#312d2a"},"customCSS":"\nbody.t-PageBody, .t-Body-fullContent {\n  background-image: url(#APP_FILES#yeflix_ui_gradient.jpeg);\n  background-size: cover;\n  background-repeat: no-repeat;\n'
||'  background-position: center;\n  background-attachment: fixed;\n}\n\n.t-Body {\n  background-color: transparent !important;\n}\n","useCustomLess":"Y"}'
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
wwv_flow_imp.g_varchar2_table(876) := '65723A20234235434541383B0D0A7D0D0A0D0A626F64792E742D50616765426F64792C0D0A2E742D426F64792D66756C6C436F6E74656E74207B0D0A20206261636B67726F756E642D696D6167653A2075726C28234150505F46494C4553237965666C69';
wwv_flow_imp.g_varchar2_table(877) := '785F75695F6772616469656E742E6A706567293B0D0A20206261636B67726F756E642D73697A653A20636F7665723B0D0A20206261636B67726F756E642D7265706561743A206E6F2D7265706561743B0D0A20206261636B67726F756E642D706F736974';
wwv_flow_imp.g_varchar2_table(878) := '696F6E3A2063656E7465723B0D0A20206261636B67726F756E642D6174746163686D656E743A2066697865643B0D0A7D0D0A2E742D426F6479207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E742021696D706F7274';
wwv_flow_imp.g_varchar2_table(879) := '616E743B0D0A7D0D0A';
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
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(67466694321296836198)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_imp.id(67466288774076836111)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
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
,p_step_title=>'YEFLIX'
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
 p_id=>wwv_flow_imp.id(67471059179694985528)
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
 p_id=>wwv_flow_imp.id(76998298920224261645)
,p_card_id=>wwv_flow_imp.id(67471059179694985528)
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
,p_prompt=>'Decade of Release'
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
,p_prompt=>'Movie Length'
,p_source=>'RUNTIME'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_RANGE'
,p_lov=>'STATIC2:More than 2 hours; 120|,Between 1 hour and 30 minutes to 2 hours;90|120,Less than 1 hour and  30minutes;|90'
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
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ads.id,',
'       ads.adult,',
'       ads.title,',
'       ads.video,',
'       ads.overview,',
'       ads.popularity,',
'       ads.vote_count,',
'       ads.poster_path,',
'       ads.release_date,',
'       ads.vote_average,',
'       ads.backdrop_path,',
'       ads.original_title,',
'       ads.original_language,',
'       case when w.watched_yn = ''Y'' then ''Watched''',
'            when w.watched_yn = ''N'' then ''Added''',
'            end as badge_label,',
'       case when w.watched_yn = ''N'' then ''u-success''',
'            end as badge_color',
'  from #APEX$SOURCE_DATA# ads',
'LEFT OUTER JOIN',
'    -- doing inline select to limit rows to current user',
'    (select * from watchlist where user_id = :USER_ID) w',
'    ON w.movie_id = ads.ID'))
,p_source_post_processing=>'SQL'
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
,p_badge_column_name=>'BADGE_LABEL'
,p_badge_css_classes=>'&BADGE_COLOR.'
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
,p_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.::P3_ID,P3_PREVIOUS_PAGE_ID:&ID.,2'
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
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ads.id,',
'       ads.adult,',
'       ads.title,',
'       ads.video,',
'       ads.overview,',
'       ads.popularity,',
'       ads.vote_count,',
'       ads.poster_path,',
'       ads.release_date,',
'       ads.vote_average,',
'       ads.backdrop_path,',
'       ads.original_title,',
'       ads.original_language,',
'       case when w.watched_yn = ''Y'' then ''Watched''',
'            when w.watched_yn = ''N'' then ''Added''',
'            end as badge_label,',
'       case when w.watched_yn = ''N'' then ''u-success''',
'            end as badge_color',
'  from #APEX$SOURCE_DATA# ads',
'LEFT OUTER JOIN',
'    -- doing inline select to limit rows to current user',
'    (select * from watchlist where user_id = :USER_ID) w',
'    ON w.movie_id = ads.ID'))
,p_source_post_processing=>'SQL'
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
,p_badge_column_name=>'BADGE_LABEL'
,p_badge_css_classes=>'&BADGE_COLOR.'
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
,p_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.::P3_ID,P3_PREVIOUS_PAGE_ID:&ID.,2'
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
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'const url = ''https://api.kinocheck.com/trailers?language=en&imdb_id='' + apex.item("P3_IMDB_ID").getValue();',
'const apiKey = ''Vrab91IzKtw3MrFVxDBiJ0s6G83vXeKjNMdsZpOxR5af5oC7Tk2UBQjPEmgyYAWA'';',
'',
'let trRequest = document.getElementById("trailer-request");',
'',
'fetch(url, {',
'    method: ''GET'',',
'})',
'.then(response => {',
'    if (!response.ok) {',
'        throw new Error(`Network response was not ok ${response.statusText}`);',
'    }',
'    return response.json();',
'})',
'.then(data => {',
'    console.log(''Success:'', data);',
'    let trailerID = data[0]["youtube_video_id"];',
'    console.log(trailerID);',
'    trRequest.src= "https://www.youtube.com/embed/" + trailerID;',
'}) ',
'.catch(error => {',
'    console.error(''There was a problem with the fetch operation:'', error);',
'});'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Customize Movie Header Card */',
'',
'.trailer-request{',
'    display: flex;',
'    justify-content: center;',
'}',
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
,p_include_in_reg_disp_sel_yn=>'Y'
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
,p_icon_image_url=>'&POSTER_URL.'
,p_icon_css_classes=>'w100 h150'
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
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>10
,p_location=>'WEB_SOURCE'
,p_web_src_module_id=>wwv_flow_imp.id(65794511766089996085)
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_shared.create_web_source_comp_param(
 p_id=>wwv_flow_imp.id(76340175950028080725)
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(76340175455944080720)
,p_plug_name=>'Movie Trailer'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(76340174612245080712)
,p_plug_name=>'Movie Trailer'
,p_parent_plug_id=>wwv_flow_imp.id(76340175455944080720)
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <div class="trailer-request"> ',
'',
'  <iframe ',
'      width="560" ',
'      id="trailer-request"',
'      height="315" ',
'      src="https://www.youtube.com/embed/LYh-NaddJ54"                ',
'      title="YouTube video player" ',
'      frameborder="0" ',
'      allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" ',
'      allowfullscreen>',
'</iframe>',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
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
' where movie_id =:P3_ID',
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
 p_id=>wwv_flow_imp.id(76998296834375261624)
,p_name=>'P3_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(65938883571401333166)
,p_item_source_plug_id=>wwv_flow_imp.id(65938883571401333166)
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76998296974780261625)
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
 p_id=>wwv_flow_imp.id(76998297041838261626)
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
 p_id=>wwv_flow_imp.id(76998297102027261627)
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
 p_id=>wwv_flow_imp.id(76998297270549261628)
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
 p_id=>wwv_flow_imp.id(76998297359127261629)
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
 p_id=>wwv_flow_imp.id(76998297491090261630)
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
 p_id=>wwv_flow_imp.id(76998297567457261631)
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
 p_id=>wwv_flow_imp.id(76998297679422261632)
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
 p_id=>wwv_flow_imp.id(76998297722829261633)
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
 p_id=>wwv_flow_imp.id(76998297821646261634)
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
 p_id=>wwv_flow_imp.id(76998297907998261635)
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
 p_id=>wwv_flow_imp.id(76998298038088261636)
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
 p_id=>wwv_flow_imp.id(76998298182018261637)
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
 p_id=>wwv_flow_imp.id(76998298280846261638)
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
 p_id=>wwv_flow_imp.id(76998298322951261639)
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
 p_id=>wwv_flow_imp.id(76998298433076261640)
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
 p_id=>wwv_flow_imp.id(76998298508345261641)
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
 p_id=>wwv_flow_imp.id(76998298617592261642)
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
 p_id=>wwv_flow_imp.id(76998298705368261643)
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
 p_id=>wwv_flow_imp.id(76998298885454261644)
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
 p_id=>wwv_flow_imp.id(76998296718578261623)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(65938883571401333166)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Movie Details'
,p_internal_uid=>76998296718578261623
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_imp_page.create_page(
 p_id=>4
,p_name=>'Movie Details Alt'
,p_alias=>'MOVIE-DETAILS-ALT'
,p_page_mode=>'MODAL'
,p_step_title=>'Movie Details Alt'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(76997977861434253595)
,p_plug_name=>'Movie Details Alt'
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
 p_id=>wwv_flow_imp.id(76997978319473253597)
,p_page_id=>4
,p_web_src_param_id=>wwv_flow_imp.id(65794512417818996086)
,p_page_plug_id=>wwv_flow_imp.id(76997977861434253595)
,p_value_type=>'DEFAULT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(76997993544958253612)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(76997993932174253612)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(76997993544958253612)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76997978744078253598)
,p_name=>'P4_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(76997977861434253595)
,p_item_source_plug_id=>wwv_flow_imp.id(76997977861434253595)
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
 p_id=>wwv_flow_imp.id(76997979114133253599)
,p_name=>'P4_ADULT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(76997977861434253595)
,p_item_source_plug_id=>wwv_flow_imp.id(76997977861434253595)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Adult'
,p_source=>'ADULT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76997979576044253599)
,p_name=>'P4_TITLE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(76997977861434253595)
,p_item_source_plug_id=>wwv_flow_imp.id(76997977861434253595)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Title'
,p_source=>'TITLE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76997979955804253600)
,p_name=>'P4_VIDEO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(76997977861434253595)
,p_item_source_plug_id=>wwv_flow_imp.id(76997977861434253595)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Video'
,p_source=>'VIDEO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76997980304046253600)
,p_name=>'P4_BUDGET'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(76997977861434253595)
,p_item_source_plug_id=>wwv_flow_imp.id(76997977861434253595)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Budget'
,p_source=>'BUDGET'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76997980781795253601)
,p_name=>'P4_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(76997977861434253595)
,p_item_source_plug_id=>wwv_flow_imp.id(76997977861434253595)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76997981136596253601)
,p_name=>'P4_IMDB_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(76997977861434253595)
,p_item_source_plug_id=>wwv_flow_imp.id(76997977861434253595)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Imdb Id'
,p_source=>'IMDB_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76997981524638253602)
,p_name=>'P4_REVENUE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(76997977861434253595)
,p_item_source_plug_id=>wwv_flow_imp.id(76997977861434253595)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Revenue'
,p_source=>'REVENUE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76997981959639253602)
,p_name=>'P4_RUNTIME'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(76997977861434253595)
,p_item_source_plug_id=>wwv_flow_imp.id(76997977861434253595)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Runtime'
,p_source=>'RUNTIME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76997982301757253602)
,p_name=>'P4_TAGLINE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(76997977861434253595)
,p_item_source_plug_id=>wwv_flow_imp.id(76997977861434253595)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Tagline'
,p_source=>'TAGLINE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76997982795213253603)
,p_name=>'P4_HOMEPAGE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(76997977861434253595)
,p_item_source_plug_id=>wwv_flow_imp.id(76997977861434253595)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Homepage'
,p_source=>'HOMEPAGE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76997983188383253603)
,p_name=>'P4_OVERVIEW'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(76997977861434253595)
,p_item_source_plug_id=>wwv_flow_imp.id(76997977861434253595)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Overview'
,p_source=>'OVERVIEW'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76997983581334253604)
,p_name=>'P4_POPULARITY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(76997977861434253595)
,p_item_source_plug_id=>wwv_flow_imp.id(76997977861434253595)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Popularity'
,p_source=>'POPULARITY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76997983962615253604)
,p_name=>'P4_VOTE_COUNT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(76997977861434253595)
,p_item_source_plug_id=>wwv_flow_imp.id(76997977861434253595)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Vote Count'
,p_source=>'VOTE_COUNT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76997984306093253605)
,p_name=>'P4_POSTER_PATH'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(76997977861434253595)
,p_item_source_plug_id=>wwv_flow_imp.id(76997977861434253595)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Poster Path'
,p_source=>'POSTER_PATH'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76997984795534253605)
,p_name=>'P4_RELEASE_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(76997977861434253595)
,p_item_source_plug_id=>wwv_flow_imp.id(76997977861434253595)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Release Date'
,p_source=>'RELEASE_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76997985127010253605)
,p_name=>'P4_VOTE_AVERAGE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(76997977861434253595)
,p_item_source_plug_id=>wwv_flow_imp.id(76997977861434253595)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Vote Average'
,p_source=>'VOTE_AVERAGE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76997985573429253606)
,p_name=>'P4_BACKDROP_PATH'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(76997977861434253595)
,p_item_source_plug_id=>wwv_flow_imp.id(76997977861434253595)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Backdrop Path'
,p_source=>'BACKDROP_PATH'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76997985948139253606)
,p_name=>'P4_ORIGINAL_TITLE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(76997977861434253595)
,p_item_source_plug_id=>wwv_flow_imp.id(76997977861434253595)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Original Title'
,p_source=>'ORIGINAL_TITLE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76997986359995253607)
,p_name=>'P4_ORIGINAL_LANGUAGE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(76997977861434253595)
,p_item_source_plug_id=>wwv_flow_imp.id(76997977861434253595)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Original Language'
,p_source=>'ORIGINAL_LANGUAGE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(76997986731379253607)
,p_name=>'P4_BELONGS_TO_COLLECTION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(76997977861434253595)
,p_item_source_plug_id=>wwv_flow_imp.id(76997977861434253595)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Belongs To Collection'
,p_source=>'BELONGS_TO_COLLECTION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(76997994041147253612)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(76997993932174253612)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(76997994856437253613)
,p_event_id=>wwv_flow_imp.id(76997994041147253612)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(76997995786814253614)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>76997995786814253614
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(76997995350178253614)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(76997977861434253595)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Movie Details Alt'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>76997995350178253614
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
,p_page_template_options=>'#DEFAULT#:t-LoginPage--bg1'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'12'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(65787171171979730983)
,p_plug_name=>'YEFLIX'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2674157997338192145
,p_plug_display_sequence=>10
,p_location=>null
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
wwv_flow_imp_shared.create_install(
 p_id=>wwv_flow_imp.id(67431701309796687248)
);
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


