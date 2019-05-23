<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../include/header.jsp"%>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Bootstrap 3.3.4 -->
<link href="/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />
<!-- Font Awesome Icons -->
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css" />
<!-- Ionicons -->
<link
	href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css"
	rel="stylesheet" type="text/css" />
<!-- Theme style -->
<link href="/resources/dist/css/AdminLTE.min.css" rel="stylesheet"
	type="text/css" />
<!-- AdminLTE Skins. Choose a skin from the css/skins 
         folder instead of downloading all of them to reduce the load. -->
<link href="/resources/dist/css/skins/_all-skins.min.css"
	rel="stylesheet" type="text/css" />

<script>
	$(document).ready(function(){
		
		var forObj = $("form[role='form']");
		
		console.log(formObj);
		$(".btn-warning").on("click",function(){
			self.location = "/board/listAll";
		});
		
		$(".btn-primary").on("click",function(){
			formObj.submit();
		});
	});
</script>
<section class="content">
	<div class="row">
		<!-- left colum -->
		<div class="col-md-12">
			<!-- general form elements -->
			<div class="box">
				<div class="box-header with-border">
					<h3 class="box-title">REDE BOARD</h3>
				</div>
				<form role="form" method="post">

					<div class="box-body">
						<div class="form-group">
							<label for="exampleInputEmail1">BNO</label> 
							<input type="text"name="bno" class="form-control" value="${boardVO.bno }" readonly="readonly">
						</div>
						
						<div class="form-group">
							<label for="exampleInputEmail1">Title</label> 
							<input type="text" name='title' class="form-control"value="${boardVO.title }" placeholder="Enter Title">
						</div>

						<div class="form-group">
							<label for="exampleInputPassword1">Content</label>
							<textarea class="form-control" name="content" rows="3">${boardVO.content }</textarea>
						</div>

						<div class="form-group">
							<label for="exampleInputEmail1">Writer</label> 
							<input type="text" name="writer" class="form-control" value="${boardVO.writer } " readonly="readonly">
						</div>
					</div>	
					<div class="box-footer">
						<button type="submit" class="btn btn-primary">SAVE</button>
						<button type="submit" class="btn btn-warning">CENCEL</button>
					</div>				
				</form>
					
			</div>
		</div>
		<!-- /.col(left) -->
	</div>
	<!-- /.row -->
</section>

</div>
<%@include file="../include/footer.jsp"%>