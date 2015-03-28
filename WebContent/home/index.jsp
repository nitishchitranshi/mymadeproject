<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%
response.setHeader("Cache-Control","no-cache"); 
response.setHeader("Pragma","no-cache"); 
response.setDateHeader ("Expires", -1); 
%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>My Made</title>
	<meta charset="utf-8">
	<meta name="author" content="scrum technology">
	<meta name="description" content=""/>
	<link rel="stylesheet" type="text/css" href="../css/reset.css">
    <link rel="stylesheet" type="text/css" href="../css/login.css">
	<link rel="stylesheet" type="text/css" href="../css/main.css">
    <script type="text/javascript" src="../js/jquery.js"></script>
    <script type="text/javascript" src="../js/main.js"></script>

<link href="../themes/js-image-slider.css" rel="stylesheet" type="text/css" />
    <script src="../themes/mcVideoPlugin.js" type="text/javascript"></script>
    <script src="../themes/js-image-slider.js" type="text/javascript"></script>
    <!-------->
<script type="text/javascript" src="../js/login.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$('a.login-window').click(function() {
		
		// Getting the variable's value from a link 
		var loginBox = $(this).attr('href');

		//Fade in the Popup and add close button
		$(loginBox).fadeIn(300);
		
		//Set the center alignment padding + border
		var popMargTop = ($(loginBox).height() + 24) / 2; 
		var popMargLeft = ($(loginBox).width() + 24) / 2; 
		
		$(loginBox).css({ 
			'margin-top' : -popMargTop,
			'margin-left' : -popMargLeft
		});
		
		// Add the mask to body
		$('body').append('<div id="mask"></div>');
		$('#mask').fadeIn(300);
		
		return false;
	});
	
	// When clicking on the button close or the mask layer the popup closed
	$('a.close, #mask').live('click', function() { 
	  $('#mask , .login-popup').fadeOut(300 , function() {
		  console.log("closing the login popup");
		$('#mask').remove();  
	}); 
	return false;
	});
});

function formSubmit(id)
{
	document.getElementById(id).submit();
}

function selectLoginTab(type)
{
	console.log("Type = "+type);
	if(type=="signin")
	{
		console.log("Signin Selected");
		$("#loginTabSignup").removeClass("selected-nav");
		document.getElementById("loginTabSignin").className="selected-nav";
		$("#signin").show();
		$("#signup").hide();
	}
	
	else if(type=="signup")
	{
		console.log("Signup selected");
		$("#loginTabSignin").removeClass("selected-nav");
		document.getElementById("loginTabSignup").className="selected-nav";
		$("#signin").hide();
		$("#signup").show();
	}
}


function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}
function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}
</script>    
</head>
<body onLoad="MM_preloadImages('../img/sample1.png','../img/cart_focused.png','../img/login_focused.png','../img/gift_focused.png')">
	<header class="trasparent_nav">
		<div class="logo">
				<a href="#"><img src="../img/mymadeLogo.png" alt="mymade"></a>
	  </div>
		<div>
			<nav>
				<ul>
					<li><a href="enquire.jsp" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('enquire','','../img/sample1.png',1)"><img id="enquire" src="../img/enquire_ico.png" alt="Enquire"></a></li>
                  <li style="cursor:default"><img src="../img/separator.png"></li>
					<li><a href="gifting.jsp" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('gifting','','../img/gift_ico_focused.png',1)"><img id="gifting" src="../img/gift_ico.png" alt="Gifting"></a></li>
                   <li style="cursor:default"><img src="../img/separator.png"></li>
                    <li><a href="cart.jsp" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('cart','','../img/cart_focused_ico.png',1)"><img id="cart" src="../img/cart_ico.png" alt="Cart"></a></li>
                   <li style="cursor:default"><img src="../img/separator.png"></li>
                   <li><a href="#login-box" class="login-window" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('login','','../img/login_focused_ico.png',1)"><img id="login" src="../img/login_ico.png" alt="Login"></a></li>
				</ul>
			</nav>
		</div>
        <div id="login-box" style="margin-top: -160px;
  margin-left:-262px" class="login-popup">
        <a href="#" class="close"><img src="../img/cancel_button.png" class="btn_close" title="Close Window" alt="Close" /></a>
           <div class="popup-nav">
				<ul>
					<li><a id="loginTabSignin" class="selected-nav" onclick="selectLoginTab('signin')">LOGIN</a></li>
					<li><a id="loginTabSignup" class onclick="selectLoginTab('signup')">SIGN UP</a></li>
				</ul>
		  </div>
          <form  method="post" id="signin" class="signin" action="login.req">
          
				
                <fieldset class="textbox">
            	<label class="username">
                <input id="username" name="username" value="" type="text" autocomplete="on" placeholder="Username">
                </label>
                
                <label class="password">
                <input id="password" name="password" value="" type="password" placeholder="Password">
                </label>
                 
                 <p>
                <a class="forgot" href="#">Forgot password?<br>
Request a new one</a>
                </p>
                <p style="text-align:left; width:274px; margin-top:50px;"> By logging in, you agree to out <a style="color:#00f5a7;text-decoration:none;" href="#">T&amp;C </a>and that you have read our<a style="color:#00f5a7;  text-decoration:none;" href="#"> Privacy Policy</a>.</p>
                <button class="btn" type="button" onclick="formSubmit('signin')">Login</button> <p style="margin-left:31%; padding-top:2%">OR</p>
                <button class="btnfb" type="button">Login with Facebook</button>
                <button class="btngoogle" type="button">Login with Google</button>
               
                
                </fieldset>
          </form>
          <div class="signup">
          <form method="post" id="signup" class="signin" style="display:none" action="registeruser.req">
          
				
                <fieldset class="textbox">
            	<label class="fullname">
                <input id="fullname" name="fullname" value="" type="text" autocomplete="on" placeholder="Fullname">
                <label class="Username">
                <input id="Username" name="username" value="" type="text" autocomplete="on" placeholder="Username">
                <label>
                <input id="email" name="email" value="" type="email" autocomplete="on" placeholder="Email">
                </label>
                
                <label class="password">
                <input id="password" name="password" value="" type="password" placeholder="Password">
                </label>
                <label class="password">
                <input id="password" name="confirm_password" value="" type="password" placeholder="Confirm Password">
                </label>
                <button class="btn" type="button" onclick="formSubmit('signup')">Login</button>
                        
                </fieldset>
          </form>
          </div>
        </div>
</header>
    <!-- End trasparent_nav -->

	<header class="fixed_nav">
		<div>
        <nav>
				<ul><li style="padding-top:12px"><a href="#"><img src="../img/logo_left_decor.png" alt="mymade"></a>
					<li style="padding-top:12px"><a href="enquire.jsp" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('enquire_fixed','','../img/sample1.png',1)"><img id="enquire_fixed" src="../img/enquire_ico.png" alt="Enquire"></a></li>
                  <li style="padding-top:12px; cursor:default"><img src="../img/separator.png"></li>
					<li style="padding-top:12px"><a href="gifting.jsp" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('gifting_fixed','','../img/gift_ico_focused.png',1)"><img id="gifting_fixed" src="../img/gift_ico.png" alt="Gifting"></a></li>
                   <li><a href="#"><img src="../img/mymade_logosmall.png" alt="mymade"></a>
                    <li style="padding-top:12px"><a href="cart.jsp" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('cart_fixed','','../img/cart_focused_ico.png',1)"><img id="cart_fixed" src="../img/cart_ico.png" alt="Cart"></a></li>
                    <li style="padding-top:12px; cursor:default"><img src="../img/separator.png"></li>
                   <li style="padding-top:12px"><a href="#login-box" class="login-window" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('login_fixed','','../img/login_focused_ico.png',1)"><img id="login_fixed" src="../img/login_ico.png" alt="Login"></a></li>
                    <li style="padding-top:12px"><a href="#"><img src="../img/logo_right_decor.png" alt="mymade"></a>
				</ul>
		  </nav>
            <section class="billboard2">
    <ul>            
                    <li><a href="#">INDIAN WEAR</a></li>
					<li><a href="#">WESTERN WEAR</a></li>
					<li><a href="#">OCCASION WEAR</a></li>
					<li><a href="#">CREATE</a></li>
                    <li><a href="#">LOOK ALIKE</a></li>
					<li><a href="#">THINK TANK</a></li>
					<li><a href="#">MY MADE</a></li>
					<li><a href="#">INSPIRATIONS</a></li>
    </ul>
	</section>
      </div>
	</header>
    <!-- End fixed_nav -->
    <!----- billboard --->
	<section class="billboard">
    <ul>            
                    <li><a href="#">INDIAN WEAR</a></li>
					<li><a href="#">WESTERN WEAR</a></li>
					<li><a href="#">OCCASION WEAR</a></li>
					<li><a href="#">CREATE</a></li>
                    <li><a href="#">LOOK ALIKE</a></li>
					<li><a href="#">THINK TANK</a></li>
					<li><a href="#">MY MADE</a></li>
					<li><a href="#">INSPIRATIONS</a></li>
    </ul>
	</section>
    <!-- End billboard -->
    <!--- Wrapper----->
	<section class="main-part">
     <div id="sliderFrame">
        <div id="slider">
            <a href="#">
                <img src="../img/1.jpg" />
            </a>
            <a class="video" href="#">
                <b data-src="../img/2.jpg"></b>
            </a>
            <a class="video" href="#">
                <b data-src="../img/3.jpg"></b>
            </a>
            <a class="lazyImage" href="../img/4.jpg"></a>
            <a class="video" href="#" data-autovideo="1">
                <b data-src="../img/5.jpg"></b>
            </a>
        </div>
    </div>
     
     <div style="margin-top: 1px">
     
       <table style="width:100%; height: 700px;">
       <tr>
       	<td class="box" style="background: #d3d3d3">
        <div class="box-content" >
        <h2>CREATE</h2>
        <div>
        <p>INDIAN WEAR</p><p>SOPHISTICATION</p></div>
        </div>
        </td>
        <td rowspan="2" class="vertical-box" style="background:url(../img/home/png_images/westernwear.PNG) no-repeat">
         <div class="vertical-box-content" >
        <h2 style="margin-right: 28.5%;text-align:center;">CREATE</h2>
        <div  style="margin-top: 90px; margin-right: -132px;">
        <p>INDIAN WEAR</p><p>SOPHISTICATION</p></div>
        </div>
        
        </td>
        <td class="box"  style="background: #d3d3d3">
         <div class="box-content">
        <h2>CREATE</h2>
        <div>
        <p>INDIAN WEAR</p><p>SOPHISTICATION</p></div>
        </div>
        </td>
       </tr>
       <tr>
       <td  class="box"  style="background: #d3d3d3">
        <div class="box-content">
        <h2>CREATE</h2>
        <div>
        <p>INDIAN WEAR</p><p>SOPHISTICATION</p></div>
        </div>
       </td>
       
       <td class="box"  style="background: #d3d3d3">
        <div class="box-content">
        <h2>CREATE</h2>
        <div>
        <p>INDIAN WEAR</p><p>SOPHISTICATION</p></div>
        </div></td>
       </tr>
       <tr>
       	<td colspan="3" class="horizontal-box" >
       	<img src="../img/border.png" style="position: absolute; margin-top: -6px; margin-left: 1.062px;">
        <div class="horizontal-box-content-left" style="background-image:url(../img/home/png_images/buttongallery.PNG)">
         <h2>BUTTON<br>GALLERY</h2>
        <div>
		<p>INDIAN WEAR</p><p>SOPHISTICATION</p></div>
        
        </div>
        <div class="horizontal-box-content-right" style="background-image:url(../img/home/png_images/fabric.PNG)">
         <h2>FABRIC<br>GALLERY</h2>
        <div>
        <p>INDIAN WEAR</p><p>SOPHISTICATION</p></div>
	</div>
        </td>
       </tr>
       </table>
       <table style="width: 100%; height: 700px;">
       <tr>
       	<td class="box" style="background-image:url(../img/home/png_images/dress.PNG)">
        <div class="box-content">
        <h2>DRESS</h2>
        <div style="margin-top: 88px; margin-right: -118px;">
        <p>INDIAN WEAR</p><p>SOPHISTICATION</p></div>
        </div>
        </td>
        <td rowspan="2" class="vertical-box" style="background:url(../img/home/png_images/westernwear.PNG) no-repeat">
         <div class="vertical-box-content">
        <h2 style="margin-right: 22%; margin-top: 22px;text-align:center;">WESTERN<br>WEAR</h2>
        <div style= "margin-top: 114px; margin-right: -142px;">
        <p>INDIAN WEAR</p><p>SOPHISTICATION</p></div>
        </div>
        
        
        </td>
        <td class="box" style="background-image:url(../img/home/png_images/skirts.PNG)">
         <div class="box-content">
        <h2 style="margin-top:35px;margin-right: 40px;">SKIRTS</h2>
        <div style="margin-top: 88px;margin-right: -124px;">
        <p>INDIAN WEAR</p><p>SOPHISTICATION</p></div>
        </div>
        </td>
       </tr>
       <tr>
       <td class="box" style="background-image:url(../img/home/png_images/bottoms.PNG)">
        <div class="box-content">
        <h2 style="margin-top:35px;margin-right: 40px;">BOTTOMS</h2>
        <div style="margin-top: 88px; margin-right: -144px;">
        <p>INDIAN WEAR</p><p>SOPHISTICATION</p></div>
        </div>
       </td>
       
       <td class="box" style="background-image:url(../img/home/png_images/tops.PNG)">
        <div class="box-content">
        <h2 style="margin-top:35px;margin-right: 56px;">TOPS</h2>
        <div style="margin-top: 88px;margin-right: -112px;">
        <p>INDIAN WEAR</p><p>SOPHISTICATION</p></div>
        </div></td>
       
       
       </tr>
       <tr>
       	<td height="197px" width="100%" colspan="3" style="border-style:solid;border-color:white;border-width:1px; background-image:url(../img/home/png_images/fashion-inspiration.PNG)">
        <img src="../img/border.png" style="position: absolute; margin-top: -6px; margin-left: 1.062px;">
        
        <div style="width:100%; height:100%; float:left; color:white">
		
		  <div style="color:white;width:100%;height:150px;">
        <h2 style="font-size:xx-large;float:right;padding: 5px 0 5px 0;margin-top:22px;margin-right: 40%;border-bottom-style: solid;border-bottom-width: 2px;border-top-style:solid;border-top-width: 2px; text-align:center;">FASHION<br>INSPIRATIONS</h2>
        <div style="float: right;
text-align: center;
margin-top: 116px;
margin-right: -180px;">
        <p>INDIAN WEAR</p><p>SOPHISTICATION</p></div>
        </div>
        </div>
        </td>
       </tr>
       </table><table  style="width:100%; height: 700px;">
       <tr>
       	<td class="box" style="background:url(../img/home/png_images/saree.PNG) no-repeat">
        <div class="box-content">
        <h2 style="margin-top:35px;margin-right: 40px;">SAREE</h2>
        <div style="margin-top: 88px; margin-right: -118px;">
        <p>INDIAN WEAR</p><p>SOPHISTICATION</p></div>
        </div>
        </td>
         <td rowspan="2" class="vertical-box" style="background:url(../img/home/png_images/Indianwear.PNG) no-repeat">
         <div class="vertical-box-content" >
        <h2 style="margin-top:22px;margin-right: 32%;">INDIAN<br>WEAR</h2>
        <div style="margin-top: 114px;margin-right: -125px;">
        <p>INDIAN WEAR</p><p>SOPHISTICATION</p></div>
        </div>
        
        
        </td>
        <td class="box" style="background:url(../img/home/png_images/lehenga.PNG)">
         <div class="box-content">
        <h2 style="margin-top:35px;margin-right: 40px;">LEHENGA</h2>
        <div style="margin-top: 88px; margin-right: -146px;">
        <p>INDIAN WEAR</p><p>SOPHISTICATION</p></div>
        </div>
        </td>
       </tr>
       <tr>
       <td class="box" style="background:url(../img/home/png_images/kurta.PNG)">
        <div class="box-content">
        <h2 style="margin-top:35px;margin-right: 40px;">KURTA</h2>
        <div style="margin-top: 88px; margin-right: -122px;">
        <p>INDIAN WEAR</p><p>SOPHISTICATION</p></div>
        </div>
       </td>
       
       <td class="box" style="background:url(../img/home/png_images/suit.PNG)">
        <div class="box-content">
        <h2 style="margin-top:35px;margin-right: 42px;">SUIT</h2>
        <div style="margin-top: 88px; margin-right: -155px;">
        <p>INDIAN WEAR</p><p>SOPHISTICATION</p></div>
        </div></td>
       
       
       </tr>
       <tr>
	  	<td class="horizontal-box" colspan="3" style="background:url(../img/home/png_images/print-gallery.PNG)">
        <img src="../img/border.png" style="position: absolute; margin-top: -6px; margin-left: 1.062px;">
        <div class="horizontal-box-content-full">
		
        <h2 style="margin-top:22px;margin-right: 43%;">PRINT<br>GALLERY</h2>
        <div style="margin-top: 116px; margin-right: -146px;">
        <p>INDIAN WEAR</p><p>SOPHISTICATION</p></div>
		
        </div>
        
        
        </td>
	   </tr>
       </table><table  style="width:100%; height: 700px;">
       <tr>
       	<td class="box" style="background:url(../img/home/png_images/party.PNG)">
        <div class="box-content">
        <h2 style="margin-top:35px;margin-right: 40px;">PARTY</h2>
        <div style="margin-top: 88px; margin-right: -120px;">
        <p>INDIAN WEAR</p><p>SOPHISTICATION</p></div>
        </div>
        </td>
        <td rowspan="2" class="vertical-box" style="background:url(../img/home/png_images/occasionwear.PNG)">
         <div class="vertical-box-content" >
        <h2 style="font-size:xx-large;float:right;padding: 5px 0 5px 0;margin-top:22px;margin-right:68px; text-align:center; border-bottom-style: solid;border-bottom-width: 2px;border-top-style:solid;border-top-width: 2px;">OCCASION<br/>WEAR
		</h2>
        <div style="float: right;
text-align: center;
margin-top: 114px;
margin-right: -150px;">
        <p>INDIAN WEAR</p><p>SOPHISTICATION</p></div>
        </div>
        
        
        </td>
        <td class="box" style="background:url(../img/home/png_images/wedding.PNG)">
         <div class="box-content">
        <h2 style="margin-top:35px;margin-right: 40px;">WEDDINGS</h2>
        <div style="margin-top: 88px; margin-right: -155px;">
        <p>INDIAN WEAR</p><p>SOPHISTICATION</p></div>
        </div>
        </td>
       </tr>
       <tr>
       <td class="box" style="background:url(../img/home/png_images/office.png)">
        <div class="box-content">
        <h2 style="margin-top:35px;margin-right: 40px;">OFFICE</h2>
        <div style="margin-top: 88px; margin-right: -142px;">
        <p>INDIAN WEAR</p><p>SOPHISTICATION</p></div>
        </div>
       </td>
       
       <td class="box" style="background:url(../img/home/png_images/evening.png)">
        <div class="box-content">
        <h2 style="margin-top:35px;margin-right: 40px;">EVENING</h2>
        <div style=" margin-top: 88px; margin-right: -154px;">
        <p>INDIAN WEAR</p><p>SOPHISTICATION</p></div>
        </div></td>
       
       
       </tr>
       <tr>
       <td class="horizontal-row" colspan="3" style="height:197px; background:url(../img/home/png_images/think-tank.PNG)">
        <img src="../img/border.png" style="position: absolute; margin-top: -6px; margin-left: 1.062px;">
        
        <div class="horizontal-row-content-full" style="width:100%; height:100%; float:left; color:white">
		
		  <div style="color:white;width:100%;height:150px;">
        <h2 style="font-size:xx-large;float:right;padding: 5px 0 5px 0;margin-top:22px;margin-right: 46%;border-bottom-style: solid;border-bottom-width: 2px;border-top-style:solid;border-top-width: 2px; text-align:center;">THINK<br>TANK</h2>
        <div style="float: right;
text-align: center;
margin-top: 116px;
margin-right: -120px;">
        <p>INDIAN WEAR</p><p>SOPHISTICATION</p></div>
        </div>
		
        </div>
        
        
        </td>
       </tr>
       </table>
       
       
      
      
      </div>
	</section>
  <!-- End recent_work --><!-- End testimonials --><!-- End clients -->

        <footer>
		<div class="">
		  <div class="footer_widget">
	 	  </div>
		</div>
	</footer>
	<%
	String message = (String)request.getAttribute("message");
	if(message!=null){
%>
<script type="text/javascript">
	alert("<%=message%>");
</script>
<%}%>
	
<!-- End Footer -->
</body>
</html>