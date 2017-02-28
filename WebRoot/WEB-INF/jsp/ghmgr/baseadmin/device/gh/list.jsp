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
<title>全部温室建设设备</title>
</head>
<body>
	<div class="w11 center-block">
		<%if ((String) request.getAttribute("msg") == "添加成功") {%>
		<script>alert("添加成功");</script>
		<%}%>
		<%if ((String) request.getAttribute("msg") == "编辑成功") {%>
		<script>alert("编辑成功");</script>
		<%}%>
		<%if ((String) request.getAttribute("msg") == "删除成功") {%>
		<script>alert("删除成功");</script>
		<%}%>
		<!-- 列表显示温室的温室建设设备信息start -->
		<c:if test="${empty pager.list}">
			<h3 class="h3">温室中还没有温室建设设备</h3>
			<a href="<%=request.getContextPath()%>/device/gh/device_create">添加设备</a>
		</c:if>
		<c:if test="${not empty pager.list}">
			<table class="table table-bordered table-hover">
				<tr class="fontSize">
					<th>设备编号</th>
					<th>设备名称</th>
					<th>设备类型</th>
					<th>控制类别</th>
					<th>备注</th>
					<th>编辑</th>
					<!-- <td>删除</td> -->
				</tr>

				<c:forEach items="${pager.list}" var="Setup_Con">
					<tr class="fontSize">
						<td><c:out value="${Setup_Con.equip_id}"></c:out></td>
						<td><c:out value="${Setup_Con.name}"></c:out></td>
						<td><c:out value="${Setup_Con.type}"></c:out></td>

						<td><c:if test="${Setup_Con.control=='0'}">
								<c:out value="其他"></c:out>
							</c:if> <c:if test="${Setup_Con.control=='1'}">
								<c:out value="开关型"></c:out>
							</c:if> <c:if test="${Setup_Con.control=='2'}">
								<c:out value="正反转型"></c:out>
							</c:if></td>
						<td><c:out value="${Setup_Con.remark}"></c:out></td>
						<td><a
							href="<%=request.getContextPath()%>/device/gh/device_edit?deviceId=${Setup_Con.equip_id}">编辑</a></td>
						<!-- <td><a href="<%=request.getContextPath()%>/device/gh/device_delete?deviceId=${Setup_Con.equip_id}">删除</a></td> -->
					</tr>
				</c:forEach>
			</table>
			<!-- 列表显示基地的温室建设设备信息end -->
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
				<input type="button" value="添加控制设备" class="btn bcm tcw"
					onclick="location='<%=request.getContextPath()%>/device/gh/device_create'">
				<!-- 分页end -->
			</div>
			<input type="button" value="返回" onclick="javascript:history.back(-1)"
				class="btn bcm tcw">
		</c:if>
	</div>
</body>
</html>