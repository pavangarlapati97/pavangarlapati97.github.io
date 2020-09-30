<%@ page import="java.sql.*,java.util.*"%>
<%!
	String pid,name,sex,departfrom,destinationto,day,month,year,time,meridian,ccno,age,date;
	int seating;
int m,mm;
	Connection con;
	Statement st,st1,st2;
	ResultSet rs,rs1;
	PreparedStatement ps;
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
	String ccno = request.getParameter("ccno");

	String date1=date+"-"+month+"-"+year;
	String time1=time+""+meridian;
	


	Class.forName("oracle.jdbc.driver.OracleDriver");
	con=DriverManager.getConnection("jdbc:oracle:thin:@system1:1521:oracle","airlines","airlines");
	st=con.createStatement();
		

		String day[]={"sun","mon","tues","wednes","thurs","fri","satur"};
		String month1[]={"jan","feb","mar","apr","may","jun","jul","aug","sep","oct","nov","dec"};
		

			for(int j=0;j < month1.length;j++)
			{
			if(month1[j].equalsIgnoreCase(month)) 
			{
			m=j;
			break;
			}
			}
			

		Calendar cal = Calendar.getInstance();
		Calendar cal1 = Calendar.getInstance();
		cal1.set(Calendar.DATE,Integer.parseInt(date));	
		cal1.set(Calendar.MONTH,m);	
		cal1.set(Calendar.YEAR,Integer.parseInt(year));	

		


		System.out.println(day[cal1.get(Calendar.DAY_OF_WEEK)-1]+"day");	
		String day1=day[cal1.get(Calendar.DAY_OF_WEEK)-1]+"day";
		System.out.println(date1+" "+day1+ "  "+cal.before(cal1));

		if(cal1.after(cal))
		{		

		st1=con.createStatement();
		rs1=st1.executeQuery("select fare,pid,a.seating from timings,aeroplane_details a where source like '"+departfrom+"' and destination like '"+destinationto+"' and day like '"+day1+"' and time like '"+time1+"' and a.pid# like pid");
				
		if(rs1.next())
		{
		
		int fare = rs1.getInt(1);
		String pid1=rs1.getString(2);
		seating= rs1.getInt(3);
		rs1.close();	

		rs=st.executeQuery("select count(*) from reserve where dod like '"+date1+"'");
		
		rs.next();
		int limit = rs.getInt(1);
		System.out.println(limit);
		if(limit<seating)
		{
		
		ps=con.prepareStatement("insert into reserve values(?,?,?,?,?,?,?,?,?,?)");
		ps.setString(1,pid1);
		ps.setString(2,name);
		ps.setString(3,age);
		ps.setString(4,sex);
		ps.setString(5,departfrom);
		ps.setString(6,destinationto);
		ps.setString(7,time1);
		ps.setString(8,date1);
		ps.setString(9,ccno);
		ps.setInt(10,fare);		
		ps.execute();
		out.println("<b>One ticket is reserved successfully</b><br/>");
		
			out.println("<b>Name                 :"+name+"<br/>");
			out.println("Departure place         :"+departfrom+"<br/>");
			out.println("Destination             :"+destinationto+"<br/>");
			out.println("Departure Date and Time :"+date1+" : "+time1+"<br/>");
			out.println("Fare                    :"+fare+"</b><br/>");
			out.println("<h1 color='GREEN'>--*|  HAPPY JOURNEY  |*--<h1>");
		}
		else
		

			out.println("no reservations on the date you mentioned");
			
		}
		else
		out.println("it's not possible to reserve the tickets on that date you specified");

		
		}
		else
				out.println("<b>sorry,no reservations can be taken place at this time</b>");
	
		


	
%>