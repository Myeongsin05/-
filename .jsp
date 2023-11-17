<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = " frontweb.vo.NonMember"
 	import = "frontweb.dao.NonMemberDAO"
    %>
<%
NonMemberDAO dao = new NonMemberDAO();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>nonmember insert jsp</h2>
	<h2>받아온 값</h2>
	이름 : <%=request.getParameter("name") %>
	번호 : <%=request.getParameter("phone") %>
	이메일 : <%=request.getParameter("email") %>
	비밀번호 : <%=request.getParameter("pwd") %>
	<% 
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String pwdStr = request.getParameter("pwd");
		int pwd = 0;
		if(pwdStr!=null) pwd = Integer.parseInt(pwdStr);
		NonMember ins = new NonMember(name,phone,email,pwd);
		dao.insertNonMember(ins);
	%>
</body>
</html>