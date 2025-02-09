package com.github.phonenumbermanager.service;

import java.io.InputStream;
import java.util.Collection;
import java.util.List;
import java.util.Map;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;
import com.github.phonenumbermanager.entity.Company;
import com.github.phonenumbermanager.entity.SystemUser;
import com.github.phonenumbermanager.vo.SelectListVO;

import cn.hutool.json.JSONObject;

/**
 * 业务基本接口
 *
 * @param <T>
 *            业务接口泛型
 * @author 廿二月的天
 */
@SuppressWarnings({"unused", "UnusedReturnValue"})
public interface BaseService<T> extends IService<T> {
    /**
     * 保存忽略重复数据
     *
     * @param entity
     *            需要保存的实体
     * @return 是否保存成功
     */
    boolean saveIgnore(T entity);

    /**
     * 批量保存忽略重复数据
     *
     * @param entityList
     *            需要保存的实体集合
     * @return 是否保存成功
     */
    boolean saveIgnoreBatch(Collection<T> entityList);

    /**
     * 批量保存忽略重复数据
     *
     * @param entityList
     *            需要保存的实体集合
     * @param batchSize
     *            批量数量
     * @return 是否保存成功
     */
    boolean saveIgnoreBatch(Collection<T> entityList, int batchSize);

    /**
     * 关联保存
     *
     * @param entity
     *            需要保存的实体对象
     * @return 是否成功
     */
    default boolean saveCorrelation(SystemUser entity) {
        return false;
    }

    /**
     * 获取录入统计信息
     *
     * @param companies
     *            当前登录系统用户单位集合
     * @param companyIds
     *            需要获取数据的单位编号集合
     * @return 统计信息对象
     */
    default Map<String, Object> getBaseMessage(List<Company> companies, Long[] companyIds) {
        return null;
    }

    /**
     * 关联查找（包含分页）
     *
     * @param companies
     *            当前已登录的用户对象所属单位集合
     * @param pageNumber
     *            分页页码
     * @param pageDataSize
     *            每页显示的条目数
     * @param search
     *            搜索条件
     * @param sort
     *            排序条件
     * @return 查找到的所有对象与所属对象与分页对象
     */
    default IPage<T> pageCorrelation(List<Company> companies, Integer pageNumber, Integer pageDataSize,
        JSONObject search, JSONObject sort) {
        return null;
    }

    /**
     * 获取柱状图数据
     *
     * @param companies
     *            正在登录中的系统用户单位集合
     * @param companyIds
     *            需要获取的单位编号集合
     * @param companyAll
     *            所有单位集合
     * @param personCountAlias
     *            Y 轴别名
     * @return 柱状图数据
     */
    Map<String, Object> getBarChart(List<Company> companies, Long[] companyIds, List<Company> companyAll,
        String personCountAlias);

    /**
     * 通过编号关联查找
     *
     * @param id
     *            需要查找的对象编号
     * @return 对应的对象
     */
    default T getCorrelation(Long id) {
        return null;
    }

    /**
     * 通过单位编号导出 Excel
     *
     * @param currentSystemUser
     *            当前已登录的系统用户
     * @param configurationMap
     *            系统配置项
     * @param exportId
     *            导出编号
     */
    default void listCorrelationExportExcel(SystemUser currentSystemUser, Map<String, JSONObject> configurationMap,
        Long exportId) {}

    /**
     * 获取树形表单列表
     *
     * @param parentIds
     *            父级编号数组
     * @return 树形表单列表集合
     */
    default List<SelectListVO> treeSelectList(Long[] parentIds) {
        return null;
    }

    /**
     * 异步上传数据
     *
     * @param inputStream
     *            输入流对象
     * @param startRowNumber
     *            数据开始行数
     * @param importId
     *            导入编号
     */
    default void asyncImport(InputStream inputStream, int startRowNumber, Long importId) {}
}
