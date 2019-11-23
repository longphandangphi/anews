<%@page import="bean.Category"%>
<%@page import="java.util.List"%>
<%@page import="dao.CategoryDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="inc/header.jsp"%>
<%-- <div class="content-left fl">
	<%@include file="inc/left_bar.jsp"%>
</div> --%>
	<h3>Viết bài</h3>
	<div class="main-content items-new">
		<%
			if(request.getAttribute("check")!=null){
				int check = (int)request.getAttribute("check");
				if( check == 1 ){
		%>
		<h1>Đăng bài thành công!</h1>
		<%
				} else {
					%>
					<h1>Đăng bài thất bại!</h1>
					<% 
				}
			}
		%>
		<form action="<%=request.getContextPath()%>/anews/write-news" method="get" name="writeNewsForm" id="writeNewsForm">
			<table style=" padding: 0px 15%">
				<tr>
					<td style="width: 20%"><h2><label>Tiêu đề tin: </label></h2></td>
					<td><input type="text" name="name" id="name" width="80" /></td>
				</tr>
				<tr>
					<td><h4><label>Giới thiệu:</label></h4></td>
					<td><input type="text" name="description" id="description" /></td>
				</tr>
				<tr>
					<td><h4><label>Danh mục: </label></h4></td>
					<td>
						<select name="cat_id" id="cat_id">
						<%
							CategoryDAO catDAO = new CategoryDAO();
							List<Category> cateDropList = catDAO.getItems();
							if(cateDropList!=null){
								if(cateDropList.size() > 0){
									for(Category item : cateDropList){
						%>
							<option value="<%=item.getId()%>" selected><%=item.getName() %></option>
						<%
									}
								}
							}
						%>
						</select>
					</td>
				</tr>
				<tr>
					<td><h4><label>Hình ảnh: </label></h4></td>
					<td><input type="text" name="picture" id="picture" /></td>
				</tr>
				<tr>
					<td><h4><label>Chi tiết tin: </label></h4></td>
					<td><textarea rows="6" cols="80" name="detail" id="detail" ></textarea></td>
				</tr>
				<tr>
					<td></td>
					<td>
						<input type="submit" value="Đăng bài" name="submit" /> 
						<input type="reset" value="Viết lại" name="reset" />
					</td>
				</tr>
			</table>
		</form>
	</div>
	<style>
		tr, td {
		    padding: 3px;
		}
	</style>
	<script>
		var detail = CKEDITOR.replace('detail');
		CKFinder.setupCKEditor(detail, '<%=request.getContextPath()%>/libraries/ckfinder/');
	</script>
<%@include file="inc/footer.jsp"%>
