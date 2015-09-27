<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="sidebar-menu toggle-others fixed">
	<!-- <div class="sidebar-menu toggle-others fixed collapsed"> -->

	<div class="sidebar-menu-inner">

		<header class="logo-env">

			<!-- logo -->
			<div class="logo">
				<a href="#" class="logo-expanded"> <img
					src="resources/images/logo@2x.png" width="80" alt="" />
				</a> <a href="dashboard-1.html" class="logo-collapsed"> <img
					src="resources/images/logo-collapsed@2x.png" width="40" alt="" />
				</a>
			</div>

			<!-- This will toggle the mobile menu and will be visible only on mobile devices -->
			<div class="mobile-menu-toggle visible-xs">
				<a href="#" data-toggle="user-info-menu"> <i class="fa-bell-o"></i>
					<span class="badge badge-success">7</span>
				</a> <a href="#" data-toggle="mobile-menu"> <i class="fa-bars"></i>
				</a>
			</div>

			<!-- This will open the popup with user profile settings, you can use for any purpose, just be creative -->
			<div class="settings-icon">
				<a href="#" data-toggle="settings-pane" data-animate="true"> <i
					class="linecons-cog"></i>
				</a>
			</div>


		</header>



		<ul id="main-menu" class="main-menu">
		
		<li><a href="#"> <i class="linecons-params"></i> <span
					class="title">轮播管理</span>
			</a>
				<ul>
					<li><a href="dashboard/slide.jsp"> <span class="title">轮播列表</span>
					</a></li>
					<li><a href="dashboard/edit-slide.jsp"> <span class="title">新建轮播</span>
					</a></li>
				</ul></li>

			<li><a href="#"> <i class="linecons-database"></i> <span
					class="title">新闻管理</span>
			</a>
				<ul>
					<li><a href="dashboard/news.jsp"> <span class="title">新闻列表</span>
					</a></li>
					<li><a href="dashboard/add-news.jsp"> <span class="title">新建新闻</span>
					</a></li>
					<li><a href="dashboard/newstype.jsp"> <span class="title">新闻类型</span>
					</a></li>
				</ul></li>


			<li><a href="#"> <i class="linecons-star"></i> <span
					class="title">合作管理</span>
			</a>
				<ul>
					<li><a href="dashboard/member.jsp"> <span class="title">会员列表</span>
					</a></li>
					<li><a href="dashboard/coo-student.jsp"> <span class="title">名誉学员</span>
					</a></li>
					<li><a href="dashboard/edit-cooperation.jsp"> <span class="title">新建合作</span>
					</a></li>
				</ul></li>


			<li><a href="#"> <i class="linecons-cog"></i> <span
					class="title">招聘管理</span>
			</a>
				<ul>
					<li><a href="dashboard/job-estudent.jsp"> <span class="title">强鹰学员</span>
					</a></li>
					<li><a href="dashboard/job-hstudent.jsp"> <span class="title">名誉学员</span>
					</a></li>
					<li><a href="dashboard/employee.jsp"> <span class="title">强鹰专职</span>
					</a></li>
					<li><a href="dashboard/intern.jsp"> <span class="title">实习生</span>
					</a></li>
					<li><a href="dashboard/edit-job.jsp"> <span class="title">新建招聘</span>
					</a></li>
				</ul></li>

			<li><a href="#"> <i class="linecons-mail"></i> <span
					class="title">关于管理</span>
			</a>
				<ul>
					<li><a href="dashboard/a1.jsp"> <span class="title">时代强鹰</span>
					</a></li>
					<li><a href="dashboard/a2.jsp"> <span class="title">校园联盟</span>
					</a></li>
					<li><a href="dashboard/a3.jsp"> <span class="title">青年园</span>
					</a></li>
					<li><a href="dashboard/a4.jsp"> <span class="title">强鹰孵化器</span>
					</a></li>
				</ul></li>

		</ul>

	</div>

</div>