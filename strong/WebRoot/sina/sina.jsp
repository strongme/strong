<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>找人</title>
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/css/test11.css"/>
</head>
<body>
<div id="outter">
			<div id="function_frame">
				<div id="index">
					<div id="quick_find" class="nav">
						<div class="fast"></div><strong>快速查找</strong>
					</div>
					<div id="interest_find" class="nav">
						<div class="interest"></div><strong>找到感兴趣的人</strong>
					</div>
				</div>
				<div id="quick_frame">
					<form>
						<div id="left_col">
							<div id="left_label">
								<ul class="label">
									<li>
										所在地：
									</li>
									<li id="flag">
										年龄：
									</li>
									<li class="advanced">
										学校：
									</li>
									<li>&nbsp;</li>
								</ul>
							</div>
							<div id="left_input">
								<ul class="input">
									<li>
										<select id="province" name="province">
											<option value="湖北">湖北</option>
										</select>
										<select id="city" name="city">
											<option value="武汉">武汉</option>
										</select>
									</li>
									<li>
										<select id="age" name="age">
											<option value="不限年龄">不限年龄</option>
											<option value="18岁以下">18岁以下</option>
											<option value="19~22岁">19~22岁</option>
											<option value="23~29岁">23~29岁</option>
											<option value="40岁以上">40岁以上</option>
										</select>
									</li>
									<li class="advanced">
										<input type="text" name="school" />
									</li>
									
									<li>
										<span id="submit">查找</span>
										|<a href="#" id="show_advanced">高级查找</a>
									</li>
								</ul>
							</div>
						</div>
						<div id="right_col">
							<div id="right_label">
								<ul class="label">
									<li>
										性别：
									</li>
									<li>
										个性标签：
									</li>
									<li class="advanced">
										公司：
									</li>
								</ul>
							</div>
							<div id="right_input">
								<ul class="input">
									<li>
										<input type="radio" name="gender"/>
										不限
										<input type="radio" name="gender"/>
										男
										<input type="radio" name="gender"/>
										女
									</li>
									<li>
										<input type="text" value="请输入个人标签" id="tag"/>
									</li>
									<li class="advanced">
											<input type="text" name="company" />
									</li>

								</ul>
							</div>
						</div>
					</form>
				</div>
				
				<div id="interest_frame">
					<div class="head">
						<div id="special">特别推荐</div>
						<div id="wish">希望被推荐</div>
					</div>
					<div id="content">
						<div class="content">
							
						</div>
					</div>
				</div>
			</div>
		</div>
		<div id="famous_effect">
			<div id="famous_head">
				名人影响力榜
			</div>
		
		
		
		<script src="<%=request.getContextPath()%>/scripts/jquery-1.7.2.js"></script>
		<script src="<%=request.getContextPath()%>/scripts/test11.js"></script>
</body>
</html>