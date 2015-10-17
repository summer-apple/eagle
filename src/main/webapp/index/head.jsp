<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<header>
<div class="head-warp">
	<img id="logo" src="resources/images/e-logo.png">
	<nav>
		<ul>
			<li class="nav-item">
				<div class="nav-btn-group">
					<a href="index/index.jsp">首页</a>
				</div>
			</li>
			<li class="nav-item">
				<div class="nav-btn-group">
					<a href="javascript:void(0);">关于强鹰</a>
					<ul class="dropdown">
						<li><a href="#">时代强鹰</a></li>
						<li><a href="#">校园联盟</a></li>
						<li><a href="#">强鹰青年圈</a></li>
						<li><a href="#">强鹰孵化器</a></li>
					</ul>
				</div>
			</li>
			<li class="nav-item">
				<div class="nav-btn-group">
					<a href="javascript:void(0);">强鹰动态</a>
					<ul class="dropdown">
						<li><a href="#">强鹰新闻</a></li>
						<li><a href="#">媒体报道</a></li>
						<li><a href="#">会员新闻</a></li>
					</ul>
				</div>
			</li>
			<li class="nav-item">
				<div class="nav-btn-group">
					<a href="javascript:void(0);">合作伙伴</a>
					<ul class="dropdown">
						<li><a href="#">会员</a></li>
						<li><a href="#">名誉学员</a></li>
					</ul>
				</div>
			</li>
			<li class="nav-item">
				<div class="nav-btn-group">
					<a href="javascript:void(0);">加入强鹰</a>
					<ul class="dropdown">
						<li><a href="#">强鹰专职</a></li>
						<li><a href="#">强鹰实习生</a></li>
						<li><a href="#">名誉学员</a></li>
						<li><a href="#">学员</a></li>
					</ul>
				</div>
			</li>
			<li class="nav-item">
				<div class="nav-btn-group">
					<a href="index/contact.jsp">联系我们</a>
				</div>
			</li>
		</ul>
		<div class="search">
			<form id="search-form" action="news/search-mask" method="post">
				

				<input id="key" name="key" type="text">
				<span class="search-icon fa fa-search"></span>

			</form>
		</div>
	</nav>
	</div>
</header>