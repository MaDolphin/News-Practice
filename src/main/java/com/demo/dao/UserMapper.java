package com.demo.dao;

import com.demo.entity.User;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

public interface UserMapper {
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
    int insert(User record);

    int insertSelective(User record);

    @Select({
        "select",
        "ID, USERNAME, PASSWORD, STATUS, ADD_DATE",
        "from USER_INFO",
        "where ID = #{id,jdbcType=VARCHAR}"
    })
    @ResultMap("BaseResultMap")

    User selectByPrimaryKey(String id);

    @Select({
            "select * from USER_INFO where username like #{username,jdbcType=VARCHAR}"

    })
    @ResultMap("BaseResultMap")
    List<User> selectByPrimaryKey2(String username);


    @Select({
            "select * from USER_INFO "
    })
    @ResultMap("BaseResultMap")
    List<User> selectAllSimple();




    @Select({
          "select * from USER_INFO where username=#{0} and password=#{1} and status=1"
    })
    @ResultMap("BaseResultMap")
    User login(String name,String pwd);

    int updateByPrimaryKeySelective(User record);

    @Update({
        "update USER_INFO",
        "set USERNAME = #{username,jdbcType=VARCHAR},",
          "PASSWORD = #{password,jdbcType=VARCHAR},",
          "STATUS = #{status,jdbcType=CHAR},",
          "ADD_DATE = #{addDate,jdbcType=TIMESTAMP}",
        "where ID = #{id,jdbcType=VARCHAR}"
    })
    int updateByPrimaryKey(User record);

    @Update({
            "update USER_INFO",
            "set USERNAME = #{1},",
            "PASSWORD = #{2}",
            "where ID = #{0}"
    })
    int updateByPrimaryKey2(String id,String username,String password);
}