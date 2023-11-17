<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="frontweb.database.TrainScheduleDao"
    import="frontweb.vo.TrainSchedule"
    pageEncoding="UTF-8"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
	TrainScheduleDao dao = new TrainScheduleDao();
	%>
	<table border>
	<thead>
		<tr><th>열차번호</th><th>열차종류</th><th>출발역</th><th>도착역</th><th>좌석정보</th><th>가격</th><th>열차번호</th><th>소요시간</th></tr>
	</thead>
	<tbody>
	<%for(TrainSchedule train:dao.getTrainInfoBySt(new TrainSchedule("서울","부산"))){ %>
	<tr><th><%=train.getTno() %></th>
	<th><%=train.getTno() %></th>
	<th><%=train.getTtype() %></th>
	<th><%=train.getDepSt() %></th>
	<th><%=train.getArrSt() %></th>
	<th><%=train.getSeatInfo() %></th>
	<th><%=train.getPrice() %></th>
	<th><%=train.getTime() %></th></tr>
	</tbody>
	<%} %>
	</table>
</body>
</html>