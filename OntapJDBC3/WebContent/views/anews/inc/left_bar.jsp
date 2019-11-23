<%@page import="bean.Category"%>
<%@page import="java.util.List"%>
<%@page import="dao.CategoryDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h3>Danh mục tin</h3>
<ul>
	<%
		CategoryDAO catDAO = new CategoryDAO();
		List<Category> catList = catDAO.getItems();
		if(catList!=null){
			for(Category item : catList){
	%>
		<li><a href="<%=request.getContextPath() %>/anews/cat?cid=<%=item.getId() %>" title=""><%=item.getName() %></a></li>
	<%
			}
		}
	%>
</ul>