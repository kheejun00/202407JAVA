<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
Cookie[] cookies = request.getCookies();
if(cookies != null && cookies.length > 0){
	for(int i=0;i<cookies.length;i++){
		if(cookies[i].getName().equals("loginid")){
			Cookie cookie = new Cookie("loginid", "Kim");
			response.addCookie(cookie);
		}
	}
}

%>
loginid 쿠키 변경
</body>
</html>