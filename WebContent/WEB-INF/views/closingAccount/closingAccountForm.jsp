<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
	<meta charset="UTF-8">
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />  
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>  
	<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
	<title>그룹 개설 신청</title>
	<style type="text/css">
		table, th, td {
		    border: 1px solid black;
		    padding: 5px;
		}
		
		table {
		    border-collapse: collapse;
		}
	</style>
	<script>
		function check(){
			var inputs = document.inputForm;
			
			if(!inputs.subject.value){	//false일때, 값이 없을때
				alert("목표명을 입력하세요.");
				return false;
			}
			
			if(!inputs.content.value){	//false일때, 값이 없을때
				alert("목표 내용을 입력하세요.");
				return false;
			}
			
			if(!inputs.amount.value){	//false일때, 값이 없을때
				alert("목표 금액을 입력하세요.");
				return false;
			}
			
			if(!inputs.start_day.value){	//false일때, 값이 없을때
				alert("시작일을 입력하세요.");
				return false;
			}
			
			if(!inputs.end_day.value){	//false일때, 값이 없을때
				alert("종료일을 입력하세요.");
				return false;
			}
			
			if(!inputs.people.value){	//false일때, 값이 없을때
				alert("참여자 수를 입력하세요.");
				return false;
			}
			
			if(inputs.isopen.value=="0"){
				if(!inputs.password.value){	//false일때, 값이 없을때
					alert("비밀번호를 입력하세요.");
					return false;
				}
			}
		}
	</script>
</head>
<jsp:include page="../sidebar.jsp"/>


        <!-- 본문내용 시작 -->
        <div class="container-fluid">
            
				<h1> 결산 게시글 작성 </h1>
				<form action="/moamore/closing/closingAccountFormPro.moa" method="post" name="inputForm" onsubmit="return check()">
					<table>
						<tr>
							<td> 신 청 자 </td>
							<td><input type="text" name="leader" readonly="readonly" value="${sessionScope.memId}"/></td>
						</tr>
						<tr>
							<td> 제목 </td>
							<td><input type="text" name="subject"/></td>
						</tr>
						<tr>
							<td> 내용 </td>
							<td><input type="text" name="content"  /></td>
						</tr>
						<tr>
							<td colspan="2" style="text-align: center;">
								<input type="submit" value="신청" />					
								<input type="reset" value="재작성" />					
								<input type="button" value="돌아가기" onclick="window.location='/moamore/closing/closingAccountList.moa'" />					
							</td>
						</tr>
					</table>
				</form>
        </div>
        <!-- /.container-fluid -->

      <!-- End of Main Content -->

<jsp:include page="../footer.jsp"/>