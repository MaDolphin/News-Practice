package com.demo.controller;

import com.demo.dao.CompanyMapper;
import com.demo.dao.LinkMapper;
import com.demo.dao.PostMapper;
import com.demo.dao.UserMapper;
import com.demo.entity.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;
import java.util.UUID;

/**
 * Created by Fan on 2016/10/18.
 */
@Controller
@RequestMapping("/")
@SessionAttributes("user")
public class managerController {
    @Resource
    PostMapper postDao;

    @Resource
    UserMapper userDao;

    @Resource
    CompanyMapper companyDao;

    @Resource
    LinkMapper linkDao;
    @RequestMapping("managermain")
    public String managermain(Model model){
        List<User> list1=userDao.selectAllSimple();
        model.addAttribute("managersimple",list1);
        return "backstage/manager";

    }
    @RequestMapping("manageritem1")
    public String manageritem1(Model model,String id,String operate){
        System.out.println("id="+id+"operate="+operate);
        if(operate!=null){
            if(operate.equals("edit")){//点击修改
                User user = userDao.selectByPrimaryKey(id);
                model.addAttribute("manageritem", user);
                String status="edit";
                model.addAttribute("status", status);
                return "backstage/manageritem";
            }else if(operate.equals("delete")){//点击删除
                userDao.deleteByPrimaryKey(id);
                return "backstage/managerdelete";
            }else if(operate.equals("show")){//点击用户名
                User user = userDao.selectByPrimaryKey(id);
                model.addAttribute("manageritem", user);
                String b="none";
                model.addAttribute("status",b);
                return "backstage/manageritem";
            }
        }
        return "backstage/manageritem";
    }
    @RequestMapping("manageritem2")
    @ResponseBody
    public int manageritem2(Model model, String id, String operate,String username,String password){
        if(operate!=null) {
            if (operate.equals("update")) {
                int a = userDao.updateByPrimaryKey2(id,username,password);
                System.out.println(id+username+password);
                return a;
            }
        }
        return 0;
    }
    @RequestMapping("managersearch")
    public String managersearch(Model model,String username){
        String a="%"+username+"%";
        List<User> list1=userDao.selectByPrimaryKey2(a);
        model.addAttribute("managersimple",list1);
        return "backstage/manager";
    }
    @RequestMapping("manageraddforward")
    public String manageraddforward(Model model){

        return "backstage/manageradd";
    }
    @RequestMapping("manageraddforward2")
    public String manageraddforward2(Model model,User user){
        user.setId(UUID.randomUUID()+"");
        user.setAddDate(new Date());
        int a=userDao.insert(user);
        return "backstage/manageradd2";
    }
}
