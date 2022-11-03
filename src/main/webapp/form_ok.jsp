<%--
  Created by IntelliJ IDEA.
  User: jiuhyeong
  Date: 2022/11/04
  Time: 1:22 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("UTF-8");
    String brand= request.getParameter("brand");
    String name= request.getParameter("name");
    String birthDay= request.getParameter("birthDay");
    String mileage= request.getParameter("mileage");
    String warranty= request.getParameter("warranty");
    String option= request.getParameter("option[]");
    String description= request.getParameter("description");
%>
<html>
<head>
    <title>InputDatas</title>
</head>
<body>
Brand: <%=brand%><br/>
Name: <%=name%><br/>
BirthDay: <%=birthDay%><br/>
Mileage: <%=mileage%><br/>
Wrranty: <%=warranty%><br/>
Option: <%=option%><br/>
Description: <%=description%><br/>
</body>
</html>
