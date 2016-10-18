package com.demo.dao;

import com.demo.entity.News;
import com.demo.entity.Post;
import com.github.miemiedev.mybatis.paginator.domain.PageBounds;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

public interface NewsMapper {
    @Delete({
        "delete from NEWS_INFO",
        "where ID = #{ID,jdbcType=VARCHAR}"
    })
    int deleteByPrimaryKey(String ID);

    @Insert({
        "insert into NEWS_INFO (ID, TITLE, ",
        "CONTENT, ADD_DATE, ",
        "USER_ID, TYPOE, PHOTO)",
        "values (#{ID,jdbcType=VARCHAR}, #{TITLE,jdbcType=VARCHAR}, ",
        "#{CONTENT,jdbcType=VARCHAR}, #{ADD_DATE,jdbcType=TIMESTAMP}, ",
        "#{USER_ID,jdbcType=VARCHAR}, #{TYPOE,jdbcType=CHAR}, #{PHOTO,jdbcType=VARCHAR})"
    })
    int insert(News record);

    int insertSelective(News record);

    @Select({
        "select",
        "ID, TITLE, CONTENT, ADD_DATE, USER_ID, TYPOE, PHOTO",
        "from NEWS_INFO",
        "where ID = #{ID,jdbcType=VARCHAR}"
    })
    @ResultMap("BaseResultMap")
    News selectByPrimaryKey(String ID);

    int updateByPrimaryKeySelective(News record);

    @Update({
        "update NEWS_INFO",
        "set TITLE = #{TITLE,jdbcType=VARCHAR},",
          "CONTENT = #{CONTENT,jdbcType=VARCHAR},",
          "ADD_DATE = #{ADD_DATE,jdbcType=TIMESTAMP},",
          "USER_ID = #{USER_ID,jdbcType=VARCHAR},",
          "TYPOE = #{TYPOE,jdbcType=CHAR},",
          "PHOTO = #{PHOTO,jdbcType=VARCHAR}",
        "where ID = #{ID,jdbcType=VARCHAR}"
    })
    int updateByPrimaryKey(News record);

    @Select({
            "select",
            "*",
            "from NEWS_INFO"
    })
    @ResultMap("BaseResultMap")
    List<News> findAllNewsInfo(PageBounds pageBounds);

    @Select({
            "select",
            "*",
            "from NEWS_INFO where rownum<=5"
    })
    @ResultMap("BaseResultMap")
    List<News> findAllNewsInfoTop();

    News searchNewsInfo(String ID);

    int searchNewsTotalCount();

}