<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Bootstrap Example</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
    href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
    src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script
    src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="#">Trang Chủ</a>
            </div>
            <ul class="nav navbar-nav">               
                <li><a href="GioHang.jsp"><span class="glyphicon glyphicon-shopping-cart"></span>Giỏ Hàng</a></li>
                <li><a href="CreditCard.jsp"><span class="glyphicon glyphicon-credit-card"></span>Thanh Toán</a></li>
                <li><a href="HistoryPay.jsp"><span class="glyphicon glyphicon-th-list"></span>Lịch Sử Mua Hàng</a></li>
                

            </ul>
            <ul class="nav navbar-nav navbar-right">
        
        <%if(session.getAttribute("dn")!=null){%>
        <li><a href="#"><span class="glyphicon glyphicon-user">Hi!<%=session.getAttribute("dn") %></span> </a></li>	
        <li><a href="LogOut.jsp"><span class="glyphicon glyphicon-log-out"></span>Đăng xuất</a></li>				
        <%}else{ %>
        <li><a href="Log.jsp"><span class="glyphicon glyphicon-log-out"></span>Đăng nhập</a></li>
        <li><a href="Register.jsp"><span class="glyphicon glyphicon-log-in"></span>Đăng kí</a></li>
        <%} %>
        
    </ul>
        </div>
    </nav>
    
</body>
</html>