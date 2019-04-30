<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<!--包含了全部的样式，相当于是主题，如果想要换成其他，就引入其他目录下的easyui.css -->
<link rel="stylesheet" type="text/css"
	href="jquery-easyui-1.6.6/themes/default/easyui.css" />
<!-- css是一些小图标-->
<link rel="stylesheet" type="text/css"
	href="jquery-easyui-1.6.6/themes/icon.css" />
<!-- jquery核心库 ，query.easyui.min和jquery.min两个js的引入顺序不能搞错-->
<script type="text/javascript" src="jquery-easyui-1.6.6/jquery.min.js"></script>
<!-- easyui核心库 -->
<script type="text/javascript"
	src="jquery-easyui-1.6.6/jquery.easyui.min.js"></script>
<!--有时候，我们需要进行国际化，比如一些提醒、日历等，就需要引入-->
<script type="text/javascript"
	src="jquery-easyui-1.6.6/locale/easyui-lang-zh_CN.js"></script>

<script type="text/javascript" language="javascript">
	$.extend($.fn.validatebox.defaults.rules, {
		equals : {
			validator : function(value, param) {
				return value == $(param[0]).val();

			},
			message : '两次输入密码不一致'
		}
	});
</script>

<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
<script type="text/javascript" language="javascript">
	function ajax() {
		if ($("#name").val() == "") {
			alert("用户名不能为空");
			$("#name").focus();
			return false;
		}
		if ($("#pass").val() == "") {
			alert("密码不能为空");
			$("#pass").focus();
			return false;
		}
		//url:"ajaxServlet",
		//type:"get",
		//dataType:"json",
		//success:function(data){
		//${"#json"}.html(data);
		//var jsonObject = eval("("+data+")");

		//}
	}

	/* $.extends($.fn.validatebox.defaults.rules,{
		equals:{
			    validator:function(value,param){
					return value == $(param[0].val();
				},
				message:'前后两次输入密码不一致.'
			}
	}); */
</script>
</head>

<body class="easyui-layout">

	<div data-options="region:'north',title:'log',split:true"
		href="log.html" style="height: 110px">
		<div align="left"></div>
	</div>
	<div data-options="region:'west',title:'导航菜单',split:true"
		style="width: 150px">
		<ul id="tree" class="easyui-tree">
			<li><span>首页</span>
				<ul>
					<li><span>第一章</span>
						<ul>
							<li><span><a href="#">第一节</a></span></li>
							<li><span>第二节</span></li>
							<li><span>第二节</span></li>
						</ul></li>
					<li><span>第二章</span></li>
					<li><span>第三章</span></li>
				</ul></li>
			<li><span>简介</span>
				<ul>
					<li><span>第一章</span>
						<ul>
							<li><span>第一节</span></li>
							<li><span>第二节</span></li>
							<li><span>第二节</span></li>
						</ul></li>
					<li><span>第二章</span>
						<ul>
							<li><span>第一节</span></li>
							<li><span>第二节</span></li>
						</ul></li>
					<li><span>第三章</span></li>
				</ul></li>
		</ul>
	</div>
	<div data-options="region:'center',title:'首页'"
		style="padding: 5px; background: #eee; width: 50px;">
		<div class="easyui-tabs" fit="true" border="false" id="tabs"
			style="width: 150px">
			<div align="center" data-options="title:'首页'">
				 请输入密码：<input id="pwd" name="pwd" type="password" class="easyui-validatebox" data-options="required:true,validType:'length[2,4]'" /><br /> 
			   	 请确认密码：<input id="rpwd" name="rpwd" type="password" class="easyui-validatebox" required="required" validType="equals['#pwd']" /><br />
			   	 电子邮箱: <input class="easyui-validatebox" type="text" name="email" data-options="validType:'email'" /><br/>
						 <input class="easyui-combobox" data-options="valueField: 'label',textField: 'value',data: [{label: '1',value:'奶秀'},{label: '2',value: '宁姚'},{label: '3',value: '马兰花'}]" /><br />
				       <input class="easyui-datetimebox" name="birthday" data-options="required:true,showSeconds:false" value="3日4月2010年  2:3" style="width: 150px">
				       <input />
				<!-- <table class="easyui-datagrid" style="width: 400px; height: 250px"
					data-options="url:'datagrid_data.json',fitColumns:true,singleSelect:true,pagination:true, pagePosition:'both'">
					<thead>
						<tr>
							<th data-options="field:'code,width:100px'">Code</th>
							<th data-options="field:'name,width:100px'">Name</th>
							<th data-options="field:'price,width:100px'">Price</th>
						</tr>
					</thead>
				</table> -->

			</div>
		</div>
	</div>

	<!-- 用户名：
	<input type="text" name="username" id="name" />
	</br>
	</br> 密码：
	<input type="password" name="password" id="pass" />
	</br>
	<input type="button" value="登录" onclick="ajax()" />
	<font id="json"></font> -->
	
	
	
	
	<!-- <div id="cc" class="easyui-calendar"
		style="width: 180px; height: 180px;"></div> -->

	<!-- <form id="ff" method="post">
		<div>
			<label for="name">用户名:</label> <input class="easyui-validatebox"
				type="text" name="name" data-options="required:true" /><br />
			密码：<input class="easyui-validatebox" type="password" id="pwd" name="pwd" data-options="required:true" /></br>
			确认密码：<input class="easyui-validatebox" type="password" id="rpwd" name="rpwd" required="required" validType="equals['#pwd']" />
		</div> -->
		
	</form>


</body>
</html>