package com.example.web;

import com.example.model.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.util.ArrayList;

public class Set extends HttpServlet {
	

	public void doGet(HttpServletRequest request,
						HttpServletResponse response)
									throws IOException, ServletException {
										
								  //указываем кодировку для HTML-страницы, отправляемой клиенту
        response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
        //указываем кодировку для данных, полученых от клиента 
      request.setCharacterEncoding("UTF-8"); 
									
						String id = request.getParameter("id");
						String cookieName = "";
						String cookieId = "";
						
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
						
						String a = request.getParameter("a");
						if (a == null) { a = "1";}
						String b = request.getParameter("b");
						if (b == null) { b = "1";}
						String c = request.getParameter("c");
						if (c == null) { c = "1";}
						String d = request.getParameter("d");
						if (d == null) { d = "1";}
						String e = request.getParameter("e");
						if (e == null) { e = "1";}
						String f = request.getParameter("f");
						if (f == null) { f = "1";}
						String g = request.getParameter("g");
						if (g == null) { g = "1";}
						String h = request.getParameter("h");
						if (h == null) { h = "1";}
						String i = request.getParameter("i");
						if (i == null) { i = "1";}
						String j = request.getParameter("j");
						if (j == null) { j = "1";}
						String k = request.getParameter("k");
						if (k == null) { k = "1";}
						String m = request.getParameter("m");
						if (m == null) { m = "1";}
						String n = request.getParameter("n");
						if (n == null) { n = "1";}
						
						String[] mass = {"", "", "", "", "", "", "", "", "", "", "", "", "", ""};
						
						Human human = new Human();
						
						ArrayList<String> votings = new ArrayList<String>();
						try {
						votings = human.getVoting(cookieName);
						} catch (Exception exc) {
							exc.printStackTrace();
						}
								for (int ii = 0; ii < votings.size(); ii++) {
								if ((votings.get(ii)).equals(id)) {
									RequestDispatcher view = request.getRequestDispatcher("NotVoting.html");
									view.forward(request, response);	
									break;
								}
							}
							try {
		
							mass = human.setRating(Integer.parseInt(id), Integer.parseInt(cookieName), Integer.parseInt(a), Integer.parseInt(b), 
									Integer.parseInt(c), Integer.parseInt(d), Integer.parseInt(e), Integer.parseInt(f), Integer.parseInt(g), 
									Integer.parseInt(h), Integer.parseInt(i), Integer.parseInt(j), Integer.parseInt(k),  
									Integer.parseInt(m), Integer.parseInt(n));
							} catch (Exception ex) {
								ex.printStackTrace();
							}
						/*	
							request.setAttribute("a", mass[0]);
							request.setAttribute("b", mass[1]);
							request.setAttribute("c", mass[2]);
							request.setAttribute("d", mass[3]);
							request.setAttribute("e", mass[4]);
							request.setAttribute("f", mass[5]);
							request.setAttribute("g", mass[6]);
							request.setAttribute("h", mass[7]);
							request.setAttribute("i", mass[8]);
							request.setAttribute("j", mass[9]);
							request.setAttribute("k", mass[10]);
							request.setAttribute("l", mass[11]);
							request.setAttribute("m", mass[12]);
							request.setAttribute("n", mass[13]);
							request.setAttribute("o", mass[14]);
							request.setAttribute("name", mass[15]);
							
							request.setAttribute("myId", cookieId);
							
							RequestDispatcher view = request.getRequestDispatcher("Page.jsp");
							view.forward(request, response);
							*/
							String URL = "Page.do?id="+id;  //делаем новый запрос на Page.do
							response.sendRedirect(URL);	
						
	
			}	
}