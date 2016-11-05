<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!doctype html>
<html lang="zh">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>index_news</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/news/css/normalize.css" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/news/css/default.css">
	<link href="${pageContext.request.contextPath}/news/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/news/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css" />
    <link href="${pageContext.request.contextPath}/news/css/site.css" rel="stylesheet" type="text/css" />

</head>
<body>
	<div class="htmleaf-container">
		

		
		<div class="container mp30">
			<div class="row">
				<div class="col-md-12">
					<div class="panel panel-default">
						<div class="panel-heading">
							<span class="glyphicon glyphicon-list-alt"></span><b>内部资讯</b></div>
						<div class="panel-body">
							<div class="row">
								<div class="col-xs-12">
									<ul class="demo1">
										<li class="news-item">
											<table cellpadding="4">
												<tr>
													<td><img src="${pageContext.request.contextPath}/news/images/1.png" width="60" class="img-circle" /></td>
													<td>1Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in venenatis enim... <a href="#">详情</a></td>
												</tr>
											</table>
										</li>
										<li class="news-item">
											<table cellpadding="4">
												<tr>
													<td><img src="${pageContext.request.contextPath}/news/images/2.png" width="60" class="img-circle" /></td>
													<td>2Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in venenatis enim... <a href="#">Read more...</a></td>
												</tr>
											</table>
										</li>
										<li class="news-item">
											<table cellpadding="4">
												<tr>
													<td><img src="images/3.png" width="60" class="img-circle" /></td>
													<td>3Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in venenatis enim... <a href="#">Read more...</a></td>
												</tr>
											</table>
										</li>
										
									</ul>
								</div>
							</div>
						</div>
						<div class="panel-footer">

						</div>
					</div>
				</div>
				

			</div>
		</div>

	</div>
	
	<script src="${pageContext.request.contextPath}/jquery-easyui-1.4.3/jquery.min.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/news/js/jquery.bootstrap.newsbox.min.js" type="text/javascript"></script>
	<script type="text/javascript">
    $(function () {
        $(".demo1").bootstrapNews({
            newsPerPage: 10,
            autoplay: false,
			pauseOnHover:true,
            direction: 'up',
            newsTickerInterval: 2000,
            onToDo: function () {
                //console.log(this);
            }
        });
		
		
    });
</script>
</body>
</html>