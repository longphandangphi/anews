<%@page import="bean.News"%>
<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<%@include file="inc/header.jsp" %>
			<div class="content-left fl">
				<%@include file="inc/left_bar.jsp" %>
			</div>
			<div class="content-right fr">
				<%
					if(request.getAttribute("newsById")!=null){
						News newsById = (News)request.getAttribute("newsById");
				%>
				<h3><%=newsById.getName() %></h3>
				<div class="main-content">
					<p><%=newsById.getDetail() %></p>
				</div>
			</div>
			<%
					}
			%>
<%@include file="inc/footer.jsp" %>