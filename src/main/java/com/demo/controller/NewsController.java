package com.demo.controller;

import com.demo.service.NewsService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

/**
 * Created by xfcq on 2016/10/13.
 */
@Controller
@RequestMapping(value="/news")
public class NewsController {

    @Resource
    private NewsService newsService;

}
