package com.mycompany.webapp.dto;

public class CartPager {
	private int totalRows;		//전체 행수
	private int totalPageNo;	//전체 페이지 수
	private int totalGroupNo;	//전체 그룹 수
	private int startPageNo;	//그룹의 시작 페이스 번호
	private int endPageNo;		//그룹의 끝 페이지 번호
	private int pageNo;			//현재 페이지 번호
	private int pagesPerGroup;	//그룹당 페이지 수
	private int groupNo;		//현재 그룹 번호
	private int rowsPerPage;	//페이지당 행 수 
	private int startRowNo;     //페이지의 시작 행 번호
	private int endRowNo;       //페이지의 끝 행 번호
	
	
	


	public CartPager(int rowsPerPage, int pagesPerGroup, int totalRows, int pageNo) {
		this.rowsPerPage = rowsPerPage; //한 페이지 전체 행 수
		this.pagesPerGroup = pagesPerGroup; //그룹당 몇개의 페이지보여줌
		this.totalRows = totalRows; //실제 데이터베이스 안의 전체 행 수
		this.pageNo = pageNo; //원하는 페이지

		totalPageNo = totalRows / rowsPerPage;
		if(totalRows % rowsPerPage != 0) totalPageNo++;
		
		totalGroupNo = totalPageNo / pagesPerGroup;
		if(totalPageNo % pagesPerGroup != 0) totalGroupNo++;
		
		groupNo = (pageNo - 1) / pagesPerGroup + 1; //자투리가 남으면 1을 더해줘라
		
		startPageNo = (groupNo-1) * pagesPerGroup + 1;
		
		endPageNo = startPageNo + pagesPerGroup - 1;
		if(groupNo == totalGroupNo) endPageNo = totalPageNo;
		
		startRowNo = (pageNo-1) *rowsPerPage + 1;
		endRowNo = pageNo*rowsPerPage;
	}

	public int getTotalRows() {
		return totalRows;
	}

	public int getTotalPageNo() {
		return totalPageNo;
	}

	public int getTotalGroupNo() {
		return totalGroupNo;
	}

	public int getStartPageNo() {
		return startPageNo;
	}

	public int getEndPageNo() {
		return endPageNo;
	}

	public int getPageNo() {
		return pageNo;
	}

	public int getPagesPerGroup() {
		return pagesPerGroup;
	}

	public int getGroupNo() {
		return groupNo;
	}

	public int getRowsPerPage() {
		return rowsPerPage;
	}

	public int getStartRowNo() {
		return startRowNo;
	}

	public int getEndRowNo() {
		return endRowNo;
	}
}







