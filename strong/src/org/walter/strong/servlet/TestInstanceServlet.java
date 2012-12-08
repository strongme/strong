package org.walter.strong.servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;

/**
 * Servlet implementation class TestInstanceServlet
 */
public class TestInstanceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TestInstanceServlet() {
        super();
        // TODO Auto-generated constructor stub
        System.out.println("**************构造函数初始实例化Servlet*********************");
        
    }
    
    @Override
    public void init() throws ServletException {
    	super.init();
    	System.out.println("---------------------Init 出师实例化Servlet---------------");
    	
    }

}
