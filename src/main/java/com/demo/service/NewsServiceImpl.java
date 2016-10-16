package com.demo.service;

import com.demo.dao.NewsMapper;
import com.demo.dao.PostMapper;
import com.demo.entity.Post;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by xfcq on 2016/10/13.
 */
@Service("newsService")
public class NewsServiceImpl implements NewsService {

    @Resource
    private PostMapper postMapper;

    public List<Post> findAllPostInfo(){
        return postMapper.findAllPostInfo();
    }

    public List<Post> searchPostInfo(String id,String name){
        return postMapper.searchPostInfo(id,name);
    }
}
