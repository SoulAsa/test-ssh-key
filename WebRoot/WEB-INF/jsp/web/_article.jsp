<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!doctype html>
<html>
	<head>
		<jsp:include page="/common/web_head.jsp"></jsp:include>
		<link href="${pageContext.request.contextPath }/css/new.css" rel="stylesheet">
		<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.10.2.min.js"></script>
		<script type="text/javascript">
			// 异步增加阅读量
			$.ajax({
				url:"${pageContext.request.contextPath }/web/web_addReadCount.action",
				data:{
					"article.artId" : "${article.artId}"
				},
				type:"post"
			});
		</script>
	</head>
	<body>
		<jsp:include page="/common/web_header.jsp"></jsp:include>
		<article class="blogs">
  			<h1 class="t_nav"><span>您当前的位置：<a href="#">首页</a>&nbsp;&gt;&nbsp;<a href="#">推荐文章</a>&nbsp;&gt;&nbsp;<a href="#">日记</a></span>
	  		  <a href="${pageContext.request.contextPath }/web/web_index.action" class="n1">网站首页</a>
	  		  <a href="#" class="n2">日记</a>
  			</h1>
		  <div class="index_about">
		    <h2 class="c_titile"><s:property value="article.title"/></h2>
		    <p class="box_c"><span class="d_time">发布时间：<s:date name="article.createTime" format="yyyy-MM-dd HH:mm"/></span>
		    	<span>编辑：<s:property value="admin.name"/></span>
		    	<span onload="">阅读（<s:property value="article.readCount"/>）</span>
		    </p>
		    <ul class="infos">
		    	<s:property value="article.content" escape="false"/>
		    </ul>
		    <div class="keybq">
		    <p><span>关键字词</span>：<s:property value="article.keyword"/></p>
		    
		    </div>
		    
		    <!-- 评论框及 列表 -->
		    
		    <div class="nextinfo">
		      <p>上一篇：<a href="/news/s/2013-09-04/606.html">程序员应该如何高效的工作学习</a></p>
		      <p>下一篇：<a href="/news/s/2013-10-21/616.html">柴米油盐的生活才是真实</a></p>
		    </div>
		    <div class="otherlink">
		      <h2>相关文章</h2>
		      <ul>
		        <li><a href="/news/s/2013-07-25/524.html" title="现在，我相信爱情！">现在，我相信爱情！</a></li>
		        <li><a href="/newstalk/mood/2013-07-24/518.html" title="我希望我的爱情是这样的">我希望我的爱情是这样的</a></li>
		        <li><a href="/newstalk/mood/2013-07-02/335.html" title="有种情谊，不是爱情，也算不得友情">有种情谊，不是爱情，也算不得友情</a></li>
		        <li><a href="/newstalk/mood/2013-07-01/329.html" title="世上最美好的爱情">世上最美好的爱情</a></li>
		        <li><a href="/news/read/2013-06-11/213.html" title="爱情没有永远，地老天荒也走不完">爱情没有永远，地老天荒也走不完</a></li>
		        <li><a href="/news/s/2013-06-06/24.html" title="爱情的背叛者">爱情的背叛者</a></li>
		      </ul>
		    </div>
		  </div>
		  <aside class="right">
		    <div class="blank"></div>
		    <%@ include file="/common/web_sort.jsp"%>
		    <div class="visitors">
		      <h3><p>最近访客</p></h3>
		      <ul>
		      
		      </ul>
		    </div>
		  </aside>
		</article>
		<jsp:include page="/common/web_footer.jsp"></jsp:include>
	</body>
</html>