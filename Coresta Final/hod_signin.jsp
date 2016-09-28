<%@ page language="java" import = "java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HOD Sign In</title>
<meta charset="utf-8">
<meta name="author" content="Sarsiz Chauhan">
<meta name="generator" content="sarsiz chauhan">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="font-awesome.min.css" rel="stylesheet">
<link href="hod_sign_in_page.css" rel="stylesheet">
<link href="hod_signin.css" rel="stylesheet">
<script src="jquery-1.11.3.min.js"></script>
<script src="affix.min.js"></script>
<script src="scrollspy.min.js"></script>
<script src="jquery.ui.effect.min.js"></script>
<script>
$(document).ready(function()
{
   $("#wb_TextMenu1").affix({offset:{top: $("#wb_TextMenu1").offset().top}});
   $('a[href*=#contact]').click(function(event)
   {
      event.preventDefault();
      $('html, body').stop().animate({ scrollTop: $('#wb_contact').offset().top }, 600, 'easeOutCubic');
   });
});
</script>

<script language="javascript">
		function validate(form) {
			if (form.a_username.value == "") {
				alert("Please enter your username");
				form.a_username.focus();
				return false;
			}
			if (form.a_password.value == "") {
				alert("Please enter Password");
				form.a_password.focus();
				return false;
			}
		}
</script>

</head>
<body data-spy="scroll">
<div id="wb_LayoutGrid1">
<div id="LayoutGrid1">
<div class="row">
<div class="col-1">
<div id="wb_Heading1" style="display:inline-block;width:100%;z-index:0;">
<h1 id="Heading1"><a href="./hod_signin.jsp">CORESTA</a></h1>
</div>
</div>
<div class="col-2">
<div id="wb_TextMenu1" style="display:inline-block;width:312px;height:35px;text-align:center;z-index:1;">
<span><a href="./home_page.jsp" class="menu_style">Home</a></span><span><a href="./home_page.jsp#sign_in" class="menu_style">Sign In</a></span><span><a href="./home_page.jsp" class="menu_style">About</a></span><span><a href="./motive.html" class="menu_style">Motive</a></span><span><a href="#contact" class="menu_style">Contact</a></span>
</div>
</div>
</div>
</div>
</div>



<div id="wb_LayoutGrid3">
<div id="LayoutGrid3">
<div class="row">
<div class="col-1">
<div id="wb_JavaScript5" style="display:inline-block;width:100%;z-index:2;">
<div id="greeting" style="font-family:Bookman Old Style;font-size:14px;color:#00BFFF;font-weight:bold;font-style:italic;text-align:left;text-decoration:none;"></div> 
<script>
var datenow = new Date(); 
var timenow = datenow.getTime(); 
datenow.setTime(timenow); 
var hournow = datenow.getHours(); 
var greeting = document.getElementById('greeting');
if (hournow > 18)
{ 
   greeting.innerHTML = "Good Evening!"; 
}
else 
if (hournow > 12) 
{
   greeting.innerHTML = "Good Afternoon!"; 
}
else 
{
   greeting.innerHTML = "Good Morning!"; 
}
</script>
</div>
</div>
<div class="col-2">
<hr id="Line2" style="display:block;width:100%;height:11px;z-index:3;">
<div id="wb_FontAwesomeIcon1" style="display:inline-block;width:61px;height:63px;text-align:center;z-index:4;">
<div id="FontAwesomeIcon1"><i class="fa fa-user">&nbsp;</i></div>
</div>
<div id="wb_Text1">
<span style="color:#000000;font-family:Arial;font-size:19px;"><strong><br></strong></span><span style="color:#00BFFF;font-family:Arial;font-size:19px;"><strong>Head of Department <br>Sign In</strong></span>
</div>
</div>
<div class="col-3">
</div>
<div class="col-4">
<div id="wb_JavaScript2" style="display:inline-block;width:100%;z-index:6;">
<div style="color:#00BFFF;font-size:14px;font-family:Arial;font-weight:bold;font-style:normal;text-align:left;text-decoration:none" id="basicclock"></div>
<script>
function clock() 
{
   var digital = new Date();
   var hours = digital.getHours();
   var minutes = digital.getMinutes();
   var seconds = digital.getSeconds();
   if (minutes <= 9) minutes = "0" + minutes;
   if (seconds <= 9) seconds = "0" + seconds;
   dispTime = hours + ":" + minutes + ":" + seconds;

   var basicclock = document.getElementById('basicclock');
   basicclock.innerHTML = dispTime;
   setTimeout("clock()", 1000);
}
clock();
</script>


</div>
<hr id="Line7" style="display:block;width:100%;height:11px;z-index:7;">
<div id="wb_JavaScript4" style="display:inline-block;width:100%;z-index:8;">
<div style="color:#00BFFF;font-size:14px;font-family:Arial;font-weight:bold;font-style:normal;text-align:left;text-decoration:none" id="basicdate"></div>
<script>
   var now = new Date();
   var days = new Array('Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday');
   var months = new Array('January','February','March','April','May','June','July','August','September','October','November','December');
   var date = ((now.getDate() < 10) ? "0" : "") + now.getDate();
   var year = (now.getYear() < 1000) ? now.getYear() + 1900 : now.getYear();
   today = days[now.getDay()] + ", " + months[now.getMonth()] + " " + date + ", " + year;
   var basicdate = document.getElementById('basicdate');
   basicdate.innerHTML = today;
</script>



</div>
</div>
</div>
</div>
</div>

<div id="wb_LayoutGrid2">

<form action="Admin_login" name="loginform" method="post" id="LayoutGrid2" onSubmit="return validate(this);">
<input type="hidden" name="form_name" value="loginform">
<div class="row">
<div class="col-1">
<div id="wb_LayoutGrid5">
<div id="LayoutGrid5">
<div class="row">
<div class="col-1">
</div>
</div>
</div>
</div>
</div>
<div class="col-2">
</div>
<div class="col-3">
<label id="Label4" style="display:block;width:100%;height:36px;line-height:36px;z-index:10;">Log In</label>
<label for="username" id="Label5" style="display:block;width:100%;height:26px;line-height:26px;z-index:11;">User Name</label>
<hr id="DummyLine1" style="display:block;width:100%;height:11px;z-index:12;">
<input type="text" id="username" style="display:block;width:100%;height:28px;line-height:28px;z-index:13;" name="a_username" placeholder="username">
<hr id="Line1" style="display:block;width:100%;height:11px;z-index:14;">
<label for="password" id="Label6" style="display:block;width:100%;height:26px;line-height:26px;z-index:15;">Password</label>
<hr id="Line3" style="display:block;width:100%;height:11px;z-index:16;">
<input type="password" id="password" style="display:block;width:100%;height:28px;line-height:28px;z-index:17;" name="a_password" placeholder="password">
<hr id="Line5" style="display:block;width:100%;height:11px;z-index:18;">
<input type="checkbox" id="rememberme" name="rememberme" value="on" style="display:inline-block;z-index:19;">
<label for="rememberme" id="Label7" style="display:block;width:100%;height:26px;line-height:26px;z-index:20;">Stay Signed In</label>
<hr id="Line4" style="display:block;width:100%;height:11px;z-index:21;">
<input type="submit" id="login" name="login" value="Log In" style="display:inline-block;width:63px;height:24px;z-index:22;">
<a href="forget_password.jsp"><label id="Label1" onclick="window.location.href="./forget_password.jsp";return false;" style="display:block;width:100%;height:26px;line-height:26px;z-index:23;">Forgot password?</label></a>
</div>
<div class="col-4">
</div>
<div class="col-5">
</div>
</div>
</form>
</div>
<div id="wb_LayoutGrid6">
<div id="LayoutGrid6">
<div class="row">
<div class="col-1">
<div id="wb_Text6">
<span style="color:#C0C0C0;font-family:Arial;font-size:15px;"><strong>ADDRESS</strong><br>C-4 Janak Puri, New Delhi-110058<br><br><strong>CONTACTS</strong><br>Email: director@msit.in<br>Phone: 25528117, 25552667<br></span>
</div>
<div id="wb_contact" style="display:inline-block;width:100%;z-index:25;">
<a id="contact" style="visibility:hidden">&nbsp;</a>

</div>
</div>
<div class="col-2">
<div id="wb_Image1" style="display:inline-block;width:100%;height:auto;z-index:26;">
<a href="https://www.google.nl/maps/place/40%C2%B043'05.6%22N+73%C2%B059'53.8%22W/@40.718217,-74.0004727,17z/data=!3m1!4b1!4m2!3m1!1s0x0:0x0?hl=en"><img src="images/maps_ny.jpg" id="Image1" alt=""></a>
</div>
</div>
<div class="col-3">
<input type="text" id="Editbox1" style="display:block;width:100%;height:30px;line-height:30px;z-index:27;" name="Editbox1" value="" placeholder="Email">
<textarea name="TextArea1" id="TextArea1" style="display:block;width:100%;height:88px;z-index:28;" rows="4" cols="44"></textarea>
<input type="submit" id="Button1" name="" value="CONTACT US" style="display:inline-block;width:136px;height:34px;z-index:29;">
</div>
</div>
</div>
</div>
<div id="wb_LayoutGrid7">
<div id="LayoutGrid7">
<div class="row">
<div class="col-1">
<hr id="Line6" style="display:block;width:100%;height:1px;z-index:30;">
<div id="wb_Text7">
<span style="color:#C0C0C0;font-family:Arial;font-size:15px;">Copyright &#0169; 2016 Coresta. All Rights Reserved</span><span style="color:#D2691E;font-family:Arial;font-size:15px;"><br></span><span style="color:#000000;font-family:Arial;font-size:8px;"><br></span>
</div>
</div>
</div>
</div>
</div>
<div style="z-index:40">
<script>
var disabled_message = "Right Click won't work";
document.oncontextmenu = function() 
{ 
   return false; 
}
document.onmousedown = function md(e) 
{ 
  try 
  { 
     if (event.button==2||event.button==3) 
     {
        if (disabled_message != '')
           alert(disabled_message);
        return false; 
     }
  }  
  catch (e) 
  { 
     if (e.which == 3) return false; 
  } 
}
</script>
</div>
<script>
   $("#wb_PageHeader").affix({offset:{top: $("#wb_PageHeader").offset().top}});
</script></body>
</html>