package com.example.web;

import com.example.model.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.util.ArrayList;

public class Page extends HttpServlet {
	
	

	public void doGet(HttpServletRequest request,
						HttpServletResponse response)
									throws IOException, ServletException {
										
								  //указываем кодировку для HTML-страницы, отправляемой клиенту
        response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
        //указываем кодировку для данных, полученых от клиента 
      request.setCharacterEncoding("UTF-8"); 
						
						String name = ""; 
						String cookieNameDB = "";
						String cookieName = "";
						String cookieId = "";
						
						String id = request.getParameter("id");
						
						Cookie[] cookies = request.getCookies();   //получаем номер куки из браузера
						 
						for (int i=0; i < cookies.length; i++) {
							Cookie cookie = cookies[i];
							if (cookie.getName().equals("cookieName"))
							{
								cookieName = cookie.getValue();
							}
							if (cookie.getName().equals("cookieId"))
							{
								cookieId = cookie.getValue();
							}
						}
						if (cookieName == "") {
							request.setAttribute("pageId", id);
							RequestDispatcher view = request.getRequestDispatcher("Registration.jsp");
							view.forward(request, response);
						}
						 
							
						
										
						Human human = new Human();
						String[] get = {"", "", "", "", "", "", "", "", "", "", "", "", "", "", ""};
						
							try {			
						get = human.getRating(id); //получаем массив имя, куки и оценки для запрошенного id
							} catch (Exception e)	 {
								e.printStackTrace();
							}
							name = get[0];
							cookieNameDB = get[1];
							
						
					
						
						if (cookieName.equals(cookieNameDB)) {
							request.setAttribute("name", name);
							request.setAttribute("a", get[2]);
							request.setAttribute("b", get[3]);
							request.setAttribute("c", get[4]);
							request.setAttribute("d", get[5]);
							request.setAttribute("e", get[6]);
							request.setAttribute("f", get[7]);
							request.setAttribute("g", get[8]);
							request.setAttribute("h", get[9]);
							request.setAttribute("i", get[10]);
							request.setAttribute("j", get[11]);
							request.setAttribute("k", get[12]);
							request.setAttribute("m", get[13]);
							request.setAttribute("n", get[14]);
							
							RequestDispatcher view = request.getRequestDispatcher("MyPage.jsp");
							view.forward(request, response);
						} else {
							ArrayList<String> votings = new ArrayList<>();
							try {
							votings = human.getVoting(cookieName);
							} catch (Exception e) {
								e.printStackTrace();
							}
							for (int i = 0; i < votings.size(); i++) {
								if ((votings.get(i)).equals(id)) {
									request.setAttribute("name", name);
									request.setAttribute("a", get[2]);
									request.setAttribute("b", get[3]);
									request.setAttribute("c", get[4]);
									request.setAttribute("d", get[5]);
									request.setAttribute("e", get[6]);
									request.setAttribute("f", get[7]);
									request.setAttribute("g", get[8]);
									request.setAttribute("h", get[9]);
									request.setAttribute("i", get[10]);
									request.setAttribute("j", get[11]);
									request.setAttribute("k", get[12]);
									request.setAttribute("m", get[13]);
									request.setAttribute("n", get[14]);
									
									request.setAttribute("myId", cookieId);
							
									RequestDispatcher view = request.getRequestDispatcher("Page.jsp");
									view.forward(request, response);
									
									
								}
							} 
							
							request.setAttribute("name", name);
							RequestDispatcher view = request.getRequestDispatcher("Voting.jsp");
							view.forward(request, response);
							
						}
						
	
			}	
}