<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
 <%@ include file="/WEB-INF/views/template/header.jsp" %>

<body>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Register HERE..</h1>

            
        </div>

        <form:form action="${pageContext.request.contextPath}/register" method="post"
                   commandName="customer">

        <h3>Basic Info</h3>

        <div class="form-group">
            <label for="name">Name</label><form:errors path="customerName" cssStyle="color: black"/>
            <form:input path="customerName" id="name" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="email">Email</label><span style="color: #ff0000">${emailMsg}</span><form:errors
                path="customerEmail" cssStyle="color: #ff0000"/>
            <form:input path="customerEmail" id="email" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="phone">Phone</label>
            <form:input path="customerPhone" id="phone" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="username">UserName</label><span style="color: #ff0000">${usernameMsg}</span><form:errors
                path="username" cssStyle="color: #ff0000"/>
            <form:input path="Username" id="username" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="password">Password</label><form:errors path="password" style="color: #ff0000"/>
            <form:password path="password" id="password" class="form-Control"/>
        </div>

        <br><br>
        <input type="submit" value="Register" class="btn btn-default">
        <a href="<c:url value="/" />"  class="btn btn-default">Cancel</a>
        </form:form>
</div>
</div>


    </body>
     
<style>
body{
background-image:url(http://previews.123rf.com/images/bugtiger/bugtiger1209/bugtiger120900008/15082606-textured-bamboo-handicraft-background-Stock-Photo.jpg);
}

div{
width:auto;

}
input[type=password],select{
 width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: opx;
    box-sizing: border-box;

}
input[type=text], select {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: opx;
    box-sizing: border-box;
}

input[type=submit],input[type=button] {
    
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin:  0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

input[type=submit]:hover {
    background-color: #45a049;
}

</style>

   <%@ include file="/WEB-INF/views/template/footer.jsp" %>
         