package com.demo.controller;

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
    private NewsService newsService;
    @RequestMapping("/test")
    public String test(String id,Model model){
        model.addAttribute("a","11");
        return "/stage/news";
    }

    @RequestMapping("/post_info")
    public String postInfo(Model model){
        List<Post> postList =newsService.findAllPostInfo();
        System.out.println(postList.get(0).getId());
        model.addAttribute("postList",postList);
        return "/backstage/gangwei_list";
    }

    @RequestMapping("/search_post_info")
    public String searchPostInfo(String id,String name,Model model){
        List<Post> postList =newsService.searchPostInfo(id,name);
        System.out.println(postList.get(0).getId());
        model.addAttribute("postList",postList);
        return "/backstage/gangwei_list";
    }
}
