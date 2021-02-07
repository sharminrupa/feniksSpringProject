<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>

<jsp:include page="../layout/header.jsp" />

<center>
		<h3>Spring Boot Email Sending Application</h3>
	</center>
	<!-- Text Email form -->
	<section class="signup">
		<div class="container">
			<div class="signup-content">
				<div class="signup-form">
					<h3 class="form-title">Text Email Form</h3>
					<form:form modelAttribute="textEmail" method="POST" action="/email-app/sendTextEmail" cssClass="register-form" id="register-form">
						<div class="form-group">
							<label for="fname"><i class="zmdi zmdi-account material-icons-name"></i></label>
							<form:input path="name" name="name" id="name" placeholder="Name" required="required" />
							<form:errors path="name" cssStyle="color:red;" cssClass="error" />
						</div>
						<div class="form-group">
							<label for="phone"><i class="zmdi zmdi-phone"></i></label>
							<form:input path="phone" name="phone" id="phone" placeholder="Phone" required="required" />
							<form:errors path="phone" cssStyle="color:red;" cssClass="error" />
						</div>
						<div class="form-group">
							<label for="email"><i class="zmdi zmdi-email"></i></label>
							<form:input type="email" path="email" name="email" id="email" placeholder="Email" required="required" />
							<form:errors path="email" cssStyle="color:red;" cssClass="error" />
						</div>
						<div class="form-group">
							<label for="subject"><i class="zmdi zmdi-account material-icons-name"></i></label>
							<form:input path="subject" name="subject" id="subject" placeholder="Subject" required="required" />
							<form:errors path="subject" cssStyle="color:red;" cssClass="error" />
						</div>
						<div class="form-group">
							<form:textarea path="comment" name="comment" id="comment" placeholder="Comment" rows="5" cols="35" required="required" />
							<form:errors path="comment" cssStyle="color:red;" cssClass="error" />
						</div>
						<div class="form-group form-button">
							<input type="submit" name="signup" id="signup" class="form-submit" value="Send" />
						</div>
					</form:form>
				</div>
			</div>
		</div>
	</section>


<jsp:include page="../layout/footer.jsp" />