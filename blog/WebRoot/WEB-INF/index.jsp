<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags"  prefix="s"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Home</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600' rel='stylesheet' type='text/css'>
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/magnific-popup.css">
<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
</head>
<body>
<!-- start header -->
<div class="header_bg">
<div class="wrap">
	<div id="content">
      <header id="topnav">
        <nav>
        		 <ul>
					<li class="active"><a class="scroll" href="#home">Home</a></li>
					<li><a class="scroll"href="#service">Services</a></li>
					<li><a class="scroll" href="#portfolio">Porfolio</a></li>
					<li><a class="scroll" href="#team">Team</a></li>
					<li><a href="${pageContext.request.contextPath}/journal_findByPage.action?page=1">Blog</a></li>
					<li><a  class="scroll" href="#contact">Contact</a></li>
					<div class="clear"> </div>
				</ul>
        </nav>
         <div class="logo"><a href="index.html"><img src="${pageContext.request.contextPath}/images/logo.png"></a></div>
        <a href="#" id="navbtn">Nav Menu</a>
        <div class="clear"> </div>
      </header><!-- @end #topnav -->
      <script type="text/javascript"  src="${pageContext.request.contextPath}/js/menu.js"></script>
    </div>
</div>
</div>
<!--start-slider---->
<div class="slider" id="home"> 
				<div class="wrap">
				<!---start-da-slider----->
				<div id="da-slider" class="da-slider">
				<s:iterator var="cs" value="#request.listContents" >
				<div class="da-slide">
					<h2><s:property value="#cs.head"/></h2>
					<p><s:property value="#cs.text"/></p>
					<a href="<s:property value="#cs.herfAdd"/>" class="da-link"><s:property value="#cs.herfName"/></a>
				</div>
				</s:iterator>
				<nav class="da-arrows">
					<span class="da-arrows-prev"></span>
					<span class="da-arrows-next"></span>
				</nav>
			</div>
			<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/slider.css" />
			<script type="text/javascript" src="${pageContext.request.contextPath}/js/modernizr.custom.28468.js"></script>
			<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.cslider.js"></script>
			<script type="text/javascript">
				$(function() {
				
					$('#da-slider').cslider({
						autoplay	: true,
						bgincrement	: 450
					});
				
				});
			</script>
				<!---//End-da-slider----->
			</div>
</div>
<!-----------service------------>
<div  class="sevice" id="service">
	<div class="wrap">
		<div class="service-grids">
		
		
					<s:iterator var="ss" value="#request.listServices">
						<div class="images_1_of_4">
					 		<img src="${pageContext.request.contextPath}/<s:property  value="#ss.picUrl"/>">
					 		<h3><s:property value="#ss.title"/></h3>
					 		<p><s:property value="#ss.text"/></p>
				     		<div class="button"><span><a href="<s:property value="#ss.hrefAdd"/>"><s:property value="#ss.hrefName"/></a></span></div>
						</div>
					</s:iterator>
					
						<div class="clear"> </div>
		 </div>
</div>
<!-----------//service//------------>
<!-----------portfolio-------------->
<div class="portfolio_main"id ="portfolio">
				<div class="wrap">
					<div class="heading_h">
						<h3><a>Photos</a></h3>
					</div>
					<!--start-mfp -->	
					
			<s:iterator var="ps" value="#request.listPhotos">
				<div id="small-dialog<s:property value="#ps.pid"/>" class="mfp-hide">
					<div class="pop_up">
							   <img src="${pageContext.request.contextPath}/<s:property value="#ps.src"/>">
							   	 <h2><s:property value="#ps.name"/></h2>
								 <p><s:property value="#ps.desc1"/></p>
								 <p class="pop_p"><s:property value="#ps.desc2"/></p>
								</div>
				</div> 
			</s:iterator>
			
				<!--end-mfp -->	
				<!--start-content-->
			<div class="gallery">
			<div class="container">
				<div id="gallerylist">
				
				<s:iterator var="ps" value="#request.listPhotos">
				<div class="gallerylist-wrapper">				
					<a class="popup-with-zoom-anim" href="#small-dialog<s:property value="#ps.pid"/>">
						<img src="${pageContext.request.contextPath}/<s:property value="#ps.src" />" alt="Image <s:property value="#ps.pid"/>"/>
					</a>
				</div>
				</s:iterator>
				
					<div class="clear"> </div>
					<div class="button_1"><span><a href="#">See all photos</a></span></div>
			</div>																																					
		</div>
	</div>
	<!--end container -->
				<script src="${pageContext.request.contextPath}/js/jquery.magnific-popup.js" type="text/javascript"></script>
				<script>
					$(document).ready(function() {
						$('.popup-with-zoom-anim').magnificPopup({
							type: 'inline',
							fixedContentPos: false,
							fixedBgPos: true,
							overflowY: 'auto',
							closeBtnInside: true,
							preloader: false,
							midClick: true,
							removalDelay: 300,
							mainClass: 'my-mfp-zoom-in'
					});
				});
				</script>
				
		</div>
	</div>
</div>
<!-----------//portfolio//----------->
<!-----------start-team-------------->
<div class="team" id="team">
				 <div class="wrap">
				 		<div class="heading_h">
							<h3><a>The Team</a></h3>
						</div>	
				 		<div class="middle-grids">
				 		<s:iterator var="lm" value="#request.listTeam">
							<div class="grid_1_of_4 images_1_of_4">
					 			<a class="popup-with-zoom-anim" href="#small-dialog7">
					 				<span class="rollover"> </span>
								</a>
								<img src="${pageContext.request.contextPath}/<s:property value="#lm.picSrc"/>"  alt="Image <s:property value="#lm.tid"/>"/>
					 			<h3><s:property value="#lm.name"/> </h3>
					 			<h4><s:property value="#lm.occupation"/></h4>
					 			<p><s:property value="#lm.introdution1"/> </p>
							</div>
						</s:iterator>
							 <div class="clear"> </div>
					</div>
		 		</div>
</div>
<!----------end-team----------------->
<!-----------start-pricing----------->
<div class="pricing-plans">
					<div class="wrap">
						<div class="pricing-grids">
					<s:iterator value="#request.listProducts" var="prs">
						<div class="pricing-grid">
							<h3><a><s:property value="#prs.name" /></a></h3>
							<div class="price-value">
								<a>$<s:property value="#prs.price" /></a>
							</div>
							<ul>
								<li><a>type:<s:property value="#prs.type" /></a></li>
								<li><a>weight:<s:property value="#prs.weight" /></a></li>
								<li><a>address:<s:property value="#prs.address" /></a></li>
								<li><a>property1:<s:property value="#prs.property1" /></a></li>
								<li><a>property2:<s:property value="#prs.property2" /></a></li>
								<li><a>property3:<s:property value="#prs.property3" /></a></li>
							</ul>
							<div class="cart">
								<a class="popup-with-zoom-anim" href="#small-dialog">Buy now</a>
							</div>
						</div>
					</s:iterator>	
						</div>
							<div class="clear"> </div>
							<!-----pop-up-grid---->
								 <div id="small-dialog" class="mfp-hide">
									<div class="pop_up">
									 	<div class="payment-online-form-left">
											<form>
												<h4><span class="shipping"> </span>Shipping</h4>
												<ul>
													<li><input class="text-box-dark" type="text" value="Frist Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Frist Name';}"></li>
													<li><input class="text-box-dark" type="text" value="Last Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Last Name';}"></li>
												</ul>
												<ul>
													<li><input class="text-box-dark" type="text" value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}"></li>
													<li><input class="text-box-dark" type="text" value="Company Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Company Name';}"></li>
												</ul>
												<ul>
													<li><input class="text-box-dark" type="text" value="Phone" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Phone';}"></li>
													<li><input class="text-box-dark" type="text" value="Address" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Address';}"></li>
													<div class="clear"> </div>
												</ul>
												<div class="clear"> </div>
											<ul class="payment-type">
												<h4><span class="payment"> </span> Payments</h4>
												<li><span class="col_checkbox">
													<input id="3" class="css-checkbox1" type="checkbox">
													<label for="3" name="demo_lbl_1" class="css-label1"> </label>
													<a class="visa" href="#"> </a>
													</span>
													
												</li>
												<li>
													<span class="col_checkbox">
														<input id="4" class="css-checkbox2" type="checkbox">
														<label for="4" name="demo_lbl_2" class="css-label2"> </label>
														<a class="paypal" href="#"> </a>
													</span>
												</li>
												<div class="clear"> </div>
											</ul>
												<ul>
													<li><input class="text-box-dark" type="text" value="Card Number" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Card Number';}"></li>
													<li><input class="text-box-dark" type="text" value="Name on card" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name on card';}"></li>
													<div class="clear"> </div>
												</ul>
												<ul>
													<li><input class="text-box-light hasDatepicker" type="text" id="datepicker" value="Expiration Date" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Expiration Date';}"><em class="pay-date"> </em></li>
													<li><input class="text-box-dark" type="text" value="Security Code" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Security Code';}"></li>
													<div class="clear"> </div>
												</ul>
												<ul class="payment-sendbtns">
													<li><input type="reset" value="Cancel"></li>
													<li><input type="submit" value="Process order"></li>
												</ul>
												<div class="clear"> </div>
											</form>
										</div>
						  			</div>
								</div>
								<!-----pop-up-grid---->
							</div>
						<div class="clear"> </div>
					</div>
				</div>
			</div>
			<!-- Add fancyBox light-box -->
				<script>
					$(document).ready(function() {
						$('.popup-with-zoom-anim').magnificPopup({
							type: 'inline',
							fixedContentPos: false,
							fixedBgPos: true,
							overflowY: 'auto',
							closeBtnInside: true,
							preloader: false,
							midClick: true,
							removalDelay: 300,
							mainClass: 'my-mfp-zoom-in'
					});
				});
		</script>
		<!----End-pricingplans---->
<!-----------end-pricing------------->
<!---------text-slider------------->
			
		 <div class="wmuSlider example1">
		 	<div class="wrap">
			   <article style="position: absolute; width:64%; opacity: 0;"> 
				   	
					<div class="cont span_2_of_3">
						    <h4>What Clients Say</h1>
							<p>Lorem ipsum is simply dummy text of the printing and typesetting industry.Lorem ipsum has been the printing and typesetting industry's standard dummy text ever since the 500,s when an unknown printer took a gellery of type.</p>
						  	<span><a href="#">John Dove</a></span>
						 
					</div>
				</article>
				 <article style="position: absolute; width:64%; opacity: 0;"> 
				   	<div class="cont span_2_of_3">
						    <h4>What Clients Say</h4>
						    <p>Lorem ipsum is simply dummy text of the printing and typesetting industry.Lorem ipsum has been the printing and typesetting industry's standard dummy text ever since the 500,s when an unknown printer took a gellery of type.</p>
						   <span><a href="#">John Dove</a></span>
					</div>
				 </article>
				 <article style="position: absolute; width:64%; opacity: 0;"> 
				   	<div class="cont span_2_of_3">
						    <h4>What Clients Say</h4>
						    <p>Lorem ipsum is simply dummy text of the printing and typesetting industry.Lorem ipsum has been the printing and typesetting industry's standard dummy text ever since the 500,s when an unknown printer took a gellery of type.</p>
						    <span><a href="#">John Dove</a></span>
					</div>
				 </article>
		 
                  <script src="${pageContext.request.contextPath}/js/jquery.wmuSlider.js"></script> 
					<script>
       				     $('.example1').wmuSlider();         
   					</script> 	           	      
	         </div>
	     </div>
<!----------//text-slider------------>
<!--------start-contact-----------> 
 <div class="contact" id="contact">
	<div class="wrap">
		<h2>Contact Us</h2>
			<div class="contact-form">
				<div class="para-contact">
					<h4>Get in touch with us</h4>
					<p>Lorem ipsum is simply dummy text of the printing and typesetting industry.Lorem ipsum has been the printing and typesetting industry.</p>
				
				 	<div class="social_2 social_3">	
			           <ul>	
						    <li class="facebook"><a href="#"><span> </span></a></li>
						    <li class="twitter"><a href="#"><span> </span></a></li>	 	
							<li class="google"><a href="#"><span> </span></a></li>
					  </ul>
		 		  </div>
		 		  <div class="get-intouch-left-address">
						<p>2345 Setwant natrer, 1234</p>
						<p>Washington. United States.</p>
						<p>(401) 1234 567</p>
						<p><a href="mailto:info@mycompany.com"> info(at)appstore.com</a></p>
					</div>
					<div class="clear"> </div>	
				</div>
						<div class="form">
				  			<form method="post" action="contact-post.html">

							    	<input type="text" name="userName" class="textbox" value=" Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name';}">
							    	<input type="text" name="userEmail" class="textbox" value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}">
										<div class="clear"> </div>
								    <div>
								    	<textarea name="userMsg" value="Message:" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = ' Message';}">Message</textarea>
								    </div>
								<div class="button
								send_button">
											   	 <input type="submit" value="Send">
								</div>
								<div class="clear"> </div>
							</form>
						</div>
						<a class="mov-top" href="#home1"> <span> </span></a>
					 <div class="clear"> </div>
				</div>
  			</div>
     </div>
     <!-- scroll_top_btn -->
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/move-top.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/easing.js"></script>
	    <script type="text/javascript">
			$(document).ready(function() {
			
				var defaults = {
		  			containerID: 'toTop', // fading element id
					containerHoverID: 'toTopHover', // fading element hover id
					scrollSpeed: 1200,
					easingType: 'linear' 
		 		};
				
				
				$().UItoTop({ easingType: 'easeOutQuart' });
				
			});
		</script>
		<script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event){		
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
			});
		});
	</script>

		 <a href="#" id="toTop" style="display: block;"><span id="toTopHover" style="opacity: 1;"></span></a>
<!--------//end-contact----------->
<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>
</body>
</html>		