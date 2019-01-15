<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%><!-- 스프링 시큐리티 태그를 사용하기 위해서 추가 -->
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Home</title>
</head>
<body>
	<h1>Home!</h1>
	<sec:authorize access="isAnonymous()"><!-- 로그인 안된 상태를 확인 -->
		<p>
			<a href="<c:url value="/login/loginForm.do" />">로그인</a>
		</p>
	</sec:authorize>
	<sec:authorize access="isAuthenticated()"><!-- 로그인 된 상태를 확인 -->
		<form:form action="${pageContext.request.contextPath}/logout"
			method="POST">
			<input type="submit" value="로그아웃" />
		</form:form>
	</sec:authorize>
	<h3>[<a
			href="<c:url value="/" />">HOME</a>] [<a href="<c:url value="/intro/introduction.do" />">소개 페이지</a>] [<a
			href="<c:url value="/admin/adminHome.do" />">관리자 홈</a>]
	</h3>
</body>
</html>

