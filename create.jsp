<html>
  <head>
      <link type="text/css" rel="stylesheet" href="stylesheet.css" />
     
  </head>
  <body style="background-color:#9AFEFF">
    <img id="first" src="https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcSMe3V4dKjMRuUHtnVx8lACkRLBdLFB9kxq6N3cce1OqDSiSts2" />
    <center>
    <form id="third" action="create_account.jsp">
       Enter Name:<input type="text" name="txtname" /><br><br>
       Enter Username:<input type="text" name="txtusername" /><br><br>
       Enter password:<input type="text" name="txtpassword" /><br><br>
       <input type="hidden" name="txtamt" value="${param.txtamt}" />
       <input type="submit" value="Sign up" />
    </form></center>
    <img id="second" src="http://www.bagsan.com.tr/wp-content/uploads/2013/03/footer.png" />
  </body>
</html>
   