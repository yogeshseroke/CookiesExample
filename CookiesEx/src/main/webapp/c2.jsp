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

<input type="text" name="txtname" />
<br>
<input type="submit" name="btnsubmit1" value="Create Cookie" />
<br>
<input type="submit" name="btnsubmit2" value="Delete Cookie" />
<br>
</form>
<%

if(request.getParameter("btnsubmit1")!=null)
{
  Cookie c=new Cookie("a",request.getParameter("txtname"));
  
  c.setMaxAge(5000);
  
  response.addCookie(c);
}
if(request.getParameter("btnsubmit2")!=null)
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
%>

</body>
</html>