<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<title>Home</title>
<link href="${pageContext.request.contextPath}/css/style.css"
	rel='stylesheet' type='text/css' />
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--webfonts-->
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800'
	rel='stylesheet' type='text.css' />
<!--//webfonts-->
<script src="${pageContext.request.contextPath}/js/jquery.min.js"
	type="text/javascript"></script>
</head>
<body>
	<!-- start header -->
	<div class="header_bg">
		<div class="wrap">
			<div id="content">
				<header id="topnav">
					<nav>
						<ul>
							<li><a href="index.html">Home</a></li>
							<li><a href="index.html">Services</a></li>
							<li><a href="index.html">Porfolio</a></li>
							<li><a href="index.html">Team</a></li>
							<li class="active"><a href="blogsingle.html">Blog</a></li>
							<li><a href="index.html">Contact</a></li>
							<div class="clear"></div>
						</ul>
					</nav>
					<div class="logo">
						<a href="index.html"><img
							src="${pageContext.request.contextPath}/images/logo.png"> </a>
						</h1>
					</div>
					<a href="#" id="navbtn">Nav Menu</a>
					<div class="clear"></div>
				</header>
				<!-- @end #topnav -->
				<script type="text/javascript"
					src="${pageContext.request.contextPath}/js/menu.js"></script>
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

						<s:iterator value="pageBean.list" var="jl">
							<div class="wrapper_top">
								<div class="grid_1 alpha">
									<div class="date">
										<span> <s:property value="#jl.date" /> </span>
										<s:property value="#jl.month" />
										<s:property value="#jl.year" />
									</div>
								</div>
								<div class="content span_2_of_single">
									<h5 class="blog_title">
										<a
											href="${pageContext.request.contextPath}/journal_readMore?jid=<s:property value="#jl.jid"/>"><s:property
												value="#jl.title" /> </a>
									</h5>
									<div class="content">
										<div class="span-1-of-1">
											<a href="bloginner.html"><img class="m_img"
												src="${pageContext.request.contextPath}/<s:property value="#jl.picSrc"/>"
												alt="" /> </a>
										</div>
										<div class="span-1-of-2">
											<p>
												<s:property value="#jl.text" />
											</p>

											<a
												href="${pageContext.request.contextPath}/journal_readMore?jid=<s:property value="#jl.jid"/>"
												class="arrow_btn">Read More</a>
										</div>
										<div class="clear"></div>
									</div>
									<div class="links">
										<h3 class="comments">
											By<a href="bloginner.html">&nbsp;<s:property
													value="#jl.author" /> </a>
										</h3>
										<h3 class="comments">
											<a href="#"><s:property value="#jl.descNum" />comments</a>
										</h3>
										<h3>Share</h3>
										<h3>
											<div class="social_1">
												<ul>
													<li class="icon1_t"><a href="#"><span> </span> </a></li>
													<li class="icon2_f"><a href="#"><span> </span> </a></li>
												</ul>
											</div>
										</h3>
										<div class="clear"></div>
									</div>
								</div>
								<div class="clear"></div>
							</div>
						</s:iterator>

					</div>
					<div class="rsidebar span_1_of_3">
						<div class="search_box">
							<form action="${pageContext.request.contextPath }//journal_findByInfo" method="get">
								<input type="text" name="info" value="Search" onfocus="this.value = '';"
									onblur="if (this.value == '') {this.value = 'Search';}"><input
									type="submit" value="">
								<input type="hidden" value="1" name="page"/>
							</form>
						</div>
						<div class="social_2">
							<h4>Follow Us</h4>
							<ul>
								<li class="facebook"><a href="#"><span> </span> </a></li>
								<li class="twitter"><a href="#"><span> </span> </a></li>
								<li class="google"><a href="#"><span> </span> </a></li>
							</ul>
						</div>
						<div class="email_box">
							<form>
								<div class="email">
									<input type="text" value="Enter Your e-mail"
										onfocus="this.value = '';"
										onblur="if (this.value == '') {this.value = 'Enter Your e-mail';}">
								</div>
								<div class="button">
									<span><input type="submit" value="Subscribe"> </span>
								</div>
							</form>
						</div>
						<div class="Categories">
							<h4>Categories</h4>
							<ul class="sidebar">
								<div class="hover">
									<li><a href="#">Lorem Ipsum is simply dummy</a></li>
								</div>
								<div class="hover">
									<li><a href="#">Lorem Ipsum is simply dummy</a></li>
								</div>
								<div class="hover">
									<li><a href="#">Lorem Ipsum is simply dummy</a></li>
								</div>
								<div class="hover">
									<li><a href="#">Lorem Ipsum is simply dummy</a></li>
								</div>
								<div class="hover">
									<li><a href="#">Lorem Ipsum is simply dummy</a></li>
								</div>
								<div class="hover">
									<li><a href="#">Lorem Ipsum is simply dummy</a></li>
								</div>
							</ul>
						</div>
						<div class="popularpost">
							<h4>Popular Post</h4>
							<div class="image">
								<a href="#"><img
									src="${pageContext.request.contextPath}/images/sb5.jpg" /> </a>
							</div>
							<p>Lorem Ipsum is simply dummy text of the printing and
								typesetting industry.</p>
							<div class="link_1">
								<p>
									<a href="#">Sep 26,2013 </a>
								</p>
								<a href="#" class="arrow_btn right">Read More</a>
								<div class="clear"></div>
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
								<div class="clear"></div>
							</ul>
						</div>
					</div>

					<div class="clear"></div>
				</div>
				<div class="pages">
					<ul>
						<s:if test="pageBean.page != 1">
							<li class="preview"><a
								href="${pageContext.request.contextPath}/journal_findByPage.action?page=<s:property value="pageBean.page-1"/>"><span>
								</span> </a>
							</li>
						</s:if>

						<s:if test="pageBean.totalPage <= 10">
							<s:iterator var="i" begin="1" end="pageBean.totalPage">
								<s:if test="pageBean.page == #i">
									<li class="checkPage"><a><s:property value="#i" /> </a>
								</s:if>
								<s:else>
									<li><a
										href="${pageContext.request.contextPath}/journal_findByPage.action?page=<s:property value="#i"/>"><s:property
												value="#i" /> </a>
								</s:else>

								</li>
							</s:iterator>
						</s:if>
						<s:elseif test="pageBean.page >= pageBean.totalPage-4">
							<s:iterator var="i" begin="pageBean.totalPage-9"
								end="pageBean.totalPage">
								<s:if test="pageBean.page == #i">
									<li class="checkPage"><a><s:property value="#i" /> </a>
								</s:if>
								<s:else>
									<li><a
										href="${pageContext.request.contextPath}/journal_findByPage.action?page=<s:property value="#i"/>"><s:property
												value="#i" /> </a>
								</s:else>
								</li>
							</s:iterator>
						</s:elseif>
						<s:else>
							<s:if test="pageBean.page<=5">
								<s:iterator var="i" begin="1" end="10">
									<s:if test="pageBean.page == #i">
										<li class="checkPage"><a><s:property value="#i" /> </a>
									</s:if>
									<s:else>
										<li><a
											href="${pageContext.request.contextPath}/journal_findByPage.action?page=<s:property value="#i"/>"><s:property
													value="#i" /> </a>
									</s:else>
									</li>
								</s:iterator>
							</s:if>
							<s:else>
								<s:iterator var="i" begin="pageBean.page-4"
									end="pageBean.page+5">
									<s:if test="pageBean.page == #i">
										<li class="checkPage"><a><s:property value="#i" /> </a>
									</s:if>
									<s:else>
										<li><a
											href="${pageContext.request.contextPath}/journal_findByPage.action?page=<s:property value="#i"/>"><s:property
													value="#i" /> </a>
									</s:else>
									</li>
								</s:iterator>
							</s:else>
							<s:else>
								<s:iterator></s:iterator>
							</s:else>
						</s:else>



						<s:if test="pageBean.page != pageBean.totalPage">
							<li class="next"><a
								href="${pageContext.request.contextPath}/journal_findByPage.action?page=<s:property value="pageBean.page+1"/>"><span>
								</span> </a></li>
						</s:if>
						<div class="clear"></div>
					</ul>
				</div>
				<!----//End-content---->
			</div>
		</div>
	</div>
	<!--------//end-blog----------->
	<div class="footer">
		<div class="wrap">
			<div class="social_2 social_3">
				<ul>
					<li class="facebook"><a href="#"><span> </span> </a></li>
					<li class="twitter"><a href="#"><span> </span> </a></li>
					<li class="google"><a href="#"><span> </span> </a></li>
				</ul>
			</div>
		</div>
		<!-- scroll_top_btn -->
		<script type="text/javascript"
			src="${pageContext.request.contextPath}/js/move-top.js"></script>
		<script type="text/javascript"
			src="${pageContext.request.contextPath}/js/easing.js"></script>
		<script type="text/javascript">
			$(document).ready(function() {

				var defaults = {
					containerID : 'toTop', // fading element id
					containerHoverID : 'toTopHover', // fading element hover id
					scrollSpeed : 1200,
					easingType : 'linear'
				};

				$().UItoTop({
					easingType : 'easeOutQuart'
				});

			});
		</script>
		<script>
			window.onload = function() {
				var text = document.getElementById('txtp'), str = text.innerHTML, textLeng = 100;
				if (str.length > textLeng) {
					text.innerHTML = str.substring(0, textLeng) + "... ...";
				}
			}
		</script>
		<a href="#" id="toTop" style="display: block;"><span
			id="toTopHover" style="opacity: 1;"></span> </a>
		<div class="copy">
			<p>
				Copyright &copy; 2014.Company name All rights reserved.<a
					target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a>
			</p>
		</div>
	</div>
	<div style="display:none">
		<script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540'
			language='JavaScript' charset='gb2312'></script>
	</div>
</body>
</html>