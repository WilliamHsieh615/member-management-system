package com.demo.domain;

import java.io.Serializable;

public class Member implements Serializable {

	private static final long serialVersionUID = 1L;

	public enum Sex {
		MALE, FEMALE, HIDE
	}

	private String name;
	private String sex;
	private String birthday;
	private String phone;
	private String mail;
	private String zipcode;
	private String county;
	private String district;
	private String addressDetail;
	private String educational;
	private String content;
	private boolean agreePolicy;
	private boolean agreeInfo;

	public Member() {
		super();
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSex() {
		return sex;
	}
	
	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public String getCounty() {
		return county;
	}

	public void setCounty(String county) {
		this.county = county;
	}

	public String getDistrict() {
		return district;
	}

	public void setDistrict(String district) {
		this.district = district;
	}

	public String getAddressDetail() {
		return addressDetail;
	}

	public void setAddressDetail(String addressDetail) {
		this.addressDetail = addressDetail;
	}

	public String getEducational() {
		return educational;
	}

	public void setEducational(String educational) {
		this.educational = educational;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public boolean isAgreePolicy() {
		return agreePolicy;
	}

	public void setAgreePolicy(boolean agreePolicy) {
		this.agreePolicy = agreePolicy;
	}

	public boolean isAgreeInfo() {
		return agreeInfo;
	}

	public void setAgreeInfo(boolean agreeInfo) {
		this.agreeInfo = agreeInfo;
	}

	@Override
	public String toString() {
		return "Member{" + "name='" + name + '\'' + ", sex=" + sex + ", birthday='" + birthday + '\'' + ", phone='"
				+ phone + '\'' + ", mail='" + mail + '\'' + ", zipcode='" + zipcode + '\'' + ", county='" + county
				+ '\'' + ", district='" + district + '\'' + ", addressDetail='" + addressDetail + '\''
				+ ", educational='" + educational + '\'' + ", content='" + content + '\'' + ", agreePolicy="
				+ agreePolicy + ", agreeInfo=" + agreeInfo + '}';
	}
}


