<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>江苏师范大学教师个人网站管理系统</title>

<link type="text/css" rel="stylesheet" href="css/manager.css" />
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="js/menu.js"></script>

<!-- 新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">

<!-- 可选的Bootstrap主题文件（一般不用引入） -->
<link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>

<body>
<div class="top"></div>
<div id="header">
	<div class="logo">教师个人网站后台管理系统</div>
	<div class="navigation">
		<ul>
		 	<li>欢迎您！</li>
			<li><a href="">${email}</a></li>
		</ul>
	</div>
</div>
<div id="content">
	<div class="left_menu"	>
				<ul id="nav_dot">
      <li>
          <h4 class="M1">系统公告管理</h4>
          <div class="list-item none">
            <a href='addAnnounce.jsp'>发布公告</a>
            <a href="../deleteAnnounce.do?pageNo=1">删除公告</a>
          </div>
        </li>
        <li>
          <h4 class="M2">教学园地管理</h4>
          <div class="list-item none">
            <a href='addLessions.jsp'>添加课程信息</a> 
            <a href="../myLessions.do">我的课程信息</a>      
            <a href="uploadFile.jsp">添加课件</a>    
           </div>
        </li>
        <li>
          <h4 class="M3">科研空间管理</h4>
          <div class="list-item none">
            <a href='addPaper.jsp'>添加论文信息</a>
			<a href='addItem.jsp'>添加项目信息</a>
			<a href="../myScientist.do">我的科研空间</a>
          </div>
        </li>
				<li>
          <h4 class="M4">论坛管理</h4>
		  <div class="list-item none">
		  <a href="../forum.do">论坛管理</a>
			</div>
          
        </li>
				<li>
          <h4 class="M5">博客管理</h4>
		  <div class="list-item none">
			<a href='../myBlog.do'>添加博客链接</a>
			</div>
     
        </li>
  </ul>
		</div>
		<div class="m-right" style="background-color: #f6f6f6">
			<br>
			<br>
			<br>
			<div class="main">
					<form class="form-horizontal" action="../view/uploadFile.do" method="post" id="f" enctype="multipart/form-data">
						<div class="form-group">
  						<strong><span id="error1" style="color: red;"></span></strong>
    					<label for="inputEmail3" class="col-sm-2 control-label">课程名称</label>
    					<div class="col-sm-10">
      						<input type="text" class="form-control" id="mysubject" name="subject">
    					</div>
  						</div>
  						<div class="form-group">
  						<label for="inputEmail3" class="col-sm-2 control-label">上传课件</label>
  						<div style="margin-left: 10px">
  						<!--<input type="file" name="file">-->
  						</div>
  						<input type="file" name="file" id="lefile" style="display: none">
						 <div class="col-sm-10">
							<input id="photoCover" class="input-large" type="text" style="height:30px;">
							<a class="btn" onclick="$('input[id=lefile]').click();">Browse</a>
						</div> 
						</div>
						<div class="form-group">
  						<label for="inputEmail3" class="col-sm-2 control-label">上传视频</label>
  						<div style="margin-left: 10px">
  						<!--<input type="file" name="video">-->
  						</div>
  						<input type="file" name="video" id="lefile2" style="display: none">
						<div class="col-sm-10">
							<input id="photoCover2" class="input-large" type="text" style="height:30px;">
							<a class="btn" onclick="$('input[id=lefile2]').click();">Browse</a>
						</div>
						</div>
  						<button type="submit" class="btn btn-primary" style="margin-left: 170px;width: 100px">提交</button>
  						<span style="color: red"><strong>${mess}</strong></span>
					</form>
			</div>
		</div>
</div>

<div class="bottom"></div>
<div id="footer"><p>江苏师范大学版权所有 © 1998-2015  泉山校区：江苏省徐州市铜山新区上海路101号　邮政编码：221116 　苏ICP备-05007135号</p></div>
<script>navList(12);</script>
<script type="text/javascript">
$('input[id=lefile]').change(function() {
$('#photoCover').val($(this).val());
});

$('input[id=lefile2]').change(function() {
$('#photoCover2').val($(this).val());
});
</script>
</body>
</html>
