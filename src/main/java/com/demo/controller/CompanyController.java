package com.demo.controller;

import com.demo.dao.CompanyMapper;
import com.demo.dao.CompanyMapper;
import com.demo.entity.Company;
import com.demo.entity.Company;
import com.github.miemiedev.mybatis.paginator.domain.PageBounds;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by xfcq on 2016/10/13.
 */
@Controller
@RequestMapping(value="/company")
public class CompanyController {
    int totalCount = 0;
    int pageCount = 0;
    @Resource
    private CompanyMapper companyDao;

    @RequestMapping("/company_list")
    public String companyList(Model model,int page,int count){
        PageBounds pageBounds=new PageBounds(page,count);
        List<Company> companyList =companyDao.findAllCompanyInfo(pageBounds);
        totalCount = companyDao.searchCompanyTotalCount();

        if(totalCount % count == 0){
            pageCount = totalCount/count;
        }else{
            pageCount = totalCount/count+1;
        }

        model.addAttribute("pageCount",pageCount);
        model.addAttribute("companyList",companyList);
        model.addAttribute("titleName","最新公司");
        model.addAttribute("currentPage",page);
        return "/stage/company_list";
    }

    @RequestMapping("/search_company_info")
    public String searchCompanyInfo(String ID,Model model){
        Company company =companyDao.searchCompanyInfo(ID);
        model.addAttribute("titleName","最新公司");
        model.addAttribute("companyDetail",company);
        return "/stage/company_detail";
    }
}
