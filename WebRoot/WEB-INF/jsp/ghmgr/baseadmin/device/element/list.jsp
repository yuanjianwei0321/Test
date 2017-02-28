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
<script
	src="<%=request.getContextPath() %>/assets/js/jquery-2.1.1.min.js"></script>
<script src="<%=request.getContextPath() %>/assets/js/bootstrap.min.js"></script>
<title>全部检测设备</title>
</head>
<body>
	<%if ((String) request.getAttribute("msg") == "添加成功") {%>
	<script>alert("添加成功");</script>
	<%}%>
	<%if ((String) request.getAttribute("msg") == "编辑成功") {%>
	<script>alert("编辑成功");</script>
	<%}%>
	<%if ((String) request.getAttribute("msg") == "删除成功") {%>
	<script>alert("删除成功");</script>
	<%}%>
	<!-- 列表显示温室的检测设备信息start -->
	<c:if test="${empty pager.list}">
		<h3 class="h3">温室中还没有检测元素</h3>
		<a href="<%=request.getContextPath()%>/device/element/device_create">添加检测元素</a>
	</c:if>
	<c:if test="${not empty pager.list}">
		<h3 class="tableTitle">检测元素</h3>
		<div class="w11 center-block">
			<table class="table table-bordered table-hover">
				<tr class="fontSize">
					<th>检测元素名称</th>
					<th>检测频率</th>
					<th>单位</th>
					<th>偏移量</th>
					<th>数据类别</th>
					<th>编辑</th>
					<!-- <td>删除</td> -->
				</tr>

				<c:forEach items="${pager.list}" var="Element">

					<tr class="fontSize">
						<td class="text-center"><c:out value="${Element.element_nam}"></c:out></td>
						<td class="text-center"><c:out
								value="${Element.element_rate}"></c:out></td>
						<td class="text-center"><c:out
								value="${Element.element_unit}"></c:out></td>
						<td class="text-center"><c:out
								value="${Element.element_offset}"></c:out></td>
						<td class="text-center"><c:out value="${Element.data_type}"></c:out></td>
						<td class="text-center"><a
							href="<%=request.getContextPath()%>/device/element/device_edit?elementId=${Element.element_id}">编辑</a></td>
						<!--  <td><a href="<%=request.getContextPath()%>/device/element/device_delete?elementId=${Element.element_id}">删除</a></td>-->
					</tr>
				</c:forEach>
			</table>
		</div>
		<!-- 列表显示温室的室内检测设备信息end -->
		<!-- 分页start -->
		<div id="page"></div>
		<script src="<%=request.getContextPath()%>/assets/laypage/laypage.js"></script>
		<script type="text/javascript">
	laypage({
	    cont: 'page',
	    pages: '${pager.pageCount}', 
	    curr: '${pager.pageNumber}', 
	    jump: function(e, first){ 
	        if(!first){ 
	            location.href = '?ps=${pager.pageSize}&pn='+e.curr;
	        }
	    }
	});
</script>
		<div style="position: absolute; right: 40px; width: 100px;">
			<input type="button" value="添加检测元素" class="btn bcm tcw"
				onclick="location='<%=request.getContextPath()%>/device/element/device_create'">

		</div>
		<input type="button" value="返回" onclick="javascript:history.back(-1)"
			class="btn bcm tcw">
		<!-- 分页end -->
	</c:if>


</body>
</html>