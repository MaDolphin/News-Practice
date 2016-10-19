package com.demo.controller;

import com.demo.dao.CompanyMapper;
import com.demo.dao.LinkMapper;
import com.demo.dao.PostMapper;
import com.demo.dao.UserMapper;
import com.demo.entity.Company;
import com.demo.entity.Link;
import com.demo.entity.Post;
import com.demo.entity.User;
import com.demo.service.NewsService;
import com.github.miemiedev.mybatis.paginator.domain.PageBounds;
import com.github.miemiedev.mybatis.paginator.domain.PageList;
import com.github.miemiedev.mybatis.paginator.domain.Paginator;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

/**
 * Created by lenovo on 2016/10/18.
 */
@Controller
@RequestMapping("/")
@SessionAttributes("user")
public class CpyController {
    @Resource
    PostMapper postDao;

    @Resource
    UserMapper userDao;

    @Resource
    CompanyMapper companyDao;

    @Resource
    LinkMapper linkDao;


    //分页视力

    @RequestMapping("gongsi_detail")
    public String gongsi_detail(Model model,String id){
        Company cpy=companyDao.selectByPrimaryKey(id);
        List<Company> companies=companyDao.selectAll();
        model.addAttribute("companies",companies);
        model.addAttribute("gongsi",cpy);
        return "backstage/gongsi_detail";

    }
    @RequestMapping("gongsi_list")
    public String gongsi_list(Model model){
        List<Company> cpy=companyDao.selectAll();
        model.addAttribute("gongsi",cpy);
        return "backstage/gongsi_list";
    }
    @RequestMapping("gongsi_updt")
    public String gongsi_updt(Model model,String id){
        Company cpy=companyDao.selectByPrimaryKey(id);
        model.addAttribute("gongsi",cpy);
        return "backstage/gongsi_updt";
    }
    @RequestMapping("gongsi_dele")
    public String gongsi_dele(String id){
        companyDao.deleteByPrimaryKey(id);
        return "redirect:/gongsi_list";

    }
    @RequestMapping("cpy_update_form")
    public String update_form(Company company){
        companyDao.updateByPrimaryKeySelective(company);
        return "redirect:/gongsi_list";

    }
    @RequestMapping("gongsi_add")
    public String gongsi_add(Model model,String id){
        List<Company> companies=companyDao.selectAll();
        model.addAttribute("companies",companies);

        return "backstage/gongsi_add";

    }
    @RequestMapping("cpy_add_form")
    public String add_form(Company company){
        company.setID(UUID.randomUUID().toString());

        company.setADD_DATE(new Date());
        companyDao.insertSelective(company);
        return "redirect:/gongsi_list";

    }
    @RequestMapping("query_cpy")
    public String query(@RequestParam(value ="NAME",required = false) String NAME,@RequestParam(value ="INDUSTRY",required = false) String INDUSTRY,Model model){
       NAME="%"+NAME+"%";
        INDUSTRY="%"+INDUSTRY +"%";
        List<Company> companies=companyDao.query(NAME,INDUSTRY);
        model.addAttribute("gongsi",companies);
        return "backstage/gongsi_list";

    }
}
