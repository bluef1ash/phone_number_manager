INSERT INTO pm_configuration (id, title, description, name, content, field_type, create_time,
                              update_time)
VALUES (1, '系统管理员用户编号', '', 'system_administrator_id', '1', 3, '1000-01-01 00:00:00',
        '1000-01-01 00:00:00'),
    (2, '电话库Excel表标题上文字', '', 'excel_resident_title_up', '附件2', 2, '1000-01-01 00:00:00',
     '1000-01-01 00:00:00'),
    (3, '电话库Excel表标题', '', 'excel_resident_title', '“评社区”活动电话库登记表', 2, '1000-01-01 00:00:00',
     '1000-01-01 00:00:00'),
    (4, '读取电话库Excel表开始行号，从内容开始的行数加，包含开始行数', '', 'read_resident_excel_start_row_number', '4', 3,
     '1000-01-01 00:00:00', '1000-01-01 00:00:00'),
    (5, '电话库Excel表中“街道”所在列的位置序号，从0开始', '', 'excel_resident_street_name_cell_number', '0', 3,
     '1000-01-01 00:00:00', '1000-01-01 00:00:00'),
    (6, '电话库Excel表中“社区”所在列的位置序号，从0开始', '', 'excel_resident_community_name_cell_number', '1', 3,
     '1000-01-01 00:00:00', '1000-01-01 00:00:00'),
    (7, '电话库Excel表中“户主姓名”所在列的位置序号，从0开始', '', 'excel_resident_name_cell_number', '2', 3,
     '1000-01-01 00:00:00', '1000-01-01 00:00:00'),
    (8, '电话库Excel表中“家庭住址”所在列的位置序号，从0开始', '', 'excel_resident_address_cell_number', '3', 3,
     '1000-01-01 00:00:00', '1000-01-01 00:00:00'),
    (9, '电话库Excel表中“联系方式一”所在列的位置序号，从0开始', '', 'excel_resident_phone1_cell_number', '4', 3,
     '1000-01-01 00:00:00', '1000-01-01 00:00:00'),
    (10, '电话库Excel表中“联系方式二”所在列的位置序号，从0开始', '', 'excel_resident_phone2_cell_number', '5', 3,
     '1000-01-01 00:00:00', '1000-01-01 00:00:00'),
    (11, '电话库Excel表中“联系方式三”所在列的位置序号，从0开始', '', 'excel_resident_phone3_cell_number', '6', 3,
     '1000-01-01 00:00:00', '1000-01-01 00:00:00'),
    (12, '电话库Excel表中“分包人”所在列的位置序号，从0开始', '', 'excel_resident_subcontractor_name_cell_number', '7', 3,
     '1000-01-01 00:00:00', '1000-01-01 00:00:00'),
    (13, '楼长Excel表标题', '', 'excel_dormitory_title', '街道（园区）社区楼片长花名册', 2,
     '1000-01-01 00:00:00', '1000-01-01 00:00:00'),
    (14, '楼长Excel表标题上文字', '', 'excel_dormitory_title_up', '附件1', 2, '1000-01-01 00:00:00',
     '1000-01-01 00:00:00'),
    (15, '读取社区楼长Excel表开始行号，从内容开始的行数加，包含开始行数', '', 'read_dormitory_excel_start_row_number',
     '6', 3,
     '1000-01-01 00:00:00', '1000-01-01 00:00:00'),
    (16, '社区楼长Excel表中“社区”所在列的位置序号，从0开始', '', 'excel_dormitory_community_name_cell_number', '1', 3,
     '1000-01-01 00:00:00', '1000-01-01 00:00:00'),
    (17, '社区楼长Excel表中“编号”所在列的位置序号，从0开始', '', 'excel_dormitory_id_cell_number', '2', 3,
     '1000-01-01 00:00:00', '1000-01-01 00:00:00'),
    (18, '社区楼长Excel表中“楼片长姓名”所在列的位置序号，从0开始', '', 'excel_dormitory_name_cell_number', '3', 3,
     '1000-01-01 00:00:00', '1000-01-01 00:00:00'),
    (19, '社区楼长Excel表中“性别”所在列的位置序号，从0开始', '', 'excel_dormitory_gender_cell_number', '4', 3,
     '1000-01-01 00:00:00', '1000-01-01 00:00:00'),
    (20, '社区楼长Excel表中“出生年月”所在列的位置序号，从0开始', '', 'excel_dormitory_birth_cell_number', '5', 3,
     '1000-01-01 00:00:00', '1000-01-01 00:00:00'),
    (21, '社区楼长Excel表中“政治面貌”所在列的位置序号，从0开始', '', 'excel_dormitory_political_status_cell_number', '6',
     3,
     '1000-01-01 00:00:00', '1000-01-01 00:00:00'),
    (22, '社区楼长Excel表中“工作状况”所在列的位置序号，从0开始', '', 'excel_dormitory_employment_status_cell_number',
     '7', 3,
     '1000-01-01 00:00:00', '1000-01-01 00:00:00'),
    (23, '社区楼长Excel表中“学历”所在列的位置序号，从0开始', '', 'excel_dormitory_education_cell_number', '8', 3,
     '1000-01-01 00:00:00', '1000-01-01 00:00:00'),
    (24, '社区楼长Excel表中“家庭住址”所在列的位置序号，从0开始', '', 'excel_dormitory_address_cell_number', '9', 3,
     '1000-01-01 00:00:00', '1000-01-01 00:00:00'),
    (25, '社区楼长Excel表中“管理的地址”所在列的位置序号，从0开始', '', 'excel_dormitory_manager_address_cell_number',
     '10', 3,
     '1000-01-01 00:00:00', '1000-01-01 00:00:00'),
    (26, '社区楼长Excel表中“管理的户数”所在列的位置序号，从0开始', '', 'excel_dormitory_manager_count_cell_number', '11',
     3,
     '1000-01-01 00:00:00', '1000-01-01 00:00:00'),
    (27, '社区楼长Excel表中“手机号码”所在列的位置序号，从0开始', '', 'excel_dormitory_telephone_cell_number', '12', 3,
     '1000-01-01 00:00:00', '1000-01-01 00:00:00'),
    (28, '社区楼长Excel表中“座机号码”所在列的位置序号，从0开始', '', 'excel_dormitory_landline_cell_number', '13', 3,
     '1000-01-01 00:00:00', '1000-01-01 00:00:00'),
    (29, '社区楼长Excel表中“分包人姓名”所在列的位置序号，从0开始', '', 'excel_dormitory_subcontractor_name_cell_number',
     '14',
     3, '1000-01-01 00:00:00', '1000-01-01 00:00:00'),
    (30, '社区楼长Excel表中“分包人手机号码”所在列的位置序号，从0开始', '',
     'excel_dormitory_subcontractor_telephone_cell_number', '15', 3, '1000-01-01 00:00:00',
     '1000-01-01 00:00:00'),
    (31, '系统是否开启', '', 'system_is_active', '1', 1, '1000-01-01 00:00:00', '1000-01-01 00:00:00');
