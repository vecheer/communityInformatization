package com.vecheer.domain;

public class Pager {

    //当前页码
    private int currentPage = 1;

    //总记录数
    private int totalResults = 0;

    // 每页记录数
    private int pageSize = 10;

    //实例化分页bean
    public Pager() {}

    //含参构造函数
    public Pager(int currentPage, int totalResults, int pageSize) {
        this.currentPage = currentPage;
        this.totalResults = totalResults;
        this.pageSize = pageSize;
    }

    //当前页码
    public int getCurrentPage() {
        return currentPage;
    }

    //当前页码
    public void setCurrentPage(int currentPage) {
        this.currentPage = currentPage;
    }

    //总页数
    public int getTotalPages() {
        return (int) Math.ceil(totalResults / (double) pageSize);
    }

    //开始记录数
    public int getStartResults() {
        return (currentPage - 1) * pageSize;
    }

    //总记录数
    public int getTotalResults() {
        return totalResults;
    }

    //总记录数
    public void setTotalResults(int totalResults) {
        this.totalResults = totalResults;
    }

    //每页记录数
    public int getPageSize() {
        return pageSize;
    }

    //每页记录数
    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    //是否有上页
    public boolean hasPrevPages() {
        return currentPage > 1;
    }

    //是否有下页
    public boolean hasNextPages() {
        return currentPage < getTotalPages();
    }
}