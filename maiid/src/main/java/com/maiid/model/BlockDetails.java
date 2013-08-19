package com.maiid.model;

public class BlockDetails {
	private int id;
	private String type;
	private int x;
	private int y;
	private int width;
	private int height;
	private int order;
	private String staticContent;

	public BlockDetails() {

	}

	public BlockDetails(int id, String type, int x, int y, int width, int height,
			int order, String staticContent) {
		super();
		this.id = id;
		this.type = type;
		this.x = x;
		this.y = y;
		this.width = width;
		this.height = height;
		this.order = order;
		this.staticContent = staticContent;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public int getX() {
		return x;
	}

	public void setX(int x) {
		this.x = x;
	}

	public int getY() {
		return y;
	}

	public void setY(int y) {
		this.y = y;
	}

	public int getWidth() {
		return width;
	}

	public void setWidth(int width) {
		this.width = width;
	}

	public int getHeight() {
		return height;
	}

	public void setHeight(int height) {
		this.height = height;
	}

	public String getStaticContent() {
		return staticContent;
	}

	public void setStaticContent(String staticContent) {
		this.staticContent = staticContent;
	}

	public int getOrder() {
		return order;
	}

	public void setOrder(int order) {
		this.order = order;
	}

}
