<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<title>Insert title here</title>
<style type="text/css">
h3{
	font-family: 将棋ふぉんと;
	font-size: 64px;
}
.test{
	font-family: 将棋ふぉんと;
	font-size: 64px;
	border:solid 1px #000;
}
#main{
	/*width:610px;*/
	margin: 0 auto;
	border:solid 1px #000;
}
</style>
</head>
<body>
<%
List<char[]> array = new ArrayList<>();
//List<Character> temp = new ArrayList<>();
String one = "bcdehedcb";
String two = "　f　　　　　g　";
String three = "aaaaaaaaa";
String fourToSix ="　　　　　　　　　";

array.add(one.toCharArray());
array.add(two.toCharArray());
array.add(three.toCharArray());

for(int i = 0; i < 3; i++)
	array.add(fourToSix.toCharArray());

array.add(three.toUpperCase().toCharArray());
array.add(two.toUpperCase().toCharArray());
array.add(one.toUpperCase().toCharArray());

for(char[] c: array) {
	for(char h : c)
		System.out.print(h);
	System.out.println();
}

request.setAttribute("array", array);

%>
<h3>abcdefghABCDEFG</h3>


<div id ="main">
<c:forEach items="${array}"  var="temp" >
	<c:forEach items="${temp}" var="data" >
			<span class = "test"><c:out value="${data}"></c:out></span>
	</c:forEach>
	<br>
</c:forEach>
</div>


</body>
</html>