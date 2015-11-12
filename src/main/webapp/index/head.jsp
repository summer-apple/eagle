<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<header>
<div class="head-warp">
	<a href="index/index.jsp"><img id="logo" src="resources/images/e-logo.png"></a>
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
						<li><a href="index/about.jsp?id=1">时代强鹰</a></li>
						<li><a href="index/about.jsp?id=2">校园联盟</a></li>
						<li><a href="index/about.jsp?id=3">强鹰·青年圈</a></li>
						<li><a href="index/about.jsp?id=4">强鹰孵化平台</a></li>
					</ul>
				</div>
			</li>
			<li class="nav-item">
				<div class="nav-btn-group">
					<a href="javascript:void(0);">强鹰动态</a>
					<ul id="news-type-group" class="dropdown">
					</ul>
				</div>
			</li>
			<li class="nav-item">
				<div class="nav-btn-group">
					<a href="javascript:void(0);">合作伙伴</a>
					<ul class="dropdown">
						<li><a href="index/coolist.jsp?type=1">会员</a></li>
						<li><a href="index/coolist.jsp?type=2">名誉学员</a></li>
					</ul>
				</div>
			</li>
			<li class="nav-item">
				<div class="nav-btn-group">
					<a href="javascript:void(0);">加入强鹰</a>
					<ul class="dropdown">
						<li><a href="index/joblist.jsp?type=3">职位招聘</a></li>
						<li><a href="index/job.jsp?id=1">名誉学员</a></li>
						<li><a href="index/job.jsp?id=2">强鹰学员</a></li>
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