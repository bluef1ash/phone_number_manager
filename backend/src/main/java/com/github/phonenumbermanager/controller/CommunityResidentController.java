package com.github.phonenumbermanager.controller;

import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.stream.Collectors;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.github.phonenumbermanager.constant.BatchRestfulMethod;
import com.github.phonenumbermanager.constant.ExceptionCode;
import com.github.phonenumbermanager.constant.SystemConstant;
import com.github.phonenumbermanager.constant.enums.ImportOrExportStatusEnum;
import com.github.phonenumbermanager.entity.CommunityResident;
import com.github.phonenumbermanager.entity.PhoneNumber;
import com.github.phonenumbermanager.entity.SystemUser;
import com.github.phonenumbermanager.exception.JsonException;
import com.github.phonenumbermanager.service.CommunityResidentService;
import com.github.phonenumbermanager.service.CompanyService;
import com.github.phonenumbermanager.service.ConfigurationService;
import com.github.phonenumbermanager.util.R;
import com.github.phonenumbermanager.util.RedisUtil;
import com.github.phonenumbermanager.validator.CreateInputGroup;
import com.github.phonenumbermanager.validator.ModifyInputGroup;
import com.github.phonenumbermanager.vo.BatchRestfulVO;
import com.github.phonenumbermanager.vo.ComputedVO;

import cn.hutool.json.JSONUtil;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.AllArgsConstructor;

/**
 * 社区居民信息控制器
 *
 * @author 廿二月的天
 */
@AllArgsConstructor
@Controller
@RequestMapping("/resident")
@Tag(name = "社区居民信息控制器")
public class CommunityResidentController extends BaseController {
    private final CommunityResidentService communityResidentService;
    private final CompanyService companyService;
    private final ConfigurationService configurationService;
    private final RedisUtil redisUtil;

    /**
     * 获取社区居民信息分页列表
     *
     * @param request
     *            HTTP请求对象
     * @param current
     *            分页页码
     * @param pageSize
     *            每页数据数量
     * @return 社区居民分页对象集合
     */
    @GetMapping
    @ResponseBody
    @Operation(summary = "获取社区居民信息分页列表")
    public R communityResidentList(HttpServletRequest request, @Parameter(name = "分页页码") Integer current,
        @Parameter(name = "每页数据数量") Integer pageSize) {
        SystemUser currentSystemUser =
            (SystemUser)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        getSearchParameter(request);
        return R.ok().put("data", communityResidentService.pageCorrelation(currentSystemUser.getCompanies(), current,
            pageSize, search, sort));
    }

    /**
     * 通过编号查找社区居民信息
     *
     * @param id
     *            需要查找的社区居民的编号
     * @return 单个社区居民的详细信息
     */
    @GetMapping("/{id}")
    @ResponseBody
    @Operation(summary = "通过编号查找社区居民信息")
    public R getCommunityResidentById(@Parameter(name = "需要查找的社区居民的编号", required = true) @PathVariable Long id) {
        return R.ok().put("data", communityResidentService.getCorrelation(id));
    }

    /**
     * 添加社区居民信息处理
     *
     * @param communityResident
     *            前台传递的社区居民对象
     * @return 添加成功或者失败
     */
    @PostMapping
    @ResponseBody
    @Operation(summary = "添加社区居民信息处理")
    public R communityResidentCreateHandle(@Parameter(name = "前台传递的社区居民对象",
        required = true) @RequestBody @Validated(CreateInputGroup.class) CommunityResident communityResident) {
        String repeatMessage = validatePhoneNumber(null, communityResident.getPhoneNumbers());
        if (repeatMessage != null) {
            return R.error(ExceptionCode.REPEAT_DATA_FAILED.getCode(), repeatMessage);
        }
        if (communityResidentService.save(communityResident)) {
            return R.ok();
        }
        throw new JsonException("添加社区居民信息失败！");
    }

    /**
     * 修改社区居民信息处理
     *
     * @param id
     *            要修改的社区居民编号
     * @param communityResident
     *            前台传递的社区居民对象
     * @return 修改成功或者失败
     */
    @PutMapping("/{id}")
    @ResponseBody
    @Operation(summary = "修改社区居民信息处理")
    public R communityResidentModifyHandle(@Parameter(name = "要修改的社区居民编号", required = true) @PathVariable Long id,
        @Parameter(name = "前台传递的社区居民对象",
            required = true) @RequestBody @Validated(ModifyInputGroup.class) CommunityResident communityResident) {
        String repeatMessage = validatePhoneNumber(id, communityResident.getPhoneNumbers());
        if (repeatMessage != null) {
            return R.error(ExceptionCode.REPEAT_DATA_FAILED.getCode(), repeatMessage);
        }
        communityResident.setId(id)
            .setVersion(communityResidentService.getOne(new LambdaQueryWrapper<CommunityResident>()
                .eq(CommunityResident::getId, id).select(CommunityResident::getVersion)).getVersion());
        if (communityResidentService.updateById(communityResident)) {
            return R.ok();
        }
        throw new JsonException("修改社区居民信息失败！");
    }

    /**
     * 通过社区居民编号删除社区居民信息
     *
     * @param id
     *            对应编号
     * @return 删除成功或者失败
     */
    @DeleteMapping("/{id}")
    @ResponseBody
    @Operation(summary = "通过社区居民编号删除社区居民信息")
    public R removeCommunityResident(@Parameter(name = "社区居民编号", required = true) @PathVariable Long id) {
        if (communityResidentService.removeById(id)) {
            return R.ok();
        }
        throw new JsonException("删除社区居民信息失败！");
    }

    /**
     * 导入社区居民信息进系统
     *
     * @param request
     *            HTTP 请求对象
     * @param importId
     *            导入编号
     * @return 导入成功或者失败
     */
    @PostMapping("/import")
    @ResponseBody
    @Operation(summary = "导入社区居民信息进系统")
    public R communityResidentImportAsSystem(HttpServletRequest request,
        @Parameter(name = "导入编号") @RequestParam(required = false) Long importId) {
        return importForSystem(request, importId, configurationService, communityResidentService, redisUtil,
            "read_resident_excel_start_row_number");
    }

    /**
     * 导出社区居民信息
     *
     * @param exportId
     *            导出编号
     * @return 导出成功或者失败
     */
    @GetMapping("/export")
    @ResponseBody
    @Operation(summary = "导出社区居民信息")
    public R communityResidentSaveAsExcel(@Parameter(name = "导出编号") Long exportId) {
        return exportData(exportId, configurationService, communityResidentService, redisUtil);
    }

    /**
     * 下载社区居民信息 Excel 文件
     *
     * @param response
     *            HTTP 响应对象
     * @param exportId
     *            导出编号
     */
    @GetMapping("/download")
    @Operation(summary = "下载社区居民信息 Excel 文件")
    public void communityResidentExcelDownload(HttpServletResponse response,
        @Parameter(name = "下载编号") @RequestParam Long exportId) {
        redisUtil.setEx(SystemConstant.EXPORT_ID_KEY + SystemConstant.REDIS_EXPLODE + exportId,
            ImportOrExportStatusEnum.DOWNLOAD.getValue(), 20, TimeUnit.MINUTES);
        downloadExcelFile(response, redisUtil, exportId, "“评社区”活动电话库登记表");
    }

    /**
     * 社区居民信息增删改批量操作
     *
     * @param batchRestfulVO
     *            批量操作视图对象
     * @return 批量操作成功或者失败
     */
    @PostMapping("/batch")
    @ResponseBody
    @Operation(summary = "社区居民信息增删改批量操作")
    public R communityResidentBatch(
        @Parameter(name = "批量操作视图对象", required = true) @RequestBody @Validated BatchRestfulVO batchRestfulVO) {
        if (batchRestfulVO.getMethod() == BatchRestfulMethod.DELETE) {
            List<Long> ids = JSONUtil.toList(batchRestfulVO.getData(), Long.class);
            if (communityResidentService.removeByIds(ids)) {
                return R.ok();
            }
        } else if (batchRestfulVO.getMethod() == BatchRestfulMethod.MODIFY) {
            List<CommunityResident> communityResidents =
                JSONUtil.toList(batchRestfulVO.getData(), CommunityResident.class);
            if (communityResidentService.updateBatchById(communityResidents)) {
                return R.ok();
            }
        }
        throw new JsonException("批量操作失败！");
    }

    /**
     * 获取社区居民信息基础统计数据
     *
     * @param computedVo
     *            计算视图对象
     * @return 基础统计数据
     */
    @PostMapping("/computed/message")
    @ResponseBody
    @Operation(summary = "获取社区居民信息基础统计数据")
    public R
        communityResidentBaseMessage(@Parameter(name = "计算视图对象") @RequestBody(required = false) ComputedVO computedVo) {
        SystemUser currentSystemUser =
            (SystemUser)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        return R.ok().put("data",
            communityResidentService.getBaseMessage(currentSystemUser.getCompanies(), getCompanyIds(computedVo)));
    }

    /**
     * 获取社区居民信息统计图表数据
     *
     * @param computedVo
     *            计算视图对象
     * @return 图表统计数据
     */
    @PostMapping("/computed/chart")
    @ResponseBody
    @Operation(summary = "获取社区居民信息图表数据")
    public R communityResidentChart(@Parameter(name = "计算视图对象") @RequestBody(required = false) ComputedVO computedVo) {
        SystemUser currentSystemUser =
            (SystemUser)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        return R.ok().put("data", communityResidentService.getBarChart(currentSystemUser.getCompanies(),
            getCompanyIds(computedVo), companyService.list(), "辖区居民数"));
    }

    /**
     * 验证社区居民联系方式
     *
     * @param id
     *            社区居民编号
     * @param phoneNumbers
     *            需要验证的数据集合
     * @return 验证成功时返回 null，失败时返回所在社区的提示信息
     */
    private String validatePhoneNumber(Long id, List<PhoneNumber> phoneNumbers) {
        if (phoneNumbers != null && !phoneNumbers.isEmpty()) {
            List<CommunityResident> communityResidents = communityResidentService.listByPhoneNumbers(id, phoneNumbers);
            if (!communityResidents.isEmpty()) {
                return communityResidents.stream().map(communityResident -> "输入的联系方式，已经存在于"
                    + communityResident.getCompany().getName() + "单位的" + communityResident.getName() + "居民")
                    .collect(Collectors.joining("，"));
            }
        }
        return null;
    }
}
