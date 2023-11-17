<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>역목록t</title>
    <style>
        body {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
        }

        table{
            border: 1px solid #ddd;
            width : 500px;
        }
        caption{
            border: 1px soild #ddd;
            padding: 8px;
            text-align: center;


        }
        th,td{
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #ddd;
            text-align:center;

        }
        tr:nth-child(even){
            background-color: #fff6f6;
            
            
        }
        button{
            background-color: #ddd;
            border-color: none;
            border-radius: 10px;
            margin: 20px;
            
        }
        .background-pink{
           background: pink; 
        }
    </style>
    <form action = "ticketReserve.jsp" method="post" id="myForm"></form>
    <script type="text/javascript" src="jquery-3.1.1.js"></script>
    <script type="text/javascript">
	   $(document).ready(function(){
	   $("td").click(function(){
        var tdValue=$(this).text();
        	if(confirm(tdValue+"역을 출발역으로 지정하시겠습니까?")){
        		   window.close();
        }

       })
       $("td").mouseover(function(){
		   $(this).toggleClass("background-pink")
	   })
	   $("td").mouseout(function(){
		   $(this).removeClass("background-pink")
	   })
   });
        </script>
</head>
<body>
    <table>
        <caption>역목록</caption></caption>
        <tr><td>서울</td><td>용산</td><td>영등포</td><td>광명</td><td>수원</td></tr>
        <tr><td>평택</td><td>천안아산</td><td>천안</td><td>오송</td><td>조치원</td></tr>
        <tr><td>대전</td><td>서대전</td><td>김천</td><td>구미</td><td>김천구미</td></tr>
        <tr><td>대구</td><td>동대구</td><td>포항</td><td>밀양</td><td>구포</td></tr>
        <tr><td>부산</td><td>신경주</td><td>태화강</td><td>울산(통도사)</td><td>마산</td></tr>
        <tr><td>창원중앙</td><td>경산</td><td>논산</td><td>익산</td><td>정읍</td></tr>
        <tr><td>광주송정</td><td>목포</td><td>전주</td><td>순천</td><td>여수EXPO</td></tr>
        <tr><td>강릉</td><td>행신</td><td>남춘천</td><td>부전</td><td>신탄진</td></tr>
        <tr><td>대천</td><td>청량리</td><td>춘천</td><td>제천</td><td>동해</td></tr>
        <tr><td>영동</td><td>왜관</td><td>원주</td><td>정동진</td><td>홍성</td></tr>
        
    </table>
    <br>
    <input id = confirmBtn type="button" value="확인">
    
</body>
<script>
    var confirmBtnObj = document.querySelector("#confirmBtn")
    confirmBtnObj.onclick = function(){ window.close()}
   
   
    
    
</script>
</html>