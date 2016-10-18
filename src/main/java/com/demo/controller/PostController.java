package com.demo.controller;

import com.demo.dao.PostMapper;
import com.demo.dao.PostMapper;
import com.demo.entity.Post;
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
@RequestMapping(value="/post")
public class PostController {
    int totalCount = 0;
    int pageCount = 0;
    @Resource
    private PostMapper postDao;

    @RequestMapping("/post_list")
    public String postList(Model model,int page,int count){
        PageBounds pageBounds=new PageBounds(page,count);
        List<Post> postList =postDao.findAllPostInfo(pageBounds);
        totalCount = postDao.searchPostTotalCount();

        if(totalCount % count == 0){
            pageCount = totalCount/count;
        }else{
            pageCount = totalCount/count+1;
        }

        model.addAttribute("pageCount",pageCount);
        model.addAttribute("postList",postList);
        model.addAttribute("titleName","最新岗位");
        model.addAttribute("currentPage",page);
        return "/stage/post_list";
    }

    @RequestMapping("/search_post_info")
    public String searchPostInfo(String ID,Model model){
        Post post =postDao.searchPostInfo(ID);
        model.addAttribute("titleName","最新岗位");
        model.addAttribute("postDetail",post);
        return "/stage/post_detail";
    }
}
