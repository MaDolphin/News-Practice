package com.demo.dao;

import com.demo.entity.Bulletin_info;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

public interface Bulletin_infoMapper {
    @Delete({
        "delete from BULLETIN_INFO",
        "where ID = #{ID,jdbcType=VARCHAR}"
    })
    int deleteByPrimaryKey(String ID);

    @Insert({
        "insert into BULLETIN_INFO (ID, CONTENT, ",
        "ADD_DATE, CREATOR)",
        "values (#{ID,jdbcType=VARCHAR}, #{CONTENT,jdbcType=VARCHAR}, ",
        "#{ADD_DATE,jdbcType=TIMESTAMP}, #{CREATOR,jdbcType=VARCHAR})"
    })
    int insert(Bulletin_info record);

    int insertSelective(Bulletin_info record);

    @Select({
        "select",
        "ID, CONTENT, ADD_DATE, CREATOR",
        "from BULLETIN_INFO",
        "where ID = #{ID,jdbcType=VARCHAR}"
    })
    @ResultMap("BaseResultMap")
    Bulletin_info selectByPrimaryKey(String ID);

    int updateByPrimaryKeySelective(Bulletin_info record);

    @Update({
        "update BULLETIN_INFO",
        "set CONTENT = #{CONTENT,jdbcType=VARCHAR},",
          "ADD_DATE = #{ADD_DATE,jdbcType=TIMESTAMP},",
          "CREATOR = #{CREATOR,jdbcType=VARCHAR}",
        "where ID = #{ID,jdbcType=VARCHAR}"
    })
    int updateByPrimaryKey(Bulletin_info record);
}