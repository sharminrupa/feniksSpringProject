<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Java Hub</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" />
<script	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
	<link rel="stylesheet" href="https://cdn.datatables.net/1.10.21/css/dataTables.bootstrap.min.css">
<style>
label.lavel-css {
	top: 0 !important;
	margin-left: 15px;
}

.container-height {
	height: 300px;
}
</style>
</head>
<body>
	<br>
	<br>

	<jsp:include page="layout/header.jsp" />

	<h1 class="text-center mt-5">Feniks product Image Upload </h1>
	<br>
	<br>
	<div class="container-height">
		<div class="container-fluid px-5">
			<!-- form -->
			<form id="form container-height" action="http://localhost:9086/productupload" method="post" enctype="multipart/form-data">
				<div class="mt-5">
					<div class="row">
						<div class="col-md-6 col-sm-6 contact-form1 form-group">
							
							<div class="">
								<input type="text" class="form-control"
									placeholder="Product Name" id="name" name="name"
									required="required">
									<p id="error_name"></p>
							</div>
							
						</div>
						<div class="col-md-6 col-sm-6 contact-form1 form-group">
							
							<textarea class="form-control" placeholder="Product Description"
								id="description" rows="3" cols="45" name="description"
								required="required"></textarea>
							<p id="error_description"></p>
						</div>

						<div class="col-md-6 col-sm-6 contact-form1 ">

							<div class="mt-3">
								
								<input class="form-control form-control-sm" id="formFileSm image"
									type="file" name="image" required="required">
									<p id="error_file"></p>
							</div>
						</div>

						<div class="col-md-6 col-sm-6 contact-form1 form-group">
							 
							<input type="text"
								class="form-control" placeholder="Price" name="price" id="price"
								required="required">
							<p id="error_price"></p>
						</div>
					</div>

						<div class="right-w3l col-md-6">
							<input type="submit" class="btn btn-primary form-control" value="Submit">
							<br><br>
						</div>
						
				</div>
				<br>
				<div id="success" class="text-center" style="color: green;"></div>
				<div id="error" class="text-center" style="color: red;"></div>
			</form>
		</div>
	</div>
	<p class="text-center">
		<img src="${pageContext.request.contextPath}/images/loader.gif"
			alt="loader" style="width: 150px; height: 120px;" id="loader">
	</p>
	<script src="${pageContext.request.contextPath}/js/product.js"></script>
	
	
	<br>
	<div class="container-fluid py-5">
		<h1 class="text-center">Feniks product Image Display </h1>
<br><br>
<table border="1" style="border: 1px solid black;" class="table table-bordered table-striped table-hover px-5 mb-5">
        <thead>
            <tr>
                <th>SR. No.</th>
                <th>Name</th>
                <th>Image</th>
                <th>Description</th>
                <th>Price</th>
                <th>Created date</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
        <c:set var="count" value="0" scope="page"></c:set>
        <c:forEach var="product" items="${products}">
        <c:set var="count" value="${count + 1}" scope="page"></c:set>
            <tr>
                <td>${count}</td>
                <td>${product.name}</td>
                <td><img src="${pageContext.request.contextPath}/product/display/${product.id}" /></td>
                <td>${product.description}</td>
                <td>${product.price}</td>
                <td><fmt:formatDate pattern="dd-MMM-yyyy" value="${product.createDate}" /></td>
                <td><a href="${pageContext.request.contextPath}/product/productdetails?id=${product.id}" class="btn btn-info text-right" target="_blank">View</a></td>
            </tr>
         </c:forEach>
        </tbody>
        <tfoot>
            <tr>
                <th>SR. No.</th>
                <th>Name</th>
                <th>Image</th>
                <th>Description</th>
                <th>Price</th>
                <th>Created date</th>
                <th>Action</th>
            </tr>
        </tfoot>
    </table>
		
	</div>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
	<script src="https://cdn.datatables.net/1.10.21/js/dataTables.bootstrap.min.js"></script>
	<script type="text/javascript">
	$(document).ready(function() {
	    $('#example').DataTable();
	} );
	</script>
	<jsp:include page="layout/footer.jsp" />
</body>
</html>