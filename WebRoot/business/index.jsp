<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page language="java" import="java.util.*"%>
<%@ page import="com.shuohe.os.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<meta charset="utf-8">
	<title>朔和云 | 主页</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1, user-scalable=no">
	<meta name="description" content="">
	<meta name="author" content="">

	<link rel="stylesheet" type="text/css" href="../css/cloud-admin.css" >
	<link rel="stylesheet" type="text/css"  href="../css/themes/night.css" id="skin-switcher" >
	<link rel="stylesheet" type="text/css"  href="../css/responsive.css" >
	
	<link href="../font-awesome/css/font-awesome.min.css" rel="stylesheet">
	<!-- FUELUX TREE -->
	<link rel="stylesheet" type="text/css" href="../js/fuelux-tree/fuelux.min.css" >
	<!-- DATE RANGE PICKER -->
	<link rel="stylesheet" type="text/css" href="../js/bootstrap-daterangepicker/daterangepicker-bs3.css" >
	<!-- FONTS -->

</head>
<body>
	<!-- HEADER -->
	<header class="navbar clearfix" id="header">
		<div class="container">
				<span><font size="6" color="#ffffff">国联电池信息管理系统</font></span>
				<!-- <ul class="nav navbar-nav pull-left hidden-xs" id="navbar-left">
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							<i class="fa fa-cog"></i>
							<span class="name">Skins</span>
							<i class="fa fa-angle-down"></i>
						</a>
						<ul class="dropdown-menu skins">
							<li class="dropdown-title">
								<span><i class="fa fa-leaf"></i> Theme Skins</span>
							</li>
							<li><a href="#" data-skin="default">Subtle (default)</a></li>
							<li><a href="#" data-skin="night">Night</a></li>
							<li><a href="#" data-skin="earth">Earth</a></li>
							<li><a href="#" data-skin="utopia">Utopia</a></li>
							<li><a href="#" data-skin="nature">Nature</a></li>
							<li><a href="#" data-skin="graphite">Graphite</a></li>
						 </ul>
					</li>
				</ul> -->
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
					<li class="active">
						<a class="" href="../business/index.jsp">
							<i class="fa fa-home fa-fw"></i>									
							<span class="menu-text">主页</span>
							<span class="selected"></span>
						</a>
					</li>		
					<li>
						<a class="" href="../business/thingList.jsp">
							<i class="fa fa-desktop fa-fw"></i>									
							<span class="menu-text">设备列表</span>
						</a>
					</li>			
					<li>
						<a class="" href="../business/thingMap.jsp">
							<i class="fa fa-map-marker fa-fw"></i> 
							<span class="menu-text">设备地图</span>
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
						<a class="" href="../business/fileApproval/fileApproval.jsp">
							<i class="fa  fa-briefcase fa-fw"></i>
							<span class="menu-text">文件审批</span>
						</a>
					</li>
					<li>
						<a class="" href="../business/accountSettings.jsp">
							<i class="fa fa-user fa-fw" ></i> 
							<span class="menu-text">账户设置</span>
						</a>
					</li>	
					<li class="has-sub">
						<a href="javascript:;" class="">
							<i class="fa fa-gear fa-fw"></i> 
							<span class="menu-text">系统设置</span>
							<span class="arrow"></span>
						</a>
						<ul class="sub">
							<li><a class="" href="../business/systemManage/userManage/userManager.jsp"><span class="sub-menu-text">用户管理</span></a></li>
							<li><a class="" href="../business/positionManage/positionManager.jsp"><span class="sub-menu-text">职位管理</span></a></li>
							<li><a class="" href="../business/systemManage/dataTableManage/dataTableManager.jsp"><span class="sub-menu-text">数据表管理</span></a></li>
						</ul>
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
						<div class="divide-20"></div>
						<!-- 页面主要内容 -->
						<!-- class="row" 终端数量和登录人数 -->
						<!-- <div class="row"> -->
						<div class="row">
							<div class="col-md-8">
								<!-- BOX -->
								<div class="box border blue">
									<div class="box-title">
										<h4><i class="fa fa-signal"></i>CPU使用率</h4>
										<div class="tools">
											<a href="javascript:;" class="reload">
												<i class="fa fa-refresh"></i>
											</a>
										</div>
									</div>
									<div class="box-body">
										<div id="chartcpu" class="chart"></div>
									</div>
								</div>
								<!-- /BOX -->
							</div>					
						<!-- </div> -->
						<!-- <div class="row"> -->
							<div class="col-md-4">
								<!-- BOX -->
								<div class="box border pink">
									<div class="box-title">
										<h4><i class="fa fa-bars"></i>服务器信息</h4>
									</div>
									<div class="box-body big">
										<h4>硬件信息</h4>
											<dl>
												<dd>CPU数量:2</dd>		
												<dd>CPU品牌:Inter(R) Core(TM)i5-5200 CPU @ 2.20GHz</dd>											
												<dd>内存大小:8099</dd>																							
											</dl>
										<h4>软件信息</h4>
										<dl">
											<dd>操作系统及版本号：2.6.32-431.11.7.el6.ucloud.x86_64</dd>	
											<dd>操作系统内核版本号：x86_64</dd>											
										</dl>
									</div>
								</div>
								<!-- /BOX -->
							</div>			
						<!-- </div> -->

						<!-- <div class="row"> -->
							<div class="col-md-8">
								<!-- BOX -->
								<div class="box border blue">
									<div class="box-title">
										<h4><i class="fa fa-signal"></i>内存使用量</h4>
										<div class="tools">
											<a href="javascript:;" class="reload">
												<i class="fa fa-refresh"></i>
											</a>
										</div>
									</div>
									<div class="box-body">
										<div id="chart_2" class="chart"></div>
									</div>
								</div>
								<!-- /BOX -->
							</div>					
						<!-- </div>					 -->
						<!-- <div class="row"> -->
							<div class="col-md-8">
								<!-- BOX -->
								<div class="box border blue">
									<div class="box-title">
										<h4><i class="fa fa-signal"></i>磁盘空间使用率</h4>
										<div class="tools">
											<a href="javascript:;" class="reload">
												<i class="fa fa-refresh"></i>
											</a>
										</div>
									</div>
									<div class="box-body">
										<div id="chartloadavragex" class="chart"></div>
									</div>
								</div>
								<!-- /BOX -->
							</div>					
						<!-- </div>					 -->

							<!-- 服务器负载-->

						</div>
							<div class="footer-tools">
								<span class="go-top"><i class="fa fa-chevron-up"></i> Top</span>
							</div>
					</div><!-- /CONTENT-->

				</div>


			</div>
		</div>
	</section>
	<!--/PAGE -->
	<!-- JAVASCRIPTS -->
	<!-- Placed at the end of the document so the pages load faster -->
	<!-- JQUERY -->
	<script src="../js/flot/jquery.min.js"></script>
	<!-- JQUERY UI-->
	<script src="../js/jquery-ui-1.10.3.custom/js/jquery-ui-1.10.3.custom.min.js"></script>
	<!-- BOOTSTRAP -->
	<script src="../bootstrap-dist/js/bootstrap.min.js"></script>
	
		
	<!-- DATE RANGE PICKER -->
	<script src="../js/bootstrap-daterangepicker/moment.min.js"></script>
	
	<script src="../js/bootstrap-daterangepicker/daterangepicker.min.js"></script>
	<!-- SLIMSCROLL -->
	<script type="text/javascript" src="../js/jQuery-slimScroll-1.3.0/jquery.slimscroll.min.js"></script>
	<script type="text/javascript" src="../js/jQuery-slimScroll-1.3.0/slimScrollHorizontal.min.js"></script>
	<!-- BLOCK UI -->
	<script type="text/javascript" src="../js/jQuery-BlockUI/jquery.blockUI.min.js"></script>
	<!-- FLOT CHARTS -->
	<script src="../js/flot/jquery.flot.min.js"></script>
	<script src="../js/flot/jquery.flot.time.min.js"></script>
    <script src="../js/flot/jquery.flot.selection.min.js"></script>
	<script src="../js/flot/jquery.flot.resize.min.js"></script>
    <script src="../js/flot/jquery.flot.pie.min.js"></script>
    <script src="../js/flot/jquery.flot.stack.min.js"></script>
    <script src="../js/flot/jquery.flot.crosshair.min.js"></script>
	<!-- COOKIE -->
	<script type="text/javascript" src="../js/jQuery-Cookie/jquery.cookie.min.js"></script>
	<!-- UNIFORM -->
	<script type="text/javascript" src="../js/uniform/jquery.uniform.min.js"></script>
	<!-- BOOTSTRAP WYSIWYG -->
	<script type="text/javascript" src="../js/bootstrap-wysiwyg/jquery.hotkeys.min.js"></script>
	<script type="text/javascript" src="../js/bootstrap-wysiwyg/bootstrap-wysiwyg.min.js"></script>
	<!-- FUELUX TREE -->
	<script type="text/javascript" src="../js/fuelux-tree/fuelux.tree-sampledata.js?ver=2"></script>
	<script type="text/javascript" src="../js/fuelux-tree/fuelux.tree.min.js?ver=1"></script>
	<!-- CUSTOM SCRIPT -->
	<script src="../js/script.js?ver=1"></script>
	<script src="../js/charts.js?ver=1"></script>
	<script>
		jQuery(document).ready(function() {		
			// App.setPage("treeview");  //Set current page
			// App.init(); //Initialise plugins and elements

			App.setPage("flot_charts");  //Set current page
			App.init(); //Initialise plugins and elements
			Charts.initCharts();
			Charts.initPieCharts();


		});
	</script>
	<!-- /JAVASCRIPTS -->
</body>
</html>