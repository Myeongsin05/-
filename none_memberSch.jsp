<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = " frontweb.vo.NonMember"
 	import = "frontweb.dao.NonMemberDAO"
    %>
    <% NonMemberDAO dao = new NonMemberDAO(); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script>
function isNumeric(input) {
	// 숫자 형식의 문자열인지 검사
	return /^[0-9]+$/.test(input);
}
function validForm(){ // form의 모든 값이 입력되었는지 확인하는 함수
// 성명,전화번호, 비밀번호 확인
	var name = document.forms["inputForm"]["name"].value;
	var phone = document.forms["inputForm"]["phone"].value;
	var pwd = document.forms["inputForm"]["pwd"].value;
	
	
	
	if(phone==""){
		alert("전화번호를 입력하십시오.")
		inputForm.phone.focus();
		return false;
	}
	if(pwd==""){
		alert("비밀번호를 입력하십시오.")
		inputForm.pwd.focus();
		return false;
	}
	
	// 비밀번호가 5자리 인지 확인
	if(pwd.length!=5) {
		alert("비밀번호는 숫자 5자리이어야 합니다.")
		inputform.pwd.focus(); // 비밀번호창으로 이동
		return false;
	}
	
	if(!isNumeric(pwd)){
		alert("비밀번호는 숫자로만 입력해주세요.")
		inputForm.pwd.focus();
		return false;
	}
	// 필수입력 항목이 비어있는지 확인
	if(name==""||phone==""||pwd==""){
		alert("입력되지 않은 항목이 존재합니다.")
		return false;
	}
	
	
	return true;

}
</script>
<style>
	.table{
		
	}
</style>


<body>
<h2>미회원 예약정보 조회 페이지</h2>
<form name="inputForm">
<table border width="60%">
	<col width="30%"><col width="70%">
	<tr><td>이름</td><td><input type=text name="name"> </td></tr>
	<tr><td>전화번호</td><td><input type=text name="phone"> </td></tr>
	<tr><td>비밀번호(숫자 5자리)</td><td><input type="password" maxlength="5" name="pwd"> </td></tr>
</table>
	<input type=submit value="조회하기" onclick="return validForm()">
</form>
<%
	String name = request.getParameter("name");
	if(name==null) name = "";
	String phone = request.getParameter("phone");
	if(phone==null) phone="";
	String pwdStr = request.getParameter("pwd");
	int pwd = 0;
	if(pwdStr!=null) pwd = Integer.parseInt(pwdStr); 
%>
<h2><%=name %>님의 예약정보</h2>
<table border>
	<% NonMember sch = dao.getNonMemberInfo(name, phone, pwd);
		if(sch==null){
	%>
	<h2>조회된 정보 없음</h2>
	<%} else {
		String email = "없음";
		if(sch.getEmail()!=null){email = sch.getEmail();}
	
	%>
	<thead><tr><th>이름</th><th>번호</th><th>이메일</th></tr></thead>
	<tbody>
	<tr><td><%=sch.getName() %></td><td><%=sch.getPhone() %></td><td><%=email %></td></tr>
	<%} %>
	</tbody>
</table>
</body>
</html>