<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

 <%@ include file="/WEB-INF/views/template/header.jsp" %>
<body>
<script>
    $(document).ready(function(){
        var searchCondition = '${searchCondition}';

        $('.table').DataTable({
            "lengthMenu": [[1,2,3,5,10,-1], [1,2,3,5,10, "All"]],
            "oSearch": {"sSearch": searchCondition}
        });
    });

</script>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>All Products</h1>

            <p class="lead">Checkout all the awesome products available now!</p>
        </div>

        <table class="table table-striped table-hover">
            <thead>
            <tr class="bg-success">
                <th>Photo Thumb</th>
                <th>Product Name</th>
                <th>Category</th>
                <th>Condition</th>
                <th>Price</th>
                <th></th>
            </tr>
            </thead>
            <c:forEach items="${products}" var="product">
                <tr>
                    <td><img src="<c:url value="/resources/Images/${product.productId}.png" /> " alt="image"
                             style="width:100%"/></td>
                    <td>${product.productName}</td>
                    <td>${product.productCategory}</td>
                    <td>${product.productCondition}</td>
                    <td>${product.productPrice} <i class="fa fa-inr" aria-hidden="true"></i></td>
                    <td><a href="<spring:url value="/product/viewProduct/${product.productId}" />"
                    ><i class="fa fa-bars" aria-hidden="true"></i></a></td>
                </tr>
            </c:forEach>
        </table>
        </div>
        </div>
        </body>
        <style>
        body{
        background-image:url(http://us.123rf.com/450wm/lizavetas/lizavetas1606/lizavetas160600059/58076954-vector-seamless-pattern-sewing-tailoring-stuff-handicrafts-items-can-be-used-for-wallpaper-pattern-f.jpg?ver=6);
        }
        </style>
<%@include file="/WEB-INF/views/template/footer.jsp" %>
