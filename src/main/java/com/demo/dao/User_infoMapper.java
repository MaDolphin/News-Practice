package com.demo.dao;

import com.demo.entity.User_info;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

public interface User_infoMapper {
    @Delete({
        "delete from USER_INFO",
        "where ID = #{id,jdbcType=VARCHAR}"
    })
    int deleteByPrimaryKey(String id);

    @Insert({
        "insert into USER_INFO (ID, USERNAME, ",
        "PASSWORD, STATUS, ADD_DATE)",
        "values (#{id,jdbcType=VARCHAR}, #{username,jdbcType=VARCHAR}, ",
        "#{password,jdbcType=VARCHAR}, #{status,jdbcType=CHAR}, #{addDate,jdbcType=TIMESTAMP})"
    })
    int insert(User_info record);

    int insertSelective(User_info record);

    @Select({
        "select",
        "ID, USERNAME, PASSWORD, STATUS, ADD_DATE",
        "from USER_INFO",
        "where ID = #{id,jdbcType=VARCHAR}"
    })
    @ResultMap("BaseResultMap")
    User_info selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(User_info record);

    @Update({
        "update USER_INFO",
        "set USERNAME = #{username,jdbcType=VARCHAR},",
          "PASSWORD = #{password,jdbcType=VARCHAR},",
          "STATUS = #{status,jdbcType=CHAR},",
          "ADD_DATE = #{addDate,jdbcType=TIMESTAMP}",
        "where ID = #{id,jdbcType=VARCHAR}"
    })
    int updateByPrimaryKey(User_info record);
}