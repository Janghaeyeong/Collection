<%@page import="todo.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" session="false"%>
    
    <%
     	HttpSession session = request.getSession(false);
    	
    	// 세션객체를 찾을수 없는경우
    	if (session == null) {
    		response.sendRedirect("login.jsp");
    		return;
    	}
    	// 세션객체에 저장한 loginUser를 꺼낸다
    	UserVO user = (UserVO)session.getAttribute("loginUser");
    	if (user == null) {
    		response.sendRedirect("login.jsp");
    		return;
    	}
    	
    	// 여기 아래부분은 세션이 존재하고 로그인한 사용자의 정보가 존재하는 경우
    	
    %>	
	<div class="navbar navbar-default">
		<div class="container-fluid">
			<div class="navbar-header">
				<a href="main.jsp?pno=1" class="navbar-brand">Todo App</a>
				
			</div>
			<ul class="nav navbar-nav pull-right">
				<li><strong><%=user.getName()%></strong>님 환영합니다.</li>
				<li><a href="loguot.jsp">로그아웃</a></li>
				<li><a href="form.jsp">등록</a></li>
			</ul>
		</div>
	</div>