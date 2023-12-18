<%-- 
    Document   : MemberLogin
    Created on : 2023年12月16日, 下午9:01:59
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
    <body>
        <form action="checkact.jsp">
            <h2>帳號</h2><br>
            <input type="text" name="account"><br>
            <h2>密碼</h2><br>
            <input type="password" name="password"><br>
            <input type="submit" name="送出">
            <input type="reset" name="清除">
        </form>
    </body>
</html>
