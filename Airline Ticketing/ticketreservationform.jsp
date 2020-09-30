<meta name="Microsoft Theme" content="sandston 011">



<body background="stonbk.jpg" bgcolor="#FFFFFF" text="#000000" link="#993300" vlink="#CC6633" alink="#660000">

<!--mstheme--><font face="Arial, Helvetica"><!--mstheme--></font>

<h1 align="center">
<!--mstheme--><font face="Arial, Helvetica" color="#000000">
<font face="Monotype Corsiva" size="7">
<b><u>Airline Ticket Reservation Form</u></b></font><!--mstheme--></font></h1>
<!--mstheme--><font face="Arial, Helvetica">
<p>&nbsp;</p>
<form method="POST" action="insert1.jsp">
  <p>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <input type="text" name="name" size="20"></p>
  <p>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  age&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <input type="text" name="age" size="20"></p>
  <p>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  sex&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <input type="radio" value="M" checked name="sex">M&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <input type="radio" name="sex" value="F">F</p>
  <p>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  Depart&nbsp;&nbsp;&nbsp; From&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select size="1" name="departfrom">
  <option selected>-----Select the place-----</option>
  <option>hyderabad</option>
  <option>mumbai</option>
  <option>kolkatta</option>
  <option>bangalore</option>
  <option>delhi</option>
  </select></p>
  <p>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  Destination&nbsp;&nbsp;to&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select size="1" name="destinationto">
  <option selected>-----Select the place-----</option>
  <option>hyderabad</option>
  <option>bangalore</option>
  <option>kolkatta</option>
  <option>delhi</option>
  <option>pune</option>
  </select></p>
  <p>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  Date of journey&nbsp;&nbsp;&nbsp;&nbsp; <select size="1" name="date">
  <option selected>DD</option>
<% for(int i=1;i<=31;i++)
	out.println("<option>"+i+"</option>");
%>
  </select>
  <select size="1" name="month">
    <option selected>MON</option>

<% String months[]={"jan","feb","mar","apr","may","jun","jul","aug","sep","oct","nov","dec"};
	java.util.Calendar cm = java.util.Calendar.getInstance();
	for(int i=0;i<12;i++)
	out.println("<option>"+months[((cm.get(java.util.Calendar.MONTH)+i)%12)]+"</option>");
%>

  </select>
  
  <select size="1" name="year">
  <option selected>YEAR</option>
<% 
	java.util.Calendar cy = java.util.Calendar.getInstance();
	
	for(int j=0;j<20;j++)
	out.println("<option>"+(cy.get(java.util.Calendar.YEAR)+j)+"</option>");
%>
  
  
  </select></p>
  <p>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Time&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <select size="1" name="time">
<% for( int  i = 1 ; i <= 12; i++)
	out.println("<option>"+i+"</option>");
	
 %>  
  </select>
  
  <select size="1" name="meridian">
  <option selected>am</option>
  <option>pm</option>
  </select></p>
  <p>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
  <p>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  Credit Card No&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="ccno" size="20">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <a href="oanairhome.html">BACK</a></p>
  <p>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>
  <p>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <input type="submit" value="SUBMIT" name="reservationform">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <input type="reset" value="CLEAR" name="reservationform"></p>
</form>

<!--mstheme--></font>

</body>