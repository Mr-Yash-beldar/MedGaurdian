package com.Yash.Medguardian;
public class RowData {
	private String image;
	private String mname;
	private String oname;
	private int distance;
	private String add;
	
	
	public RowData(String image, String mname, String oname, int distance,
			String add) {
		super();
		this.image = image;
//		this.eid = eid;
		this.mname = mname;
//		this.hourprice = hourprice;
//		this.dayprice = dayprice;
		this.oname = oname;
		this.distance = distance;
		this.add = add;
	}
	public String getImage() {
		return image;
	}


	public String getMname() {
		return mname;
	}


	public String getOname() {
		return oname;
	}


	public int getDistance() {
		return distance;
	}


	public String getAdd() {
		return add;
	}

	
	
	
	
}
