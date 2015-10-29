<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,java.text.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="../mypage/mypage.css"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
</head>
<body> 
<Center>
<div class="col-md-12">
	<h2>마이페이지<span>MY PAGE</span></h2>
  <!-- ============================================================================================ -->
  	<table border=0 width=940>
  	<div class="communityCover" >
		<ul class="menu_list type02">
		    <li><a href="meeting.do">내모임보기</a></li>
			<li><a href="wish.do">위시리스트</a></li>	
			<li><a href="modify.do" style="background:#2281c0; color:#fff;">회원정보수정</a></li>					
		</ul>
      </div>
</table><br>
<!--  ====================================================================================== -->
		<table border=0 width=940>
		  <tr border=1 bordercolor=gray>	
				<td width=100% align=left>&nbsp;&nbsp;&nbsp;* 표시가 있는 항목은 필수 입력 항목 입니다.</td>
		  </tr>
      </table>
      <br><br>
<form name="modifyFrm" method="post">	
		<input type="hidden" name="mbno" id="mbno" value="863" />	
		<input type="hidden" name="mb_hp" id="mb_hp" value="010-3373-9329" />	
		<input type="hidden" name="mb_hp_check" id="mb_hp_check" value="" />	
		<input type="hidden" name="mb_tel" id="mb_tel" />	
		<input type="hidden" name="mb_level" id="mb_level" value="2" />		
		<div class="board_view">
				<table border=1 width=940px  height=471px>
				<colgroup>
					<col width="20%" />
					<col width="*" />															
				</colgroup>
				<tfoot id="leaveWrap" style="display:none;">
					<tr>
						<td colspan="2" class="memo">
							<p class="fc_02">회원탈퇴를 하시겠습니까?<br />회원 탈퇴시 고객님의 모든 혜택정보 및 개인정보가 시스템에서 삭제됩니다.<br />단, 기존에 수강하신 강의신청 정보는 일부 보관될 수 있으며 관련 사항은 <span class="letter_zero">SDI</span>지식발전소 이용약관 및 개인정보보호정책에서 확인하실 수 있습니다.<br /><span class="letter_zero">SDI</span>지식발전소는 대한민국의 강연문화를 위해 언제나 최선을 다하고 있습니다.<br />회원 탈퇴 전 상담원과의 연락을 원하신다면 고객센터로 연락주시기 바랍니다.<br /><span class="letter_zero">고객센타 : 1577-8399</span></p>			
						</td>
					</tr>
					<tr>
						<td colspan="2" class="reason">
							<div class="register">
								<textarea name="mb_leavememo" id="mb_leavememo" cols="" rows=""></textarea><span class="btn out"><a href="#leave" onclick="_leavesubmit(document.modifyFrm);">탈퇴</a></span>				
							</div>	
						</td>
					</tr>
				</tfoot>
				<tbody>
					<tr>
						<th class="important">이름</th>
						<td class="fc_default"><p>세션이름값</p></td>
					</tr>	
					<tr>
						<th class="important">로그인 이메일</th>
						<td class="padding">							
							<span class="letter_zero fs_14 fc_default"><p>세션이메일값</p></span>
							<p class="mgt10">나들목(NADEULMOK)의 최근 소식 및 이벤트 정보 등을 이메일로 받아보시겠습니까? (결제관련내용은 수신동의 여부와 관계없이 발송됩니다.)</p>
							<p class="mgt05"><input type="checkbox" name="mb_email_agree" id="mb_email_agree" class="check01"  /> <label for="mb_email_agree">이메일 수신동의</label></p>
						</td>
					</tr>
					<tr>
						<th class="important">별명</th>
						<td><p><input type="text" name="mb_nickname" id="nickname" value="이전닉네임" /></p></td>
					</tr>	
					<tr>
						<th class="important">비밀번호</th>
						<td><p><input type="password" name="mb_passwd" id="mb_passwd" /> 영문,숫자 조합 <span class="letter_zero">6~15</span>자</p></td>
					</tr>	
					<tr>
						<th>비밀번호 확인</th>
						<td><p><input type="password" name="mb_passwd_re" id="mb_passwd_re" /></p></td>
					</tr>								
					<tr>
						<th class="important">휴대폰</th>
						<td class="padding">		<p>								
							<select class="w-70" name="mb_hp1" id="mb_hp1" title="휴대폰 앞 번호를 선택하세요">
								<option value="010">010</option>
								<option value="011">011</option>
								<option value="016">016</option>
								<option value="017">017</option>
								<option value="018">018</option>
								<option value="019">019</option>
							</select><script>$('#mb_hp1').val('010');</script>
							<input type="text" name="mb_hp2" id="mb_hp2" class="intxt02 w-50 mgr05" value="3373" /><input type="text" name="mb_hp3" id="mb_hp3" class="intxt02 w-50" value="9329" />
							<span class="dupleBtn"><a href="#check" onclick="hpCheck();">중복확인</a></span>
							<p class="mgt10">SD인사이트의 최근 소식 및 이벤트 정보 등을 SMS로 받아보시겠습니까? (결제관련내용은 수신동의 여부와 관계없이 발송됩니다.) </p>
							<p class="mgt05"><input type="checkbox" name="mb_hp_agree" id="sms" class="check01" value="Y"  /> <label for="sms">SMS 수신동의</label></p>
						</p></td>
					</tr>
					<tr>
						<th>전화번호</th>
						<td><p>										
							<select name="mb_tel1" id="mb_tel1" title="전화번호선택" class="w-70">									
								<option value="">선택</option>
       							<option value="000">전국번호</option>
								<option value="02">02</option>
								<option value="031">031</option>
								<option value="032">032</option>
								<option value="033">033</option>
								<option value="041">041</option>
								<option value="042">042</option>
								<option value="043">043</option>
								<option value="044">044</option>
								<option value="051">051</option>
								<option value="052">052</option>
								<option value="053">053</option>
								<option value="054">054</option>
								<option value="055">055</option>
								<option value="061">061</option>
								<option value="062">062</option>
								<option value="063">063</option>
								<option value="064">064</option>
								<option value="010">010</option>
								<option value="011">011</option>
								<option value="016">016</option>
								<option value="017">017</option>
								<option value="018">018</option>
								<option value="019">019</option>
								<option value="0130">0130</option>
								<option value="080">080</option>
								<option value="070">070</option>
								<option value="0504">0504</option>
								<option value="0503">0503</option>
								<option value="0502">0502</option>
								<option value="0505">0505</option>
								<option value="0507">0507</option>
								<option value="0506">0506</option>
								<option value="0303">0303</option>
							</select><script>$('#mb_tel1').val('');</script>
							<input type="text" name="mb_tel2" id="mb_tel2" class="intxt02 w-50 mgr05" value="" /><input type="text" name="mb_tel3" id="mb_tel3" class="intxt02 w-50" value="" />		
						</p></td>
					</tr>							
					<tr>
						<th>성별</th>
						<td><p>
							<input type="radio" name="mb_sex" id="sex-m" class="radio01" value="M"  /> <label for="sex-m" class="mgr20 fs_14">남</label>
							<input type="radio" name="mb_sex" id="sex-w" class="radio01" value="F"  /> <label for="sex-w" class="fs_14">여</label>
						</p></td>
					</tr>
					<tr>
						<th>국적</th>
						<td>	
							<p> <select id="usernation" name="nation" id="nation">
							      <option value="KR">한국</option>
							      <option value="US">미국</option>
							      <option value="CN">중국</option>
							      <option value="DE">독일</option>
							      <option value="JP">일본</option>
							      <option value="TW">대만</option>
							      <option value="PH">필리핀</option>
							      <option value="UK">영국</option>
							      <option value="FR">프랑스</option>
							      <option value="IT">이탈리아</option>
							    </select>
						    </p>
						</td>
					</tr>
					<tr>
						<th>언어</th>
						<td>	
						    <p>	
						    <select id="userlanguage" name="lang">
							      <option value="l_kor">한국어</option>
							      <option value="l_eng">영어</option>
							      <option value="l_cn">중국어</option>
							      <option value="l_de">독일어</option>
							      <option value="l_jpn">일본어</option>
							    </select>
						    </p>
						    </td>
					</tr>
					<tr>
						<th>가입지역</th>
						<td>	
							<select  id="mb_do" name="mb_do" class="w-120" onchange="doChg(this.value);">
								<option value="">선택하세요</option><option value="강원" >강원</option><option value="경기" >경기</option><option value="경남" >경남</option><option value="경북" >경북</option><option value="광주" >광주</option><option value="대구" >대구</option><option value="대전" >대전</option><option value="부산" >부산</option><option value="서울" >서울</option><option value="울산" >울산</option><option value="인천" >인천</option><option value="전남" >전남</option><option value="전북" >전북</option><option value="제주" >제주</option><option value="충남" >충남</option><option value="충북" >충북</option>						
							</select>
							<select  id="mb_gu" name="mb_gu" class="w-120">
								<option value="">선택하세요.</option>
															</select>
							지역정보는 <span class="letter_zero">SD</span>인사이트의 지역기반 강의정보를 제공하는데 활용되고 있습니다.
						</td>
					</tr>
					<tr>
						<th>가입경로</th>
						<td>	
							<select title="가입경로" name="mb_route" id="mb_route" class="w-200" onchange="route();">
								<option value="">전체</option><option value="A" >자체 홈페이지를 보고</option><option value="B" >SD인사이트 SNS를 통해</option><option value="C" >선대인경제연구소를 통해서</option><option value="D" >인터넷 검색을 통해서</option><option value="E" >팟캐스트를 듣고</option><option value="F" >언론기사를 보고</option><option value="G" >언론이나 인터넷상의 SD인사이트 광고를 보고</option><option value="H" >블로그나 SNS 추천을 통해</option><option value="I" >주변 지인들의 권유로</option><option value="J" >기타</option>							</select>
							<span class="route_input" style="display:none;"><input type="text" name="mb_route_memo" id="mb_route_memo" class="intxt02 w-300" /></span>
						</td>
					</tr>							
				</tbody>
			</table>		
			<!-- button -->
			<p class="tcenter mgt30">
				<span class="btn_pack blue_b mgr10"><a href="#modify" onclick="_joinsubmit(document.modifyFrm);">회원정보 수정</a></span>					
				<span class="btn_pack white_b"><a href="#cancel" onclick="$('#leaveWrap').show();$('#mb_leavememo').focus();">회원탈퇴</a></span>
			</p>
			<!-- // button -->									
		</div>
		<!-- // board_view -->
		
	</div>
	<!-- // myCover -->
</div>
<!-- //subCont -->
<script type="text/javascript">
function route(){		
	if($("#mb_route").val()=="J"){
		$(".route_input").css("display","inline-block")		
	} else {
		$(".route_input").css("display","none");
		$('#mb_route_memo').val('');
	}
}
function _leavesubmit(f){			
	if(!$("#mb_leavememo").val()) {
		$("#mb_leavememo").focus();
		alert("탈퇴사유를 입력해주세요.");		
		return;
	}	

	if( !confirm('SDI인사이트 회원탈퇴를 신청하시겠습니까?') )
		return;
	
	f.action = "/mypage/leave_proc";
	f.submit();	
}
function _joinsubmit(f){			
	var pattern_num = /([0-9])/g; 

	if($("#mb_passwd").val().length > 0 && $("#mb_passwd").val().length < 6 ) {
		$("#mb_passwd").focus();
		alert("비밀번호는 6자 이상입니다.");				
		return;
	}
	var pw = $("#mb_passwd").val(); 
	if ($("#mb_passwd").val().length > 0 && (!pw.match(/^[a-zA-Z0-9]{6,20}$/) || !pw.match(/[a-z]/) || !pw.match(/[0-9]/))) { 
		alert("비밀번호는 6~20자의 영문 대소문자와 숫자로 구성되어야 하며, 공백은 사용할 수 없습니다."); 
		return;
	}
	if($("#mb_passwd").val().length > 0 && $("#mb_passwd").val() != $("#mb_passwd_re").val() ) {
		$("#mb_passwd").focus();
		$("#mb_passwd_re").val("");
		alert("입력한 비밀번호가 서로 맞지 않습니다.");				
		return;
	}
					
	if(!$("#mb_hp2").val()) {
		$("#mb_hp2").focus();
		alert("휴대폰을 입력해주세요.");		
		return;
	}	
	if(!pattern_num.test($("#mb_hp2").val())) {
		$("#mb_hp2").val("");
		$("#mb_hp2").focus();
		alert("휴대폰번호는 숫자만 입력해주세요.");		
		return;
	}			
	if(!$("#mb_hp3").val()) {
		$("#mb_hp3").focus();
		alert("휴대폰을 입력해주세요.");		
		return;
	}
	if(!pattern_num.test($("#mb_hp3").val())) {
		$("#mb_hp3").val("");
		$("#mb_hp3").focus();
		alert("휴대폰번호는 숫자만 입력해주세요.");		
		return;
	}			

	var hp = $("#mb_hp1").val()+"-"+$("#mb_hp2").val()+"-"+$("#mb_hp3").val();
	if ( ($('#mb_hp').val() != hp ) && !$("#mb_hp_check").val() )
	{
		alert("휴대폰 번호 중복 확인을 해주세요.");		
		return;
	}
									
	$("#mb_hp").val(hp);
	if ($("#mb_tel2").val() && $("#mb_tel3").val())
		$("#mb_tel").val($("#mb_tel1").val()+"-"+$("#mb_tel2").val()+"-"+$("#mb_tel3").val());
	else
		$("#mb_tel").val('');
	
	f.action = "/mypage/modify_proc";
	f.submit();	
}

function hpCheck()
{
	var pattern_num = /([0-9])/g; 

	var hp = $("#mb_hp1").val()+"-"+$("#mb_hp2").val()+"-"+$("#mb_hp3").val();
	if ( $('#mb_hp').val() == hp )
	{
		alert("가입 하신 핸드폰 번화와 동일합니다.");		
		return;
	}

	if(!$("#mb_hp2").val()) {
		$("#mb_hp2").focus();
		alert("휴대폰을 입력해주세요.");		
		return;
	}	
	if(!pattern_num.test($("#mb_hp2").val())) {
		$("#mb_hp2").val("");
		$("#mb_hp2").focus();
		alert("휴대폰번호는 숫자만 입력해주세요.");		
		return;
	}			
	if(!$("#mb_hp3").val()) {
		$("#mb_hp3").focus();
		alert("휴대폰을 입력해주세요.");		
		return;
	}
	if(!pattern_num.test($("#mb_hp3").val())) {
		$("#mb_hp3").val("");
		$("#mb_hp3").focus();
		alert("휴대폰번호는 숫자만 입력해주세요.");		
		return;
	}	
	$.ajax(
		{
			type:"post",
			dataType:"html",
			url: "/mypage/modify/HpOverlap",
			data : "&hp="+hp,
			success: function(data) {					
				if ( data == "Y" ) {														
					$("#mb_hp").val($("#mb_hp1").val()+"-"+$("#mb_hp2").val()+"-"+$("#mb_hp3").val());
					$("#mb_hp_check").val(1);
					alert("사용 가능한 번호입니다.");
				} else {
					$("#mb_hp_check").val("");
					alert("해당 번호는 이미 사용중입니다.");															
					return false;
				}
			}
		}
	);		
}

function doChg(v){
	$('#sch_mb_gu').empty();	
	$.ajax(
		{
			type:"post",
			dataType:"html",
			url: "/join/searchGu",
			data : "&do="+v,
			success: function(data) {				
				$('#mb_gu').html(data);
			}
		}
	);		
}
</script>	



<!-- 	<table border=0 width=940>
	          <form method=post action="qna_search.jsp"  name=frm>
				  <tr border=1 bordercolor=gray>	
					<td width=60% align=left><b>&nbsp;&nbsp;&nbsp;&nbsp;<font size=5>Q&A</font></b>&nbsp;&nbsp;&nbsp;문의 및 불편사항에 대해 답변드립니다.</td>
					<td width=40% align=right>
					<input type="text" name="q_search" placeholder="검색어를 입력하세요" />
			        <input type="image" src="image/icon/search02.png" alt="검색" onclick="search()"/>&nbsp;&nbsp;&nbsp;&nbsp;
			        </td>
			       </tr>
			  </form>
			</table> -->
	</div> 
</center>
</body>
</html>
