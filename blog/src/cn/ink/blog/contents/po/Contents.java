package cn.ink.blog.contents.po;

// 滑动栏
public class Contents {
	private Integer cid; // id
	private String head; // 标题
	private String text; // 文本内容
	private String herfName; // 链接名称
	private String herfAdd; // 链接地址

	public Integer getCid() {
		return cid;
	}

	public void setCid(Integer cid) {
		this.cid = cid;
	}

	public String getHead() {
		return head;
	}

	public void setHead(String head) {
		this.head = head;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public String getHerfName() {
		return herfName;
	}

	public void setHerfName(String herfName) {
		this.herfName = herfName;
	}

	public String getHerfAdd() {
		return herfAdd;
	}

	public void setHerfAdd(String herfAdd) {
		this.herfAdd = herfAdd;
	}

}
