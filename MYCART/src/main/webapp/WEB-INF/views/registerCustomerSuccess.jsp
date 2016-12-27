<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

 <%@ include file="/WEB-INF/views/template/header.jsp" %>

<body>
<div class="container-wrapper">
    <div class="container">
        <section>
            
                <div class="container">
                <br>
                <br>
               <br> 
                    <h1>Customer registered successfully!</h1>
                </div>
            </div>
    </section>

        <section class="container">
            <p>
                <a href="<spring:url value="/" />" class="btn btn-default">Products</a>
            </p>
        </section>

    </div>
</div>
</body>

<style>
body{
background-image:url(http://st.depositphotos.com/2397583/2656/v/950/depositphotos_26560479-stock-illustration-ethnic-pattern-seamless-national-background.jpg)
}
</style>

<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>
<script src="<c:url value="/resources/js/controller.js" /> "></script>
<br>
<br>

   <%@ include file="/WEB-INF/views/template/footer.jsp" %>
