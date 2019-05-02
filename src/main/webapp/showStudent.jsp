<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>


<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<head>
<link href="${pageContext.request.contextPath }/lib/css/H-ui.min.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath }/lib/css/H-ui.admin.css"
	rel="stylesheet" type="text/css" />
<link
	href="${pageContext.request.contextPath }/lib/lib/Hui-iconfont/1.0.7/iconfont.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/lib/css/css.css"
	rel="stylesheet" type="text/css" />

<script type="text/javascript"
	src="${pageContext.request.contextPath }/lib/lib/jquery/1.9.1/jquery.min.js">
</script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/lib/lib/layer/2.1/layer.js">
</script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/lib/lib/laypage/1.2/laypage.js">
</script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/lib/lib/My97DatePicker/WdatePicker.js">
</script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/lib/lib/datatables/1.10.0/jquery.dataTables.min.js">
</script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/lib/js/H-ui.js">
</script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/lib/js/H-ui.admin.js">
</script>
</head>

<nav class="breadcrumb">
	首页<span class="c-gray en">&gt;</span>学生管理<span class="c-gray en">&gt;</span>学生信息
</nav>
<div class="cl pd-5 bg-1 bk-gray mt-20">
<form id="f"  onsubmit="return check()" action="${pageContext.request.contextPath}/student/fenye"
	method="post">
	<input type="hidden"  name="page"  id="page"/>
	学号: <input value="${param.xh }" name="xh"  id="xh" type="text" class="input-text" style="width: 300px" /> <br>  <br>
    姓名: <input value="${param.xm }" name="xm" id="xm" type="text"  class="input-text" style="width: 300px;" /> <br>
    状态: <select  style="width: 100px" class="select"  name="status"  id="status">
                 <option value="-1">不限制</option>
                 <option value="1">启用</option>
                 <option value="0">禁用</option>
            </select>  <br>
     出生:<input value="${param.minCS }" name="minCS"  id="minCS" type="text" class="input-text" style="width: 100px" /> -
            <input value="${param.maxCS }" name="maxCS"  id="maxCS" type="text" class="input-text" style="width: 100px" />  <br>      

       <button style="width: 100px" class="btn btn-success">搜索</button>
</form>
</div>


<div class="page-container">
	<div class="mt-20">
		<table border="0" width="80%"
			class="table table-border table-bordered table-hover table-bg table-sort">
			<tr class="text-c">
				<th><input type=checkbox>全选</th>
				<th>学号</th>
				<th>姓名</th>
				<th>状态</th>
				<th>出生</th>
				<th>操作</th>
			</tr>

			<c:forEach items="${ipage.records}" var="s">
				<tr align="center" class="text-c">
					<td><input type=checkbox></td>
					<td>${s.xh }</td>
					<td>${s.xm }</td>
					<td>${s.status==1?"已启用":"已禁用"}</td>
					<td>${s.cs }</td>
					<td></td>
				</tr>
			</c:forEach>

			<tr class="text-c">
				<td colspan="6">当前${ipage.current}/${count }页,共${ipage.total }条
				      <button class="btn" onclick="go(1)">首页</button>
				      <button class="btn" onclick="go(${ipage.current+1})">下一页</button>
				      <button class="btn" onclick="go(${ipage.current-1})">上一页</button>
				      <button class="btn"  onclick="go(${count})">尾页</button>
				</td>
			</tr>


		</table>
	</div>
</div>

<script>
     function check()
     {
         /*
         var xh = $("#xh").val();
         if (xh=="")
         {
            layer.msg("请输入开奖时间!",{icon:6,time:1000});
            return false;
         }*/
     }
     
     $("#status").val('${param.status}');
     
     function go(p)
     {
         $("#page").val(p);
         $("#f").submit();
     }
</script>





