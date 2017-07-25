<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags"  prefix="s"%>
<!DOCTYPE html>
<html>
	<head>	
		<title>Home</title>
		<link href="${pageContext.request.contextPath}/css/style.css" rel='stylesheet' type='text/css' />
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		<!--webfonts-->
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text.css'/>
		<!--//webfonts-->
		<script src="${pageContext.request.contextPath}/js/jquery.min.js" type="text/javascript"></script>
	</head>
	<body>
<!-- start header -->
<div class="header_bg">
<div class="wrap">
	<div id="content">
      <header id="topnav">
        <nav>
        		 <ul>
					<li><a href="${pageContext.request.contextPath}/index">Home</a></li>
					<li><a href="index.html">Services</a></li>
					<li><a href="index.html">Porfolio</a></li>
					<li><a href="index.html">Team</a></li>
					<li class="active"><a href="${pageContext.request.contextPath}/journal_findByPage.action?page=1">Blog</a></li>
					<li><a href="index.html">Contact</a></li>
					<div class="clear"> </div>
				</ul>
        </nav>
         <div class="logo"><a href="index.html"><img src="${pageContext.request.contextPath}/images/logo.png"></a></h1></div>
        <a href="#" id="navbtn">Nav Menu</a>
        <div class="clear"> </div>
      </header><!-- @end #topnav -->
      <script type="text/javascript"  src="${pageContext.request.contextPath}/js/menu.js"></script>
    </div>
</div>
</div>
<!--------start-blog----------->
<div class="blog">
	<div class="banner">
		<h2>Blog</h2>
	</div>
	<div class="main">
		  	<div class="wrap">
			 	<div class="single-top">
				 <div class="wrapper_single">
					  <div class="wrapper_top">
						<div class="grid_1 alpha">
							<div class="date">
								<span>
									<s:property value="#request.j.date"/>
								</span>
								<s:property value="#request.j.month"/> <s:property value="#request.j.year"/>
							</div>
						</div>
					 	<div class="content span_2_of_single">
						   		<h5 class="blog_title"><a href="bloginner.html"><s:property value="#request.j.title"/></a></h5>
						   		<div class="links">
									<h3 class="comments">By<a href="bloginner.html">&nbsp;<s:property value="#request.j.author"/></a></h3>
									<h3 class="comments"><a href="#"><s:property value="#request.j.descNum"/>comments</a></h3>
									<h3>Share</h3>
									<h3>
										<div class="social_1">
											<ul>	
											    <li class="icon1_t"><a href="#"><span> </span></a></li>
											    <li class="icon2_f"><a href="#"><span> </span></a></li>	 	
										    </ul>
										</div>
									</h3>
									<div class="clear"> </div>
								</div>
								<div class="content">
									<div class="span-1-of-1">
										<a href="#"><img class="m_img"  src="${pageContext.request.contextPath}/<s:property value="#request.j.picSrc"/>" alt=""/></a>
									</div>
									<div class="span-1-of-2">
						 				<p><s:property value="#request.j.text"/></p>
						 			</div>
						 			<div class="clear"> </div>
								</div>	
								<h6 class="text"><a href="#"><s:property value="#request.j.author"/></a></h6>
								<h3 class="heading_1">Share With Youir Friends</h3>
								<div class="share_icons">
									<a href="#"><img src="${pageContext.request.contextPath}/images/share_icon1.png"/></a>
								 </div>
								<div class="grid_2_page">
									<ul>
										<li class="preview"><a href="${pageContext.request.contextPath}/journal_readMore?jid=<s:property value="#request.j.jid-1"/>"><span> </span></a></li>
										<li><a href="${pageContext.request.contextPath}/journal_readMore?jid=<s:property value="#request.j.jid-1"/>">Previous Post </a></li>
										<li><a href="${pageContext.request.contextPath}/journal_readMore?jid=<s:property value="#request.j.jid+1"/>">Next Post</a></li>
										<li class="next"><a href="${pageContext.request.contextPath}/journal_readMore?jid=<s:property value="#request.j.jid+1"/>"><span> </span></a></li>
										<div class="clear"> </div>
									</ul>
								</div>
								<div class="recentpost">
							 		<h4>Recent Post</h4>
								 	<ul class="sidebar_1">
							           	<li><a href="#">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</a></li>
							            <li><a href="#">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</a></li>
							           	<li><a href="#">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</a></li>
							            <li><a href="#">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</a></li>
							            <li><a href="#">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</a></li>
							          </ul>
						        </div>
						        <div class="comments">
						        	<h4>3Comments</h4>
						        	<div class="c_grid">
						        		<div class="person_1">
						        			<a href="#"><span> </span></a>
						        		</div>
						        		<div class="desc">
						        			<div class="c_sub_grid">
						        			<p><a href="#">Lorem Ipsum,10 Jan 2013 </a></p>
						        			<h6><a href="#">Reply</a></h6>
						        			<div class="clear"> </div>
						        			</div>
						        			<div class="para">
						        			<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since</p>
						        			</div>
						        		</div>
						        		<div class="clear"> </div>
						        	</div>
						        	<div class="c_grid">
						        		<div class="person_1">
						        			<a href="#"><span> </span></a>
						        		</div>
						        		<div class="desc">
						        			<div class="c_sub_grid">
						        			<p><a href="#">Lorem Ipsum,10 Jan 2013 </a></p>
						        			<h6><a href="#">Reply</a></h6>
						        			<div class="clear"> </div>
						        			</div>
						        			<div class="para">
						        			<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since</p>
						        			</div>
						        		</div>
						        		<div class="clear"> </div>
						        	</div>
						        	<div class="c_grid_1">
						        		<div class="person_1 plus">
						        			<a href="#"><span> </span></a>
						        		</div>
						        		<div class="desc">
						        			<div class="c_sub_grid">
						        			<p><a href="#">Lorem Ipsum,10 Jan 2013 </a></p>
						        			<h6><a href="#">Reply</a></h6>
						        			<div class="clear"> </div>
						        			</div>
						        			<div class="para">
						        			<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since</p>
						        			</div>
						        		</div>
						        		<div class="clear"> </div>
						        	</div>
						        </div>
						        <div class="comments-area">
				  		        <h4>Leave a Comment</h4>
									<form>
										<p>
											<input type="text" value="Name*" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name*';}">
										</p>
										<p>
											<input type="text"  value="Email *" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email *';}">
										</p>
										<div class="clear"> </div>
										<div class="text_area">
											<textarea onfocus="if(this.value == 'Message*') this.value='';" onblur="if(this.value == '') this.value='Message*';">Message*</textarea>
										</div>
										<div>
											<div class="sky_form">
												<label class="checkbox"><input type="checkbox" name="checkbox"><i>notify me of followup comments via e-mail</i></label>
											</div>
											<div class="button send_button">
											   	 <input type="submit" value="Send">
											</div>
										</div>
										
									</form>
							  </div>
					</div>
					</div>
					<div class="clear"> </div>
				</div>
				<div class="rsidebar span_1_of_3">
				<div class="search_box">
					<form>
					   <input type="text" value="Search" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search';}"><input type="submit" value="">
				    </form>
			 	</div>
               <div class="social_2">	
               	<h4>Follow Us</h4>
	           <ul>	
				    <li class="facebook"><a href="#"><span> </span></a></li>
				    <li class="twitter"><a href="#"><span> </span></a></li>	 	
					<li class="google"><a href="#"><span> </span></a></li>
			  </ul>
		 	  </div>
               <div class="email_box">
					<form>
						<div class="email">
					  		 <input type="text" value="Enter Your e-mail" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Enter Your e-mail';}">
					  	</div>
					  	 <div class="button">
						   	 <span><input type="submit" value="Subscribe"></span>
						</div>
				    </form>
			 	</div>
			 	<div class="Categories">
			 		<h4>Categories</h4>
				 	<ul class="sidebar">
			           	<div class="hover"><li><a href="#">Lorem Ipsum is simply dummy</a></li></div>
			            <div class="hover"><li><a href="#">Lorem Ipsum is simply dummy</a></li></div>
			            <div class="hover"><li><a href="#">Lorem Ipsum is simply dummy</a></li></div>
			            <div class="hover"><li><a href="#">Lorem Ipsum is simply dummy</a></li></div>
			            <div class="hover"> <li><a href="#">Lorem Ipsum is simply dummy</a></li></div>
			            <div class="hover"><li><a href="#">Lorem Ipsum is simply dummy</a></li></div>
			          </ul>
		        </div>
		        <div class="popularpost">
		        	<h4>Popular Post</h4>
		        	<div class="image">
		        		<a href="#"><img src="${pageContext.request.contextPath}/images/sb5.jpg"/></a>
		        	</div>
		        	<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
		        	<div class="link_1">
		        		<p><a href="#">Sep 26,2013 </a></p>
		        		<a href="#" class="arrow_btn right">Read More</a>
		        		<div class="clear"> </div>
		        	</div>
		        </div>
		        <div class="recentpost">
			 		<h4>Recent Post</h4>
				 	<ul class="sidebar_1">
			           	<li><a href="#">Lorem Ipsum is simply dummy</a></li>
			            <li><a href="#">Lorem Ipsum is simply dummy</a></li>
			           	<li><a href="#">Lorem Ipsum is simply dummy</a></li>
			            <li><a href="#">Lorem Ipsum is simply dummy</a></li>
			            <li><a href="#">Lorem Ipsum is simply dummy</a></li>
			            <li><a href="#">Lorem Ipsum is simply dummy</a></li>
			          </ul>
		        </div>
		        <div class="tags">
		        	<h4>Tags</h4>
		        	<ul>
		        		<li><a href="#">design</a></li>
		        		<li><a href="#">development</a></li>
		        		<li><a href="#">multipurpose</a></li>
		        		<li><a href="#">creative</a></li>
		        		<li><a href="#">seo</a></li>
		        		<li><a href="#">adverticement</a></li>
		        		<li><a href="#">life</a></li>
		        		<div class="clear"> </div>
		        	</ul>
		        </div>
		</div>
				<div class="clear"> </div>
			</div>
		</div>
	</div>
	<!--------//end-blog_inner----------->
<div class="footer">
		<div class="wrap">
			<div class="social_2 social_3">	
	           <ul>	
				    <li class="facebook"><a href="#"><span> </span></a></li>
				    <li class="twitter"><a href="#"><span> </span></a></li>	 	
					<li class="google"><a href="#"><span> </span></a></li>
			  </ul>
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
		 <a href="#" id="toTop" style="display: block;"><span id="toTopHover" style="opacity: 1;"></span></a>
		 	 <div class="copy">
			       <p>Copyright &copy; 2014.Company name All rights reserved.<a target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></p>
		        </div> 
</div>
<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>
</body>
</html>