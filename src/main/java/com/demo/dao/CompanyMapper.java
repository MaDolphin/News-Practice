package com.demo.dao;

import com.demo.entity.Company;
import com.github.miemiedev.mybatis.paginator.domain.PageBounds;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;
import java.util.jar.Attributes;

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

    @Select({
            "select",
            "*",
            "from COMPANY_INFO"
    })
    @ResultMap("BaseResultMap")
    List<Company> selectAll();

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

    @Select({
            "select",
            "*",
            "from COMPANY_INFO"
    })
    @ResultMap("BaseResultMap")
    List<Company> findAllCompanyInfo(PageBounds pageBounds);

    @Select({
            "select",
            "*",
            "from COMPANY_INFO where rownum<=5"
    })
    @ResultMap("BaseResultMap")
    List<Company> findAllCompanyInfoTop();

    Company searchCompanyInfo(String ID);

    int searchCompanyTotalCount();
    List<Company> query(String NAME,String INDUSTRY);
}