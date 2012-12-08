<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Strongme</title>
</head>
<body>
<div id="wb_connect_btn"></div>
<input type="button" value="get" id="getContent">
<input type="button" id="login" value="Login">
<div id="content"></div>
<script src="<%=request.getContextPath()%>/scripts/jquery-1.7.2.js"></script>
<script src=" http://tjs.sjs.sinajs.cn/open/api/js/wb.js?appkey=1098733788" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
					$(function() {
						WB2.anyWhere(function(W){
						    W.widget.connectButton({
						        id: "wb_connect_btn",
						        type: '3,2',
						        callback : {
						            login:function(o){
						                alert(o.screen_name);
						            },
						            logout:function(){
						                alert('logout');
						            }
						        }
						    });
						    
						$("#getContent").click(function() {
							W.parseCMD("/statuses/user_timeline.json", function(sResult, bStatus){
								var html = "<ul>";
								for(var i=0;i<sResult.statuses.length;i++) {
										var status = sResult.statuses[i];
										html += "<li>"+status.text+"</li>";
								}
								html += "</ul>";
								$("#content").html(html);
								$.post("<%=request.getContextPath()%>/processDataAction.action",
										{data:sResult},
										function() {
											alert("提交成功");
										}
								);
							},{
								uid:1240132317
							},{
							    method: 'get'
							});
						});
						    
					});
						
						
						$("#login").click(function() {
							if(WB2.checkLogin()) {
								WB2.logout(function(){
									$("#login").val("Login");
								});
							}else {
								WB2.login(function() {
									$("#login").val("Logout");
								});
							}
						});
					});
					
					
</script>
</body>
</html>