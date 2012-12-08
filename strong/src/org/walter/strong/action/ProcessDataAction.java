package org.walter.strong.action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class ProcessDataAction extends ActionSupport {
	
	@Override
	public String execute() throws Exception {
		HttpServletRequest request = ServletActionContext.getRequest();
		String data = request.getParameter("data");
		System.out.println(data);
		
		return SUCCESS;
	}
	

}
