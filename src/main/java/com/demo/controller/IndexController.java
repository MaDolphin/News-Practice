package com.demo.controller;

import com.demo.dao.CompanyMapper;
import com.demo.dao.LinkMapper;
import com.demo.dao.NewsMapper;
import com.demo.dao.PostMapper;
import com.demo.entity.Company;
import com.demo.entity.Link;
import com.demo.entity.News;
import com.demo.entity.Post;
import com.github.miemiedev.mybatis.paginator.domain.PageBounds;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping(value="/index")
public class IndexController {
    @Resource
    private NewsMapper newsDao;
    @Resource
    private CompanyMapper companyDao;
    @Resource
    private PostMapper postDao;
    @Resource
    private LinkMapper linkDao;

    @RequestMapping("/stageIndex")
    public String stageIndex(Model model,HttpSession session){
        List<News> newsList =newsDao.findAllNewsInfoTop();
        model.addAttribute("newsListTop",newsList);
        List<Company> companyList =companyDao.findAllCompanyInfoTop();
        model.addAttribute("companyListTop",companyList);
        List<Post> postList =postDao.findAllPostInfoTop();
        model.addAttribute("postListTop",postList);
        List<Link> linkList =linkDao.findAllLinkInfoTop();
        session.setAttribute("linkListTop",linkList);
        return "/stage/stageIndex";
    }
}
