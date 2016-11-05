
package com.lin.entity;


public class DanweiEntity
{
	public DanweiEntity()
	{
	}
	
	private String id;
	private String name;
	private String pdfurl;
	private String orderbyzuzhitu;
	private String orgchartname;
	
	public String getOrgchartname() {
		return orgchartname;
	}

	public void setOrgchartname(String orgchartname) {
		this.orgchartname = orgchartname;
	}

	public String getPdfurl() {
		return pdfurl;
	}

	public void setPdfurl(String pdfurl) {
		this.pdfurl = pdfurl;
	}

	public String getOrderbyzuzhitu() {
		return orderbyzuzhitu;
	}

	public void setOrderbyzuzhitu(String orderbyzuzhitu) {
		this.orderbyzuzhitu = orderbyzuzhitu;
	}


	public String getId()
	{
		return id;
	}

	public void setId(String id)
	{
		this.id = id;
	}

	public String getName()
	{
		return name;
	}

	public void setName(String name)
	{
		this.name = name;
	}

}
