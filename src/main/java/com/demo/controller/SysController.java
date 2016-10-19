package com.demo.controller;

import com.demo.dao.CompanyMapper;
import com.demo.dao.LinkMapper;
import com.demo.dao.PostMapper;
import com.demo.dao.UserMapper;
import com.demo.entity.Company;
import com.demo.entity.Link;
import com.demo.entity.Post;
import com.demo.entity.User;
import com.github.miemiedev.mybatis.paginator.domain.PageBounds;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

/**
 * Created by xfcq on 2016/10/13.
 */
@Controller
@RequestMapping("/")
@SessionAttributes("user")
public class SysController {

    @Resource
    PostMapper postDao;

    @Resource
    UserMapper userDao;

    @Resource
    CompanyMapper companyDao;

    @Resource
    LinkMapper linkDao;

    //分页视力
    public void fenye(){
        int page = 1; //页号
        int pageSize = 20; //每页数据条数
        PageBounds pageBounds=new PageBounds(page,pageSize);

//       PageList<Post>  posts=(PageList)postDao(pageBounds);//当页数据
//        Paginator paginator=posts.getPaginator();
//        int count=paginator.getTotalCount();//zo总记录数
//        int page=paginator.getTotalPages();//总页数
    }

    @RequestMapping("a")
        public String a(){
            return "backstage/main";

    }
    @RequestMapping("top")
    public String top(){
        return "backstage/top";

    }
    @RequestMapping("center")
    public String center(){
        return "backstage/center";

    }
    @RequestMapping("down")
    public String down(){
        return "backstage/down";

    }
    @RequestMapping("sy")
    public String sy(){
        return "backstage/sy";

    }
    @RequestMapping("left")
    public String left(){
        return "backstage/left";

    }
    @RequestMapping("mod")
    public String mod(){

        return "backstage/mod";
    }

    @RequestMapping("gangwei_detail")
    public String gangwei_detail(Model model,String id){
        Post post=postDao.selectByPrimaryKey(id);
        List<Company> companies=companyDao.selectAll();
        model.addAttribute("companies",companies);
        model.addAttribute("gangwei",post);
        return "backstage/gangwei_detail";

    }

    @RequestMapping("gangwei_list")
    public String gangwei_list(Model model){
        List<Post> posts=postDao.selectAll();
        model.addAttribute("gangwei",posts);
        return "backstage/gangwei_list";
    }

    @RequestMapping("link_list")
    public String link_list(Model model){
        List<Link> links=linkDao.selectAll();
        model.addAttribute("link",links);
        return "backstage/lianjie_list";

    }

    @RequestMapping("gangwei_updt")
    public String gangwei_updt(Model model,String id){
        Post post=postDao.selectByPrimaryKey(id);
        List<Company> companies=companyDao.selectAll();
        model.addAttribute("companies",companies);
        model.addAttribute("gangwei",post);
        return "backstage/gangwei_updt";

    }
    @RequestMapping("link_updt")
    public String link_updt(Model model,String id){
        Link link=linkDao.selectByPrimaryKey(id);
        model.addAttribute("link",link);
        return "backstage/lianjie_updt";

    }
    @RequestMapping("gangwei_dele")
    public String gangwei_dele(String id){
        postDao.deleteByPrimaryKey(id);

        return "redirect:/gangwei_list";

    }
    @RequestMapping("link_dele")
    public String link_dele(String id){
        linkDao.deleteByPrimaryKey(id);

        return "redirect:/link_list";

    }
    @RequestMapping("update_form")
    public String update_form(Post post){
        postDao.updateByPrimaryKeySelective(post);
        return "redirect:/gangwei_list";

    }
    @RequestMapping("update_link_form")
    public String update_link_form(Link link){
        linkDao.updateByPrimaryKeySelective(link);
        return "redirect:/link_list";

    }
    @RequestMapping("gangwei_add")
    public String gangwei_add(Model model,String id){
        List<Company> companies=companyDao.selectAll();
        model.addAttribute("companies",companies);

        return "backstage/gangwei_add";

    }
    @RequestMapping("link_add")
    public String link_add(Model model,String id){



        return "backstage/lianjie_add";

    }
    @RequestMapping("add_form")
    public String add_form(Post post){
        post.setId(UUID.randomUUID().toString());
        SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");

        post.setAddDate(sdf.format(new Date()));
        postDao.insertSelective(post);
        return "redirect:/gangwei_list";

    }
    @RequestMapping("add_link_form")
    public String add_link_form(Link link){
        link.setID(UUID.randomUUID().toString());
       linkDao.insertSelective(link);

        return "redirect:/link_list";

    }
    @ResponseBody
    @RequestMapping("updatepwd")
    public String updatepwd(@ModelAttribute User user,String newpwd,Model model){
        user.setPassword(newpwd);
        userDao.updateByPrimaryKeySelective(user);

        return "1";

    }

    @RequestMapping("query")
    public String query(@RequestParam(value ="company",required = false) String company,@RequestParam(value ="jobname",required = false) String jobname,Model model){
        Post post=new Post();
        post.setCompanyId("%"+company+"%");
        post.setName("%"+jobname+"%");
        List<Post> posts=postDao.selectPost(post);
        model.addAttribute("gangwei",posts);
        return "backstage/gangwei_list";

    }

    @RequestMapping("linkquery")
    public String linkquery(@RequestParam(value ="linkname",required = false) String linkname,Model model){
        Link link=new Link();
        link.setNAME("%"+linkname+"%");
        List<Link> links=linkDao.selectLink(link);
        model.addAttribute("link",links);
        return "backstage/lianjie_list";

    }

    @RequestMapping("login")
    public String login(Model model){

        return "backstage/login";

    }

    @RequestMapping("logincheck")
    public String logincheck(String username,String password,Model model){
        User user=userDao.login(username,password);
        if(user!=null){
            model.addAttribute("user",user);
            return "backstage/main";
        }

        else {
            model.addAttribute("loginErroe", "用户名或密码错误");
            return "backstage/login";
        }
    }

}
