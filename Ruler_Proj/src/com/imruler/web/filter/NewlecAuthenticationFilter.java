package com.imruler.web.filter;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@WebFilter("/*")
public class NewlecAuthenticationFilter implements Filter
{
	private static final String[] authUrls = {"/admin/index"};

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException
	{
		// TODO Auto-generated method stub				
		HttpServletRequest req = (HttpServletRequest)request;
		HttpSession session = req.getSession();
	
		String requestURI = req.getRequestURI();		
		
		boolean isAuthRequired = false;
		for(String url : authUrls)
		{
			if(url.endsWith("*"))
			{
				String path = url.substring(0, url.length()-1);
				System.out.println(path);
				if(requestURI.startsWith(path))
				{
					isAuthRequired = true;
					break;
				}
			}
			else
			{
				if(url.equals(requestURI))
				{
					isAuthRequired = true;
					break;
				}
			}			
		}
		
		boolean isAuthenticated = session.getAttribute("userName") == null;
		if(isAuthenticated && isAuthRequired)
		{
			response.setContentType("text/html; charset=UTF-8");
			response.setCharacterEncoding("UTF-8");

			PrintWriter out = response.getWriter();
			out.println("	<script>\r\n" + "		window.alert(\"Authentication failure\")\r\n"
					+ "		window.location.href=\"../member/login?returnUrl=../admin/index\";\r\n" 
					+ "	</script>");

			return;
		}
		else
		{			
			chain.doFilter(req, response);
		}

	}

}
