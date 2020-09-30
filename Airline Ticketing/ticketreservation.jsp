<%!
	String name,age,sex,departfrom,destinationto,date,month,year,time,meridian,ccno;
%>
<%
	name = request.getParameter("name");
	age = request.getParameter("age");
	sex = request.getParameter("sex");
	departfrom = request.getParameter("departfrom");
	destinationto = request.getParameter("destinationto");
	date = request.getParameter("date");
	month = request.getParameter("month");
	year = request.getParameter("year");
	time = request.getParameter("time");
	meridian = request.getParameter("meridian");
	ccno = request.getParameter("ccno");
