<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<%! int x=0;  String suser=""; %>

</head>
<body>
<%
Cookie arr[] = request.getCookies();

for(Cookie c:arr)
{
	if(c.getName().equals("c"))
	{
		suser=c.getValue();
	}
}


%>
<form action="" method="post">
<input type="text" name="txtname" placeholder="Enter Name" value="<%= suser %>" />
<br>
<input type="checkbox" name="chk" <%  if(suser!=""){out.print("checked");} %>   />Remember me
<br>

<input type="submit" name="btnsubmit" value="Create" />  
<br>
<input type="submit" name="btnsubmit1" value="Delete" /> 
</form>
<%
if(request.getParameter("btnsubmit")!=null)
{
	if(request.getParameter("chk")!=null)
	{
	Cookie c = new Cookie("c",request.getParameter("txtname"));
	response.addCookie(c);
	c.setMaxAge(5*24 * 60 * 60 * 1000);
	response.sendRedirect("Remember2.jsp");
	}
}
if(request.getParameter("btnsubmit1")!=null)
{
	
	Cookie c = new Cookie("c","");
	response.addCookie(c);
	c.setMaxAge(5*24 * 60 * 60 * 1000);
	response.sendRedirect("Remember2.jsp");
	
}
%>

</body>
</html>