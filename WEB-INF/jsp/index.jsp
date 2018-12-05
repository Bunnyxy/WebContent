<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<!--声明文档兼容模式，表示使用IE浏览器的最新模式-->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!--设置视口的宽度(值为设备的理想宽度)，页面初始缩放值<理想宽度/可见宽度>-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
<title>首页</title>

<!-- 引入Bootstrap核心样式文件 -->
<link href="../../css/bootstrap.css" rel="stylesheet">
<link href="../../css/customize.css" rel="stylesheet">	
<!-- 引入jQuery核心js文件 -->
<script src="../../js/jquery-1.11.3.min.js"></script>
<!-- 引入BootStrap核心js文件 -->
<script src="../../js/bootstrap.min.js"></script>
<script src="../../js/alertStyle.js"></script>
<script type="text/javascript" src="../../js/flow.js" ></script>
<style type="text/css">
	 	html{
		height:100%;
		width:100%;
	}
	body{ 		  
	    background: -webkit-linear-gradient(#D9EDF7,#AFD9EE ); /* Safari 5.1 - 6.0 */
		background: -o-linear-gradient(#D9EDF7, #AFD9EE); /* Opera 11.1 - 12.0 */
	    background: -moz-linear-gradient(#D9EDF7, #AFD9EE); /* Firefox 3.6 - 15 */
	   	background: linear-gradient(#D9EDF7, #AFD9EE); /* 标准的语法 */ 
		background-size:100% 100%;
		background-attachment:fixed
		}
	.my-navbar {
		background-color: rgba(255,255,255,0.3);
		position: fixed;
	    z-index: 1;
	    top: 45px;
	    left: 100px;
	    overflow-x: hidden;
	    padding: 8px 0;
	    border-radius: 10px;
	}
	.my-navbar a:hover{
		 	color:#777777 !important;
		 	background:transparent;
		 	outline:0;
	}
	.nav-pills > li.active > a, .nav-pills > li.active > a:hover, .nav-pills > li.active > a:focus{
		color: #000000;
		background-color: rgba(255,255,255,0);
	}
	.active{
		text-align: center;
		font-size: 15px;
	}
	.my-navbar a{
		text-align: center;
	}
	.my-col-lg-3{
		
	}
</style>
</head>
<body>
		<!--导航栏-->
		<jsp:include page="header.jsp"></jsp:include>
		<div class="container" style="margin-top:2%;">
			<div class="row" style="height: 800px;">
				<div class="col-lg-2 hidden-xs" style="display: block;">
		            <ul class="nav nav-pills nav-stacked my-navbar">
		                <li class="active"><a href="#">分类</a></li>
		                <li><a href="#">Tutorials</a></li>
		                <li><a href="#">Practice Editor </a></li>
		                <li><a href="#">Gallery</a></li>
		                <li><a href="#">Contact</a></li>
		                <li><a href="#">Gallery</a></li>
		                <li><a href="#">Contact</a></li>
		                <li><a href="#">Gallery</a></li>
		                <li><a href="#">Contact</a></li>
		            </ul>
                </div>
				<div class="col-lg-6 col-xs-12"style="display:block;height: 800px;background-color: rgba(255,255,255,0.3);border-radius: 10px;">
					<div class="row" style="height: 30px;">
						<div class="col-lg-4" style="background-color:rgba(255,255,255,0);">
							<img src="../../img/reading.png" style="width: 40px;height: 40px;"/>
							<span style="font-weight:bold;font-size:large;">
								精品文章
							</span>
						</div>
					</div>
					<br />
					<c:forEach items="${page.rows }" var="article"> 
						<div class="row" style="background-color:rgba(255,255,255,0.7);height: 145px;border-bottom:1px solid #C5C5C5;">
							<div class="clo-lg" style="margin-top:2%;margin-left: 2%;">
								<h3 style="font-weight:bold;">
									<a href="showarticle?articleId=${article.articleId }">${article.title }</a>
								</h3>
								<div class="col-lg" style="height:40px ; color: #808080;rgba(255,255,255,0.7)-space: nowrap;overflow: hidden;text-overflow: ellipsis;">
									${article.content }
								</div>
								<div class="col-lg" style="margin-top: 1%;">
									<div class="col-lg-4 hidden-xs">
										<img src="../../img/person.png" style="width: 20px;height: 20px;"/>&nbsp;
										<font style="margin-top: 1%;">${article.author }</font>
									</div>
									<div class="col-lg-3"style="float: right;">
										<span id="readCount">${article.reading }</span><span> 阅读</span>&nbsp;
										<span id="comCount">0</span><span> 评论</span>
										
									</div>
								</div>
							</div>
						</div>
						<div class="row" style="background-color:rgba(255,255,255,0.7);height: 145px;border-bottom:1px solid #C5C5C5;">
							<div class="clo-lg" style="margin-top:2%;margin-left: 2%;">
								<h3 style="font-weight:bold;">
									<a href="showarticle?articleId=${article.articleId }">${article.title }</a>
								</h3>
								<div class="col-lg" style="height:40px ; color: #808080;rgba(255,255,255,0.7)-space: nowrap;overflow: hidden;text-overflow: ellipsis;">
									${article.content }
								</div>
								<div class="col-lg" style="margin-top: 1%;">
									<div class="col-lg-4 hidden-xs">
										<img src="../../img/person.png" style="width: 20px;height: 20px;"/>&nbsp;
										<font style="margin-top: 1%;">${article.author }</font>
									</div>
									<div class="col-lg-3"style="float: right;">
										<span id="readCount">${article.reading }</span><span> 阅读</span>&nbsp;
										<span id="comCount">0</span><span> 评论</span>
										
									</div>
								</div>
							</div>
						</div>
						<div class="row" style="background-color:rgba(255,255,255,0.7);height: 145px;border-bottom:1px solid #C5C5C5;">
							<div class="clo-lg" style="margin-top:2%;margin-left: 2%;">
								<h3 style="font-weight:bold;">
									<a href="showarticle?articleId=${article.articleId }">${article.title }</a>
								</h3>
								<div class="col-lg" style="height:40px ; color: #808080;rgba(255,255,255,0.7)-space: nowrap;overflow: hidden;text-overflow: ellipsis;">
									${article.content }
								</div>
								<div class="col-lg" style="margin-top: 1%;">
									<div class="col-lg-4 hidden-xs">
										<img src="../../img/person.png" style="width: 20px;height: 20px;"/>&nbsp;
										<font style="margin-top: 1%;">${article.author }</font>
									</div>
									<div class="col-lg-3"style="float: right;">
										<span id="readCount">${article.reading }</span><span> 阅读</span>&nbsp;
										<span id="comCount">0</span><span> 评论</span>
										
									</div>
								</div>
							</div>
						</div>
						<div class="row" style="background-color:rgba(255,255,255,0.7);height: 145px;border-bottom:1px solid #C5C5C5;">
							<div class="clo-lg" style="margin-top:2%;margin-left: 2%;">
								<h3 style="font-weight:bold;">
									<a href="showarticle?articleId=${article.articleId }">${article.title }</a>
								</h3>
								<div class="col-lg" style="height:40px ; color: #808080;rgba(255,255,255,0.7)-space: nowrap;overflow: hidden;text-overflow: ellipsis;">
									${article.content }
								</div>
								<div class="col-lg" style="margin-top: 1%;">
									<div class="col-lg-4 hidden-xs">
										<img src="../../img/person.png" style="width: 20px;height: 20px;"/>&nbsp;
										<font style="margin-top: 1%;">${article.author }</font>
									</div>
									<div class="col-lg-3"style="float: right;">
										<span id="readCount">${article.reading }</span><span> 阅读</span>&nbsp;
										<span id="comCount">0</span><span> 评论</span>
										
									</div>
								</div>
							</div>
						</div>
						<div class="row" style="background-color:rgba(255,255,255,0.7);height: 145px;border-bottom:1px solid #C5C5C5;">
							<div class="clo-lg" style="margin-top:2%;margin-left: 2%;">
								<h3 style="font-weight:bold;">
									<a href="showarticle?articleId=${article.articleId }">${article.title }</a>
								</h3>
								<div class="col-lg" style="height:40px ; color: #808080;rgba(255,255,255,0.7)-space: nowrap;overflow: hidden;text-overflow: ellipsis;">
									${article.content }
								</div>
								<div class="col-lg" style="margin-top: 1%;">
									<div class="col-lg-4 hidden-xs">
										<img src="../../img/person.png" style="width: 20px;height: 20px;"/>&nbsp;
										<font style="margin-top: 1%;">${article.author }</font>
									</div>
									<div class="col-lg-3"style="float: right;">
										<span id="readCount">${article.reading }</span><span> 阅读</span>&nbsp;
										<span id="comCount">0</span><span> 评论</span>
										
									</div>
								</div>
							</div>
						</div>
						<div class="row" style="background-color:rgba(255,255,255,0.7);height: 145px;border-bottom:1px solid #C5C5C5;">
							<div class="clo-lg" style="margin-top:2%;margin-left: 2%;">
								<h3 style="font-weight:bold;">
									<a href="showarticle?articleId=${article.articleId }">${article.title }</a>
								</h3>
								<div class="col-lg" style="height:40px ; color: #808080;rgba(255,255,255,0.7)-space: nowrap;overflow: hidden;text-overflow: ellipsis;">
									${article.content }
								</div>
								<div class="col-lg" style="margin-top: 1%;">
									<div class="col-lg-4 hidden-xs">
										<img src="../../img/person.png" style="width: 20px;height: 20px;"/>&nbsp;
										<font style="margin-top: 1%;">${article.author }</font>
									</div>
									<div class="col-lg-3"style="float: right;">
										<span id="readCount">${article.reading }</span><span> 阅读</span>&nbsp;
										<span id="comCount">0</span><span> 评论</span>
										
									</div>
								</div>
							</div>
						</div>
						<div class="row" style="background-color:rgba(255,255,255,0.7);height: 145px;border-bottom:1px solid #C5C5C5;">
							<div class="clo-lg" style="margin-top:2%;margin-left: 2%;">
								<h3 style="font-weight:bold;">
									<a href="showarticle?articleId=${article.articleId }">${article.title }</a>
								</h3>
								<div class="col-lg" style="height:40px ; color: #808080;rgba(255,255,255,0.7)-space: nowrap;overflow: hidden;text-overflow: ellipsis;">
									${article.content }
								</div>
								<div class="col-lg" style="margin-top: 1%;">
									<div class="col-lg-4 hidden-xs">
										<img src="../../img/person.png" style="width: 20px;height: 20px;"/>&nbsp;
										<font style="margin-top: 1%;">${article.author }</font>
									</div>
									<div class="col-lg-3"style="float: right;">
										<span id="readCount">${article.reading }</span><span> 阅读</span>&nbsp;
										<span id="comCount">0</span><span> 评论</span>
										
									</div>
								</div>
							</div>
						</div>
						<div class="row" style="background-color:rgba(255,255,255,0.7);height: 145px;border-bottom:1px solid #C5C5C5;">
							<div class="clo-lg" style="margin-top:2%;margin-left: 2%;">
								<h3 style="font-weight:bold;">
									<a href="showarticle?articleId=${article.articleId }">${article.title }</a>
								</h3>
								<div class="col-lg" style="height:40px ; color: #808080;rgba(255,255,255,0.7)-space: nowrap;overflow: hidden;text-overflow: ellipsis;">
									${article.content }
								</div>
								<div class="col-lg" style="margin-top: 1%;">
									<div class="col-lg-4 hidden-xs">
										<img src="../../img/person.png" style="width: 20px;height: 20px;"/>&nbsp;
										<font style="margin-top: 1%;">${article.author }</font>
									</div>
									<div class="col-lg-3"style="float: right;">
										<span id="readCount">${article.reading }</span><span> 阅读</span>&nbsp;
										<span id="comCount">0</span><span> 评论</span>
										
									</div>
								</div>
							</div>
						</div>
						<div class="row" style="background-color:rgba(255,255,255,0.7);height: 145px;border-bottom:1px solid #C5C5C5;">
							<div class="clo-lg" style="margin-top:2%;margin-left: 2%;">
								<h3 style="font-weight:bold;">
									<a href="showarticle?articleId=${article.articleId }">${article.title }</a>
								</h3>
								<div class="col-lg" style="height:40px ; color: #808080;rgba(255,255,255,0.7)-space: nowrap;overflow: hidden;text-overflow: ellipsis;">
									${article.content }
								</div>
								<div class="col-lg" style="margin-top: 1%;">
									<div class="col-lg-4 hidden-xs">
										<img src="../../img/person.png" style="width: 20px;height: 20px;"/>&nbsp;
										<font style="margin-top: 1%;">${article.author }</font>
									</div>
									<div class="col-lg-3"style="float: right;">
										<span id="readCount">${article.reading }</span><span> 阅读</span>&nbsp;
										<span id="comCount">0</span><span> 评论</span>
										
									</div>
								</div>
							</div>
						</div>
					</c:forEach>
					<div class="col-md-12 text-right">
						<fengf:page url="${pageContext.request.contextPath }/index" />
					</div>
				</div>
				<div class="col-lg-3 hidden-xs my-col-lg-3"style="display:block;margin-left: 15px; height: 800px;background-color: rgba(255,255,255,0.3);border-radius: 10px;">
					<div class="row">
						<div class="col-lg" style="background-color: rgba(255,255,255,0);margin-top: 2px;margin-left: 2px;height: 30px;">
							<img src="../../img/expert.png" style="width: 20px;height: 21px;"/>&nbsp;
							<font size="4">热门博主</font>
						</div>
						<div class="col"style="background-color: rgba(255,255,255,0.7)smoke;margin-top: 2px;margin-left: 2px;">
							<div class="col-lg" style="height: 70px;background-color: rgba(255,255,255,0.7);border-bottom:1px solid #C5C5C5;">
								<div class="col-lg">
									<img src="../../img/person.png" style="margin-top: 2px;margin-left: 2px;width: 36px;height: 36px;"/>&nbsp;
									<font size="2" style="font-weight: bold;">博主</font>
									
									<span style="float: right;margin-top: 22px;margin-right: 4px;">篇</span>
									<span style="float: right;margin-top: 22px;margin-right: 4px;">12</span>
								</div>
								<div class="col-lg"style="margin-top: 2px;margin-left: 4px">
									<span style="font-size: small; color: #808080;">程序设计，软件工程，人工智能的技术博客</span>
								</div>
							</div>
							<div class="col-lg-6" style="height: 70px;background-color: rgba(255,255,255,0.7);">
								<div class="col-lg" style="height: 60px;width:125px;background-color: rgba(255,255,255,0.7)smoke;">
									<div class="col-lg" style="margin-top: 5px;margin-left: 1px;" >
										<img src="../../img/person.png" style="margin-top: 1px;margin-left: 1px;width: 28px;height: 28px;"/>&nbsp;
										<font size="2" style="font-weight: bold;">博主</font>
									</div>
									<div class="col-lg"style="margin-top: 4px;margin-left: 2px">
										<span style="font-size: small; color: #808080;">软件工程师</span>
									</div>
								</div>
							</div>
							<div class="col-lg-6" style="height: 70px;background-color: rgba(255,255,255,0.7);">
								<div class="col-lg" style="height: 60px;width:125px;background-color: rgba(255,255,255,0.7)smoke;">
									<div class="col-lg" style="margin-top: 5px;margin-left: 1px;" >
										<img src="../../img/person.png" style="margin-top: 1px;margin-left: 1px;width: 28px;height: 28px;"/>&nbsp;
										<font size="2" style="font-weight: bold;">博主</font>
									</div>
									<div class="col-lg"style="margin-top: 4px;margin-left: 2px">
										<span style="font-size: small; color: #808080;">软件工程师</span>
									</div>
								</div>
							</div>
							<div class="col-lg-6" style="height: 70px;background-color: rgba(255,255,255,0.7);">
								<div class="col-lg" style="height: 60px;width:125px;background-color: rgba(255,255,255,0.7)smoke;">
									<div class="col-lg" style="margin-top: 5px;margin-left: 1px;" >
										<img src="../../img/person.png" style="margin-top: 1px;margin-left: 1px;width: 28px;height: 28px;"/>&nbsp;
										<font size="2" style="font-weight: bold;">博主</font>
									</div>
									<div class="col-lg"style="margin-top: 4px;margin-left: 2px">
										<span style="font-size: small; color: #808080;">软件工程师</span>
									</div>
								</div>
							</div>
							<div class="col-lg-6" style="height: 70px;background-color: rgba(255,255,255,0.7);">
								<div class="col-lg" style="height: 60px;width:125px;background-color: rgba(255,255,255,0.7)smoke;">
									<div class="col-lg" style="margin-top: 5px;margin-left: 1px;" >
										<img src="../../img/person.png" style="margin-top: 1px;margin-left: 1px;width: 28px;height: 28px;"/>&nbsp;
										<font size="2" style="font-weight: bold;">博主</font>
									</div>
									<div class="col-lg"style="margin-top: 4px;margin-left: 2px">
										<span style="font-size: small; color: #808080;">软件工程师</span>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row" style="margin-top: 4px;margin-bottom: 4px;">
							<img src="../../img/1.jpg" style="width: auto;height: 165px;"/>
					</div>
					<div class="row">
						<div class="col-lg-12" style="background-color: rgba(255,255,255,0);margin-top: 2px;height: 30px;">
							<img src="../../img/recommendation.png" style="width: 20px;height: 21px;"/>&nbsp;
							<font size="4">今日推荐</font>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-12" style="background-color: rgba(255,255,255,0.7);margin-top: 2px;">
							<div class="row" >
								<div class="col-lg-12" style="background-color: rgba(255,255,255,0.7);border-bottom: 1px solid #C5C5C5;">
									<a><span id="title" style="font-size: large;">JAVA并发编程（高级版）</span></a><br />
									<span id="distri" style="font-size: small;"> 编写正确的程序并不容易，而编写...</span>
								</div>
								<div class="col-lg-12" style="background-color: rgba(255,255,255,0.7);border-bottom: 1px solid #C5C5C5;">
									<a><span id="title" style="font-size: large;">JAVA并发编程（高级版）</span></a><br />
									<span id="distri" style="font-size: small;"> 编写正确的程序并不容易，而编写...</span>
								</div>
								<div class="col-lg-12" style="background-color: rgba(255,255,255,0.7);border-bottom: 1px solid #C5C5C5;">
									<a><span id="title" style="font-size: large;">JAVA并发编程（高级版）</span></a><br />
									<span id="distri" style="font-size: small;"> 编写正确的程序并不容易，而编写...</span>
								</div>
								
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-12" style="background-color: rgba(255,255,255,0);margin-top: 2px;height: 30px;">
							<img src="../../img/content.png" style="width: 24px;height: 24px;"/>
							<font size="4" style="text-align: center;">联系我</font>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-12" style="background-color: rgba(255,255,255,0.7);margin-top: 2px;">
							<div class="row" >
								<div class="col-lg-12" style="background-color: rgba(255,255,255,0.7);border-bottom: 1px solid #C5C5C5;margin-top: 2px;margin-bottom: 2px;">
									<img src="../../img/email.png" style="width: 33px;height: 33px;"/>
									<span id="distri" style="font-size:  initial;"> 95111539@qq.com</span><br/>
									<img src="../../img/phone.png" style="width: 33px;height: 33px;"/>
									<span id="distri" style="font-size: initial;"> 15366363203</span><br/>
									<img src="../../img/qq.png" style="width: 33px;height: 33px;"/>
									<span id="distri" style="font-size: initial;"> 951115439</span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<script type="text/javascript">
			document.addEventListener('scroll', function (event) { 
			    var scrollDistance = window.pageYOffset || document.documentElement.scrollTop || document.body.scrollTop;
			    if (scrollDistance >= 180) {    // 触发的位置
			        document.getElementsByClassName('my-col-lg-3')[0].style.cssText = 'margin-left: 15px;width:292.5px;background-color: rgba(255,255,255,0.3);border-radius: 10px;display:inline-block;position:fixed;bottom:0px;';
			    } else {
			        document.getElementsByClassName('my-col-lg-3')[0].style.cssText = 'margin-left: 15px;width:292.5px;background-color: rgba(255,255,255,0.3);border-radius: 10px;position:static;';
			    }
			});
		</script>
	</body>
</html>