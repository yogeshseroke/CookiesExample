<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%! String s=""; %>

</head>
<body>
<%
    Cookie arr[]=request.getCookies();
    for(Cookie c:arr)
    {
    	if(c.getName().equals("b"))
    	{
    		s=c.getValue();
    	}
    }
%>
<center>
<form action="" method="post">
<input type="text" name="txtname" placeholder="Enter Name" value="<%= s%>" />
<br><br>
<input type="checkbox" name="txtcheck" <%if(s!=""){out.println("checked");} %> />Remember Me
<br><br>
<input type="submit" name="btnsubmit1" value="Create"/>
<br><br>
<input type="submit" name="btnsubmit2" value="Delete" />
</form>
</center>
<%
    if(request.getParameter("btnsubmit1")!=null)
    {
    	if(request.getParameter("txtcheck")!=null)
    	{
    	Cookie c=new Cookie("a",request.getParameter("txtname"));
    	response.addCookie(c);
    	c.setMaxAge(5000);
    	response.sendRedirect("RememberMe2.jsp");
        }
    }

    if(request.getParameter("btnsubmit2")!=null)
    {
    	Cookie c=new Cookie("b","");
    	response.addCookie(c);
    	c.setMaxAge(5000);
    	response.sendRedirect("RememberMe2.jsp");

    }
%>
</body>
</html>