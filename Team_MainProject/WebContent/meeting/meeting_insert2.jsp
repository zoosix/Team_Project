<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="insert.css" type="text/css" />
<script type="text/javascript" src="../se2/js/HuskyEZCreator.js" charset="utf-8"></script>
</head>
<body>
	<form id="writeForm2" name="write_form2" method="post" action="meeting_insert_ok.do">
	<div class="content">
		<h2 class="title">개설하기</h2>
		<div class="roundBox secondStep">
			<div class="firstCore">
				<div class="title">
					<h3 class="title">step.2 일정 / 장소 정보 입력</h3>
					<div class="menu">
						<a class="firstStep" href="meeting_insert1.jsp">STEP.1</a>
						<a class="secondStep" href="#">STEP.2</a>
					</div>
				</div>
			</div>
			<div class="core eventDate">
				<div class="input">
					<div class="subCore category">
						<h4 class="subTitle">언어 선택 / 제목 입력 <span class="star">*</span></h4>
						<select class="category" name="category1">
							<option value="">언어 선택 1</option>
							<option value="15">한국어</option>
							<option value="16">English</option>
							<option value="17">日本語</option>
							<option value="18">中國語</option>
							<option value="19">le français</option>
							<option value="20">獨逸語</option>
							<option value="21">русский язык</option>
						</select>
						<select class="category" name="category2">
							<option value="">언어 선택 2</option>
							<option value="15">한국어</option>
							<option value="16">English</option>
							<option value="17">日本語</option>
							<option value="18">中國語</option>
							<option value="19">le français</option>
							<option value="20">獨逸語</option>
							<option value="21">русский язык</option>
						</select>
						<input id="title" type="text" name="title" value="모임제목 입력" title="모임제목 입력" maxlength="64" class="text">
						<div class="lengthMsg">&nbsp;</div>
					</div>
				</div>
				<div class="advice">
					<p class="subAdvice">
						<strong>언어를 선택</strong>하고 <strong>모임제목</strong>을 입력해주세요.
						<br>
						<br>
						<br>
						언어에 맞게 설정하시면 개설 후 검색이나<br>
						언어별로 보기 편하고 쉽게 찾을 수 있습니다.<br>
						<br>
					</p>
				</div>
			</div>
			<div class="core">
					<div class="input">
						<div class="subCore banner noBanner">
							<h4 class="subTitle">대표 이미지 <span class="star">*</span></h4>

							<div class="innerBanner">
								<img src="http://static.onoffmix.com/images2/default/thumbnail_null.jpg" default="http://static.onoffmix.com/images2/default/thumbnail_null.jpg" alt="대표이미지">
							</div>
						</div>
						<div class="subCore abstract">
							<h4 class="subTitle">요약내용 입력 <span class="star">*</span></h4>
							<textarea id="abstract" class="text" title="모임 내용을 간단히 요약하여 입력해 주세요." name="abstract"></textarea>
						</div>
					</div>
					<div class="advice">
						<p class="subAdvice">
							모임 특성에 맞는 이미지로 업로드 해주시고 <br>
							대표 이미지가 없을 경우 언어나들목에서 <br>
							추천하는 이미지를 선택해 사용할 수 있습니다. <br>
							<br>
							이미지 등록에 대한 안내는 <a href="/cs/faq/host#167" class="guideSite" target="_blank">FAQ</a> 를 참고하세요.
						</p>

						<p class="subAdvice abstract">
							개설하는 모임의 주요내용을 참여자들이 <br>
							쉽게 알 수 있도록 <strong>요약하여 입력</strong>해 주세요.
						</p>
					</div>
			</div>
			<div class="core contents">
				<div class="input write">
					<div class="subCore">
						<h4 class="subTitle">상세내용 입력 <span class="star">*</span></h4>
						<div class="editor">
							<textarea id="content" class="content" name="content"></textarea>
							<script type="text/javascript">
							var oEditors = [];
							nhn.husky.EZCreator.createInIFrame({
								oAppRef: oEditors,
								elPlaceHolder: "content",
								sSkinURI: "../se2/SmartEditor2Skin.html",
								fCreator: "createSEditor2"
							});
							</script>
						</div>
					</div>
				</div>
				<div class="advice">
					<p class="subAdvice focus" style="height: 341px;">
						개설하는 모임의 <strong>상세내용을 입력</strong>하고 편집기를<br>
						이용해 다양한 형태의 내용을 입력해 주세요.<br>
						<br>
					</p>
				</div>
			</div>
			<div class="core Admin">
				<div class="input">
				<div class="subCore admin">
					<h4 class="subTitle">연락처 설정 <span class="star">*</span></h4>
					<table width="100%">
						<tbody>
							<tr class="admin_num">
								<th>개설자 전화번호 입력</th>
								<td>
									<label for="ownerPhone" class="displayNone">전화번호 앞부분 입력</label>
									<input class="text mask-pint" type="text" name="ownerPhone_head" id="ownerPhone" value="" size="4" maxlength="4">
									<label for="ownerPhoneBody" class="displayNone">전화번호 중간부분입력</label>
									<input id="ownerPhoneBody" class="mask-pint text" type="text" name="ownerPhone_body" value="" size="4" maxlength="4">
									<label for="ownerPhoneTail" class="displayNone">전화번호 뒷부분 입력</label>
									<input id="ownerPhoneTail" class="text mask-pint" type="text" name="ownerPhone_tail" value="" size="4" maxlength="4">
								</td>
							</tr>
							<tr class="admin_email">
								<th>개설자 이메일 입력</th>
								<td>
									<input title="개설자 이메일 입력" id="email" class="text" type="text" name="ownerEmail">
									<span class="at">@</span>
									<input title="개설자 이메일 입력" id="email" class="text" type="text" name="ownerEmail">
								
									<select>
										<option>hanmail.net</option>
										<option>dreamwiz.com</option>
										<option>empal.com</option>
										<option>gmail.com</option>
										<option>hotmail.com</option>
										<option>msn.com</option>
										<option>naver.com</option>
										<option>paran.com</option>
										<option>기타</option>
									</select>
									<input type="hidden" id="checkEmail" name="checkEmail" value="" equal="0" alias="이메일 중복확인이 되지 않았습니다."/>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				</div>
				<div class="advice">
					<p class="subAdvice admin focus">
						연락처는 개설자의 전화번호, 이메일을 정확히<br>
						입력해 주셔야 하며 모임에 대한 문의나 정보를<br>
						공유할 수 있습니다.<br>
					</p>
				</div>
			</div>
			<div class="lastCore">
				<div class="action">
					<a href="#secondStep" class="next button">다음단계</a>
				</div>
			</div>
		</div>
	</div>
	</form>
</body>
</html>