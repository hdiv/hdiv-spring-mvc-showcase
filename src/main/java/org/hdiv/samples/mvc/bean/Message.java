package org.hdiv.samples.mvc.bean;

import java.io.Serializable;

public class Message implements Serializable {

	/**
	 * Message text
	 */
	private String msgText;

	/**
	 * @return the msgText
	 */
	public String getMsgText() {
		return msgText;
	}

	/**
	 * @param msgText
	 *            the msgText to set
	 */
	public void setMsgText(String msgText) {
		this.msgText = msgText;
	}

}
