package model;

public class Board {
	private String title;
	private String content;
	private String fileName;
	private String userId;
	private String writingNo;
	private String date;
	private int recommend;
	private int notRecommend;
	
	public String removeTag(String str) {
		str = str.replace("<", "&lt;");
		str = str.replace(">", "&gt;");
		
		return str;
	}
	public Board(String title, String content, String userId) {
		this.title = removeTag(title);
		this.content = removeTag(content);
		this.userId = userId;
	}
	public Board(String title, String content, String userId,
			String writingNo, String date) {
		this.title = removeTag(title);
		this.content = removeTag(content);
		this.userId = removeTag(userId);
		this.writingNo = removeTag(writingNo);
		this.date = removeTag(date);
	}


	public String getTitle() {
		return title;
	}

	public String getContent() {
		return content;
	}


	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public String getUserId() {
		return userId;
	}


	public String getWritingNo() {
		return writingNo;
	}



	public void setWritingNo(String writingNo) {
		this.writingNo = writingNo;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public void setRecommend(int recommend) {
		this.recommend = recommend;
	}
	public void setNotRecommend(int notRecommend) {
		this.notRecommend = notRecommend;
	}
	public int getRecommend() {
		return recommend;
	}
	public int getNotRecommend() {
		return notRecommend;
	}
	
	@Override
	public String toString() {
		return "Board [title=" + title + ", content=" + content + ", fileName="
				+ fileName + ", userId=" + userId + ", writingNo=" + writingNo
				+ ", date=" + date + "]";
	}


}
