<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-language" content="zh-tw">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
<title>會員基本資料表</title>

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/purecss@3.0.0/build/pure-min.css">
<link rel="stylesheet" href="style.css">

<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/tw-city-selector@2.1.0/dist/tw-city-selector.min.js"></script>

</head>
<body>

	<div class="wrap">

		<form class="pure-form pure-form-aligned formStyle" method="post"
			action="check.jsp">

			<h1>會員基本資料</h1>
			<p>
				<span class="required">*</span>為必填欄位
			</p>

			<div class="pure-control-group name">
				<label for="name"><span class="required">*</span>姓名</label> <input
					id="name" type="text" placeholder="請輸入姓名" name="name"
					autocomplete="name" required />
			</div>

			<div class="pure-control-group sex">
				<label for="sex"><span class="required">*</span>性別</label> <label
					for="male"> <input id="male" type="radio" name="sex"
					value="男性" /> 男性
				</label> <label for="female"> <input id="female" type="radio"
					name="sex" value="女性" /> 女性
				</label> <label for="hide"> <input id="hide" type="radio" name="sex"
					value="不透露" checked required /> 不透露
				</label>
			</div>

			<div class="pure-control-group">
				<label for="birthday"><span class="required">*</span>生日</label> <input
					id="birthday" type="date" name="birthday" autocomplete="bday"
					required />
			</div>

			<div class="pure-control-group">
				<label for="phone"><span class="required">*</span>聯絡電話</label> <input
					id="phone" type="tel" placeholder="請輸入聯絡電話" name="phone"
					pattern="^(\+886|0)[0-9\-]{6,10}$" autocomplete="tel" required />
			</div>

			<div class="pure-control-group">
				<label for="mail"><span class="required">*</span>電子郵件</label> <input
					id="mail" type="email" placeholder="請輸入電子郵件" name="mail"
					autocomplete="email" required />
			</div>

			<div id="tw-selector" class="pure-control-group address">
				<label><span class="required">*</span>地址</label>
				<div class="address-style">
					<div class="item">
						<label for="zipcode">郵遞區號</label> <input id="zipcode" type="text"
							class="zipcode" name="zipcode" readonly />
					</div>
					<div class="item">
						<label for="county">縣市</label> <select id="county" class="county"
							name="county"></select>
					</div>
					<div class="item">
						<label for="district">鄉鎮市區</label> <select id="district"
							class="district" name="district"></select>
					</div>
					<div class="item">
						<label for="addressDetail">詳細地址</label> <input id="addressDetail"
							type="text" name="addressDetail" required />
					</div>
				</div>
			</div>

			<div class="pure-control-group educational">
				<label for="educational">教育程度</label> <select name="educational"
					id="educational">
					<option value="國小">國小</option>
					<option value="國中">國中</option>
					<option value="高中(高職)">高中(高職)</option>
					<option value="五專">五專</option>
					<option value="大學(四技)">大學(四技)</option>
					<option value="二技">二技</option>
					<option value="研究所">研究所</option>
					<option value="博士班">博士班</option>
				</select>
			</div>

			<div class="pure-control-group">
				<label for="content">備注</label>
				<textarea name="content" id="content"></textarea>
			</div>

			<ul class="pure-form checkboxStyle">
				<li><label for="policy" class="pure-checkbox"> <input
						id="policy" type="checkbox" name="agreePolicy" value="true"
						required disabled><span class="required">*</span>我已仔細閱讀<a
						href="PrivacyPolicy.pdf" target="_blank" rel="noopener noreferrer"
						class="privacyLink">『隱私政策』</a>，並同意
				</label></li>
				<li><label for="info" class="pure-checkbox"> <input
						id="info" type="checkbox" name="agreeInfo" value="true">我願意接收優惠訊息通知
				</label></li>
			</ul>

			<div class="buttonStyle">
				<input type="submit" value="送出"
					class="pure-button pure-button-primary"> <input
					type="reset" value="清除" class="pure-button pure-button-secondary">
			</div>

		</form>

	</div>

	<script>
		new TwCitySelector({
			el : '#tw-selector',
			elCounty : '.county',
			elDistrict : '.district',
			elZipcode : '.zipcode'
		});

		document.addEventListener("DOMContentLoaded", function() {
			const checkbox = document.querySelector("#policy");
			const link = document.querySelector(".privacyLink");

			link.addEventListener("click", function() {
				checkbox.disabled = false;
			});
		});
	</script>

</body>
</html>
