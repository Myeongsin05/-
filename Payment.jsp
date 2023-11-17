<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = " frontweb.vo.NonMember"
 	import = "frontweb.dao.NonMemberDAO"
 	
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제화면</title>
</head>
<script>
	
</script>
<body>
	<!-- 미회원 정보 insertDAO 처리 -->
	<%	NonMemberDAO dao = new NonMemberDAO();
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String pwdStr = request.getParameter("pwd");
		int pwd = 0 ;
		if(pwdStr!=null) pwd = Integer.parseInt(pwdStr);
		NonMember ins = new NonMember(name,phone,email,pwd);
		dao.insertNonMember(ins);
	%>
	<table width="60%" border>
		<col width="30%">
		<col width="70%">
		<caption><%=name %>님 결제화면</caption>
		<tr><td>카드 종류</td>
		<td><input type="radio" name="cardType" value="법인카드">법인카드
		<input type="radio" name="cardType" value="개인카드">개인카드
		</td>
		</tr>
		<tr><td>신용카드번호</td>
			<td>
			<input type="text" maxlength=4 size=4 name="cardNo">-
			<input type="text" maxlength=4 size=4 name="cardNo">-
			<input type="text" maxlength=4 size=4 name="cardNo">-
			<input type="text" maxlength=4 size=4 name="cardNo">
			</td>
		</tr>
		<tr><td>유효기간</td>
			<td>
				<select id="Month">
				<option value="1">1월</option>
				<option value="2">2월</option>
				<option value="3">3월</option>
				<option value="4">4월</option>
				<option value="5">5월</option>
				<option value="6">6월</option>
				<option value="7">7월</option>
				<option value="8">8월</option>
				<option value="9">9월</option>
				<option value="10">10월</option>
				<option value="11">11월</option>
				<option value="12">12월</option>
			</select>월
			<select id="Year">
				<option value="2023">2023년</option>
				<option value="2024">2024년</option>
				<option value="2025">2025년</option>
				<option value="2026">2026년</option>
				<option value="2027">2027년</option>
				<option value="2028">2028년</option>
				<option value="2029">2029년</option>
				<option value="2030">2030년</option>
				<option value="2031">2031년</option>
				<option value="2031">2032년</option>
				<option value="2033">2033년</option>
				<option value="2034">2034년</option>
				<option value="2035">2035년</option>
				<option value="2036">2036년</option>
			</select>년
			
			</td>
		</tr>
		<tr><td>할부개월</td>
			<td>
				<select id="할부">
				<option value="일시불">일시불</option>
				<option value="2개월">2개월</option>
				<option value="3개월">3개월</option>
				<option value="4개월">4개월</option>
				<option value="5개월">5개월</option>
				<option value="6개월">6개월</option>
				<option value="12개월">12개월</option>
				<option value="24개월">24개월</option>
			</select>
			</td>
		</tr>
		<tr><td>신용카드 비밀번호</td>
			<td><input type="password" name="pwd" maxlength=2>**(앞2자리)</td>
		</tr>
		<tr>
			<td>인증번호</td>
			<td><input type=text maxlengh=10 name="authNo">(주민등록번호 앞6자리 또는 무기명식 법인카드는 사업자등록번호 10자리)</td>
		</tr>
	</table>
</body>
</html>