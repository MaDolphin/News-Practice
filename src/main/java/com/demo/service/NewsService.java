package com.demo.service;

import com.demo.entity.Post;

import java.util.List;

/**
 * Created by xfcq on 2016/10/13.
 */
public interface NewsService {
    public List<Post> findAllPostInfo();

    public List<Post> searchPostInfo(String id,String name);
}
