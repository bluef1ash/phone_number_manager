INSERT INTO `pm_system_permission` (`id`, `name`, `function_name`, `uri`, `http_methods`, `parent_id`,
                                    `menu_type`, `is_display`, `create_time`, `update_time`)
VALUES (1, '首页相关', 'indexController', '', '', 0, 0, 1, '1000-01-01 00:00:00', '1000-01-01 00:00:00'),
    (2, '社区居民管理', 'communityResidentController', '', '', 0, 0, 1, '1000-01-01 00:00:00', '1000-01-01 00:00:00'),
    (3, '社区居民楼片长管理', 'dormitoryManagerController', '', '', 0, 0, 1, '1000-01-01 00:00:00', '1000-01-01 00:00:00'),
    (4, '单位管理', 'companyController', '', '', 0, 0, 1, '1000-01-01 00:00:00', '1000-01-01 00:00:00'),
    (5, '系统用户与系统权限管理', 'userAndPermissionController', '', '', 0, 0, 1, '1000-01-01 00:00:00', '1000-01-01 00:00:00'),
    (6, '系统管理', 'systemController', '', '', 0, 0, 1, '1000-01-01 00:00:00', '1000-01-01 00:00:00'),
    (7, '欢迎', './welcome', '/welcome', '["GET"]', 1, 1, 1, '1000-01-01 00:00:00', '1000-01-01 00:00:00'),
    (8, '获取首页菜单栏内容', 'getMenu', '/index/menu', '["GET"]', 1, 2, 0, '1000-01-01 00:00:00', '1000-01-01 00:00:00'),
    (9, '居民电话列表', 'communityResidentList', '/resident', '["GET"]', 2, 2, 0, '1000-01-01 00:00:00',
     '1000-01-01 00:00:00'),
    (10, '社区居民电话列表', './resident', '/resident', '["GET"]', 2, 1, 1, '1000-01-01 00:00:00', '1000-01-01 00:00:00'),
    (11, '通过编号查找社区居民', 'getCommunityResidentById', '/resident/{id}', '["GET"]', 2, 2, 0, '1000-01-01 00:00:00',
     '1000-01-01 00:00:00'),
    (12, '添加社区居民信息处理', 'communityResidentCreateHandle', '/resident', '["POST"]', 2, 2, 0, '1000-01-01 00:00:00',
     '1000-01-01 00:00:00'),
    (13, '修改社区居民信息处理', 'communityResidentModifyHandle', '/resident/{id}', '["PUT"]', 2, 2, 0, '1000-01-01 00:00:00',
     '1000-01-01 00:00:00'),
    (14, '删除社区居民信息', 'removeCommunityResident', '/resident/{id}', '["DELETE"]', 2, 2, 0, '1000-01-01 00:00:00',
     '1000-01-01 00:00:00'),
    (15, '导入社区居民信息进系统', 'communityResidentImportAsSystem', '/resident/import/{streetId}', '["POST"]', 2, 2, 0,
     '1000-01-01 00:00:00', '1000-01-01 00:00:00'),
    (16, '导出社区居民信息到Excel', 'communityResidentSaveAsExcel', '/resident/download', '["GET"]', 2, 2, 0,
     '1000-01-01 00:00:00', '1000-01-01 00:00:00'),
    (17, '社区居民增删改批量操作', 'communityResidentBatch', '/resident/batch', '["POST"]', 2, 2, 0,
     '1000-01-01 00:00:00', '1000-01-01 00:00:00'),
    (18, '社区居民基础数据', 'communityResidentBaseMessage', '/resident/computed/message', '["POST"]', 2, 2, 0,
     '1000-01-01 00:00:00', '1000-01-01 00:00:00'),
    (19, '社区居民图表', 'communityResidentChart', '/resident/computed/chart', '["POST"]', 2, 2, 0,
     '1000-01-01 00:00:00', '1000-01-01 00:00:00'),
    (20, '社区居民楼片长信息列表', 'dormitoryManagerList', '/dormitory', '["GET"]', 3, 2, 0, '1000-01-01 00:00:00',
     '1000-01-01 00:00:00'),
    (21, '通过编号查找社区居民楼片长', 'getDormitoryManagerById', '/dormitory/{id}', '["GET"]', 3, 2, 0, '1000-01-01 00:00:00',
     '1000-01-01 00:00:00'),
    (22, '社区居民楼片长信息列表', './dormitory', '/dormitory', '["GET"]', 3, 1, 1, '1000-01-01 00:00:00', '1000-01-01 00:00:00'),
    (23, '添加社区居民楼片长信息处理', 'dormitoryManagerCreateHandle', '/dormitory', '["POST"]', 3, 2, 0, '1000-01-01 00:00:00',
     '1000-01-01 00:00:00'),
    (24, '修改社区居民楼片长信息处理', 'dormitoryManagerModifyHandle', '/dormitory/{id}', '["PUT"]', 3, 2, 0, '1000-01-01 00:00:00',
     '1000-01-01 00:00:00'),
    (25, '删除社区居民楼片长信息', 'removeDormitoryManager', '/dormitory/{id}', '["DELETE"]', 3, 2, 0, '1000-01-01 00:00:00',
     '1000-01-01 00:00:00'),
    (26, '导入社区居民楼片长信息进系统', 'dormitoryManagerImportAsSystem', '/dormitory/import/{streetId}', '["GET"]', 3, 2, 0,
     '1000-01-01 00:00:00', '1000-01-01 00:00:00'),
    (27, '导出社区居民楼片长信息到Excel', 'dormitoryManagerSaveAsExcel', '/dormitory/download', '["GET"]', 3, 2, 0,
     '1000-01-01 00:00:00', '1000-01-01 00:00:00'),
    (28, '社区居民楼片长增删改批量操作', 'dormitoryManagerBatch', '/dormitory/batch', '["POST"]', 3, 2, 0,
     '1000-01-01 00:00:00', '1000-01-01 00:00:00'),
    (29, '社区居民楼片长基础数据', 'dormitoryManagerBaseMessage', '/dormitory/computed/message', '["POST"]', 3, 2, 0,
     '1000-01-01 00:00:00', '1000-01-01 00:00:00'),
    (30, '社区居民楼片长图表', 'dormitoryManagerChart', '/dormitory/computed/chart', '["POST"]', 3, 2, 0,
     '1000-01-01 00:00:00', '1000-01-01 00:00:00'),
    (31, '单位列表', './company', '/company', '["GET"]', 4, 1, 1, '1000-01-01 00:00:00', '1000-01-01 00:00:00'),
    (32, '单位列表', 'companyList', '/company', '["GET"]', 4, 2, 0, '1000-01-01 00:00:00', '1000-01-01 00:00:00'),
    (33, '通过单位编号获取', 'getCompanyById', '/company/{id}', '["GET"]', 4, 2, 0, '1000-01-01 00:00:00',
     '1000-01-01 00:00:00'),
    (34, '添加单位信息处理', 'companyCreateHandle', '/company', '["POST"]', 4, 2, 0, '1000-01-01 00:00:00',
     '1000-01-01 00:00:00'),
    (35, '修改单位信息处理', 'companyModifyHandle', '/company/{id}', '["PUT"]', 4, 2, 0, '1000-01-01 00:00:00',
     '1000-01-01 00:00:00'),
    (36, '删除单位信息', 'removeCompany', '/company', '["DELETE"]', 4, 2, 0, '1000-01-01 00:00:00', '1000-01-01 00:00:00'),
    (37, '单位增删改批量操作', 'companyBatch', '/company/batch', '["POST"]', 4, 2, 0, '1000-01-01 00:00:00',
     '1000-01-01 00:00:00'),
    (38, '单位表单列表', 'companySelectList', '/company/select-list', '["GET"]', 4, 2, 0, '1000-01-01 00:00:00',
     '1000-01-01 00:00:00'),
    (39, '社区分包人员列表', './subcontractor', '/company/subcontractor', '["GET"]', 4, 1, 1, '1000-01-01 00:00:00',
     '1000-01-01 00:00:00'),
    (40, '社区分包人员列表', 'subcontractorList', '/company/subcontractor', '["GET"]', 4, 2, 0, '1000-01-01 00:00:00',
     '1000-01-01 00:00:00'),
    (41, '通过社区分包人员编号获取', 'getSubcontractorById', '/subcontractor/{id}', '["GET"]', 4, 2, 0, '1000-01-01 00:00:00',
     '1000-01-01 00:00:00'),
    (42, '添加社区分包人员信息处理', 'subcontractorCreateHandle', '/subcontractor', '["POST"]', 4, 2, 0, '1000-01-01 00:00:00',
     '1000-01-01 00:00:00'),
    (43, '修改社区分包人员信息处理', 'subcontractorModifyHandle', '/subcontractor/{id}', '["PUT"]', 4, 2, 0,
     '1000-01-01 00:00:00', '1000-01-01 00:00:00'),
    (44, '删除社区分包人员信息', 'removeSubcontractor', '/subcontractor', '["DELETE"]', 4, 2, 0, '1000-01-01 00:00:00',
     '1000-01-01 00:00:00'),
    (45, '社区分包人员增删改批量操作', 'subcontractorBatch', '/subcontractor/batch', '["POST"]', 4, 2, 0,
     '1000-01-01 00:00:00', '1000-01-01 00:00:00'),
    (46, '社区分包人员表单列表', 'subcontractorSelectList', '/subcontractor/select-list', '["GET"]', 4, 2, 0,
     '1000-01-01 00:00:00', '1000-01-01 00:00:00'),
    (47, '社区分包人员图表', 'subcontractorChart', '/subcontractor/computed/chart', '["POST"]', 4, 2, 0,
     '1000-01-01 00:00:00', '1000-01-01 00:00:00'),
    (48, '用户登录', 'login', '/account/login', '["POST"]', 5, 2, 0, '1000-01-01 00:00:00', '1000-01-01 00:00:00'),
    (49, '退出登录', 'logout', '/account/logout', '["POST"]', 5, 2, 0, '1000-01-01 00:00:00', '1000-01-01 00:00:00'),
    (50, '生成图案验证码数据', 'captcha', '/account/recaptcha', '["GET"]', 5, 2, 0, '1000-01-01 00:00:00',
     '1000-01-01 00:00:00'),
    (51, '系统用户列表', './user', '/system/user', '["GET"]', 5, 1, 1, '1000-01-01 00:00:00', '1000-01-01 00:00:00'),
    (52, '系统用户列表', 'systemUserList', '/system/user', '["GET"]', 5, 2, 0, '1000-01-01 00:00:00',
     '1000-01-01 00:00:00'),
    (53, '通过系统用户编号查找', 'getSystemUserById', '/system/user/{id}', '["GET"]', 5, 2, 0, '1000-01-01 00:00:00',
     '1000-01-01 00:00:00'),
    (54, '单独字段修改系统用户', 'systemUserModifyHandlePatch', '/system/user/{id}', '["PATCH"]', 5, 2, 0,
     '1000-01-01 00:00:00', '1000-01-01 00:00:00'),
    (55, '添加处理系统用户', 'systemUserCreateHandle', '/system/user', '["POST"]', 5, 2, 0, '1000-01-01 00:00:00',
     '1000-01-01 00:00:00'),
    (56, '修改处理系统用户', 'systemUserModifyHandle', '/system/user/{id}', '["PUT"]', 5, 2, 0, '1000-01-01 00:00:00',
     '1000-01-01 00:00:00'),
    (57, '删除系统用户', 'removeSystemUser', '/system/user', '["DELETE"]', 5, 2, 0, '1000-01-01 00:00:00',
     '1000-01-01 00:00:00'),
    (58, '通过单位编号加载系统用户', 'loadSystemUserByCompanyId', '/system/user/company/{companyId}', '["GET"]', 5, 2, 0,
     '1000-01-01 00:00:00', '1000-01-01 00:00:00'),
    (59, '增删改批量操作系统用户', 'systemUserBatch', '/system/user/batch', '["POST"]', 5, 2, 0, '1000-01-01 00:00:00',
     '1000-01-01 00:00:00'),
    (60, '系统用户表单列表', 'systemUserSelectList', '/system/user/select-list', '["GET"]', 5, 2, 0, '1000-01-01 00:00:00',
     '1000-01-01 00:00:00'),
    (61, '获取当前登录用户信息', 'currentSystemUser', '/system/current-user', '["GET"]', 5, 2, 0, '1000-01-01 00:00:00',
     '1000-01-01 00:00:00'),
    (62, '系统权限列表', './permission', '/system/permission', '["GET"]', 5, 1, 1, '1000-01-01 00:00:00',
     '1000-01-01 00:00:00'),
    (63, '系统权限列表', 'systemSystemPermissionList', '/system/permission', '["GET"]', 5, 2, 0, '1000-01-01 00:00:00',
     '1000-01-01 00:00:00'),
    (64, '通过编号获取系统权限', 'getSystemPermissionById', '/system/permission/{id}', '["GET"]', 5, 2, 0,
     '1000-01-01 00:00:00', '1000-01-01 00:00:00'),
    (65, '添加处理系统权限', 'systemPermissionsCreateHandle', '/system/permission', '["POST"]', 5, 2, 0,
     '1000-01-01 00:00:00', '1000-01-01 00:00:00'),
    (66, '修改处理系统权限', 'systemPermissionsModifyHandle', '/system/permission/{id}', '["PUT"]', 5, 2, 0,
     '1000-01-01 00:00:00', '1000-01-01 00:00:00'),
    (67, '删除系统权限', 'removeSystemPermission', '/system/permission', '["DELETE"]', 5, 2, 0, '1000-01-01 00:00:00',
     '1000-01-01 00:00:00'),
    (68, '获取系统用户单位拥有的权限', 'getPermissionsByCompanyId', '/system/permission/company/{companyId}', '["GET"]', 5, 2, 0,
     '1000-01-01 00:00:00', '1000-01-01 00:00:00'),
    (69, '系统权限表单列表', 'systemPermissionSelectList', '/system/permission/select-list', '["GET"]', 5, 2, 0,
     '1000-01-01 00:00:00', '1000-01-01 00:00:00'),
    (70, '增删改批量操作系统权限', 'systemPermissionBatch', '/system/permission/batch', '["POST"]', 5, 2, 0,
     '1000-01-01 00:00:00', '1000-01-01 00:00:00'),
    (71, '系统配置列表', './configuration', '/system/configuration', '["GET"]', 6, 1, 1, '1000-01-01 00:00:00',
     '1000-01-01 00:00:00'),
    (72, '系统配置列表', 'configurationList', '/system/configuration', '["GET"]', 6, 2, 0, '1000-01-01 00:00:00',
     '1000-01-01 00:00:00'),
    (73, '通过系统配置项编号查找', 'getConfigurationById', '/system/configuration/{id}', '["GET"]', 6, 2, 0,
     '1000-01-01 00:00:00', '1000-01-01 00:00:00'),
    (74, '添加处理系统配置', 'configurationCreateHandle', '/system/configuration', '["POST"]', 6, 2, 0,
     '1000-01-01 00:00:00', '1000-01-01 00:00:00'),
    (75, '修改处理系统配置', 'configurationModifyHandle', '/system/configuration/{id}', '["PUT"]', 6, 2, 0,
     '1000-01-01 00:00:00', '1000-01-01 00:00:00'),
    (76, '删除系统配置', 'removeConfigurationById', '/system/configuration', '["DELETE"]', 6, 2, 0, '1000-01-01 00:00:00',
     '1000-01-01 00:00:00'),
    (77, '系统配置增删改批量操作', 'configurationBatch', '/system/configuration/batch', '["POST"]', 6, 2, 0,
     '1000-01-01 00:00:00', '1000-01-01 00:00:00');
