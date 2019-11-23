<%@page import="bean.News"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="inc/header.jsp" %>
			<div class="content-left fl">
				<%@include file="inc/left_bar.jsp" %>
			</div>
			<div class="content-right fr">
				<%
					if(request.getAttribute("cateItem")!=null){
						Category cateItem = (Category)request.getAttribute("cateItem");
				%>
					<h3><%=cateItem.getName() %></h3>
				<%
					}
				%>
				<div class="main-content items-new">
					<ul>
						<%
							if(request.getAttribute("newsListByCat_id")!=null){
								List<News> newsListByCat_id = (List<News>)request.getAttribute("newsListByCat_id");
								if(newsListByCat_id.size() > 0){
									for(News item : newsListByCat_id){
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