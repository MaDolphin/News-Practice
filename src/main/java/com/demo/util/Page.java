package com.demo.util;

/**
 * Created by xfcq on 2016/10/13.
 */
import java.util.List;

public class Page {

    public static final int PER_PAGE = 3; //每页多少条

    private List listData;  //显示的数据

    private Integer currPage = 1; //当前页数

    private int totalCount; //总记录数 从数据库查询

    private int totalPage;  //总页数 计算出来

    private int startRowNum; //起初记录

    private int endRowNum;   //终止记录

    public void initStartRowNum(){
        this.startRowNum = (currPage-1)*Page.PER_PAGE+1;
    }

    public void initEndRowNum(){
        this.endRowNum = Page.PER_PAGE * currPage;
    }

    /**
     * 初始化总页数(能整除就是除出来的多少页，不能整除就+1页)
     */
    public void initPage(){

        if(totalCount % PER_PAGE == 0){
            totalPage = totalCount/PER_PAGE;
        }else{
            totalPage = totalCount/PER_PAGE+1;
        }

    }

    public Integer getCurrPage() {
        return currPage;
    }

    public void setCurrPage(Integer currPage) {
        if(currPage == null) currPage = 1;
        this.currPage = currPage;
    }

    public int getTotalCount() {
        return totalCount;
    }

    public void setTotalCount(int totalCount) {
        this.totalCount = totalCount;
    }

    public int getTotalPage() {
        return totalPage;
    }

    public void setTotalPage(int totalPage) {
        this.totalPage = totalPage;
    }

    public List getListData() {
        return listData;
    }

    public void setListData(List listData) {
        this.listData = listData;
    }

    public int getStartRowNum() {
        return startRowNum;
    }

    public void setStartRowNum(int startRowNum) {
        this.startRowNum = startRowNum;
    }

    public int getEndRowNum() {
        return endRowNum;
    }

    public void setEndRowNum(int endRowNum) {
        this.endRowNum = endRowNum;
    }

}