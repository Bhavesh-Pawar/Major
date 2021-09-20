<%
    if(session.getAttribute("user_id")==null)
    {
        response.sendRedirect("../sign_in.html");
    }
%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="p1.DBConnection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.google.gson.Gson"%>
<%@ page import="com.google.gson.JsonObject"%>
<%!
    String dataPoints=null;
    %>
<%
try
{
    DBConnection obj= new DBConnection();
Connection conn=obj.getConnection();
Statement stm=conn.createStatement();
Gson gsonObj = new Gson();
Map<Object,Object> map = null;
List<Map<Object,Object>> list = new ArrayList<Map<Object,Object>>();
 String sql="SELECT score,language FROM score where user_id='"+session.getAttribute("user_id")+"'";
ResultSet rs=stm.executeQuery(sql);
int i=1;
while(rs.next())
{
    map = new HashMap<Object,Object>(); 
    map.put("label",i);
    map.put("y", rs.getInt("score"));
    map.put("indexLabel",rs.getString("language").toUpperCase());
    list.add(map);
    i++;
}
  dataPoints= gsonObj.toJson(list);
}catch(Exception e)
{
    out.println(e);
}
%>
 
<!DOCTYPE HTML>
<html>
<head>
        <link rel="stylesheet" href="../cdn.jsdelivr.net_npm_bootstrap@5.0.1_dist_css_bootstrap.min.css">

    <style>
        .container
        {
              margin: 25px 25px;
    padding: 49px 62px;
    position: relative;  
        }
        </style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
window.onload = function() { 
 
var chart = new CanvasJS.Chart("chartContainer", {
	title: {
		text: "Performance"
	},
	axisX: {
		title: "Test Id"
	},
	axisY: {
            title: "Test Scores",
                minimum:0,
                interval:1,
                maximum:10,
		includeZero: true
	},
	data: [{
                indexLabelFontSize:25,
                indexLabelPlacement:"inside",
		type: "column",
		dataPoints: <%out.print( dataPoints );%>
	}]
});
chart.render();
 
}
</script>
<link rel="stylesheet" href="test.css">
</head>
<body>
<div id="chartContainer" style="text-align: center;height: 370px; width: 100%;"></div>
<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
<div></div>
<div></div>
<div></div>
<div></div>
<a href="../index.jsp" class="btn btn-primary">GO TO INDEX </a>
</body>
</html>