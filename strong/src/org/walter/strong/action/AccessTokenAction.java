package org.walter.strong.action;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import weibo4j.Oauth;
import weibo4j.http.AccessToken;
import weibo4j.util.BareBonesBrowserLaunch;

import com.opensymphony.xwork2.ActionSupport;

public class AccessTokenAction extends ActionSupport {
	
	
	
	public String accessCode() throws Exception {
		Oauth oauth = new Oauth();
		BareBonesBrowserLaunch.openURL(oauth.authorize("code"));
		oauth.authorize("code");
		return null;
	}
	
	
	public String accessToken() throws Exception {
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		String code = request.getParameter("code");
		Oauth oauth = new Oauth();
		AccessToken accessToken = oauth.getAccessTokenByCode(code);
		String accessTokenStr = accessToken.getAccessToken();
		session.setAttribute("accessToken",accessTokenStr);
		return SUCCESS;
	}

}
