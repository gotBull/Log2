<%-- 
    Document   : checkact
    Created on : 2023年12月16日, 下午9:02:53
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%!
        HashMap<String,String> userMap = new HashMap<>();
        HttpSession session01;
        public boolean checkMap(String u, String p)
        {
            if(userMap.containsKey(u))
            {
                if(userMap.get(u).equals(p))
                {
                    
                    return true;
                }
            }
            return false;
        }
    %>
    <%
        userMap.put("user01","123");
        userMap.put("user02", "456");
        userMap.put("user03", "789");
        userMap.put("user04", "012");
        userMap.put("user05", "345");
        String account = request.getParameter("account");
        String password = request.getParameter("password");
        
        if(account==null || password==null)
        {
            response.sendRedirect("MemberLogin.jsp");
        }
        else if(checkMap(account, password))
        {
            session01 = request.getSession();
            session01.setAttribute("account",account);
            session01.setAttribute("ismember",true);
            response.sendRedirect("Member/member.jsp");
        }
        else
        {response.sendRedirect("MemberLogin.jsp");}

    %>
    <body>
       
    </body>
</html>
