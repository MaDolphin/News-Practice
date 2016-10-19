package com.demo.controller;

import com.demo.dao.NewsMapper;
import com.demo.entity.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.annotation.Resource;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

/**
 * Created by xia on 2016/10/18.
 */
@Controller
@RequestMapping("/")
@SessionAttributes("user")
public class NewMangerController {
    @Resource
    NewsMapper newsdao;

    @RequestMapping("news_list")
    public String news_list(Model model){
        List<News> news=newsdao.selectall();
        model.addAttribute("a",news);
        return "backstage/news_list";
    }

    @RequestMapping("news_addview")
    public String news_addview() {
        return "backstage/news_addview";
    }

    @RequestMapping("news_add")
    public String news_add(@ModelAttribute User user, News news){

        news.setID(UUID.randomUUID().toString());
        news.setUSER_ID(user.getId());
        news.setPHOTO("9");
        news.setTYPOE("9");
        news.setADD_DATE(new Date());
        newsdao.insertSelective(news);
        return "redirect:/news_list";
    }

    @RequestMapping("news_updtview")
    public String news_updtview(Model model,String id){
        News news=newsdao.selectByPrimaryKey(id);
        model.addAttribute("news",news);
        return "backstage/news_updtview";
    }
    @RequestMapping("news_updt")
    public String news_updt(News news){
        news.setADD_DATE(new Date());
        newsdao.updateByPrimaryKeySelective(news);
        return "redirect:/news_list";
    }

    @RequestMapping("news_dele")
    public String news_dele(String id) {
        newsdao.deleteByPrimaryKey(id);
        return "redirect:/news_list";
    }
    @RequestMapping("news_detail")
    public String news_detail(String id ,Model model) {

        model.addAttribute("news", newsdao.selectByPrimaryKey(id));
        return "backstage/news_detailview";
    }

    @RequestMapping("query_news")
    public String query_news(String TITLE, Model model){
        News news=new News();
        news.setTITLE("%"+TITLE+"%");
        System.out.println(news.getTITLE());
        List<News> a=newsdao.selectnews(news);
        model.addAttribute("a",a);
        return "backstage/news_list";

    }
}