package com.javen.model;

import java.util.List;

public class PageBean<T> {
	private int pageNum;//当前页为第几页
	private int pageSize;//每页显示的记录数
	private int totalRecord;//总共的记录数
	private int totalPage;//总页数
	private int startIndex;//开始索引,从数据库的第几行开始拿数据 ，有了startIndex和pageSize就知道了limit语句的
	//两个数据就能获得每页需要显示的数据
	
	private List<T> list;//将每页要显示的数据放在list集合中
	
	private int start;//分页中显示的开始页数和结束页数
	private int end;
	
	//通过pageNum,pageSize,totalRecord计算totalPage 和startIndex
	public PageBean(int pageNum, int pageSize,int totalRecord) {
		this.pageNum=pageNum;
		this.pageSize=pageSize;
		this.totalRecord=totalRecord;
		
		//totalPage
		if(totalRecord%pageSize==0) {
			this.totalPage=totalRecord/pageSize;
		}else {
			this.totalPage=totalRecord/pageSize+1;
		}
		this.startIndex=(pageNum-1)*pageSize;
		this.start=1;
		this.end=3;
		if (totalPage<=3) {
			this.end=this.totalPage;
		}else {
			this.start=pageNum-1;
			this.end=pageNum+1;
			if(start<0) {
				this.start=1;
				this.end=3;
			}
			if(end>this.totalPage) {
				this.end=totalPage;
				this.start=end-3;
			}
		}
	}

	public int getPageNum() {
		return pageNum;
	}

	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getTotalRecord() {
		return totalRecord;
	}

	public void setTotalRecord(int totalRecord) {
		this.totalRecord = totalRecord;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public int getStartIndex() {
		return startIndex;
	}

	public void setStartIndex(int startIndex) {
		this.startIndex = startIndex;
	}

	public List<T> getList() {
		return list;
	}

	public void setList(List<T> list) {
		this.list = list;
	}

	public int getStart() {
		return start;
	}

	public void setStart(int start) {
		this.start = start;
	}

	public int getEnd() {
		return end;
	}

	public void setEnd(int end) {
		this.end = end;
	}
	
}
