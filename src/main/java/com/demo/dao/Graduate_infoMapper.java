package com.demo.dao;

import com.demo.entity.Graduate_info;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

public interface Graduate_infoMapper {
    @Delete({
        "delete from GRADUATE_INFO",
        "where ID = #{id,jdbcType=VARCHAR}"
    })
    int deleteByPrimaryKey(String id);

    @Insert({
        "insert into GRADUATE_INFO (ID, NAME, ",
        "SEX, ADD_DATE, UNIVERSITY, ",
        "ADDRESS, BIRTHDAY, ",
        "TEL, DESCRIPTION, ",
        "PHOTO)",
        "values (#{id,jdbcType=VARCHAR}, #{name,jdbcType=VARCHAR}, ",
        "#{sex,jdbcType=CHAR}, #{addDate,jdbcType=TIMESTAMP}, #{university,jdbcType=VARCHAR}, ",
        "#{address,jdbcType=VARCHAR}, #{birthday,jdbcType=TIMESTAMP}, ",
        "#{tel,jdbcType=VARCHAR}, #{description,jdbcType=VARCHAR}, ",
        "#{photo,jdbcType=VARCHAR})"
    })
    int insert(Graduate_info record);

    int insertSelective(Graduate_info record);

    @Select({
        "select",
        "ID, NAME, SEX, ADD_DATE, UNIVERSITY, ADDRESS, BIRTHDAY, TEL, DESCRIPTION, PHOTO",
        "from GRADUATE_INFO",
        "where ID = #{id,jdbcType=VARCHAR}"
    })
    @ResultMap("BaseResultMap")
    Graduate_info selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(Graduate_info record);

    @Update({
        "update GRADUATE_INFO",
        "set NAME = #{name,jdbcType=VARCHAR},",
          "SEX = #{sex,jdbcType=CHAR},",
          "ADD_DATE = #{addDate,jdbcType=TIMESTAMP},",
          "UNIVERSITY = #{university,jdbcType=VARCHAR},",
          "ADDRESS = #{address,jdbcType=VARCHAR},",
          "BIRTHDAY = #{birthday,jdbcType=TIMESTAMP},",
          "TEL = #{tel,jdbcType=VARCHAR},",
          "DESCRIPTION = #{description,jdbcType=VARCHAR},",
          "PHOTO = #{photo,jdbcType=VARCHAR}",
        "where ID = #{id,jdbcType=VARCHAR}"
    })
    int updateByPrimaryKey(Graduate_info record);
}