package com.demo.dao;

import com.demo.entity.Post_info;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

public interface Post_infoMapper {
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
    int insert(Post_info record);

    int insertSelective(Post_info record);

    @Select({
        "select",
        "ID, COMPANY_ID, NAME, DEMAND_NUMBER, SEX, EDUCATION, SALARY, WORKPLACE, DESCRIPTION, ",
        "ADD_DATE",
        "from POST_INFO",
        "where ID = #{id,jdbcType=VARCHAR}"
    })
    @ResultMap("BaseResultMap")
    Post_info selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Post_info record);

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
    int updateByPrimaryKey(Post_info record);
}