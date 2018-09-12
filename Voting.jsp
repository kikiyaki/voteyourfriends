<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <meta charset="utf-8">
    <title><%= request.getAttribute("name") %></title>
<style>	
.vis {
	visibility:hidden;
}

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
		input {
			font-size:100%;
		}
		img {
			width:60px;
			height:60px;
		}
	  }
</style>
    </style>
  </head>
 
  <body bgcolor="#e6fcfb" >
  <h1 style="color:#656566"><%= request.getAttribute("name") %></h1>
  <script>
  function on(x) {
	
  var a = x.substring(1);               				//удаление всех звезд перед заполнением

	for(var i = 5; i > 0; i--) {
		document.images[x.substring(0,1)+i].src="star0.png";
		}
	
	for(var i = a; i > 0; i--) {       //заполнение звезд
		document.images[x.substring(0,1)+i].src="star8.png";
		}		
  }
   function out(x) {
		var a = x.substring(1);
		for(var i = 5; i > 0; i--) {
		document.images[x.substring(0,1)+i].src="star0.png";
	}
	
	
		var e;
    var inp = document.getElementsByName(x.substring(0,1));
    for (e = 0; e < inp.length; e++) {				//проверка радиокнопок
        if (inp[e].type == "radio" && inp[e].checked) {
				on(x.substring(0, 1)+(e+1));
		}
		}
	}
  </script>
		<form action="Set.do">
			<p style="color:#656566"><b>Дай оценку по параметрам:</b></p>
			<table style="color:#656566">
			<tr>	  
			<td>  <p>Ум</p></td>
			<td><label for="11"><img name="a1" src="star0.png" width="25" height="25" onMouseover="on(name)" onMouseout="out(name)"></label>
			<label for="12"><img name="a2" src="star0.png" width="25" height="25" onMouseover="on(name);" onMouseout="out(name)"></label>
			<label for="13"><img name="a3" src="star0.png" width="25" height="25" onMouseover="on(name);" onMouseout="out(name)"></label>
			<label for="14"><img name="a4" src="star0.png" width="25" height="25" onMouseover="on(name);" onMouseout="out(name)"></label>
			<label for="15"><img name="a5" src="star0.png" width="25" height="25" onMouseover="on(name);" onMouseout="out(name)"></label>
			</td>
			<td>  <p class="vis"><input id="11" name="a" type="radio" value="1"></p></td>
			<td>  <p class="vis"><input id="12" name="a" type="radio" value="2"></p></td>
			<td>  <p class="vis"><input id="13" name="a" type="radio" value="3"></p></td>
			<td>  <p class="vis"><input id="14" name="a" type="radio" value="4"></p></td>
			<td>  <p class="vis"><input id="15" name="a" type="radio" value="5"></p></td>
			</div>
			</tr>
						<tr>	  
			<td>  <p>Красота</p></td>
			<td>  <label for="21"><img name="b1" src="star0.png" width="25" height="25" onMouseover="on(name)" onMouseout="out(name)"></label>
			<label for="22"><img name="b2" src="star0.png" width="25" height="25" onMouseover="on(name);" onMouseout="out(name)"></label>
			<label for="23"><img name="b3" src="star0.png" width="25" height="25" onMouseover="on(name);" onMouseout="out(name)"></label>
			<label for="24"><img name="b4" src="star0.png" width="25" height="25" onMouseover="on(name);" onMouseout="out(name)"></label>
			<label for="25"><img name="b5" src="star0.png" width="25" height="25" onMouseover="on(name);" onMouseout="out(name)"></label>
			</td>
			<td>  <p class="vis"><input id="21" name="b" type="radio" value="1"></p></td>
			<td>  <p class="vis"><input id="22" name="b" type="radio" value="2"></p></td>
			<td>  <p class="vis"><input id="23" name="b" type="radio" value="3"></p></td>
			<td>  <p class="vis"><input id="24" name="b" type="radio" value="4"></p></td>
			<td>  <p class="vis"><input id="25" name="b" type="radio" value="5"></p></td>
			</div>
			</tr>
			
						<tr>	  
			<td>  <p>Доброта</p></td>
			<td>  <label for="31"><img name="c1" src="star0.png" width="25" height="25" onMouseover="on(name)" onMouseout="out(name)"></label>
			<label for="32"><img name="c2" src="star0.png" width="25" height="25" onMouseover="on(name);" onMouseout="out(name)"></label>
			<label for="33"><img name="c3" src="star0.png" width="25" height="25" onMouseover="on(name);" onMouseout="out(name)"></label>
			<label for="34"><img name="c4" src="star0.png" width="25" height="25" onMouseover="on(name);" onMouseout="out(name)"></label>
			<label for="35"><img name="c5" src="star0.png" width="25" height="25" onMouseover="on(name);" onMouseout="out(name)"></label>
			</td>
			<td>  <p class="vis"><input id="31" name="c" type="radio" value="1"></p></td>
			<td>  <p class="vis"><input id="32" name="c" type="radio" value="2"></p></td>
			<td>  <p class="vis"><input id="33" name="c" type="radio" value="3"></p></td>
			<td>  <p class="vis"><input id="34" name="c" type="radio" value="4"></p></td>
			<td>  <p class="vis"><input id="35" name="c" type="radio" value="5"></p></td>
			</div>
			</tr>
			
						<tr>	  
			<td>  <p>Успешность</p></td>
			<td>  <label for="41"><img name="d1" src="star0.png" width="25" height="25" onMouseover="on(name)" onMouseout="out(name)"></label>
			<label for="42"><img name="d2" src="star0.png" width="25" height="25" onMouseover="on(name);" onMouseout="out(name)"></label>
			<label for="43"><img name="d3" src="star0.png" width="25" height="25" onMouseover="on(name);" onMouseout="out(name)"></label>
			<label for="44"><img name="d4" src="star0.png" width="25" height="25" onMouseover="on(name);" onMouseout="out(name)"></label>
			<label for="45"><img name="d5" src="star0.png" width="25" height="25" onMouseover="on(name);" onMouseout="out(name)"></label>
			</td>
			<td>  <p class="vis"><input id="41" name="d" type="radio" value="1"></p></td>
			<td>  <p class="vis"><input id="42" name="d" type="radio" value="2"></p></td>
			<td>  <p class="vis"><input id="43" name="d" type="radio" value="3"></p></td>
			<td>  <p class="vis"><input id="44" name="d" type="radio" value="4"></p></td>
			<td>  <p class="vis"><input id="45" name="d" type="radio" value="5"></p></td>
			</div>
			</tr>
			
			<tr>	  
			<td>  <p>Готовность выпить</p></td>
			<td>  <label for="51"><img name="e1" src="star0.png" width="25" height="25" onMouseover="on(name)" onMouseout="out(name)"></label>
			<label for="52"><img name="e2" src="star0.png" width="25" height="25" onMouseover="on(name);" onMouseout="out(name)"></label>
			<label for="53"><img name="e3" src="star0.png" width="25" height="25" onMouseover="on(name);" onMouseout="out(name)"></label>
			<label for="54"><img name="e4" src="star0.png" width="25" height="25" onMouseover="on(name);" onMouseout="out(name)"></label>
			<label for="55"><img name="e5" src="star0.png" width="25" height="25" onMouseover="on(name);" onMouseout="out(name)"></label>
			</td>
			<td>  <p class="vis"><input id="51" name="e" type="radio" value="1"></p></td>
			<td>  <p class="vis"><input id="52" name="e" type="radio" value="2"></p></td>
			<td>  <p class="vis"><input id="53" name="e" type="radio" value="3"></p></td>
			<td>  <p class="vis"><input id="54" name="e" type="radio" value="4"></p></td>
			<td>  <p class="vis"><input id="55" name="e" type="radio" value="5"></p></td>
			</div>
			</tr>
			<td>  <p>Много матерится</p></td>
			<td><label for="61"><img name="f1" src="star0.png" width="25" height="25" onMouseover="on(name)" onMouseout="out(name)"></label>
			<label for="62"><img name="f2" src="star0.png" width="25" height="25" onMouseover="on(name);" onMouseout="out(name)"></label>
			<label for="63"><img name="f3" src="star0.png" width="25" height="25" onMouseover="on(name);" onMouseout="out(name)"></label>
			<label for="64"><img name="f4" src="star0.png" width="25" height="25" onMouseover="on(name);" onMouseout="out(name)"></label>
			<label for="65"><img name="f5" src="star0.png" width="25" height="25" onMouseover="on(name);" onMouseout="out(name)"></label>
			</td>
			<td>  <p class="vis"><input id="61" name="f" type="radio" value="1"></p></td>
			<td>  <p class="vis"><input id="62" name="f" type="radio" value="2"></p></td>
			<td>  <p class="vis"><input id="63" name="f" type="radio" value="3"></p></td>
			<td>  <p class="vis"><input id="64" name="f" type="radio" value="4"></p></td>
			<td>  <p class="vis"><input id="65" name="f" type="radio" value="5"></p></td>
			</div>
			</tr>
						<tr>	  
			<td>  <p>Не дружит с законом</p></td>
			<td>  <label for="71"><img name="g1" src="star0.png" width="25" height="25" onMouseover="on(name)" onMouseout="out(name)"></label>
			<label for="72"><img name="g2" src="star0.png" width="25" height="25" onMouseover="on(name);" onMouseout="out(name)"></label>
			<label for="73"><img name="g3" src="star0.png" width="25" height="25" onMouseover="on(name);" onMouseout="out(name)"></label>
			<label for="74"><img name="g4" src="star0.png" width="25" height="25" onMouseover="on(name);" onMouseout="out(name)"></label>
			<label for="75"><img name="g5" src="star0.png" width="25" height="25" onMouseover="on(name);" onMouseout="out(name)"></label>
			</td>
			<td>  <p class="vis"><input id="71" name="g" type="radio" value="1"></p></td>
			<td>  <p class="vis"><input id="72" name="g" type="radio" value="2"></p></td>
			<td>  <p class="vis"><input id="73" name="g" type="radio" value="3"></p></td>
			<td>  <p class="vis"><input id="74" name="g" type="radio" value="4"></p></td>
			<td>  <p class="vis"><input id="75" name="g" type="radio" value="5"></p></td>
			</div>
			</tr>
			
						<tr>	  
			<td>  <p>Много ест</p></td>
			<td>  <label for="81"><img name="h1" src="star0.png" width="25" height="25" onMouseover="on(name)" onMouseout="out(name)"></label>
			<label for="82"><img name="h2" src="star0.png" width="25" height="25" onMouseover="on(name);" onMouseout="out(name)"></label>
			<label for="83"><img name="h3" src="star0.png" width="25" height="25" onMouseover="on(name);" onMouseout="out(name)"></label>
			<label for="84"><img name="h4" src="star0.png" width="25" height="25" onMouseover="on(name);" onMouseout="out(name)"></label>
			<label for="85"><img name="h5" src="star0.png" width="25" height="25" onMouseover="on(name);" onMouseout="out(name)"></label>
			</td>
			<td>  <p class="vis"><input id="81" name="h" type="radio" value="1"></p></td>
			<td>  <p class="vis"><input id="82" name="h" type="radio" value="2"></p></td>
			<td>  <p class="vis"><input id="83" name="h" type="radio" value="3"></p></td>
			<td>  <p class="vis"><input id="84" name="h" type="radio" value="4"></p></td>
			<td>  <p class="vis"><input id="85" name="h" type="radio" value="5"></p></td>
			</div>
			</tr>
			
						<tr>	  
			<td>  <p>Много вредных привычек</p></td>
			<td>  <label for="91"><img name="i1" src="star0.png" width="25" height="25" onMouseover="on(name)" onMouseout="out(name)"></label>
			<label for="92"><img name="i2" src="star0.png" width="25" height="25" onMouseover="on(name);" onMouseout="out(name)"></label>
			<label for="93"><img name="i3" src="star0.png" width="25" height="25" onMouseover="on(name);" onMouseout="out(name)"></label>
			<label for="94"><img name="i4" src="star0.png" width="25" height="25" onMouseover="on(name);" onMouseout="out(name)"></label>
			<label for="95"><img name="i5" src="star0.png" width="25" height="25" onMouseover="on(name);" onMouseout="out(name)"></label>
			</td>
			<td>  <p class="vis"><input id="91" name="i" type="radio" value="1"></p></td>
			<td>  <p class="vis"><input id="92" name="i" type="radio" value="2"></p></td>
			<td>  <p class="vis"><input id="93" name="i" type="radio" value="3"></p></td>
			<td>  <p class="vis"><input id="94" name="i" type="radio" value="4"></p></td>
			<td>  <p class="vis"><input id="95" name="i" type="radio" value="5"></p></td>
			</div>
			</tr>
			
			<tr>	  
			<td>  <p>Справляет нужду на улице</p></td>
			<td>  <label for="101"><img name="j1" src="star0.png" width="25" height="25" onMouseover="on(name)" onMouseout="out(name)"></label>
			<label for="102"><img name="j2" src="star0.png" width="25" height="25" onMouseover="on(name);" onMouseout="out(name)"></label>
			<label for="103"><img name="j3" src="star0.png" width="25" height="25" onMouseover="on(name);" onMouseout="out(name)"></label>
			<label for="104"><img name="j4" src="star0.png" width="25" height="25" onMouseover="on(name);" onMouseout="out(name)"></label>
			<label for="105"><img name="j5" src="star0.png" width="25" height="25" onMouseover="on(name);" onMouseout="out(name)"></label>
			</td>
			<td>  <p class="vis"><input id="101" name="j" type="radio" value="1"></p></td>
			<td>  <p class="vis"><input id="102" name="j" type="radio" value="2"></p></td>
			<td>  <p class="vis"><input id="103" name="j" type="radio" value="3"></p></td>
			<td>  <p class="vis"><input id="104" name="j" type="radio" value="4"></p></td>
			<td>  <p class="vis"><input id="105" name="j" type="radio" value="5"></p></td>
			</div>
			</tr>
			<td>  <p>Не уступает бабулям</p></td>
			<td><label for="111"><img name="k1" src="star0.png" width="25" height="25" onMouseover="on(name)" onMouseout="out(name)"></label>
			<label for="112"><img name="k2" src="star0.png" width="25" height="25" onMouseover="on(name);" onMouseout="out(name)"></label>
			<label for="113"><img name="k3" src="star0.png" width="25" height="25" onMouseover="on(name);" onMouseout="out(name)"></label>
			<label for="114"><img name="k4" src="star0.png" width="25" height="25" onMouseover="on(name);" onMouseout="out(name)"></label>
			<label for="115"><img name="k5" src="star0.png" width="25" height="25" onMouseover="on(name);" onMouseout="out(name)"></label>
			</td>
			<td>  <p class="vis"><input id="111" name="k" type="radio" value="1"></p></td>
			<td>  <p class="vis"><input id="112" name="k" type="radio" value="2"></p></td>
			<td>  <p class="vis"><input id="113" name="k" type="radio" value="3"></p></td>
			<td>  <p class="vis"><input id="114" name="k" type="radio" value="4"></p></td>
			<td>  <p class="vis"><input id="115" name="k" type="radio" value="5"></p></td>
			</div>
			</tr>
			
						<tr>	  
			<td>  <p>Ест как свинья</p></td>
			<td>  <label for="131"><img name="m1" src="star0.png" width="25" height="25" onMouseover="on(name)" onMouseout="out(name)"></label>
			<label for="132"><img name="m2" src="star0.png" width="25" height="25" onMouseover="on(name);" onMouseout="out(name)"></label>
			<label for="133"><img name="m3" src="star0.png" width="25" height="25" onMouseover="on(name);" onMouseout="out(name)"></label>
			<label for="134"><img name="m4" src="star0.png" width="25" height="25" onMouseover="on(name);" onMouseout="out(name)"></label>
			<label for="135"><img name="m5" src="star0.png" width="25" height="25" onMouseover="on(name);" onMouseout="out(name)"></label>
			</td>
			<td>  <p class="vis"><input id="131" name="m" type="radio" value="1"></p></td>
			<td>  <p class="vis"><input id="132" name="m" type="radio" value="2"></p></td>
			<td>  <p class="vis"><input id="133" name="m" type="radio" value="3"></p></td>
			<td>  <p class="vis"><input id="134" name="m" type="radio" value="4"></p></td>
			<td>  <p class="vis"><input id="135" name="m" type="radio" value="5"></p></td>
			</div>
			</tr>
			
						<tr>	  
			<td>  <p>Уверенность в своей крутости</p></td>
			<td>  <label for="141"><img name="n1" src="star0.png" width="25" height="25" onMouseover="on(name)" onMouseout="out(name)"></label>
			<label for="142"><img name="n2" src="star0.png" width="25" height="25" onMouseover="on(name);" onMouseout="out(name)"></label>
			<label for="143"><img name="n3" src="star0.png" width="25" height="25" onMouseover="on(name);" onMouseout="out(name)"></label>
			<label for="144"><img name="n4" src="star0.png" width="25" height="25" onMouseover="on(name);" onMouseout="out(name)"></label>
			<label for="145"><img name="n5" src="star0.png" width="25" height="25" onMouseover="on(name);" onMouseout="out(name)"></label>
			</td>
			<td>  <p class="vis"><input id="141" name="n" type="radio" value="1"></p></td>
			<td>  <p class="vis"><input id="142" name="n" type="radio" value="2"></p></td>
			<td>  <p class="vis"><input id="143" name="n" type="radio" value="3"></p></td>
			<td>  <p class="vis"><input id="144" name="n" type="radio" value="4"></p></td>
			<td>  <p class="vis"><input id="145" name="n" type="radio" value="5"></p></td>
			</div>
			</tr>
			
			</table>
			<input type="hidden" name="id" value=<%= request.getParameter("id") %>>
						<p ><input style="color:#656566" type="submit" value="Выбрать"></p>
	 </form> 
	
  </body>
</html>