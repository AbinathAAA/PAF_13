<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@page import="model.project" %>
<%
if (request.getParameter("Name") != null)
{
	if (request.getParameter("Name") != null)
	 {
	 project itemObj = new project();
	 String stsMsg = itemObj.insertProject(request.getParameter("Name"),
	 request.getParameter("Description"),
	 request.getParameter("Language"),
	 request.getParameter("Devname"),
	 request.getParameter("Price"));
	 session.setAttribute("statusMsg", stsMsg);
	 } 
}

//Delete item----------------------------------
if (request.getParameter("Id") != null)
{
project itemObj = new project();
String stsMsg = itemObj.deleteProject(request.getParameter("Id"));
session.setAttribute("statusMsg", stsMsg);
}
%>

<html>
<head>
<link rel="stylesheet" href="views/bootstrap.min.css">
<meta charset="ISO-8859-1">


<title>Project Management</title>
</head>

<body>

<h1>Project Management</h1>
<form method="post" action="items.jsp">
<div class="container">
 <div class="row">
 <div class="col">

 Name: <input name="Name" type="text"  class="form-control"><br>
 Description: <input name="Description" type="text"  class="form-control"><br>
 Language: <input name="Language" type="text"  class="form-control"><br>
 Developer Name: <input name="Devname" type="text"  class="form-control"><br>
 Price: <input name="Price" type="text"  class="form-control"><br>
 <input name="btnSubmit" type="submit" value="Save"class="btn btn-primary">

 </div>
 </div>
</div>
</form>
<div class="alert alert-success">
 <%
 out.print(session.getAttribute("statusMsg"));
 %>
</div>
<br>
<%
project itemObj = new project();
 out.print(itemObj.readProject());
%>

</body>
</html>