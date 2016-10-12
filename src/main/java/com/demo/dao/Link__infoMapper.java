package com.demo.dao;

import com.demo.entity.Link__info;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

public interface Link__infoMapper {
    @Delete({
        "delete from LINK__INFO",
        "where ID = #{ID,jdbcType=VARCHAR}"
    })
    int deleteByPrimaryKey(String ID);

    @Insert({
        "insert into LINK__INFO (ID, NAME, ",
        "URL)",
        "values (#{ID,jdbcType=VARCHAR}, #{NAME,jdbcType=VARCHAR}, ",
        "#{URL,jdbcType=VARCHAR})"
    })
    int insert(Link__info record);

    int insertSelective(Link__info record);

    @Select({
        "select",
        "ID, NAME, URL",
        "from LINK__INFO",
        "where ID = #{ID,jdbcType=VARCHAR}"
    })
    @ResultMap("BaseResultMap")
    Link__info selectByPrimaryKey(String ID);

    int updateByPrimaryKeySelective(Link__info record);

    @Update({
        "update LINK__INFO",
        "set NAME = #{NAME,jdbcType=VARCHAR},",
          "URL = #{URL,jdbcType=VARCHAR}",
        "where ID = #{ID,jdbcType=VARCHAR}"
    })
    int updateByPrimaryKey(Link__info record);
}