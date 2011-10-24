package org.hdiv.samples.mvc.bean;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class Order implements Serializable {
	
	private int orderId;
	private String username;
	private Date orderDate;
	private String shipAddress1;
	private String shipAddress2;
	private String shipCity;
	private String shipState;
	private String shipZip;
	private String shipCountry;
	private String billAddress1;
	private String billAddress2;
	private String billCity;
	private String billState;
	private String billZip;
	private String billCountry;
	private String courier;
	private double totalPrice;
	private String billToFirstName;
	private String billToLastName;
	private String shipToFirstName;
	private String shipToLastName;
	private String creditCard;
	private String expiryDate;
	private String cardType;
	private String locale;
	private String status;
	private List lineItems = new ArrayList();
	private boolean paid;

	public boolean isPaid() {
		return paid;
	}

	public void setPaid(boolean paid) {
		this.paid = paid;
	}

	public int getOrderId() {
		return this.orderId;
	}

	public void setOrderId(int paramInt) {
		this.orderId = paramInt;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String paramString) {
		this.username = paramString;
	}

	public Date getOrderDate() {
		return this.orderDate;
	}

	public void setOrderDate(Date paramDate) {
		this.orderDate = paramDate;
	}

	public String getShipAddress1() {
		return this.shipAddress1;
	}

	public void setShipAddress1(String paramString) {
		this.shipAddress1 = paramString;
	}

	public String getShipAddress2() {
		return this.shipAddress2;
	}

	public void setShipAddress2(String paramString) {
		this.shipAddress2 = paramString;
	}

	public String getShipCity() {
		return this.shipCity;
	}

	public void setShipCity(String paramString) {
		this.shipCity = paramString;
	}

	public String getShipState() {
		return this.shipState;
	}

	public void setShipState(String paramString) {
		this.shipState = paramString;
	}

	public String getShipZip() {
		return this.shipZip;
	}

	public void setShipZip(String paramString) {
		this.shipZip = paramString;
	}

	public String getShipCountry() {
		return this.shipCountry;
	}

	public void setShipCountry(String paramString) {
		this.shipCountry = paramString;
	}

	public String getBillAddress1() {
		return this.billAddress1;
	}

	public void setBillAddress1(String paramString) {
		this.billAddress1 = paramString;
	}

	public String getBillAddress2() {
		return this.billAddress2;
	}

	public void setBillAddress2(String paramString) {
		this.billAddress2 = paramString;
	}

	public String getBillCity() {
		return this.billCity;
	}

	public void setBillCity(String paramString) {
		this.billCity = paramString;
	}

	public String getBillState() {
		return this.billState;
	}

	public void setBillState(String paramString) {
		this.billState = paramString;
	}

	public String getBillZip() {
		return this.billZip;
	}

	public void setBillZip(String paramString) {
		this.billZip = paramString;
	}

	public String getBillCountry() {
		return this.billCountry;
	}

	public void setBillCountry(String paramString) {
		this.billCountry = paramString;
	}

	public String getCourier() {
		return this.courier;
	}

	public void setCourier(String paramString) {
		this.courier = paramString;
	}

	public double getTotalPrice() {
		return this.totalPrice;
	}

	public void setTotalPrice(double paramDouble) {
		this.totalPrice = paramDouble;
	}

	public String getBillToFirstName() {
		return this.billToFirstName;
	}

	public void setBillToFirstName(String paramString) {
		this.billToFirstName = paramString;
	}

	public String getBillToLastName() {
		return this.billToLastName;
	}

	public void setBillToLastName(String paramString) {
		this.billToLastName = paramString;
	}

	public String getShipToFirstName() {
		return this.shipToFirstName;
	}

	public void setShipToFirstName(String paramString) {
		this.shipToFirstName = paramString;
	}

	public String getShipToLastName() {
		return this.shipToLastName;
	}

	public void setShipToLastName(String paramString) {
		this.shipToLastName = paramString;
	}

	public String getCreditCard() {
		return this.creditCard;
	}

	public void setCreditCard(String paramString) {
		this.creditCard = paramString;
	}

	public String getExpiryDate() {
		return this.expiryDate;
	}

	public void setExpiryDate(String paramString) {
		this.expiryDate = paramString;
	}

	public String getCardType() {
		return this.cardType;
	}

	public void setCardType(String paramString) {
		this.cardType = paramString;
	}

	public String getLocale() {
		return this.locale;
	}

	public void setLocale(String paramString) {
		this.locale = paramString;
	}

	public String getStatus() {
		return this.status;
	}

	public void setStatus(String paramString) {
		this.status = paramString;
	}

	public void setLineItems(List paramList) {
		this.lineItems = paramList;
	}

	public List getLineItems() {
		return this.lineItems;
	}
}