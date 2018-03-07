package org.hdivsamples.mvc.bean;

import java.io.Serializable;

public class Account implements Serializable {

	private String userId;
	private String email;
	private String firstName;
	private String lastName;
	private String status;
	private String address1;
	private String address2;
	private String city;
	private String state;
	private String zip;
	private String country;
	private String phone;
	private String favouriteCategoryId;
	private String languagePreference;
	private boolean listOption;
	private boolean bannerOption;
	private String bannerName;

	public String getUserId() {
		return this.userId;
	}

	public void setUserId(String paramString) {
		this.userId = paramString;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String paramString) {
		this.email = paramString;
	}

	public String getFirstName() {
		return this.firstName;
	}

	public void setFirstName(String paramString) {
		this.firstName = paramString;
	}

	public String getLastName() {
		return this.lastName;
	}

	public void setLastName(String paramString) {
		this.lastName = paramString;
	}

	public String getStatus() {
		return this.status;
	}

	public void setStatus(String paramString) {
		this.status = paramString;
	}

	public String getAddress1() {
		return this.address1;
	}

	public void setAddress1(String paramString) {
		this.address1 = paramString;
	}

	public String getAddress2() {
		return this.address2;
	}

	public void setAddress2(String paramString) {
		this.address2 = paramString;
	}

	public String getCity() {
		return this.city;
	}

	public void setCity(String paramString) {
		this.city = paramString;
	}

	public String getState() {
		return this.state;
	}

	public void setState(String paramString) {
		this.state = paramString;
	}

	public String getZip() {
		return this.zip;
	}

	public void setZip(String paramString) {
		this.zip = paramString;
	}

	public String getCountry() {
		return this.country;
	}

	public void setCountry(String paramString) {
		this.country = paramString;
	}

	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String paramString) {
		this.phone = paramString;
	}

	public String getFavouriteCategoryId() {
		return this.favouriteCategoryId;
	}

	public void setFavouriteCategoryId(String paramString) {
		this.favouriteCategoryId = paramString;
	}

	public String getLanguagePreference() {
		return this.languagePreference;
	}

	public void setLanguagePreference(String paramString) {
		this.languagePreference = paramString;
	}

	public boolean isListOption() {
		return this.listOption;
	}

	public void setListOption(boolean paramBoolean) {
		this.listOption = paramBoolean;
	}

	public boolean isBannerOption() {
		return this.bannerOption;
	}

	public void setBannerOption(boolean paramBoolean) {
		this.bannerOption = paramBoolean;
	}

	public String getBannerName() {
		return this.bannerName;
	}

	public void setBannerName(String paramString) {
		this.bannerName = paramString;
	}
}
