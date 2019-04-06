<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<HTML>
	<HEAD>
		<meta http-equiv="Content-Language" content="zh-cn">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<LINK href="${pageContext.request.contextPath}/css/Style1.css" type="text/css" rel="stylesheet">
		<script type="text/javascript">
			function check(){
			var name = document.Form1.cname.value;
			if(name.length == 0){
				alert("增加二级分类不能为空！");
				return false;
			}
			else{
				return true;
			}
			}
		</script>
	</HEAD>
	
	<body>
		<form id="userAction_save_do" name="Form1" action="${pageContext.request.contextPath}/adminCategorySecond_save.action" method="post" enctype="multipart/form-data" onsubmit="return check()">
			&nbsp;
			<table cellSpacing="1" cellPadding="5" width="100%" align="center" bgColor="#eeeeee" style="border: 1px solid #8ba7e3" border="0">
				<tr>
					<td class="ta_01" align="center" bgColor="#afd1f3" colSpan="4"
						height="26">
						<strong><STRONG>添加二级分类</STRONG>
						</strong>
					</td>
				</tr>

				<tr>
			
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						二级分类名称：
					</td>
					<td class="ta_01" bgColor="#ffffff" colspan="3">
						<input type="text" name="csname" value="" id="userAction_save_do_logonName" class="bg"/>
					</td>
					
				
				</tr>
				<tr>
				
					<td width="18%" align="center" bgColor="#f5fafe" class="ta_01">
						所属一级分类
					</td>
					<td class="ta_01" bgColor="#ffffff" colspan="10">
						<select name="category.cid">
							<c:forEach items="${cclist}" var="cclist">
							<option value="${cclist.cid}">${cclist.cname}</option>
							</c:forEach>
						</select>
					</td>
				</tr>
			
				<tr>
					<td class="ta_01" style="WIDTH: 100%" align="center"
						bgColor="#f5fafe" colSpan="4">
						<button type="submit" id="userAction_save_do_submit" value="确定" onclick="return check()" class="button_ok">
							&#30830;&#23450;
						</button>

						<FONT face="宋体">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT>
						<button type="reset" value="重置" class="button_cancel">&#37325;&#32622;</button>

						<FONT face="宋体">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT>
						<INPUT class="button_ok" type="button" onclick="history.go(-1)" value="返回"/>
						<span id="Label1"></span>
					</td>
				</tr>
			</table>
		</form>
	</body>
</HTML>