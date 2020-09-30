
<%!
	String flight;
	
	int i;	

%>
<%		
	
	i=0;
	String flightinfo[]= new String[8];
	flight = request.getParameter("id");
	System.out.println(flight);
	java.util.StringTokenizer st = new java.util.StringTokenizer(flight,"*");
	while(st.hasMoreElements())
	{
	flightinfo[i++]=(String)st.nextElement();
	System.out.println(flightinfo[i-1]);
	}
	
	
	
	%>


<p align="center"><u><font size="6" color="#000080"><strong>PASSENGER DETAILS</strong></font></u></p>
<form method="POST" action="bookaticket1.jsp">
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p><input type="hidden" name="plainid" value="<%= flightinfo[0]%>" size="20">
  	 <input type="hidden" name="day" value="<%= flightinfo[1]%>" size="20">
  	 <input type="hidden" name="doj" value="<%= flightinfo[2]%>" size="20">
  	 <input type="hidden" name="source" value="<%= flightinfo[3]%>" size="20">
  	 <input type="hidden" name="destination" value="<%= flightinfo[4]%>" size="20">
  	 <input type="hidden" name="seating" value="<%= flightinfo[5]%>" size="20">
	 <input type="hidden" name="time" value="<%= flightinfo[6]%>" size="20">
	 <input type="hidden" name="fare" value="<%= flightinfo[7]%>" size="20">
  	 </p>
  <div align="center">
    <center>
    <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" id="AutoNumber1" bgcolor="#FFFFFF">
      <tr>
        <td width="163" height="23"><font color="#000080">NAME </font> </td>
        <td width="163" height="23">
  <font color="#000080">
  <input type="text" name="pname" size="20" style="color: #000080"></font></td>
      </tr>
      <tr>
        <td width="163" height="23"><font color="#000080">AGE</font></td>
        <td width="163" height="23">
  <font color="#000080">
  <input type="text" name="age" size="20" style="color: #000080"></font></td>
      </tr>
      <tr>
        <td width="163" height="23"><font color="#000080">GENDER</font></td>
        <td width="163" height="23">&nbsp;<p>
  <font color="#000080">
  <input type="radio" value="m" checked name="gender">M&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <input type="radio" name="gender" value="f">F</font></p>
  <p>
  &nbsp;</p>
        </td>
      </tr>
      <tr>
        <td width="163" height="23"><font color="#000080">NATIONALITY</font></td>
        <td width="163" height="23">
        <input type="text" name="nationality" size="20" style="color: #000080"></td>
      </tr>
      <tr>
        <td width="163" height="23"><font color="#000080">CREDIT CARD NO</font></td>
        <td width="163" height="23">&nbsp;<p>
  <font color="#000080">
  <input type="text" name="ccno" size="20" style="color: #000080"></font></p>
        <p>&nbsp;</td>
      </tr>
      <tr>
        <td width="163" height="23">
  <font color="#000080">
  <input type="reset" value="CLEAR" name="reservationform" style="color: #0000FF"></font></td>
        <td width="163" height="23"><font color="#000080">
        <input type="submit" value="Submit" name="SUBMIT" style="color: #0000FF"></font></td>
      </tr>
    </table>
    </center>
  </div>
</form>