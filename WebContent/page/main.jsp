<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
		
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>page de garde| MyBlog</title>
<!-- Bootstrap core CSS -->
<link	href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<!-- Custom styles for this template -->
<link href="signin.css" rel="stylesheet">

<link type="text/css" rel="stylesheet" href="./css/main.css" />
</head>
<body>
	<div class="head_line"></div>

	<div class="container" id="main">
	
		<div id="header"></div>

		<div class="row c_center">
			<div class="col-md-3" id="left_content">

				<div id="title">
					<h2><a href="/Blog/login.html">MyBlog</a></h2>
					<h5 class="text-muted">Gagnant Gagnant!</h5>
				</div>

				<div class="c_center" id="person_info">
					<img src="/Blog/img/header.jpg" height="130" width="130"
						alt="perdu mon avatar?" class="img-circle">
					<h4 class="text-muted">Boris MBOBE</h4>
					<h5 class="text-muted">étoiles et nuages.</h5>
				</div>

				<div class="c_center">
					<div class="inline ">
						<a href="#">${article_number}<br/>日志</a>
					</div>
					<div class="inline ">
						<a href="/Blog/SortServlet?get=all"><span> ${sort_number} </span><br/>Classification</a>
					</div>
					<div class="inline " >
						<a href="/Blog/TagsServlet?get=all"><span>${tags_number}</span><br/>Étiqueter</a>
					</div>
					
				</div>
			

				<div id="list">
					<table class="table table-hover c_center">
						<tr class="active">
							<td><a href="/Blog/index.jsp	"><span class="glyphicon glyphicon-home"></span>
								&nbsp;&nbsp;page de garde</a></td>
						</tr>
						<tr>	
							<td><a href="/Blog/SortServlet?get=all"><span class="glyphicon glyphicon-list"></span>
								&nbsp;&nbsp;Classification</a></td>
						</tr>
						<tr>
							<td><a href="/Blog/TagsServlet?get=all"><span class="glyphicon glyphicon-tags"></span>
								&nbsp;&nbsp;Étiqueter</a></td>
						</tr>						
						<tr>
							<td><a href="/Blog/AxisServlet"><span class="glyphicon glyphicon-book"></span>
								&nbsp;&nbsp;calendrier</a></td>
						</tr>
						<tr>
							<td><a href="/Blog/page/about.html"><span class="glyphicon glyphicon-user"></span>
								&nbsp;&nbsp;à propos</a></td>
						</tr>
					</table>
				</div>
				<!-- list -->
					<br/>
					
				<div class="sort">
					<div class="list-group">
						<span class="list-group-item active">Classification</span>						
						<c:forEach var="entity"  items="${sort_count_map}">
						 <a href="/Blog/SortServlet?get=${entity.key}" class="list-group-item">${entity.key}&nbsp;&nbsp;&nbsp;&nbsp; (${entity.value})</a>						
						</c:forEach>													
					</div>
				</div><!-- sort -->

				
				<div class="visit">
					<div class="list-group">
						<span class="list-group-item active">classement de lecture</span>						
						<c:forEach var="a"  items="${visit_rank}">
						 <a href="/Blog/ArticleServlet?id=${a.id}" class="list-group-item">${a.title}&nbsp;&nbsp; <span class="c_right">(${a.visit})</span></a>						
						</c:forEach>												
					</div>
				</div><!-- visit-->
	

				<div id="tag">
					<div class="list-group">
						<span class="list-group-item active">Étiqueter</span>					
						<br/>		
						<c:forEach var="t"  varStatus="status" items="${tag_list}" >		
						<c:choose>
						<c:when test="${status.count%2==1}">
							<span class="label label-info"><a href="/Blog/TagsServlet?get=${t.tag}">
							&nbsp;${t.tag}&nbsp;</a></span>							
						</c:when>
						<c:otherwise>
								<span class="label label-success"><a href="/Blog/TagsServlet?get=${t.tag}">
								&nbsp;${t.tag}&nbsp;</a></span>						
						</c:otherwise>
						</c:choose>
					
						</c:forEach>											
					</div>
				</div><!-- tag -->
				
				
			<!-- admin here -->
			<c:if test="${sessionScope.user!=null}">
			<a href="/Blog/AddServlet">
			<span class="glyphicon glyphicon-plus">&nbsp;&nbsp;écrire un nouvel article&nbsp;&nbsp;</span>
			</a>
			<a href="/Blog/AdminServlet">
			<span class="glyphicon glyphicon glyphicon-user">&nbsp;&nbsp;gérer plus&nbsp;&nbsp;</span>
			</a>
			</c:if>
			<!--  -->
			
			</div>
			<div class="col-md-2" id="center_content">		
			</div>
					
			
			<div  class="col-md-7 " id="right_Content">
				<br />
				<br />
				<div class="list-group">							
					<a href="#" class="list-group-item active">article</a>
					<c:forEach var="article"   items="${article_list}" >	
					<div  class="list-group-item">									
					<h4><a href="/Blog/ArticleServlet?id=${article.id}">${article.title}</a></h4>
					<br/>
					<span>${article.time}&nbsp;&nbsp;|</span>
					<a href="/Blog/SortServlet?get=${article.sort}">${article.sort}</a>&nbsp;&nbsp;|
					<span>nombre de fois lu : ${article.visit}</span>
					<br/><br/>					
					<span>${article.content}</span>
					<br/><br/><br/>	
					<a href="/Blog/ArticleServlet?id=${article.id}">En savoir plus</a>
					<br/>			
					</div>
					</c:forEach>
				</div>
			</div>	
		</div>				
		<div class="foot_line"></div>
			</div><!-- container -->
	<div id="footer">
		<div>
			<a href="https://github.com/danzabe-boris"><img src="/Blog/img/github.png"width="20px" height="20px" class="img-circle">&nbsp;&nbsp;GitHub</a>
			&nbsp;|
			<a href="#">&nbsp;&nbsp;MyBlog</a>
			<br/>
			copyright © 2021
		</div>			
		<div class="r_div">
		<a href="#"><input  class="btn btn-default"   value="返回顶部"  style="width:50%;"/></a>
		<h6> a été visité ${visited } Secondaire</h6>
		<h6> tu es le premier ${member} visiteurs</h6>    
		</div>
	</div>
</body>
</html>