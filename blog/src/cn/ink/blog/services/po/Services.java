package cn.ink.blog.services.po;

public class Services {
	private Integer sid; // id
	private String picUrl; // ͼƬ��ַ
	private String title; // ����
	private String text; // �ı�����
	private String hrefName; // ��������
	private String hrefAdd; // ���ӵ�ַ

	public Integer getSid() {
		return sid;
	}

	public void setSid(Integer sid) {
		this.sid = sid;
	}

	public String getPicUrl() {
		return picUrl;
	}

	public void setPicUrl(String picUrl) {
		this.picUrl = picUrl;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public String getHrefName() {
		return hrefName;
	}

	public void setHrefName(String hrefName) {
		this.hrefName = hrefName;
	}

	public String getHrefAdd() {
		return hrefAdd;
	}

	public void setHrefAdd(String hrefAdd) {
		this.hrefAdd = hrefAdd;
	}

}
