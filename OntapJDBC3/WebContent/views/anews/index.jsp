<%@page import="bean.News"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="inc/header.jsp" %>
			<div class="content-left fl">
				<%@include file="inc/left_bar.jsp" %>
			</div>
			<div class="content-right fr">
				<h3>Tin tức</h3>
				<div class="main-content items-new">
					<ul>
						<%
							if(request.getAttribute("newsList")!=null){
								List<News> newsList = (List<News>)request.getAttribute("newsList");
								if(newsList.size() > 0){
									for(News item : newsList){
						%>
					
						<li>
							<h2>
								<a href="<%=request.getContextPath() %>/anews/detail?did=<%=item.getId() %>" title=""><%=item.getName() %></a>
							</h2>
							<div class="item">
								<p><%=item.getDescription() %></p>
								<div class="clr"></div>
							</div>
						</li>
						<%
									}
								}
							}
						%>
						
					</ul>
				</div>
			</div>
<%@include file="inc/footer.jsp" %>