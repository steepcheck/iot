<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<meta charset="utf-8">
	<title>朔和云 | 设备地图</title>
	<meta name="description" content="">
	<meta name="author" content="">
	<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
	<!-- STYLESHEETS --><!--[if lt IE 9]><script src="js/flot/excanvas.min.js"></script><script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script><script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script><![endif]-->
	<link rel="stylesheet" type="text/css" href="../css/cloud-admin.css" >
	<link rel="stylesheet" type="text/css"  href="../css/themes/default.css" id="skin-switcher" >
	<link rel="stylesheet" type="text/css"  href="../css/responsive.css" >
	
	<link href="../font-awesome/css/font-awesome.min.css" rel="stylesheet">
	<!-- JQUERY UI-->
	<link rel="stylesheet" type="text/css" href="js/jquery-ui-1.10.3.custom/css/custom-theme/jquery-ui-1.10.3.custom.min.css" >
	<!-- DATE RANGE PICKER -->
	<link rel="stylesheet" type="text/css" href="../js/bootstrap-daterangepicker/daterangepicker-bs3.css" >
	<!-- UNIFORM -->
	<link rel="stylesheet" type="text/css" href="../js/uniform/css/uniform.default.min.css" >
	<!-- INBOX CSS -->
	<link rel="stylesheet" href="../css/inbox.css">	

	<!-- JAVASCRIPTS -->
	<!-- Placed at the end of the document so the pages load faster -->
	<!-- JQUERY -->
	<script src="../js/jquery/jquery-2.0.3.min.js"></script>
	<script src="../js/jquery/jquery-2.2.3.min.js"></script>
	<!-- JQUERY UI-->
	<script src="../js/jquery-ui-1.10.3.custom/js/jquery-ui-1.10.3.custom.min.js"></script>
	<!-- BOOTSTRAP -->
	<script src="../bootstrap-dist/js/bootstrap.min.js"></script>
	<!-- LESS CSS -->
	<script src="../js/lesscss/less-1.4.1.min.js" type="text/javascript"></script>	
	<!-- DATE RANGE PICKER -->
	<script src="../js/bootstrap-daterangepicker/moment.min.js"></script>
	<script src="../js/bootstrap-daterangepicker/daterangepicker.min.js"></script>
	<!-- SLIMSCROLL -->
	<script type="text/javascript" src="../js/jQuery-slimScroll-1.3.0/jquery.slimscroll.min.js"></script><script type="text/javascript" src="../js/jQuery-slimScroll-1.3.0/slimScrollHorizontal.min.js"></script>
	<!-- BLOCK UI -->
	<script type="text/javascript" src="../js/jQuery-BlockUI/jquery.blockUI.min.js"></script>
	<!-- UNIFORM -->
	<script type="text/javascript" src="../js/uniform/jquery.uniform.min.js"></script>
	<!-- BOOTSTRAP WYSIWYG -->
	<script type="text/javascript" src="../js/bootstrap-wysiwyg/jquery.hotkeys.min.js"></script>
	<script type="text/javascript" src="../js/bootstrap-wysiwyg/bootstrap-wysiwyg.min.js"></script>
	<!-- COOKIE -->
	<script type="text/javascript" src="../js/jQuery-Cookie/jquery.cookie.min.js"></script>


	<!-- CUSTOM SCRIPT -->
	<script src="../js/script.js"></script>
	<script src="../js/inbox.js"></script>

	<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=SP7yzbUEjZyftws3bxA2eBuhlT03b0cn"></script>

	<script>
		jQuery(document).ready(function() {		
			App.setPage("inbox");  //Set current page
			App.init(); //Initialise plugins and elements
			Inbox.init();
		});
	</script>
	<!-- /JAVASCRIPTS -->
	
	<style>
      a.skiplink {
        position: absolute;
        clip: rect(1px, 1px, 1px, 1px);
        padding: 0;
        border: 0;
        height: 1px;
        width: 1px;
        overflow: hidden;
      }
      a.skiplink:focus {
        clip: auto;
        height: auto;
        width: auto;
        background-color: #fff;
        padding: 0.3em;
      }
      #map:focus {
        outline: #4A74A8 solid 0.15em;
      }
    </style>


    <style type="text/css">
		body, html,#allmap {width: 100%;height: 100%;overflow: hidden;margin:0;font-family:"微软雅黑";}
	</style>


</head>
<body>
	<!-- HEADER -->	

	<header class="navbar clearfix" id="header">
		<div class="container">
				
				<div class="navbar-brand">
					<!-- COMPANY LOGO -->
					<a href="index.html">
						<img src="../img/logo/logo.png" alt="Cloud Admin Logo" class="img-responsive" height="100" width="300"/>
					</a>
				</div>	
				<!-- BEGIN TOP NAVIGATION MENU -->					
				<ul class="nav navbar-nav pull-right">
					<!-- BEGIN NOTIFICATION DROPDOWN -->	
					<li class="dropdown" id="header-notification">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							<i class="fa fa-bell"></i>
							<span class="badge">1</span>						
						</a>
						<ul class="dropdown-menu notification">
							<li class="dropdown-title">
								<span><i class="fa fa-bell"></i> 1个提醒</span>
							</li>
							<li>
								<a href="#">
									<span class="label label-success"><i class="fa fa-user"></i></span>
									<span class="body">
										<span class="message">5 用户在线. </span>
										<span class="time">
											<i class="fa fa-clock-o"></i>
											<span>刚刚</span>
										</span>
									</span>
								</a>
							</li>							
						</ul>
					</li>
					<!-- END NOTIFICATION DROPDOWN -->
					<!-- BEGIN INBOX DROPDOWN -->
					<li class="dropdown" id="header-message">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
						<i class="fa fa-envelope"></i>
						<span class="badge">1</span>
						</a>
						<ul class="dropdown-menu inbox">
							<li class="dropdown-title">
								<span><i class="fa fa-envelope-o"></i> 1条消息</span>
								<span class="compose pull-right tip-right" title="Compose message"><i class="fa fa-pencil-square-o"></i></span>
							</li>
							<li>
								<a href="#">
									<img src="../img/avatars/avatar2.jpg" alt="" />
									<span class="body">
										<span class="from">小明</span>
										<span class="message">
											请通知分部尽快处理故障设备
										</span> 
										<span class="time">
											<i class="fa fa-clock-o"></i>
											<span>刚刚</span>
										</span>
									</span>
									 
								</a>
							</li>						
						</ul>
					</li>
					<!-- END INBOX DROPDOWN -->
					<!-- BEGIN TODO DROPDOWN -->
					<li class="dropdown" id="header-tasks">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
						<i class="fa fa-tasks"></i>
						<span class="badge"></span>
						</a>						
					</li>
					<!-- END TODO DROPDOWN -->
					<!-- BEGIN USER LOGIN DROPDOWN -->
					<li class="dropdown user" id="header-user">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							<img alt="" src="../img/avatars/avatar3.jpg" />
							<span class="username">
								<!-- John Doe -->
								<% 
									out.println(request.getSession().getAttribute("username")+"");
								%>
							</span>
							<i class="fa fa-angle-down"></i>
						</a>
						<ul class="dropdown-menu">
							<li><a href="#"><i class="fa fa-user"></i> 我的资料</a></li>
							<li><a href="#"><i class="fa fa-cog"></i> 账户设置</a></li>
							<li><a href="#"><i class="fa fa-eye"></i> 隐私设置</a></li>
							<li><a href="../logout/logout.jsp"><i class="fa fa-power-off"></i> 退出系统</a></li>
						</ul>
					</li>
					<!-- END USER LOGIN DROPDOWN -->
				</ul>
				<!-- END TOP NAVIGATION MENU -->
		</div>		
	</header>
	<!--/HEADER -->
	
	<!-- PAGE -->
	<section id="page">
				<!-- SIDEBAR -->
				<div id="sidebar" class="sidebar">
					<div class="sidebar-menu nav-collapse">
						<div class="divide-20"></div>
						<!-- SEARCH BAR -->
						<div id="search-bar">
							<input class="search" type="text" placeholder="Search"><i class="fa fa-search search-icon"></i>
						</div>
						<!-- /SEARCH BAR -->
						
						<!-- SIDEBAR QUICK-LAUNCH -->
						<!-- <div id="quicklaunch">
						<!-- /SIDEBAR QUICK-LAUNCH -->
						
						<!-- SIDEBAR MENU -->
						<ul>		
							<li>
								<a class="" href="../business/index.jsp">
									<i class="fa fa-home fa-fw"></i>									
									<span class="menu-text">主页</span>
								</a>
							</li>		
							<li>
								<a class="" href="../business/thingList.jsp">
									<i class="fa fa-desktop fa-fw"></i>									
									<span class="menu-text">设备列表</span>
								</a>
							</li>			
							<li class="active">
								<a class="" >
									<i class="fa fa-map-marker fa-fw"></i> 
									<span class="menu-text">设备地图</span>
									<span class="selected"></span>
								</a>
							</li>
							<li>
								<a class="" href="../business/thingDevelopment.jsp">
									<!--<i class="fa fa-envelope-o fa-fw"></i>
									<img class="fa fa-desktop fa-fw" src="../img/icon/gater.png" height="15" width="15"/>
									<i></i>-->
									<i class="fa fa-th-large fa-fw"></i>
									<span class="menu-text">设备开发</span>
								</a>
							</li>
							<li class="has-sub">
								<a href="javascript:;" class="">
								<i class="fa fa-table fa-fw"></i> <span class="menu-text">报表</span>
								<span class="arrow"></span>
								</a>
								<ul class="sub">
									<li><a class="" href="../business/senserTable.jsp"><span class="sub-menu-text">传感器数据</span></a></li>
								</ul>
							</li>
							<li>
								<a class="" href="../business/accountSettings.jsp">
									<i class="fa fa-user fa-fw" ></i> 
									<span class="menu-text">账户设置</span>
								</a>
							</li>						
						</ul>
						<!-- /SIDEBAR MENU -->
					</div>
				</div>
				<!-- /SIDEBAR -->
		<div id="main-content">
			<div class="container">
				<div class="row">
					<div id="content" class="col-lg-12">
						<!-- PAGE HEADER-->
						<div class="row">
							<div class="col-sm-12">
								<div class="page-header">
									<!-- STYLER -->
									
									<!-- /STYLER -->
									<!-- BREADCRUMBS -->
									<ul class="breadcrumb">
										<li>
											<i class="fa fa-home"></i>
											<a href="../business/index.jsp">主页</a>
										</li>		
										<li>
											<a href="#">设备地图</a>
										</li>										
									</ul>
									<!-- /BREADCRUMBS -->
									<div class="clearfix">
										<h3 class="content-title pull-left">设备地图</h3>
									</div>
									<div class="description">您的设备所在的位置</div>
								</div>
							</div>
						</div>
						<!-- /PAGE HEADER -->
						<div id="location"></div>

						<div class="box border blue">
							<div class="box-title">
								<h4><i class="fa fa-signal"></i>位置</h4>
								<div class="tools">
									<a href="javascript:;" class="reload">
										<i class="fa fa-refresh"></i>
									</a>
								</div>
							</div>
							<div class="box-body" >
								<div class="divide-20"></div>
								<!-- <div id="map" class="map" tabindex="0"></div> -->
								<div class="row">
									<div class="col-md-8" id="allmap"></div>
								</div>
							</div>							
						</div>
						<script type="text/javascript">
							var carArry = new Array();
							var ajax =
							{
								abort : function()
								{
								} //定义一个空的方法, 是为了下面ajax.abort()不报错
							};
							function get()
							{
								ajax.abort();
								//每次提交前, 先放弃上一次ajax的提交, 这样就不会同时有多个ajax正在请求, 卡死浏览器
								ajax = $.ajax(
								{
									url : "http://localhost:8080/iot/business/getShaolinBuses.jsp"//请求的url
									,
									async : false,
									dataType : "jsonp"
									//传递给请求处理程序或页面的，用以获得jsonp回调函数名的参数名(一般默认为:callback)
									,
									jsonp : "callback"
									//自定义的jsonp回调函数名称"jsonpCallback"，返回的json也必须有这个函数名称
									,
									jsonpCallback : "jsonpCallback"

								});
							}
							function jsonpCallback(data)//回调函数
							{
								// console.log(carIndex); //
								var cars = jQuery.parseJSON(JSON.stringify(data));
								// console.info("cars="+JSON.stringify(data));
								// console.info(cars.length);
								carArry.splice(0,carArry.length);//清空数组
								for (var i = 0; i < cars.length; i++)
								{		
									car = new Object();
									car.carid = cars[i].carid;
									car.gpsSignal = cars[i].gpsSignal;
									car.soc = cars[i].soc;
									car.batteryVoltage = cars[i].batteryVoltage;
									car.batteryCurrent = cars[i].batteryCurrent;
									car.gpsLongitude = cars[i].gpsLongitude;
									car.gpsLatitude = cars[i].gpsLatitude;
									carArry.push(car);
								}
								// for (var i = 0; i < carArry.length; i++)
								// {		
								// 	console.info(i);
								// 	console.info("carid"+carArry[i].carid);
								// 	console.info("gpsSignal"+carArry[i].gpsSignal);
								// 	console.info("soc"+carArry[i].soc);
								// 	console.info("batteryVoltage"+carArry[i].batteryVoltage);
								// 	console.info("batteryCurrent"+carArry[i].batteryCurrent);
								// 	console.info("batteryCurrent"+carArry[i].gpsLongitude);
								// 	console.info("batteryCurrent"+carArry[i].gpsLatitude);
								// }
							}
							get();
							function getx()
							{
								get();
								setMarkers();
							}
							var t1 = window.setInterval("getx()", 10000);

							// 百度地图API功能
							var map = new BMap.Map("allmap");
							var point = new BMap.Point(113.820265,36.0604873333333);
							map.centerAndZoom(point, 12);
							map.enableScrollWheelZoom(true);     //开启鼠标滚轮缩放

							var opts = {
								width : 80,     // 信息窗口宽度
								height: 100,     // 信息窗口高度
								// title : "信息窗口" , // 信息窗口标题
								enableMessage:true//设置允许信息窗发送短息
							};

							// 将获取到的点赋予地图的marker
							for (var i = 0; i < carArry.length; i++)
							{
								var pointTmp = new BMap.Point(carArry[i].gpsLongitude,carArry[i].gpsLatitude);
								var marker = new BMap.Marker(pointTmp);  // 创建标注
								marker.setTitle("车辆编号: "+carArry[i].carid);
								var content = "车辆编号: "+carArry[i].carid + "<br>"
											+ "GPS信号强度: " + carArry[i].gpsSignal + "<br>"
											+ "SOC: " + carArry[i].soc + "<br>"
											+ "电池电压: " + carArry[i].batteryVoltage + "<br>"
											+ "电池电流: " + carArry[i].batteryCurrent + "<br>";

								map.addOverlay(marker);              // 将标注添加到地图中
								addClickHandler(content,marker);	
							}
							function addClickHandler(content,marker){
								marker.addEventListener("click",function(e){
									openInfo(content,e)}
								);
							}
							var markerInfoWindow;
							function openInfo(content,e){
								p = e.target;
								markerInfoWindow = e.target;
								console.info("title = "+p.getTitle());
								var point = new BMap.Point(p.getPosition().lng, p.getPosition().lat);
								var infoWindow = new BMap.InfoWindow(content,opts);  // 创建信息窗口对象 
								map.openInfoWindow(infoWindow,point); //开启信息窗口
							}


							function setMarkers()
							{
								var makers = map.getOverlays();
								console.info("makers length = "+makers.length);
								for (var i = 0; i < makers.length; i++)
								{
									var id = makers[i].getTitle();
									console.info("makers id = "+id);
									for (var x = 0; x < carArry.length; x++)
									{		
										if(("车辆编号: "+carArry[x].carid) == id)
										{
											makers[i].setPosition(new BMap.Point(carArry[i].gpsLongitude,carArry[i].gpsLatitude));
											console.info("makers "+i+" setPosition("+carArry[i].gpsLongitude+","+carArry[i].gpsLongitude+");");	

											break;			
										}
									}
								}
							}

						</script>
						
			
											
						
						<div class="footer-tools">
							<span class="go-top">
								<i class="fa fa-chevron-up"></i> Top
							</span>
						</div>
					</div><!-- /CONTENT-->
				</div>
			</div>
		</div>
	</section>
	<!--/PAGE -->
</body>
</html>