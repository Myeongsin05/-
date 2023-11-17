<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	import="frontweb.database.TrainScheduleDao"
	import="frontweb.vo.TrainSchedule"
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">



<title>승차권 예매 페이지</title>
<style>
	.trainInfoSearch{
		border : 3px solid blue;
		background-color:ivory;
		width: 40%;
		height : 10%;
		float : right;
		margin: 5px;
	}
	.PersonInfo{
		border : 3px solid blue;
		background-color: ivory;
		font-size: smaller;
		width: 50%;
		height:10%;
		margin:5px
	}
	div#left_side{
		width:200px;
		height:10%;
		float:left;
		background-color:yellow;
	
	}
	div.floor_side{
		position: fixed;
 	    margin-top:5%;
 	   
  		width: 100%;
  		border:1px soild blue;
	}
	.trainTable{
		border: 3px blue;
	}
	.trainTable.thead{
		 margin-right:5px;
		 margin-top : 5px;
		
		 
	}

	
</style>
<script>
	function change(){
		   var depStaInput = document.getElementsByName("depSta")[0];
           var arrStaInput = document.getElementsByName("arrSta")[0];

           // 값 교체
           var temp = depStaInput.value;
           depStaInput.value = arrStaInput.value;
           arrStaInput.value = temp;
	}
</script>

<script type="text/javascript" src="jquery-3.1.1.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		
	})
</script>

</head>
<body>


<div class = "trainInfoSearch">
<input type="radio" name="trailInfo" value="전체">전체
<input type="radio" name="trailInfo" value="KTX/SRT">KTX/SRT
<input type="radio" name="trailInfo" value="ITX-청춘">ITX-청춘<br>
<input type="radio" name="trailInfo" value="새마을호/ITX-마음">새마을호/ITX-마음
<input type="radio" name="trailInfo" value="무궁화호/누리로">무궁화호/누리로<br>
<input type="radio" name="trailInfo" value="통근열차">통근열차<br>
&nbsp&nbsp<input type="radio" name="journey" value="직통">직통
<input type="checkbox" vlaue="인접역포함">인접역포함
<input type="radio" name = "journey" value="환승">환승
<input type="radio" name = "journey" value="왕복">왕복<br>
<form>
<label>출발역</label>

<input type="text" name="depSta" value=""><input type="button" id= "stCheckBtn" value="조회"><br>
<laber>도착역</laber>
<input type="text" name="arrSta"><input type="button" id= "stCheckBtn" value="조회">
<input type="button" id="chBtn" value="변경" onclick="change()"><br>&nbsp;&nbsp;
<input type="submit" id = "trainSearchBtn" value="열차 조회하기" style="float: right;">
</form>




출발일<select id="arrYear">
	<option value="2023">2023년</option>
	<option value="2024">2024년</option>
	<option value="2025">2025년</option>
</select>
<select id="arrMonth">
	<option value="1">1월</option>
	<option value="1">2월</option>
	<option value="1">3월</option>
	<option value="1">4월</option>
	<option value="1">5월</option>
	<option value="1">6월</option>
	<option value="1">7월</option>
	<option value="1">8월</option>
	<option value="1">9월</option>
	<option value="1">10월</option>
	<option value="1">11월</option>
	<option value="1">12월</option>
</select>


<select id="arrDay">
	<option value="1일">1일</option>
	<option value="2일">2일</option>
	<option value="3일">3일</option>
	<option value="4일">4일</option>
	<option value="5일">5일</option>
	<option value="6일">6일</option>
	<option value="7일">7일</option>
	<option value="8일">8일</option>
	<option value="9일">9일</option>
	<option value="10일">10일</option>
	<option value="11일">11일</option>
	<option value="12일">12일</option>
	<option value="13일">13일</option>
	<option value="14일">14일</option>
	<option value="15일">15일</option>
	<option value="16일">16일</option>
	<option value="17일">17일</option>
	<option value="18일">18일</option>
	<option value="19일">19일</option>
	<option value="20일">20일</option>
	<option value="21일">21일</option>
	<option value="22일">22일</option>
	<option value="23일">23일</option>
	<option value="24일">24일</option>
	<option value="25일">25일</option>
	<option value="26일">26일</option>
	<option value="27일">27일</option>
	<option value="28일">28일</option>
	<option value="29일">29일</option>
	<option value="30일">30일</option>
	<option value="30일">30일</option>
</select>

<select id="arrHour">
	<option value="0">0시</option>
	<option value="1">1시</option>
	<option value="2">2시</option>
	<option value="3">3시</option>
	<option value="4">4시</option>
	<option value="5">5시</option>
	<option value="6">6시</option>
	<option value="7">7시</option>
	<option value="8">8시</option>
	<option value="9">9시</option>
	<option value="10">10시</option>
	<option value="11">11시</option>
	<option value="12">12시</option>
	<option value="13">13시</option>
	<option value="14">14시</option>
	<option value="15">15시</option>
	<option value="16">16시</option>
	<option value="17">17시</option>
	<option value="18">18시</option>
	<option value="20">20시</option>
	<option value="21">21시</option>
	<option value="22">22시</option>
	<option value="23">23시</option>
	
</select>
<input type="button" id="datepicker">


</div>

<div class="PersonInfo" style= "display: inline-block;">


	<p><b>인원정보</b></p>
	<select id="adultNo">
		<option value="성인1">성인1명</option>
		<option value="성인2">성인2명</option>
		<option value="성인3">성인3명</option>
		<option value="성인4">성인4명</option>
		<option value="성인5">성인5명</option>
		<option value="성인6">성인6명</option>
		<option value="성인7">성인7명</option>
		<option value="성인8">성인8명</option>
		<option value="성인9">성인9명</option>
	</select>
	<select id="kidsNo">
		<option value="defaultText">만 6세~12세</option>
		<option value="어린이1">어린이 1명</option>
		<option value="어린이2">어린이 2명</option>
		<option value="어린이3">어린이 3명</option>
		<option value="어린이4">어린이 4명</option>
		<option value="어린이5">어린이 5명</option>
		<option value="어린이6">어린이 6명</option>
		<option value="어린이7">어린이 7명</option>
		<option value="어린이8">어린이 8명</option>
		<option value="어린이9">어린이 9명</option>
	</select>
	<select id="childNo">
		<option value="defaultText">만 6세미만</option>
		<option value="유아1">유아 1명</option>
		<option value="유아2">유아 2명</option>
		<option value="유아3">유아 3명</option>
		<option value="유아4">유아 4명</option>
		<option value="유아5">유아 5명</option>
		<option value="유아6">유아 6명</option>
		<option value="유아7">유아 7명</option>
		<option value="유아8">유아 8명</option>
		<option value="유아9">유아 9명</option>
	</select>
	<select id="seniorNo">
		<option value="defaultText">만 65세이상</option>
		<option value="경로1">경로 1명</option>
		<option value="경로2">경로 2명</option>
		<option value="경로3">경로 3명</option>
		<option value="경로4">경로 4명</option>
		<option value="경로5">경로 5명</option>
		<option value="경로6">경로 6명</option>
		<option value="경로7">경로 7명</option>
		<option value="경로8">경로 8명</option>
		<option value="경로9">경로 9명</option>
	</select>
	<p>장애정도</p>
	<select id="serverDisableNo">
		<option value="경증1">경증 1명</option>
		<option value="경증2">경증 2명</option>
		<option value="경증3">경증 3명</option>
		<option value="경증4">경증 4명</option>
		<option value="경증5">경증 5명</option>
		<option value="경증6">경증 6명</option>
		<option value="경증7">경증 7명</option>
		<option value="경증8">경증 8명</option>
		<option value="경증9">경증 9명</option>
		
	</select>
	<select id="mildDisableNo">
		<option value="중증1">중증 1명</option>
		<option value="중증2">중증 2명</option>
		<option value="중증3">중증 3명</option>
		<option value="중증4">중증 4명</option>
		<option value="중증5">중증 5명</option>
		<option value="중증6">중증 6명</option>
		<option value="중증7">중증 7명</option>
		<option value="중증8">중증 8명</option>
		<option value="중증9">중증 9명</option>
		
	</select>
	
	

</div>
<%
	TrainScheduleDao dao = new TrainScheduleDao();
	String depSta = request.getParameter("depSta");
	String arrSta = request.getParameter("arrSta");
	
%>
<div class = "floor_side">
<table class="trainTable" border = "1px solid blue" align="right" >
	<thead>
		<tr><th>열차번호</th><th>열차종류</th><th>출발역</th><th>도착역</th><th>좌석정보</th><th>가격</th><th>열차번호</th><th>소요시간</th></tr>
	</thead>
	<tbody>
	<%for(TrainSchedule train:dao.getTrainInfoBySt(new TrainSchedule(depSta,arrSta))){ %>
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
</div>



	

<script>
	var stCheckBtnObj = document.querySelector("#stCheckBtn") // ì­ëª©ë¡ ìë íì´ì§ ëì°ê¸° ì²ë¦¬.
	stCheckBtnObj.onclick = function(){
		window.open("stationList.jsp", "_blank", "width=1000, height=800" );
	}
	
	

</script>
</body>

</html>