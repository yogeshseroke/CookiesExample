<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="" method="post">
<input type="text" name="t1" /><br>

<input type="submit" name="btnsubmit1" value="Create Cookie" /><br>

<input type="submit" name="btnsubmit2" value="Get Cookie" /><br>
</form>
<%
if(request.getParameter("btnsubmit1")!=null)
{
    Cookie c=new Cookie("a",request.getParameter("t1"));
    c.setMaxAge(5000);
    response.addCookie(c);
}
if(request.getParameter("btnsubmit2")!=null)
{
	Cookie c[]=request.getCookies();
	
	
	for(Cookie a:c)
	{
	
		   if(a.getName().equals("a"))
		{
	
		      out.println(a.getValue());
		}
	}
}
%>
</body>
</html>