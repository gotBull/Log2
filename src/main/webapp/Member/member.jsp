<%-- 
    Document   : member
    Created on : 2023年12月16日, 下午9:03:50
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%! 
        HttpSession session01;
        String memberID;
    %>
    <%
        session01 = request.getSession();
        if(session01.getAttribute("account")==null)
        {
            response.sendRedirect("http://localhost:8080/Log2/unlogin.html");
        }
        else
        {
            memberID = session01.getAttribute("account").toString();
        }
    %>
    <body>
        <h1>登入成功</h1>
        <p id="time"></p>

    </body>
</html>
