

  <%@ page import="java.sql.* , DBpack.DBCon" %>
<html>

  <body>
   
    <%
        int amt=Integer.parseInt(request.getParameter("txtamt"));
        Connection con=DBCon.getConnection();
        PreparedStatement ps=con.prepareStatement("insert into bank values(?,?,?,?)");
        ps.setString(1,request.getParameter("txtname"));
        ps.setString(2,request.getParameter("txtusername"));
        ps.setString(3,request.getParameter("txtpassword"));
        ps.setInt(4,Integer.parseInt(request.getParameter("txtamt")));
        int x=ps.executeUpdate();
        if(x==1){
            RequestDispatcher rs = request.getRequestDispatcher("account.jsp?opt=min&txtamt="+amt);
            session.setAttribute("pass",request.getParameter("txtpassword"));
            rs.forward(request,response);
          
    %>
        
    
    <%
         }else{
            out.println("<div id='third'>failed to create account</div>");
    %>
        <jsp:include page="index.html" />
   
    <%
         }
   
     %>

</body>
</html> 
   