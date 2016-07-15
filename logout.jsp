<html>
  <head>
      <link type="text/css" rel="stylesheet" href="stylesheet.css" />
     
  </head>
 <body style="background-color:#9AFEFF">
   <%@ page import="java.sql.* , mypack.* , DBpack.DBCon " %>
  
   <%
        Account acc=(Account)session.getAttribute("account");
        int amt=acc.enquiry();
        String pass=(String)session.getAttribute("pass");
        Connection con=DBCon.getConnection();
        PreparedStatement ps=con.prepareStatement("update bank set amount=? where password=?");
        ps.setInt(1,amt);
        ps.setString(2, pass);
        ps.executeUpdate();
    %>
     <img id="first" src="https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcSMe3V4dKjMRuUHtnVx8lACkRLBdLFB9kxq6N3cce1OqDSiSts2" />

     <center>
        <div id="third">Amount Update successfull<br>Transactions Complete Congratulations</div>
     </center>
      <img id="second" src="http://www.bagsan.com.tr/wp-content/uploads/2013/03/footer.png" />

 
 </body>
</html> 