package com.demo.dao;

import com.demo.entity.Company;
import com.demo.entity.Post;
import com.github.miemiedev.mybatis.paginator.domain.PageBounds;
import org.apache.ibatis.annotations.*;

import java.util.List;

import java.util.List;

import java.util.List;

public interface PostMapper {
    @Delete({
        "delete from POST_INFO",
        "where ID = #{id,jdbcType=VARCHAR}"
    })
    int deleteByPrimaryKey(String id);

    @Insert({
        "insert into POST_INFO (ID, COMPANY_ID, ",
        "NAME, DEMAND_NUMBER, ",
        "SEX, EDUCATION, ",
        "SALARY, WORKPLACE, ",
        "DESCRIPTION, ADD_DATE)",
        "values (#{id,jdbcType=VARCHAR}, #{companyId,jdbcType=VARCHAR}, ",
        "#{name,jdbcType=VARCHAR}, #{demandNumber,jdbcType=VARCHAR}, ",
        "#{sex,jdbcType=VARCHAR}, #{education,jdbcType=VARCHAR}, ",
        "#{salary,jdbcType=VARCHAR}, #{workplace,jdbcType=VARCHAR}, ",
        "#{description,jdbcType=VARCHAR}, #{addDate,jdbcType=CHAR})"
    })
    int insert(Post record);

    int insertSelective(Post record);

    @Select({
        "select",
        "ID, COMPANY_ID, NAME, DEMAND_NUMBER, SEX, EDUCATION, SALARY, WORKPLACE, DESCRIPTION, ",
        "ADD_DATE",
        "from POST_INFO",
        "where ID = #{id,jdbcType=VARCHAR}"
    })
    @ResultMap("BaseResultMap")
    Post selectByPrimaryKey(String id);

    @Select({
            "select",
            "p.*,com.ID as COMID,com.NAME as COMNAME",
            "from POST_INFO p inner join COMPANY_INFO com on p.COMPANY_ID like com.ID "
    })
    @ResultMap("BaseResultMap")
    List<Post> selectAll();


    List<Post> selectPost(Post post);

    int updateByPrimaryKeySelective(Post record);

    @Update({
        "update POST_INFO",
        "set COMPANY_ID = #{companyId,jdbcType=VARCHAR},",
          "NAME = #{name,jdbcType=VARCHAR},",
          "DEMAND_NUMBER = #{demandNumber,jdbcType=VARCHAR},",
          "SEX = #{sex,jdbcType=VARCHAR},",
          "EDUCATION = #{education,jdbcType=VARCHAR},",
          "SALARY = #{salary,jdbcType=VARCHAR},",
          "WORKPLACE = #{workplace,jdbcType=VARCHAR},",
          "DESCRIPTION = #{description,jdbcType=VARCHAR},",
          "ADD_DATE = #{addDate,jdbcType=CHAR}",
        "where ID = #{id,jdbcType=VARCHAR}"
    })
    int updateByPrimaryKey(Post record);

/*    @Select({
            "select",
            "*",
            "from POST_INFO"
    })
    @ResultMap("BaseResultMap")
    List<Post> findAllPostInfo();*/

   /* @Select({
            "select",
            "*",
            "from POST_INFO"
    })
    @ResultMap("BaseResultMap")*/
    List<Post> searchPostInfo(@Param(value = "id") String id,@Param(value = "name") String name);

    @Select({
            "select",
            "*",
            "from POST_INFO"
    })
    @ResultMap("BaseResultMap")
    List<Post> findAllPostInfo(PageBounds pageBounds);

    @Select({
            "select",
            "*",
            "from POST_INFO where rownum<=5"
    })
    @ResultMap("BaseResultMap")
    List<Post> findAllPostInfoTop();

    Post searchPostInfo(String ID);

    int searchPostTotalCount();
}