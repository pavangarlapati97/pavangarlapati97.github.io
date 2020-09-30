<html>

<head>
<meta http-equiv="Content-Language" content="en-us">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>New Page 1</title>
<script language="javascript">
function checkavailability()
{
	var month = document.avail.month.value;
	var year = document.avail.year.value;
	var days ="mon","tue";
	var now = new Date();
	
	alert("Sun"+"     "+"Mon"+"     "+"Tue"+"     "+"Wed"+"     "+"Thu"+"     "+"Fri"+"    "+"Sat<br><%= new java.util.Date()%>"+;);
	
}

</script>
</head>

<body>

<form method="POST" action="" name="avail">
<p>
  month : <input type="text" name="month" size="20">year:
  <input type="text" name="year" size="20"></p>
  <p><input type="submit" value="Submit" name="B1" onClick="return checkavailability()"><input type="reset" value="Reset" name="B2"></p>
</form>

</body>

</html>