package com.demo.controller;

import com.demo.dao.NewsMapper;
import com.demo.entity.News;
import com.demo.entity.Post;
import com.demo.service.NewsService;
import com.github.miemiedev.mybatis.paginator.domain.Order;
import com.github.miemiedev.mybatis.paginator.domain.PageBounds;
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
    int totalCount = 0;
    int pageCount = 0;
    @Resource
    private NewsMapper newsDao;

    @RequestMapping("/news_list")
    public String newsList(Model model,int page,int count){
        PageBounds pageBounds=new PageBounds(page,count);
        List<News> newsList =newsDao.findAllNewsInfo(pageBounds);
        totalCount = newsDao.searchNewsTotalCount();

        if(totalCount % count == 0){
            pageCount = totalCount/count;
        }else{
            pageCount = totalCount/count+1;
        }

        model.addAttribute("pageCount",pageCount);
        model.addAttribute("newsList",newsList);
        model.addAttribute("titleName","新闻动态");
        model.addAttribute("currentPage",page);
        return "/stage/news_list";
    }

    @RequestMapping("/search_news_info")
    public String searchNewsInfo(String ID,Model model){
        News news =newsDao.searchNewsInfo(ID);
        model.addAttribute("titleName","新闻动态");
        model.addAttribute("newsDetail",news);
        return "/stage/news_detail";
    }
}
