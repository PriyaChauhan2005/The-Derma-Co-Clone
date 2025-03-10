<%@page import="connection.DbCon"%>
<%@page import="dao.ProductDao"%>
<%@page import="model.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
User auth = (User) request.getSession().getAttribute("auth");
if (auth != null) {
    request.setAttribute("person", auth);
}
ProductDao pd = new ProductDao(DbCon.getConnection());
List<Product> products = pd.getAllProducts(); // Ensure this method retrieves all products correctly
request.setAttribute("cartProduct", session.getAttribute("cart-list"));
%>

<!DOCTYPE html>
<html>
<head>
<%@include file="/includes/head.jsp"%>
<title>The Derma Co</title>

<%@include file="cdns.jsp" %>
<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
	<%@include file="navbar.jsp"%>

    <div class="container-fluid">
        <%@ include file="carousel.jsp" %>
    </div>

    <br>
    <div class="container">
        <h3 style="text-align:center">Shop By Concern</h3><br><br>	
        <div class="row">
            <div class="problems d-flex justify-content-center gap-5">
                <div class="probimg"> 
                    <img src="iimages/acne.jpg" class="rounded-circle" alt="Acne">
                </div>
                <div class="probimg">
                    <img src="iimages/pigmentation.jpg" class="rounded-circle" alt="Pigmentation">
                </div>
                <div class="probimg">
                    <img src="iimages/open-pores.jpg" class="rounded-circle" alt="Open Pores">
                </div>
                <div class="probimg">
                    <img src="iimages/acne-marks.jpg" class="rounded-circle" alt="Acne Marks"> 
                </div>
            </div> 
        </div>  
    </div>
<br/>
    <div class="container">
        <div class="card-header my-3"><h4>Our Most Loved Products</h4></div><br/>
        <button type="button" class="btn btn-success">Bestsellers</button>
        <button type="button" class="btn btn-dark">New Launches</button>
        <div class="row">
            <%
            if (products != null && !products.isEmpty()) {
                for (Product p : products) {
            %>
            <div class="col-md-3 my-3">
                <div class="card w-100">
                    <img class="card-img-top" src="iimages/<%=p.getImage()%>" alt="<%=p.getName()%>">
                    <div class="card-body">
                        <h5 class="card-title"><%=p.getName()%></h5>
                        <h6 class="price">Price: Rs.<%=p.getPrice()%></h6>
                        <h6 class="category">Category: <%=p.getCategory()%></h6>
                        <div class="mt-3 d-flex justify-content-between">
                            <a class="btn btn-dark" href="add-to-cart?id=<%=p.getId()%>">Add to Cart</a> 
                            <a class="btn btn-primary" href="order-now?quantity=1&id=<%=p.getId()%>">Buy Now</a>
                        </div>
                    </div>
                </div>
            </div>
            <%
                }
            } else {
            %>
            <div class="col-12 text-center">
                <h5 class="text-muted">There are no products available.</h5>
            </div>
            <%
            }
            %>
        </div>
    </div>

    <%@include file="/includes/footer.jsp"%>
</body>
</html>
