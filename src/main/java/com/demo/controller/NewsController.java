package com.demo.controller;

import com.demo.dao.NewsMapper;
import com.demo.entity.News;
import com.demo.entity.Post;
import com.demo.service.NewsService;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by xfcq on 2016/10/13.
 */
@Controller
@RequestMapping(value="/news")
public class NewsController {

    @Resource
    private NewsMapper newsDao;

    @RequestMapping("/stageIndex")
    public String stageIndex(Model model){
        List<News> newsList =newsDao.findAllNewsInfoTop();
        model.addAttribute("newsListTop",newsList);
        return "/stage/stageIndex";
    }

    @RequestMapping("/news_list")
    public String newsList(Model model){
        List<News> newsList =newsDao.findAllNewsInfo();
        model.addAttribute("newsList",newsList);
        return "/stage/news_list";
    }

//    @RequestMapping("/post_info")
//    public String postInfo(Model model){
//        List<Post> postList =newsService.findAllPostInfo();
//        System.out.println(postList.get(0).getId());
//        model.addAttribute("postList",postList);
//        return "/backstage/gangwei_list";
//    }
//
//    @RequestMapping("/search_post_info")
//    public String searchPostInfo(String id,String name,Model model){
//        id = "%" + id + "%";
//        name = "%" + name + "%";
//        List<Post> postList =newsService.searchPostInfo(id,name);
//        System.out.println(postList.get(0).getId());
//        model.addAttribute("postList",postList);
//        return "/backstage/gangwei_list";
//    }

    @RequestMapping("/search_news_info")
    public String searchNewsInfo(String ID,Model model){
        News news =newsDao.searchNewsInfo(ID);

        model.addAttribute("newsDetail",news);
        return "/stage/news_detail";
    }
}
