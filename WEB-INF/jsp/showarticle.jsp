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
<title>文字标题</title>

<!-- 引入Bootstrap核心样式文件 -->
<link href="../../css/bootstrap.css" rel="stylesheet">
<link href="../../css/customize.css" rel="stylesheet">	
<!-- 引入jQuery核心js文件 -->
<script src="../../js/jquery-1.11.3.min.js"></script>
<!-- 引入BootStrap核心js文件 -->
<script src="../../js/bootstrap.min.js"></script>
<script type="text/javascript">
	function likeAndDislike(articleId,flag){
		if(flag){
			$.post(
					"${pageContext.request.contextPath}/likeAndDislike",
					{"flag":flag,"articleId":articleId},
					function(data){
						var count=data.isCorrect;
						$("#thumbsup").css("color","red");
						$("#thumbsup").html("("+count+")");
					},
					"json"
			);
		}else{
			$.post(
					"${pageContext.request.contextPath}/likeAndDislike",
					{"flag":flag,"articleId":articleId},
					function(data){
						var count=data.isCorrect;
						$("#disthumbsup").css("color","red");
						$("#disthumbsup").html("("+count+")");
					},
					"json"
				);
		}
		
	}
</script>
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
	 .wrap {
		-webkit-animation:cloud 90s linear infinite;   
		-o-animation:cloud 90s linear infinite; 
	}
	@-webkit-keyframes cloud {
		from{background-position:0% 0%}
		  to{background-position:-2000% -2000%}
	}
}
</style>
</head>
<body>
	<!--导航栏-->
	<jsp:include page="header.jsp"></jsp:include>
	<div class="navbar navbar-default" style="margin-top:0px;border-radius:0px;">
			<div class="col-lg-12 col-xs-12 wrap" style="margin:0;padding:0;height: 120px;background-image: url(../../img/cloud.png);background-size: cover;">
				<div id="col-lg-12 col-xs-12" style="margin-top: 35px;">
					<span  style="font-weight:bold;font-size:200%;margin-left: 10%;">
						${article.author }的博文	
					</span>
					<input type="button" class="btn btn-default"style="width:100px;float: right;margin-right: 20%;border:2px;color: lightskyblue;border-color: lightskyblue;" value="关注" />
				</div>
			</div>
	</div>
	<div class="container"style="margin-top:2%;">
			
			<div class="row" style="min-height: 800px;">
				
				<div class="col-lg-8 col-xs-12"style="min-height: 800px;margin-top: 3%;background-color:rgba(255,255,255,0.3);border-radius: 10px;">
					<div class="col-lg-12 col-xs-12" style="">
						<span style="font-weight:bold;font-size:200%">
							${article.title }
						</span>
					</div>
					<div class="col-lg-4 col-xs-4"style="margin-top: 2%;">${article.uptime }</div>
					<div class="col-lg-6 col-xs-6"style="margin-top: 2%;">
						<span style="font-size: small;">${article.keyword1 }</span>
						<span style="font-size: small;">${article.keyword2 }</span>
						<span style="font-size: small;">${article.keyword3 }</span>
					</div>
					<div class="col-lg-2 col-xs-2"style="margin-top: 2%;">
						<span style="font-size: small;">阅读:</span>
						<span style="font-size: small;">${article.reading }</span>
					</div>
					<div class="col-lg-12 col-xs-12" style="border-bottom: 1px solid #C5C5C5;"></div>
					<div class="col-lg-12 col-xs-12" style="margin-top: 4%; margin-bottom:6%">
						<span >
							${article.content }
						</span>
					</div>
					<div class="col-lg-4 col-xs-4"></div>
					<div class="col-lg-3 col-xs-3" style="vertical-align: middle;">
						<span id="thumbsup" style="font-size: large;"><a onclick="likeAndDislike(${article.articleId },true)"><img src="../../img/like3.png" style="width: 30px;height: 30px;" onclick="" /></a>
						&emsp;(${article.likecount })</span>
					</div>
					<div class="col-lg-3 col-xs-3" style=" vertical-align: middle;">
						<span id="disthumbsup" style="font-size: large;"><a onclick="likeAndDislike(${article.articleId },false)"><img src="../../img/dislike.png" style="width: 30px;height: 30px;"/></a>
						&emsp;(${article.dislike })</span>
					</div>
					
					<!-- <div class="col-lg-12 col-xs-12" style="margin-top: 4%;height: 80px;">
						<textarea style="height: 100%;width: 100%;resize: none;">想对作者说点什么。。。
						</textarea>
					</div>
					<div class="col-lg-12 col-xs-12" style="margin-top: 2%;margin-bottom: 2%;border-bottom: 1px solid #C5C5C5;">
						<span style="margin-top: 2%;font-size: large;">
						sbwharry
						</span>
						<span style="margin-top: 2%;margin-left: 4%;">
						2018-06-25 16:58:03
						</span><br />
						<span style="margin-top: 2%;margin-left: 4%;">
						感谢博主。 1.测试那边给了我很好指导。 2.目前为止，最好的一篇。就是全0像素的空白矩阵，为何会归类到1。感谢博主。 1.测试那边给了我很好指导。 2.目前为止，最好的一篇。就是全0像素的空白矩阵，为何会归类到1。
						</span>
					</div>
					<div class="col-lg-12 col-xs-12" style="margin-top: 2%;margin-bottom: 2%;border-bottom: 1px solid #C5C5C5;">
						<span style="margin-top: 2%;font-size: large;">
						sbwharry
						</span>
						<span style="margin-top: 2%;margin-left: 4%;">
						2018-06-25 16:58:03
						</span><br />
						<span style="margin-top: 2%;margin-left: 4%;">
						感谢博主。 1.测试那边给了我很好指导。 2.目前为止，最好的一篇。就是全0像素的空白矩阵，为何会归类到1。感谢博主。 1.测试那边给了我很好指导。 2.目前为止，最好的一篇。就是全0像素的空白矩阵，为何会归类到1。
						</span>
					</div>
					<div class="col-lg-12 col-xs-12" style="margin-top: 2%;margin-bottom: 2%;border-bottom: 1px solid #C5C5C5;">
						<span style="margin-top: 2%;font-size: large;">
						sbwharry
						</span>
						<span style="margin-top: 2%;margin-left: 4%;">
						2018-06-25 16:58:03
						</span><br />
						<span style="margin-top: 2%;margin-left: 4%;">
						感谢博主。 1.测试那边给了我很好指导。 2.目前为止，最好的一篇。就是全0像素的空白矩阵，为何会归类到1。感谢博主。 1.测试那边给了我很好指导。 2.目前为止，最好的一篇。就是全0像素的空白矩阵，为何会归类到1。
						</span>
					</div> -->
				</div>
				<div class="col-lg-3 hidden-xs"style="margin-left: 15px; height: 800px;">
					<div class="row">
						<div class="col-lg" style="background-color: rgba(255,255,255,0.3);margin-top: 2px;margin-left: 2px;height: 30px;">
							<img src="../../img/expert.png" style="width: 20px;height: 21px;"/>&nbsp;
							<font size="4">个人资料</font>
						</div>
						<div class="col"style="background-color: rgba(255,255,255,0.3)smoke;margin-top: 2px;margin-left: 2px;">
							<div class="col-lg" style="height: 70px;background-color: rgba(255,255,255,0.3);">
								<div class="col-lg">
									<img src="../../img/person.png" style="margin-top: 2px;margin-left: 2px;width: 36px;height: 36px;"/>&nbsp;
									<font size="2" style="font-weight: bold;">${articleAuthor.userName }</font>
								</div>
								<div class="col-lg"style="margin-top: 2px;margin-left: 4px">
									<span style="font-size: small; color: #808080;">${articleAuthor.introduction }</span>
								</div>
								<div class="col-lg-12 col-xs-12" style="margin-top: 4%; height: 70px;background-color: rgba(255,255,255,0.3);border-bottom: 1px solid #C5C5C5;">
									<table class="col-lg-12 col-xs-12" style="margin-top: 2%;text-align: center;">
										<tr >
											<td>关注</td>
											<td>粉丝</td>
											<td>心情</td>
											<td>文章</td>
										</tr>
										<tr>
												<td><span>${articleAuthor.attention }</span></td>
												<td><span>${articleAuthor.fans }</span></td>
												<td><span>${articleAuthor.moodcount }</span></td>
												<td><span>${articleAuthor.articlecount }</span></td>
											</tr>
										</table>
										
								</div>
							</div>

						</div>
					</div>
					<div class="row" style="margin-top: 4px;margin-bottom: 4px;">
							<img src="../../img/background1.png" style="width: auto;height: 155px;"/>
					</div>
					<div class="row">
						<div class="col-lg-12" style="background-color: rgba(255,255,255,0.3);margin-top: 2px;height: 30px;">
							<img src="../../img/content.png" style="width: 24px;height: 24px;"/>
							<font size="4" style="text-align: center;">联系我</font>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-12" style="background-color: rgba(255,255,255,0.3);margin-top: 2px;">
							<div class="row" >
								<div class="col-lg-12" style="background-color: rgba(255,255,255,0.3);border-bottom: 1px solid #C5C5C5;margin-top: 2px;margin-bottom: 2px;">
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
	</body>
</html>