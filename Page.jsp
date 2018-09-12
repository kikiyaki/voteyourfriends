<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <meta charset="utf-8">
    <title><%= request.getAttribute("name") %></title>
    <style>
	@media all and (max-device-width: 600px)  {
		h1 {
			font-size:350%;
		}
		p {
			font-size:300%;
		}
		td {
		font-size:70%;
		}
		a {
			font-size:350%
		}
		img {
			width:60px;
			height:60px;
		}
	  }
    </style>	
  </head>
 
  <body bgcolor="#e6fcfb" >
  <h1 style="color:#656566"><%= request.getAttribute("name") %></h1>
		<form action="handler.php">
			<p style="color:#656566"><b>Оценки</b></p>
			<table style="color:#656566">
			<tr>	  
			<td>  <p>Ум</p></td>
			<td><img name="a1" src="star0.png" width="25" height="25"></td>
			<td><img name="a2" src="star0.png" width="25" height="25"></td>
			<td><img name="a3" src="star0.png" width="25" height="25"></td>
			<td><img name="a4" src="star0.png" width="25" height="25"></td>
			<td><img name="a5" src="star0.png" width="25" height="25"></td>
			<td><p id="par_a"><%= request.getAttribute("a") %></p></td>
			</tr>
			<tr>	  
			<td>  <p>Красота</p></td>
			<td><img name="b1" src="star0.png" width="25" height="25"></td>
			<td><img name="b2" src="star0.png" width="25" height="25"></td>
			<td><img name="b3" src="star0.png" width="25" height="25"></td>
			<td><img name="b4" src="star0.png" width="25" height="25"></td>
			<td><img name="b5" src="star0.png" width="25" height="25"></td>
			<td><p id="par_b"><%= request.getAttribute("b") %></p></td>
			</tr>
			<tr>	  
			<td>  <p>Доброта</p></td>
			<td><img name="c1" src="star0.png" width="25" height="25"></td>
			<td><img name="c2" src="star0.png" width="25" height="25"></td>
			<td><img name="c3" src="star0.png" width="25" height="25"></td>
			<td><img name="c4" src="star0.png" width="25" height="25"></td>
			<td><img name="c5" src="star0.png" width="25" height="25"></td>
			<td><p id="par_c"><%= request.getAttribute("c") %></p></td>
			</tr>
			<tr>	  
			<td>  <p>Успешность</p></td>
			<td><img name="d1" src="star0.png" width="25" height="25"></td>
			<td><img name="d2" src="star0.png" width="25" height="25"></td>
			<td><img name="d3" src="star0.png" width="25" height="25"></td>
			<td><img name="d4" src="star0.png" width="25" height="25"></td>
			<td><img name="d5" src="star0.png" width="25" height="25"></td>
			<td><p id="par_d"><%= request.getAttribute("d") %></p></td>
			</tr>
			<tr>	  
			<td>  <p>Готовность выпить</p></td>
			<td><img name="e1" src="star0.png" width="25" height="25"></td>
			<td><img name="e2" src="star0.png" width="25" height="25"></td>
			<td><img name="e3" src="star0.png" width="25" height="25"></td>
			<td><img name="e4" src="star0.png" width="25" height="25"></td>
			<td><img name="e5" src="star0.png" width="25" height="25"></td>
			<td><p id="par_e"><%= request.getAttribute("e") %></p></td>
			</tr>
			<tr>	  
			<td>  <p>Много матерится</p></td>
			<td><img name="f1" src="star0.png" width="25" height="25"></td>
			<td><img name="f2" src="star0.png" width="25" height="25"></td>
			<td><img name="f3" src="star0.png" width="25" height="25"></td>
			<td><img name="f4" src="star0.png" width="25" height="25"></td>
			<td><img name="f5" src="star0.png" width="25" height="25"></td>
			<td><p id="par_f"><%= request.getAttribute("f") %></p></td>
			</tr>
			<tr>	  
			<td>  <p>Не дружит с законом</p></td>
			<td><img name="g1" src="star0.png" width="25" height="25"></td>
			<td><img name="g2" src="star0.png" width="25" height="25"></td>
			<td><img name="g3" src="star0.png" width="25" height="25"></td>
			<td><img name="g4" src="star0.png" width="25" height="25"></td>
			<td><img name="g5" src="star0.png" width="25" height="25"></td>
			<td><p id="par_g"><%= request.getAttribute("g") %></p></td>
			</tr>
			<tr>	  
			<td>  <p>Много ест</p></td>
			<td><img name="h1" src="star0.png" width="25" height="25"></td>
			<td><img name="h2" src="star0.png" width="25" height="25"></td>
			<td><img name="h3" src="star0.png" width="25" height="25"></td>
			<td><img name="h4" src="star0.png" width="25" height="25"></td>
			<td><img name="h5" src="star0.png" width="25" height="25"></td>
			<td><p id="par_h"><%= request.getAttribute("h") %></p></td>
			</tr>
			<tr>	  
			<td>  <p>Много вредных привычек</p></td>
			<td><img name="i1" src="star0.png" width="25" height="25"></td>
			<td><img name="i2" src="star0.png" width="25" height="25"></td>
			<td><img name="i3" src="star0.png" width="25" height="25"></td>
			<td><img name="i4" src="star0.png" width="25" height="25"></td>
			<td><img name="i5" src="star0.png" width="25" height="25"></td>
			<td><p id="par_i"><%= request.getAttribute("i") %></p></td>
			</tr>
			<tr>	  
			<td>  <p>Справляет нужду на улице</p></td>
			<td><img name="j1" src="star0.png" width="25" height="25"></td>
			<td><img name="j2" src="star0.png" width="25" height="25"></td>
			<td><img name="j3" src="star0.png" width="25" height="25"></td>
			<td><img name="j4" src="star0.png" width="25" height="25"></td>
			<td><img name="j5" src="star0.png" width="25" height="25"></td>
			<td><p id="par_j"><%= request.getAttribute("j") %></p></td>
			</tr>
			<tr>	  
			<td>  <p>Не уступает бабулям</p></td>
			<td><img name="k1" src="star0.png" width="25" height="25"></td>
			<td><img name="k2" src="star0.png" width="25" height="25"></td>
			<td><img name="k3" src="star0.png" width="25" height="25"></td>
			<td><img name="k4" src="star0.png" width="25" height="25"></td>
			<td><img name="k5" src="star0.png" width="25" height="25"></td>
			<td><p id="par_k"><%= request.getAttribute("k") %></p></td>
			</tr>
			<tr>	  
			<td>  <p>Ест как свинья</p></td>
			<td><img name="m1" src="star0.png" width="25" height="25"></td>
			<td><img name="m2" src="star0.png" width="25" height="25"></td>
			<td><img name="m3" src="star0.png" width="25" height="25"></td>
			<td><img name="m4" src="star0.png" width="25" height="25"></td>
			<td><img name="m5" src="star0.png" width="25" height="25"></td>
			<td><p id="par_m"><%= request.getAttribute("m") %></p></td>
			</tr>
			<tr>	  
			<td>  <p>Уверенность в своей крутости</p></td>
			<td><img name="n1" src="star0.png" width="25" height="25"></td>
			<td><img name="n2" src="star0.png" width="25" height="25"></td>
			<td><img name="n3" src="star0.png" width="25" height="25"></td>
			<td><img name="n4" src="star0.png" width="25" height="25"></td>
			<td><img name="n5" src="star0.png" width="25" height="25"></td>
			<td><p id="par_n"><%= request.getAttribute("n") %></p></td>
			</tr>
			</table>
			
			<a href="Page.do?id=<%= request.getAttribute("myId") %>">Моя страница</a> 
	 </form> 
	 	<script>
		function rating(par) {
				var element = document.getElementById(par);
				var rat = element.textContent;
				var ost=rat%1;

				var i;
			for(i = 1; i <= rat-ost+0.0001; i++) {              	 //заполнение целых звезд
			document.images[par.substring(4)+i].src="star8.png";
			}

			if (i<6) {
			document.images[par.substring(4)+i].src = (ost<0.0001)? 'star0.png' : (ost<0.125)? 'star1.png' :
			(ost<0.250)? 'star2.png' : (ost<0.45)? 'star3.png' : (ost<0.55)? 'star4.png' :
			(ost<0.625)? 'star5.png' : (ost<0.750)? 'star5.png' : (ost<0.875)? 'star6.png' : 
			(ost<0.98)? 'star7.png' : 'star8.png';
				}
		}
		rating('par_a');
		rating('par_b');
		rating('par_c');
		rating('par_d');
		rating('par_e');
		rating('par_f');
		rating('par_g');
		rating('par_h');
		rating('par_i');
		rating('par_j');
		rating('par_k');
		rating('par_m');
		rating('par_n');
		
	</script>
  </body>
</html>