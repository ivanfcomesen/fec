<section class="page_content_main_slider clearfix" style="background-image: url(images/slider_slide_5.jpg); height: 650px;"
			id="home">
				<div class="flex-content"
					style="margin-top: 180px; height: 300px; width: 100%; z-index: 9999 !important">
					<figure class="flex-item log-photo"
						style="background-color: #b0b1b1; background-image: url(images/login_logo.png); background-size: contain; background-repeat: no-repeat;">
					</figure>

					<form action="/fec/showLogin.do" id="loginForm" method="post">

						<c:if test="${not empty errorCode}">
							<div
								class="col-xs-10 col-sm-6 col-md-2 col-lg-2 offset-xs-1 offset-sm-3 offset-md-5 offset-lg-5">
								<p>
									<fmt:message key="common.app.login.errorCode.${errorCode}" />
								<p>
							</div>
						</c:if>
						<c:if test="${not empty messageCode}">
							<div
								class="col-xs-10 col-sm-6 col-md-2 col-lg-2 offset-xs-1 offset-sm-3 offset-md-5 offset-lg-5">
								<p>
									<fmt:message
										key="common.app.login.errorCode.messageCode.${messageCode}" />
								<p>
							</div>
						</c:if>

						<div class="flex-item" style="height: 50px; text-align: center;">
							<input class="form_inputs login-input" type="email" placeholder="e-mail@example.com" name="email"> 
							<input class="login-btn" type="button" name="go" value="Go" onclick="document.getElementById('loginForm').submit();">
						</div>
					</form>
				</div>
			</section>