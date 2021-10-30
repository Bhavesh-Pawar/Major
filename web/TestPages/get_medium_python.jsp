<%
    if(session.getAttribute("user_id")==null)
    {
        response.sendRedirect("../sign_in.html");
    }
%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="p1.DBConnection"%>
<%@page import="java.util.Enumeration"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%!
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
PreparedStatement pstm=null;
%>
<!DOCTYPE html>
<html>
    <body onload="noBack()">
<script>

         window.history.forward(); 
        function noBack() { 
            window.history.forward(); 
        } 
</script>

<%! 
Enumeration en=null;
 int  count;
   %>
   
   <%
      
try{
    DBConnection obj= new DBConnection();
connection = obj.getConnection();
statement=connection.createStatement();
System.out.println("Success");
String sql ="select * from answer where id>=71 and id<=80";
count=0;
int i=71;
resultSet = statement.executeQuery(sql);
while(resultSet.next())
{ 
        if(resultSet.getString("option").equals(request.getParameter(""+i+"")))
        {count++;}
        i++ ;
}
if(session.getAttribute("status")!=null)
{
String sql_score="insert into score() values(?,?,?,?)";
 pstm=connection.prepareStatement(sql_score);
 pstm.setInt(1,0);
 pstm.setInt(2,Integer.parseInt((String)session.getAttribute("user_id")));
 pstm.setInt(3,count );
 pstm.setString(4,"python");
 i = pstm.executeUpdate();
session.removeAttribute("status");
}

connection.close();
} catch (Exception e) {
out.println(e);
}
%>
<jsp:include page="./chart.jsp"/>

<h2>Correct answers are : <%= count %></h2>
<a href="../CorrectAnswers/Python_medium.jsp" >Click me to get Correct answers</a>

</body>
</html>