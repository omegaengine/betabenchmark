-- Hardware --
INSERT INTO os (platform, is64bit, version, service_pack) VALUES ('Win32NT', true, '6.1', '1');
INSERT INTO cpu (manufacturer, name, speed, cores, logical) VALUES ('Intel', 'Core 2 Duo E6600', 2000, 2, 2);
INSERT INTO gpu_manufacturer VALUES (1, 'ATI');
INSERT INTO gpu (manufacturer_id, name, ram, max_aa) VALUES (1, 'Radeon 123', 512, 4);

-- Test cases --
INSERT INTO submission (user_name, game_version, engine_version, os_id, cpu_id, ram, gpu_id) VALUES ('bastian', '1.0.0', '1.0.0', 1, 1, 1024, 1);
INSERT INTO test_case (target_name, high_res, anti_aliasing, graphics_settings_anisotropic, graphics_settings_double_sampling, graphics_settings_post_screen_effects, water_effects_id, particle_system_quality_id)
               VALUES ('Target 1',  false,    0,             true,                          false,                             false,                                 1,                1);
INSERT INTO test_case (target_name, high_res, anti_aliasing, graphics_settings_anisotropic, graphics_settings_double_sampling, graphics_settings_post_screen_effects, water_effects_id, particle_system_quality_id)
               VALUES ('Target 2',  true,     2,             true,                          true,                              true,                                  2,                2);
INSERT INTO test_case_result (submission_id, test_case_id, average_fps, average_frame_ms) VALUES (1, 1, 30, 33.33);
INSERT INTO test_case_result (submission_id, test_case_id, average_fps, average_frame_ms) VALUES (1, 2, 20, 50);
