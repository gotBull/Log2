<%-- 
    Document   : Index
    Created on : 2023年12月16日, 下午9:12:12
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
        <%! 
        HttpSession session;
    %>
    <%
        session = request.getSession();
    %>
    <body >
        <h1>海塔生物科技</h1>
        <a href="MemberLogin.jsp">會員登入</a>
        <div>
            <p>瀏覽器版本:<br> <%= request.getHeader("User-Agent") %></p><br> 
            <p>瀏覽器語言:<br> <%= request.getHeader("Accept-Language") %></p><br>
            <p>使用者IP: <br><%= request.getLocalAddr() %></p><br>
            <p>使用者瀏覽器:<br> <%= request.getRemoteAddr() %></p>

          
        </div>
    </body>
</html>
