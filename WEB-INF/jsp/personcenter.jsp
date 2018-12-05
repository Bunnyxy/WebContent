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
<title>个人中心</title>

<!-- 引入Bootstrap核心样式文件 -->
<link href="../../css/bootstrap.css" rel="stylesheet">
<link href="../../css/customize.css" rel="stylesheet">	
<!-- 引入jQuery核心js文件 -->
<script src="../../js/jquery-1.11.3.min.js"></script>
<!-- 引入BootStrap核心js文件 -->
<script src="../../js/bootstrap.min.js"></script>
<script src="http://apps.bdimg.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script type="text/javascript" src="../../js/flow.js" ></script>
<script src="../../js/alertStyle.js"></script>
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
	.alert_btn {
	    background-color: #F5F5F5;
	    background-image: linear-gradient(to bottom, #FFFFFF, #E6E6E6);
	    background-repeat: repeat-x;
	    border-bottom: 0 none #B3B3B3;
	    border-radius: 4px;
	    border-right: 0 none #E6E6E6;
	    border-top: 0 none #E6E6E6;
	    box-shadow: 0 1px 0 rgba(255, 255, 255, 0.2) inset, 0 1px 2px rgba(0, 0, 0, 0.05);
	    color: #333333;
	    cursor: pointer;
	    display: inline;
	    font-size: 14px;
	    line-height: 20px;
	    margin-bottom: 0;
	    padding: 4px 12px;
	    text-align: center;
	    text-shadow: 0 1px 1px rgba(255, 255, 255, 0.75);
	    vertical-align: middle;
	}
	a, input[type="button"] {
	    border-left: 1px none;
	}
	a {
	    color: #007FBF;
	    outline: medium none;
	    text-decoration: none;
	}
	a {
	    color: #0088CC;
	    text-decoration: none;
	}
	.alert-bg {
	    background-color: #999999;
	    bottom: 0;
	    left: 0;
	    position: fixed;
	    right: 0;
	    top: 0;
	    z-index: 1100;
	    opacity: 0.3;
	}
	
	.alert-wnd {
	    width: 320px;
	    height: 120px;
	    margin-left: -160px;
	    margin-top: -160px;
	    box-shadow: 5px 5px 5px #AAAAAA;
	    left: 50%;
	    top: 50%;
	    z-index: 1110;
	    background-color: #ffffff;
	    font-family: 'Microsoft YaHei';
	    font-size: 12px;
	    opacity: 1;
	    position: fixed;
	    border: none;
	    border-radius:10px ;
	}
	
	.alert-wnd .alert-head {
        height: 24px;
        line-height: 24px;
        font-size: 15px;
        text-align: left;
        -webkit-border-top-left-radius:10px ;
        -webkit-border-top-right-radius:10px ;
        border-top-left-radius: 10px;
        border-top-right-radius: 10px;
        font-weight: 600;
        background-image: -moz-linear-gradient(top, #B0E0E6, #AFEEEE); /* Firefox */
        background-image: -webkit-gradient(linear, left top, left bottom, color-stop(0, #B0E0E6), color-stop(1, #AFEEEE)); /* Saf4+, Chrome */
        filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#B0E0E6', endColorstr='#AFEEEE', GradientType='0'); /* IE*/
    }
	
    .alert-wnd .alert-body {
        height: 60px;
    }
	
	        .alert-wnd .alert-body .alert-icon {
	            width: 200px;
	            height: 60px;
	            float: left;
	        }
	
	        .alert-wnd .alert-body .alert-msg {
	            float: left;
	            width: 310px;
	            height: 60px;
	        }
	
	            .alert-wnd .alert-body .alert-msg p {
	                width: 310px;
	                text-align: center;
	                font-size: 15px;
	                padding-top: 10px;
	            }
	.alert_btn {
	    background-color: #F5F5F5;
	    background-image: linear-gradient(to bottom, #FFFFFF, #E6E6E6);
	    background-repeat: repeat-x;
	    border-bottom: 0 none #B3B3B3;
	    border-radius: 4px;
	    border-right: 0 none #E6E6E6;
	    border-top: 0 none #E6E6E6;
	    box-shadow: 0 1px 0 rgba(255, 255, 255, 0.2) inset, 0 1px 2px rgba(0, 0, 0, 0.05);
	    color: #333333;
	    cursor: pointer;
	    display: inline;
	    font-size: 14px;
	    line-height: 20px;
	    margin-bottom: 0;
	    padding: 4px 12px;
	    text-align: center;
	    text-shadow: 0 1px 1px rgba(255, 255, 255, 0.75);
	    vertical-align: middle;
	}
	a, input[type="button"] {
	    border-left: 1px none;
	}
	a {
	    color: #007FBF;
	    outline: medium none;
	    text-decoration: none;
	}
	a {
	    color: #0088CC;
	    text-decoration: none;
	}
	/*文飞  20:52:07 */
	.alert_btn:active,
	.alert_btn.active {
	  background-color: #cccccc \9;
	}
	
	.alert_btn:first-child {
	  *margin-left: 0;
	}
	
	.alert_btn:hover,
	.alert_btn:focus {
	  color: #333333;
	  text-decoration: none;
	  background-position: 0 -15px;
	  -webkit-transition: background-position 0.1s linear;
	     -moz-transition: background-position 0.1s linear;
	       -o-transition: background-position 0.1s linear;
	          transition: background-position 0.1s linear;
	}
	
	.alert_btn:focus {
	  outline: thin dotted #333;
	  outline: 5px auto -webkit-focus-ring-color;
	  outline-offset: -2px;
	}
	
	.alert_btn.active,
	.alert_btn:active {
	  background-image: none;
	  outline: 0;
	  -webkit-box-shadow: inset 0 2px 4px rgba(0, 0, 0, 0.15), 0 1px 2px rgba(0, 0, 0, 0.05);
	     -moz-box-shadow: inset 0 2px 4px rgba(0, 0, 0, 0.15), 0 1px 2px rgba(0, 0, 0, 0.05);
	          box-shadow: inset 0 2px 4px rgba(0, 0, 0, 0.15), 0 1px 2px rgba(0, 0, 0, 0.05);
	}
</style>
</head>
<body>
	<!--导航栏-->
	<jsp:include page="header.jsp"></jsp:include>
	<div class="container"style="margin-top:2%;">
			<div class="row" style="min-height: 600px;">
				<div class="col-lg-3 col-xs-12"style="height: 800px;background-color: rgba(255,255,255,0.3);border-radius: 10px;">
					<div class="row" style=" ">
						<div class="col-lg-6 col-xs-6" style="border-radius:0 40px 40px 0;background-color: rgba(255,255,255,0);vertical-align: middle;margin-top: 2px;margin-left: 2px;height: 30px;border-bottom: 1px solid #C5C5C5;">
							<img src="../../img/expert.png" style="width: 20px;height: 21px;"/>&nbsp;
							<font size="4">我的资料</font>
						</div>
						
						<div class="col-lg-12 col-xs-12" style="vertical-align: middle;border-top: 1px solid #C5C5C5;">
						
							<img src="../../img/person.png" style="margin-top: 2%;margin-left: 2%;width: 60px;height: 60px;background-color: red;border-radius:50px ;"/>&nbsp;
						
						
							<font size="2" style="font-weight: bold;">${current_user.userName }</font>
							<a data-toggle="modal" data-target="#editDialog" onclick="edituser()"> <span style="float: right;margin-top: 2px;margin-right: 4px;">修改</span></a>
							<img src="../../img/file_edit48.png" style="margin-top: 4px;float: right;width: 15px;height: 15px;"/>
							<div class="col-lg-12 col-xs-10" style="text-align: right;">
								<span style="font-size: small;">入坑
								<span style="font-size: small;" id="numday">${current_user.joinday }
								<span style="font-size: small;">天&emsp;&emsp;&emsp;&emsp;</span>
							</div>
						</div>
						<div class="col-lg-1 col-xs-1" style="margin-top: 3%;"></div>
						<div class="col-lg-10 col-xs-10" style="margin-top: 3%;">
							
							<table style="margin-top: 2%;font-weight: 560;">
										<tr>
											<td>性别:</td>
											<td><span>${current_user.sex }</span></td>
											
										</tr>
										<tr>
											<td>生日：</td>	
											<td><span>${current_user.birthday }</span></td>		
										</tr>
										<tr>
											<td>行业：</td>
											<td><span>${current_user.profession }</span></td>
										</tr>
										<tr>
											<td>金币：</td>
											<td><span>${current_user.gold }</span></td>
										</tr>
										</table>
						</div>
						<div class="col-lg-12 col-xs-12"style="margin-top: 2%;margin-bottom: 2%;margin-left: 4%;">
							<span style="font-size: small; color: #808080;">${current_user.introduction }</span>
						</div>
											
						<div class="col-lg-12 col-xs-12" style="margin-top: 4%; height: 70px;border-top: 1px solid #C5C5C5;border-bottom: 1px solid #C5C5C5;">
									<table class="col-lg-12 col-xs-12" style="margin-top: 2%;text-align: center;">
										<tr >
											<td>关注</td>
											<td>粉丝</td>
											<td>心情</td>
											<td>文章</td>
										</tr>
										<tr>
												<td><span>${current_user.attention }</span></td>
												<td><span>${current_user.fans }</span></td>
												<td><span>${current_user.moodcount }</span></td>
												<td><span>${current_user.articlecount }</span></td>
											</tr>
										</table>
										
						</div>
					</div>
				
					
					<div class="row">
						<div class="col-lg-6 col-xs-6" style="background-color: rgba(255,255,255,0.7);margin-top: 2px;height: 30px;border-radius: 0 40px 40px 0;border-bottom: 1px solid #C5C5C5;">
							<img src="../../img/content.png" style="width: 24px;height: 24px;"/>
							<font size="4" style="text-align: center;">联系我</font>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-12 col-xs-12" style="margin-top: 2px;border-top: 1px solid #C5C5C5;">
							<div class="row" >
								<div class="col-lg-12 col-xs-12" style="background-color: rgba(255,255,255,0.3);border-bottom: 1px solid #C5C5C5;margin-top: 2px;margin-bottom: 2px;">
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
				<div class="col-lg-8 hidden-xs" style="margin-left: 45px;background-color: rgba(255,255,255,0.3);border-radius: 10px;">
					<div class="row"">
						<div class="col-lg-4" style="background-color:rgba(255,255,255,0);border-radius:0 40px 40px 0;">
							<img src="../../img/reading.png" style="width: 40px;height: 40px;"/>
							<span style="font-weight:bold;font-size:large;">
								我的文章
							</span>
						</div>
					</div>
					<br />
					<div class="row" style="background-color:rgba(255,255,255,0.3);height: 145px;border-bottom:1px solid #C5C5C5;">
						<div class="clo-lg-12" style="margin-top:2%;margin-left: 2%;">
							<h3 style="font-weight:bold;">
								<a>性能优化之 JVM 高级特性</a>
							</h3>
							<div class="col-lg" style="color: #808080;">
								在面试的后期，往往都会问性能优化的问题，譬如你优化过 JVM 吗，有没有遇到过 JVM 排查的场景，如果只能说点基本的见解，那面试官给你的定岗定薪很有可能是初级，…
							</div>
							<div class="col-lg" style="margin-top: 1%;">
								<div class="col-lg-4 hidden-xs">
									<img src="../../img/person.png" style="width: 20px;height: 20px;"/>&nbsp;
									<font style="margin-top: 1%;">默认用户</font>
								</div>
								<div class="col-lg-3"style="float: right;">
									<span style="float: right;">
										<img id="img-btn" src="../../img/overflowdots.png" style="width: 30px;height: 30px;">
										<span id="commit" style="color:#AFAFAF;background-color: rgba(255,255,255,0.5);border-radius:5px;width:100px;height: 30px;float: right;display: none;">
											<button class="edit" id="edit-text" style="color:#666666;border: none;background:none;height:30px;line-height: 30px;" onclick="editEvent(this)">修改</button>|
											<button class="delete" id="delete-text" style="color:#666666;border: none;background:none;height:30px;line-height: 30px;" onclick="deleteEvent(this)">删除</button>
										</span>
									</span>
								</div>
							</div>
							
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 编辑对话框 -->
		<div class="modal" id="editDialog" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title" id="myModalLabel">修改信息</h4>
					</div>
					<div class="modal-body">
						<form class="form-horizontal" id="edit_customer_form" action="personEdit" method="post">
							<input type="hidden" id="edit_cust_id" name="cust_id"/>
							<div class="form-group">
								<label for="edit_userName" class="col-sm-2 control-label">用户名</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="edit_userName" value="${current_user.userName }" name="userName">
								</div>
							</div>	
							
							<div class="form-group">
								<label for="edit_email" class="col-sm-2 control-label">email</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="edit_email" value="${current_user.email }" name="email">
								</div>
							</div>
							<div class="form-group">
								<label for="edit_phone" class="col-sm-2 control-label">联系方式</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="edit_phone" value="${current_user.phone }" name="phone">
								</div>
							</div>
							<div class="form-group">
								<label for="edit_birthday" class="col-sm-2 control-label">生日</label>
								<div class="col-sm-10">
									<input type="date" class="form-control" id="edit_birthday" value="${current_user.birthday }" name="birthday">
								</div>
							</div>
							<div class="form-group">
								<label for="edit_sex" class="col-sm-2 control-label">性别</label>
								<div class="col-sm-10">
									
				                     <c:if test="${current_user.sex=='male'}">
				                    	<input type="radio" class="btn btn-success btn-sm" name="sex" id="sex" value="male" checked="checked">男
				                   		<input type="radio" class="btn btn-success btn-sm" name="sex" id="sex" value="female">女
				                     </c:if>
				                    <c:if test="${current_user.sex=='female'}">
				                    	<input type="radio" class="btn btn-success btn-sm" name="sex" id="sex" value="male" >男
				                   		<input type="radio" class="btn btn-success btn-sm" name="sex" id="sex" value="female" checked="checked">女
				                     </c:if>
								</div>
							</div>
							<div class="form-group">
								<label for="edit_profession" class="col-sm-2 control-label">行业</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="edit_profession" value="${current_user.profession }" name="profession">
								</div>
							</div>
							<div class="form-group">
								<label for="edit_introduction" class="col-sm-2 control-label">个人简介</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="edit_introduction" value="${current_user.introduction }" name="introduction">
								</div>
							</div>
							<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
						<button type="submit" class="btn btn-primary" onclick="updateCustomer()">保存修改</button>
					</div>
						</form>
					</div>
					
				</div>
			</div>
		</div>
	</body>
	<script type="text/javascript">
		$(function(){
	        $("#img-btn").mouseover(function(){
	          $("#commit").fadeIn(1000);
	          $("#img-btn").hide();
	        });
        });
        $("#commit").mouseover(function(){ $("#commit").show(); $("#img-btn").hide();}); 
		$("#commit").mouseout(function(){
			$("#commit").hide(); 
		    $("#img-btn").show();
		});
		var editEvent = function(obj){
			obj.style.color="#6DBFFF";
		}
		var deleteEvent = function(obj){
			obj.style.color="#6DBFFF";
			alert('确认删除吗？');
		}
		document.getElementById('edit_birthday').valueAsDate=document.getElementById('birthday').value;
</script>
</html>