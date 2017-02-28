<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/assets/css/style.css"
	type="text/css"></link>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath() %>/assets/css/theme.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath() %>/assets/css/font-awesome.css">
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/assets/css/admin.css"
	type="text/css"></link>
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/assets/css/plus.css" />
<script
	src="<%=request.getContextPath() %>/assets/js/jquery-2.1.1.min.js"></script>
<script src="<%=request.getContextPath() %>/assets/js/bootstrap.min.js"></script>
<title>温室智慧管控系统</title>
</head>
<body>

	<jsp:include page="/WEB-INF/jsp/include/header.jsp"></jsp:include>

	<div class="article">
		<%--	  <div class="sidebar-nav">
	 	<a href="#data-menu" class="nav-header" data-toggle="collapse"><span
				class="icon-signal iconSpan"></span>数据监测</a>
			<ul id="data-menu" class="nav nav-list collapse">
				<li><a href="<%=request.getContextPath()%>/stat/livedata"
					target="main">实时数据</a></li>
				<li><a href="<%=request.getContextPath()%>/stat/historydata"
					target="main">历史数据</a></li>
			</ul>

			<a href="#ctrl-menu" class="nav-header" data-toggle="collapse"><span
				class="icon-cog iconSpan"></span>控制模式</a>
			<ul id="ctrl-menu" class="nav nav-list collapse">
				<c:if test="${control_mode eq 2 }">
					<li><a
						href="<%=request.getContextPath()%>/ghmgr/ghadmin/ctrl/manual"
						target="main">手动模式</a></li>
				</c:if>
				<c:if test="${control_mode eq 0 }">
					<li><a
						href="<%=request.getContextPath()%>/ghmgr/ghadmin/ctrl/smart"
						target="main">智能模式</a></li>
				</c:if>
				<c:if test="${control_mode eq 1 }">
					<li><a
						href="<%=request.getContextPath()%>/ghmgr/ghadmin/ctrl/value_setting"
						target="main">设值模式</a></li>
				</c:if>
				<li><a
					href="<%=request.getContextPath()%>/ghmgr/ghadmin/ctrl/change-model"
					target="main">切换模式</a></li>
			</ul>

			<a href="#gh-menu" class="nav-header" data-toggle="collapse"><span
				class="icon-th iconSpan"></span>温室管理</a>
			<ul id="gh-menu" class="nav nav-list collapse">
				<li><a
					href="<%=request.getContextPath()%>/ghmgr/ghadmin/gh/overview"
					target="main">温室概览</a></li>
				<li><a
					href="<%=request.getContextPath()%>/ghmgr/ghadmin/gh/detail"
					target="main">温室详情</a></li>
				<li><a
					href="<%=request.getContextPath()%>/ghmgr/ghadmin/gh/init"
					target="main">作物管理</a></li>
				<li><a
					href="<%=request.getContextPath()%>/ghmgr/ghadmin/log/list"
					target="main">日志管理</a></li>
			</ul>

			<a href="#user-menu" class="nav-header" data-toggle="collapse"><span
				class="icon-group iconSpan"></span>用户管理</a>
			<ul id="user-menu" class="nav nav-list collapse">
				<li><a href="<%=request.getContextPath()%>/usermgr/list"
					target="main">访客</a></li>
			</ul>
  	
--%>	
	<jsp:include page="/WEB-INF/jsp/plus/plusNavSide.jsp"></jsp:include>
       </div>  
		
		<!-- end class="sidebar-nav" -->

		<div class="pull-right rightContent">
			<iframe name="main" class="mainIframe" scrolling="no"
				></iframe>
				
				<%-- onload="iw=this.contentWindow;$(this).height(iw.$(iw.document).height())"
				src="<%=request.getContextPath()%>/nav/ghadmin" --%>
		</div>

		<div class="clearfix"></div>
	</div>
	<!-- end class="article" -->
	<jsp:include page="/WEB-INF/jsp/include/footer.jsp"></jsp:include>
</body>
</html>