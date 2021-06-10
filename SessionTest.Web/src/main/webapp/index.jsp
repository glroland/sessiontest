<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>com.glroland Session Test</title>
</head>
<body>
<%
	if (session.getValue("sessionValue") == null)
		session.putValue("sessionValue", "");

	String newValue = (String)request.getParameter("newvalue");
	if (newValue != null)
		session.putValue("sessionValue", newValue);

%>
<form method="POST" action="index.jsp">
<table border="0" align="Center">
<tr>
	<td align="right">Old Value:</td><td><%= session.getValue("sessionValue") %></td>
</tr>
<tr><td colspan="2"><br/></td></tr>
<tr>
	<td align="right">New Value:</td><td><input type="text" name="newvalue" /></td>
</tr>
<tr><td colspan="2"><br/></td></tr>
<tr>
	<td colspan="2" align="Center"><input type="submit" /><button onclick="location.reload();">Refresh</button></td>
</tr>
</table>
</form>

</body>
</html>