package com.demo.dao;

import com.demo.entity.Company;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

public interface CompanyMapper {
    @Delete({
        "delete from COMPANY_INFO",
        "where ID = #{ID,jdbcType=VARCHAR}"
    })
    int deleteByPrimaryKey(String ID);

    @Insert({
        "insert into COMPANY_INFO (ID, NAME, ",
        "FUNDS, TEL, ADDRESS, ",
        "SCALE, INDUSTRY, ",
        "DESCRIPTION, ADD_DATE)",
        "values (#{ID,jdbcType=VARCHAR}, #{NAME,jdbcType=VARCHAR}, ",
        "#{FUNDS,jdbcType=VARCHAR}, #{TEL,jdbcType=VARCHAR}, #{ADDRESS,jdbcType=VARCHAR}, ",
        "#{SCALE,jdbcType=VARCHAR}, #{INDUSTRY,jdbcType=VARCHAR}, ",
        "#{DESCRIPTION,jdbcType=VARCHAR}, #{ADD_DATE,jdbcType=TIMESTAMP})"
    })
    int insert(Company record);

    int insertSelective(Company record);

    @Select({
        "select",
        "ID, NAME, FUNDS, TEL, ADDRESS, SCALE, INDUSTRY, DESCRIPTION, ADD_DATE",
        "from COMPANY_INFO",
        "where ID = #{ID,jdbcType=VARCHAR}"
    })
    @ResultMap("BaseResultMap")
    Company selectByPrimaryKey(String ID);

    int updateByPrimaryKeySelective(Company record);

    @Update({
        "update COMPANY_INFO",
        "set NAME = #{NAME,jdbcType=VARCHAR},",
          "FUNDS = #{FUNDS,jdbcType=VARCHAR},",
          "TEL = #{TEL,jdbcType=VARCHAR},",
          "ADDRESS = #{ADDRESS,jdbcType=VARCHAR},",
          "SCALE = #{SCALE,jdbcType=VARCHAR},",
          "INDUSTRY = #{INDUSTRY,jdbcType=VARCHAR},",
          "DESCRIPTION = #{DESCRIPTION,jdbcType=VARCHAR},",
          "ADD_DATE = #{ADD_DATE,jdbcType=TIMESTAMP}",
        "where ID = #{ID,jdbcType=VARCHAR}"
    })
    int updateByPrimaryKey(Company record);
}