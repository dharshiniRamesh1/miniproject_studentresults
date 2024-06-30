<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body> 
<%
HttpSession sn=request.getSession();
int m1=(int)sn.getAttribute("mark1");
int m2=(int)sn.getAttribute("mark2");
String stat=(String)sn.getAttribute("statu");
%>

<table border="1">
 <tr>
 	<th>Mark1</th> 
 	<th>Mark2</th>
 	<th>Statu</th>
 
 </tr>
  <tr>
 	<td><%=m1 %></td>
 	<td><%=m2 %></td>
 	<td><%=stat %></td>
 
 </tr>

</table>
</body>
</html>