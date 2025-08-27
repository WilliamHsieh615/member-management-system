<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="com.demo.domain.Member"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-language" content="zh-tw">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
<title>會員基本資料表</title>

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/purecss@3.0.0/build/pure-min.css">
<link rel="stylesheet" href="style.css">

</head>
<body>

	<jsp:useBean id="member" class="com.demo.domain.Member"></jsp:useBean>

	<jsp:setProperty property="*" name="member" />

	<div class="wrap">

		<form class="pure-form pure-form-aligned formStyle" method="post"
			action="SubmitFormServlet">

			<h1>會員基本資料確認</h1>

			<div class="pure-control-group name">
				<label>姓名</label>
				<span class="word">${member.name}</span>
				<input type="hidden" name="name" value="${member.name}" />
			</div>

			<div class="pure-control-group sex">
				<label>性別</label>
				<span class="word">${member.sex}</span> 
				<input type="hidden" name="sex" value="${member.sex}"/>
			</div>

			<div class="pure-control-group">
				<label>生日</label>
				<span class="word">${member.birthday}</span> 
				<input type="hidden" name="birthday" value="${member.birthday}" />
			</div>

			<div class="pure-control-group">
				<label>聯絡電話</label> <input type="tel" name="phone"
					value="${member.phone}" readonly />
			</div>

			<div class="pure-control-group">
				<label>電子郵件</label> <input type="email" name="mail"
					value="${member.mail}" readonly />
			</div>

			<div class="pure-control-group address">
				<label>地址</label>
				<div class="address-style">
					<div class="item">
						<label>郵遞區號</label> <input type="text" name="zipcode"
							class="zipcode" value="${member.zipcode}" readonly />
					</div>
					<div class="item">
						<label>縣市</label> <input type="text" name="county" class="county"
							value="${member.county}" readonly />
					</div>
					<div class="item">
						<label>鄉鎮市區</label> <input type="text" name="district"
							class="district" value="${member.district}" readonly />
					</div>
					<div class="item">
						<label>詳細地址</label> <input type="text" name="addressDetail"
							value="${member.addressDetail}" readonly />
					</div>
				</div>
			</div>

			<div class="pure-control-group educational">
				<label>教育程度</label> <input type="text" name="educational"
					value="${member.educational}" readonly />
			</div>

			<div class="pure-control-group">
				<label>備注</label>
				<textarea name="content" readonly>${member.content}</textarea>
			</div>

			<div class="pure-control-group">
				<label>同意隱私政策</label>
				<span class="word">${member.agreePolicy ? '是' : '否'}</span>
				<input type="hidden" name="agreePolicy" value="${member.agreePolicy}" />
			</div>

			<div class="pure-control-group">
				<label>願意接收優惠</label>
				<span class="word">${member.agreeInfo ? '是' : '否'}</span>
				<input type="hidden" name="agreeInfo" value="${member.agreeInfo}" />
			</div>

			<div class="buttonStyle">
				<input type="submit" value="確認" class="pure-button pure-button-primary">
				<input type="button" value="修改" onclick="history.back();" class="pure-button pure-button-secondary">
			</div>

		</form>

	</div>

</body>
</html>
