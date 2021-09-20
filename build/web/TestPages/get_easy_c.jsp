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
Connection connection = null,conn=null;
Statement statement = null;
ResultSet resultSet = null;
PreparedStatement pstm=null;
int i=0;
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
 int  correct,incorrect,left;
 int mean;
   %>
   
   <%
      
try{
    DBConnection obj= new DBConnection();
connection = obj.getConnection();
statement=connection.createStatement();
System.out.println("Success");
String sql ="select * from answer where id>=1 and id<=10";
correct=0;
incorrect=0;
left=0;
int i=1;
resultSet = statement.executeQuery(sql);
while(resultSet.next())
{ 
        if(resultSet.getString("option").equals(request.getParameter(""+i+"")))
        {correct++;}
        else 
        {  if(request.getParameter(""+i+"")==null)
            {
                left++;
            }
        else
            {
                incorrect++;
            }
        }
        i++ ;
}
if(session.getAttribute("status")!=null)
{
   String sql_score="insert into score() values(?,?,?,?)";
 pstm=connection.prepareStatement(sql_score);
 pstm.setInt(1,0);
 pstm.setInt(2,Integer.parseInt((String)session.getAttribute("user_id")));
 pstm.setInt(3,correct );
 pstm.setString(4,"c");
 i = pstm.executeUpdate();
session.removeAttribute("status");
}
sql="SELECT AVG(scores) AS mean FROM score";
connection.close();
} catch (Exception e) {
out.println(e);
}
%>
<jsp:include page="./chart.jsp"/>

<h2 >Correct answers are : <%= correct %></h2>
<h2>InCorrect answers are : <%= incorrect %></h2>
<h2>Left answers are : <%= left %></h2>

<a href="../CorrectAnswers/C_easy.jsp" >Click me to get Correct answers</a>

</body>
</html>