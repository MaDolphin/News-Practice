package com.demo.dao;

import com.demo.entity.Link;
import com.demo.entity.Post;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

public interface LinkMapper {
    @Delete({
        "delete from LINK_INFO",
        "where ID = #{ID,jdbcType=VARCHAR}"
    })
    int deleteByPrimaryKey(String ID);

    @Insert({
        "insert into LINK_INFO (ID, NAME, ",
        "URL)",
        "values (#{ID,jdbcType=VARCHAR}, #{NAME,jdbcType=VARCHAR}, ",
        "#{URL,jdbcType=VARCHAR})"
    })
    int insert(Link record);

    int insertSelective(Link record);

    @Select({
        "select",
        "ID, NAME, URL",
        "from LINK_INFO",
        "where ID = #{ID,jdbcType=VARCHAR}"
    })
    @ResultMap("BaseResultMap")
    Link selectByPrimaryKey(String ID);

    int updateByPrimaryKeySelective(Link record);

    @Update({
        "update LINK_INFO",
        "set NAME = #{NAME,jdbcType=VARCHAR},",
          "URL = #{URL,jdbcType=VARCHAR}",
        "where ID = #{ID,jdbcType=VARCHAR}"
    })
    int updateByPrimaryKey(Link record);

    @Select({
            "select",
            "*",
            "from LINK_INFO where rownum<=5"
    })
    @ResultMap("BaseResultMap")
    List<Link> findAllLinkInfoTop();
}