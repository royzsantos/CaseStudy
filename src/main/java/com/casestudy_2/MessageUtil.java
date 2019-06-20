package com.casestudy_2;

public class MessageUtil {

	public String message;
	
	public MessageUtil(String message){
		this.message = message;
	}
	
	public String printMessage(){
		System.out.println(message);
		return message;
	}
	
}
