package com.athensoft.util.commons;

/**
 * @author Athens
 *
 */
public class PageBean {

	/**
	 * default size of page, quantity of items in a page 
	 */
	private static final int DEFAULT_PAGE_SIZE = 6; 

	
	/**
	 *size of page, quantity of items in a page 
	 */
	private int pageSize = DEFAULT_PAGE_SIZE; 

	
	/**
	 * 
	 */
	private int offset = 0; //start, startPageNo

	private int page = 1;

	private int totalPage = 0;

	private int totalCount = 0;

	public PageBean() {
	}

	public PageBean(int page) {
		this.page = page;
	}

	//
	public void setPage(int page) {
		if (page > 0) {
			this.offset = (page - 1) * pageSize;
			this.page = page;
		}
	}

	public int getPage() {
		return this.page;
	}

	public int getPageSize() {
		return this.pageSize;
	}

	public PageBean setPageSize(int pageSize) {
		this.pageSize = pageSize;
		return this;
	}

	/**
	 * @return the start
	 */
	public int getOffset() {
		return this.offset;
	}

	protected void setOffset() {
	}

	/**
	 * @return the totalCount
	 */
	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
		this.totalPage = (int) Math.ceil((totalCount + pageSize - 1) / pageSize);
		this.offset = (page - 1) * pageSize;
	}

	protected void setTotalPage() {

	}

	public int getTotalPage() {
		return this.totalPage;
	}

	public int getLastPage() {
		if (hasLastPage()) {
			return page - 1;
		}
		return page;
	}

	public int getNextPage() {
		if (hasNextPage()) {
			return page + 1;
		}
		return page;
	}

	/**
	 * 
	 */
	public boolean hasNextPage() {
		return page < totalPage;
	}

	/**
	 * 
	 */
	public boolean hasLastPage() {
		return page > 1;
	}

}
