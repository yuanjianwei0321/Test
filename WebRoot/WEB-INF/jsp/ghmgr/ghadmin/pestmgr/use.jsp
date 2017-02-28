<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
<title>农药使用</title>
</head>
<body>
	<!-- 添加使用记录 -->
	<form
		action="<%=request.getContextPath()%>/ghmgr/ghadmin/pestmgr/use/add"
		method="post" success="操作成功" fail="操作失败" forward="../" form-ajax>

		<div class="row">
			<div class="col-xs-2">
				<label>农作物批次号：</label> <select name="Crop_no">
					<option value="${shedCrop.crop_no }">${shedCrop.crop_no }[${shedCrop.crop.crop_name }]</option>
				</select>
			</div>
			<div class="col-xs-2">
				<label style="display: block;">农药编号：</label> <select name="Pest_id">
					<c:forEach items="${pests }" var="pest">
						<option value="${pest.pest_id }">${pest.pest_name }</option>
					</c:forEach>
				</select>
			</div>
			<div class="col-xs-2">
				<label>数量：</label><input type="text" name="Pest_num"
					class="required number" />
			</div>
			<div class="col-xs-2">
				<label>施用时间：</label><input type="text" name="Pest_time"
					class="laydate-icon"
					onclick="laydate({istime: true, format: 'YYYY-MM-DD hh:mm:ss'})"
					placeholder="请输入日期" />
			</div>
			<div class="col-xs-2">
				<button type="submit" class="btn bcm tcw w8 mt20">提交</button>
			</div>

		</div>

	</form>

	<!-- 使用记录 -->
	<h3 class="h3">使用记录</h3>
	<table class="table table-bordered">
		<tr>
			<th>农作物批次编号</th>
			<th>肥料编号</th>
			<th>数量</th>
			<th>施用时间</th>
		</tr>

		<c:forEach items="${pager.list}" var="i">
			<tr>
				<td>${i.crop_no }</td>
				<td>${i.pest_id }</td>
				<td>${i.pest_num }</td>
				<td><fmt:formatDate value="${i.pest_time }"
						pattern="yyyy-MM-dd HH:mm" /></td>
			</tr>
		</c:forEach>
	</table>
	<div id="page"></div>
</body>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/assets/js/jquery.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/assets/laypage/laypage.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/assets/js/form-ajax.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/assets/js/jquery.validate.min.js"></script>
<script>
$(function(){
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
})
</script>

</body>
</html>