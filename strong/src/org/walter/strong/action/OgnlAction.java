package org.walter.strong.action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class OgnlAction extends ActionSupport {

	private int age;

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}
	
	@Override
	public String execute() throws Exception {
		age = 4;
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("count", 30);
		return SUCCESS;
	}
	
}
