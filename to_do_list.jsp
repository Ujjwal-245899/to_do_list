<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>To do List Created </title>
</head>
<body>
<!--  Create Html form -->
	<form action="./to_do_list.jsp"> 
	 Add New Item : <input type="text" name="theitem">
	 <br>
	 <br>
	 
	 <input type="submit" value="Add">
	
	
	</form>
	<br> 
	<!-- Add a new itme to do list -->
	 ITEM ENTERED: <%=request.getParameter("theitem") %> 
	 <br>
	 <!-- step2  -->
	 <%
	 	List<String> items =(List<String>) session.getAttribute("mytodoList");
	 //if to do list is empty
	 if(items==null)
	 {
		 items=new ArrayList<String>();
		 
		 session.setAttribute("mytodoList",items);
		 
	 }
	 //Adding data to session
	 
	 String theitem= request.getParameter("theitem");
	 if((theitem!=null)&&(theitem!=""))
	 {
		 items.add(theitem);
	 }
	 
	 %>
	 <br>
	 <!--  Dispaly iitem -->
	 <h4><b>TO DO LIST</b></h4>
	 <ol type="A">
	 <%
	 
	 for(String x:items)
	 {
		 out.print("<li>"+x+"</li>");
		 //out.print("<input type="radio">");
		 
	 }
	 
	 %>
	 </ol>
	 
	



</body>
</html>