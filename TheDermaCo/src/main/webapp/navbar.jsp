<nav class="navbar navbar-expand-lg navbar-light bg-light">
<div class="container-fluid">
	<a class="navbar-brand"  href="javascript:void(0)"><img src="iimages/dermalogo.png" alt="logo" style="width:35%;height:35%"></a>
	<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#mynavbar">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="mynavbar">
      <ul class="navbar-nav me-auto">
        
        
        <li class="nav-item dropdown">
           <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">Shop By Concern</a>
               <ul class="dropdown-menu">
                 <li><a class="dropdown-item" href="#">Link</a></li>
                 <li><a class="dropdown-item" href="#">Another link</a></li>
                  <li><a class="dropdown-item" href="#">A third link</a></li>
                </ul>
        </li>
        
        <li class="nav-item dropdown">
           <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">Shop By Ingredients</a>
               <ul class="dropdown-menu">
                 <li><a class="dropdown-item" href="#">Link</a></li>
                 <li><a class="dropdown-item" href="#">Another link</a></li>
                  <li><a class="dropdown-item" href="#">A third link</a></li>
                </ul>
        </li>
        
        <li class="nav-item dropdown">
           <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">All Products</a>
               <ul class="dropdown-menu">
                 <li><a class="dropdown-item" href="#">Link</a></li>
                 <li><a class="dropdown-item" href="#">Another link</a></li>
                  <li><a class="dropdown-item" href="#">A third link</a></li>
                </ul>
        </li>
        
      </ul>
      <form class="d-flex ms-auto">
        <input class="form-control me-2" type="text" placeholder="Search">
        <button class="btn btn-primary" type="button">Search</button>
      </form>
		

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ml-auto">
			    <li class="nav-item"><a class="nav-link" href="index.jsp">Home</a></li>
				<li class="nav-item"><a class="nav-link" href="cart.jsp">Cart <span class="badge badge-danger">${cart_list.size()}</span> </a></li>
				<%
                 Object auth1 = session.getAttribute("auth");
                 if (auth1 != null) {
                 %>
				
				<li class="nav-item"><a class="nav-link" href="orders.jsp">Orders</a></li>
				<li class="nav-item"><a class="nav-link" href="log-out">Logout</a></li>
				<%
				} else {
				%>
				<li class="nav-item"><a class="nav-link" href="login.jsp">Login</a></li>
				<%
				}
				%>
			</ul>
		</div>
	</div>
</div>
</nav>