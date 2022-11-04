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
    String carType= request.getParameter("carType");
    String name= request.getParameter("name");
    String color= request.getParameter("color");
    String birthDay= request.getParameter("birthDay");
    String mileage= request.getParameter("mileage");
    String warranty;
    if(request.getParameter("warranty")==null){
        warranty ="Manufacturer Warranty Expired";
    }
    else {
        warranty = request.getParameter("warranty");
    }
    String price= request.getParameter("price");
    String description= request.getParameter("description");
%>
<html>
<head>
    <link rel="stylesheet" href="my.css">
    <title>InputDatas</title>
</head>
<body>
<div id="title">
    <h2>Input Data</h2>
</div>
<div id="info">
    Brand: <%=brand%><br/>
    Car Type: <%=carType%><br/>
    Name: <%=name%><br/>
    Color <%=color%><br/>
    BirthDay: <%=birthDay%><br/>
    Mileage: <%=mileage%>km<br/>
    Warranty: <%=warranty%><br/>
    Option:
    <%
        String[] hobbies = request.getParameterValues("option");
        for(int i = 0 ; i < hobbies.length ; i++){
            if(i== (hobbies.length-1)){
                out.println(hobbies[i]);
            }
            else {
                out.println(hobbies[i] + ", ");
            }
        }
    %><br/>
    Price: <%=price%>원<br/>
    Description: <%=description%><br/>
</div>

</body>
</html>
