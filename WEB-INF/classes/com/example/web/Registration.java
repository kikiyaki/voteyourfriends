package com.example.web;

import com.example.model.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

public class Registration extends HttpServlet {

	public void doGet(HttpServletRequest request,
						HttpServletResponse response)
									throws IOException, ServletException {
										
								  //указываем кодировку для HTML-страницы, отправляемой клиенту
        response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
        //указываем кодировку для данных полученых от клиента 
      request.setCharacterEncoding("UTF-8"); 
									
										String name = request.getParameter("userName");
									
										String pageId = request.getParameter("pageId");
										
										
										Human human = new Human();
										int set[] = {0, 0};
										try {							// записываем имя в БД
										set = human.setName(name);
										} catch (Exception e) {
											e.printStackTrace();
										}
										
										
										Cookie cookieName = new Cookie("cookieName", String.valueOf(set[1]));
										cookieName.setMaxAge(525600);
										response.addCookie(cookieName);
										Cookie cookieId = new Cookie("cookieId", String.valueOf(set[0]));
										cookieId.setMaxAge(525600);
										response.addCookie(cookieId);
										
										if (pageId != null) {
										String URL = "Page.do?id="+pageId;  //делаем новый запрос на Page.do
										response.sendRedirect(URL);	
										} else {
										String URL = "Page.do?id="+String.valueOf(set[0]);  //делаем новый запрос на Page.do
										response.sendRedirect(URL);	
										}
										
									
								
										
			}	
}