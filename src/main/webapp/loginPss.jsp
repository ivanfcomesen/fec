<!-- Main Slider Section -->
            <section class="page_content_main_slider clearfix"
                style="background-image: url(images/slider_slide_5.jpg); height: 650px;"
                id="home">
                <form action="/fec/login.do" id="loginForm" method="post">
                
                    <select onchange="changeLogo();" class="custom-select" name="tributaryId" id="tributaryId">                                      
                          <c:forEach items="${tributaryList}" var = "tribuitary">
                              <option  value='<c:out value ="${tribuitary.idTributario}"/>'><c:out value="${tribuitary.name}"/></option>
                          </c:forEach> 
                    </select>
                    <div class="flex-content"
                        style="margin-top: 180px; height: 300px; width: 100%; z-index: 9999 !important">
                        <figure class="flex-item log-photo"
                            style="background-color: #b0b1b1; background-image: url(images/login_logo.png); background-size: contain; background-repeat: no-repeat;">
                        </figure>
                        <div class="flex-item" style="height: 50px; text-align: center;">
                            <input class="form_inputs login-input" type="password" name="securityCode" placeholder="password">
                            <input class="login-btn" type="button" name="go" value="GO" onclick="document.getElementById('loginForm').submit();" >
                        </div>
                    </div>
                </form>    
            </section>
        <!-- /Main Slider Section -->