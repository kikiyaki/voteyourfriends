<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <meta charset="utf-8">
    <title>Регистрация</title>
    <style>
      table { width: 70% }
      td { text-align: left; }
      th { height: 50px; }  
	  
	  @media all and (max-device-width: 600px)  {
		h2 {
			font-size:350%;
		}
		p {
			font-size:200%;
		}
		input {
		font-size:100%;
		}
	  }
    </style>
  </head>
 
  <body bgcolor="#e6fcfb" >
  <h2 style="color:#656566">Для голосования необходимо зарегестрироваться</h2>
  <form name="reg" method="get" action="Registration.do">
  <p style="color:#656566">Нужно только ваше имя, его не увидят люди, за которых вы голосуете<br>
  <p style="color:#656566">Имя:<br>
  <input autofocus type="text" name="userName" size="20" >
  <input type="text" name="pageId" value="<%= request.getAttribute("pageId") %>" hidden="true">
  </p>
  	<p ><input style="color:#656566" type="submit" value="Продолжить"></p>
  </form>
  </body>
</html>