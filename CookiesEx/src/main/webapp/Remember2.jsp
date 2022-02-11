<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
Cookie arr[] = request.getCookies();

for(Cookie c:arr)
{
	if(c.getName().equals("c"))
	{
		out.print(c.getValue());
	}
}


%>
</body>
</html>