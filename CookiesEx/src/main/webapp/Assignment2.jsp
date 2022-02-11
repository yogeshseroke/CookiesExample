<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="<%if(request.getParameter("btnsubmit")!=null)
{
    Cookie ar[]=request.getCookies();
    
    for(int i=0;i<ar.length;i++)
    {
    	
    	if(ar[i].getName().equals("a"))
    	{
    		out.println(ar[i].getValue());
    		
    		
    	}
    }
}
%>">
<center>
<form action="" method="post">
RED<input type="radio" name="txt" value="Red"  />
<br>
<br>
GREEN<input type="radio" name="txt" value="Green" />
<br>
<br>
BLUE<input type="radio" name="txt" value="Blue" />
<br>
<br>
<input type="submit" name="btnsubmit" value="Click" />
<br>
<br>
</form>
<%
if(request.getParameter("btnsubmit")!=null)
{
     Cookie c=new Cookie("a",request.getParameter("txt"));	
     
     c.setMaxAge(2000);
     
     response.addCookie(c);
}
%>
</center>
</body>
</html>