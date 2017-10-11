<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html class="no-js">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Sharefree</title>
<link rel="stylesheet" href="assets/css/amazeui.min.css"/>
<link rel="stylesheet" href="assets/css/admin.css">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">

    <script src="assets/js/jquery.min.js"></script>
<script src="assets/js/app.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>

<head>
<!--[if lte IE 9]>
<p class="browsehappy">升级你的浏览器吧！ <a href="http://se.360.cn/" target="_blank">升级浏览器</a>以获得更好的体验！</p>
<![endif]-->
</head>
<script>
    $(function() {
        $("#myButtons3 .btn").click(function(){
            $(this).button('loading').delay(700).queue(function() {
                $(this).button('reset');
            });
        });
    });
</script>



<body>
<header class="am-topbar admin-header">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="#">ShareFree</a>
        </div>
        <ul class="nav navbar-nav navbar-right">
            <li><a href="#"><span class="glyphicon glyphicon-user"></span> 注册</a></li>
            <li><a href="#"><span class="glyphicon glyphicon-log-in"></span>注销</a></li>
        </ul>
    </div>
</header>

<div class="am-cf admin-main">
<div class="nav-navicon admin-main admin-sidebar">
    <div class="sideMenu am-icon-dashboard" style="color:#aeb2b7; margin: 10px 0 0 0;">${username}</div>
    <div class="sideMenu">
      <h3 class="am-icon-flag"><em></em> <a href="#">文章</a></h3>
      <ul>
        <li><a href="">写文章</a></li>
        <li><a href="">发布文章</a></li>
        <li><a href="">文章管理</a></li>
        <li><a href="">草稿夹</a></li>
      </ul>
      <h3 class="am-icon-cart-plus"><em></em> <a href="#"> 工具</a></h3>
      <ul>
        <li><a href="">偏好设置</a></li>
        <li><a href="">分类管理</a></li>
        <li><a href="">导航管理</a></li>
        <li><a href="">链接管理</a></li>
        <li><a href="">用户管理</a></li>
        <li><a href="">插件管理</a></li>
        <li><a href="">插件管理</a></li>
        <li><a href="">其他</a></li>
      </ul>
      <h3 class="am-icon-volume-up"><em></em> <a href="#">信息通知</a></h3>
      <ul>
        <li><a href="">评论管理</a> </li>
      </ul>
      <h3 class="am-icon-gears"><em></em> <a href="#">关于</a></h3>
      <ul>
        <li><a href="">关于</a></li>
      </ul>
    </div>
    <!-- sideMenu End -->
    <script type="text/javascript">
			jQuery(".sideMenu").slide({
				titCell:"h3", //鼠标触发对象
				targetCell:"ul", //与titCell一一对应，第n个titCell控制第n个targetCell的显示隐藏
				effect:"slideDown", //targetCell下拉效果
				delayTime:300 , //效果时间
				triggerTime:150, //鼠标延迟触发时间（默认150）
				defaultPlay:true,//默认是否执行效果（默认true）
				returnDefault:true //鼠标从.sideMen移走后返回默认状态（默认false）
				});
		</script>
</div>

    <%--------------------------------------写文章------------------------------------%>
<div class=" admin-content" style="display: block;">
    <div class="admin">
        <div class="container-fluid">
            <form action="/upload.do" enctype="multipart/form-data" method="post">
            <div class="row-fluid">
                <div class="span12">
                    <h5><small>标题：</small></h5>
                    <input type="text" name="title" id="title" class="form-control" placeholder="在此输入标题">
                    <h5><small>正文：</small></h5>
                </div>
                <!-- 加载编辑器的容器 -->
                <script id="container" name="content" type="text/plain">从这里开始....</script>
                <script type="text/javascript" src="assets/js/ueditor/ueditor.config.js"></script>
                <script type="text/javascript" src="assets/js/ueditor/ueditor.all.js"></script>
                <script type="text/javascript">
                    var ue = UE.getEditor('container');
                </script>
                <!-- 加载编辑器的容器 -->
                <div class="form-group">
                    <h5><small>文件上传<a href="#" class="tooltip-test" data-toggle="tooltip" title="文章显示图片，格式为.png.jpg">(?)</a></small></h5>
                        <label class="sr-only" for="inputfile">文件输入</label>
                        <input type="file" name="picture" id="inputfile">
                </div>
                <!-- 加载编辑器的容器 -->
                <div id="myButtons3" class="bs-example">
                    <h5><small>标签：(使用赢状态下的“;”符号进行分隔)</small></h5>
                    <input id="tag" name="tag" type="text" class="form-control" placeholder="标签1;标签2;标签3;">
                    <h5><small>分类：（主页大标题）</small></h5>
                    <input id="catalog" name="catalog" type="text" class="form-control" placeholder="/xxx">
                    <h5><small>你想说的话：</small></h5>
                    <textarea  id="comment" name="comment"class="form-control" rows="3"></textarea>
                    </br>
                    <button type="button" class="btn btn-primary" data-loading-text="Loading...">取消发布
                    </button>&nbsp;&nbsp;&nbsp;&nbsp;
                    <button type="submit" type="button" class="btn btn-primary" data-loading-text="Loading...">发布
                    </button></br>
                </div>
             </div>
            </form>
        </div>
    </div>
</div>



<!--[if lt IE 9]>
<script src="http://libs.baidu.com/jquery/1.11.1/jquery.min.js"></script>
<script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
<script src="assets/js/polyfill/rem.min.js"></script>
<script src="assets/js/polyfill/respond.min.js"></script>
<script src="assets/js/amazeui.legacy.js"></script>
<![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--> 
<script src="assets/js/amazeui.min.js"></script>
<!--<![endif]-->
</div>
</body>
</html>