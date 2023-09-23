<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<%
String acc= request.getParameter("acc");
String pw=request.getParameter("pw");
if(acc!=null&&pw!=null){
	if(acc.equals("admin")&&pw.equals("1")){
		session.setAttribute("dn", acc);
		response.sendRedirect("Menu2.jsp");
	}else
		out.println(" tk or mk sai");
	
}
%>
<div class="container" style="max-width: 400px">
  <h2>Đăng Nhập</h2>
  <form action="log2.jsp" method="post">
    <div class="form-group">
      <label for="acc">Tài Khoản:</label>
      <input type="text" class="form-control" name="acc">
    </div>
    <div class="form-group">
      <label for="pw">Mật Khẩu:</label>
      <input type="text" class="form-control"  name="pw">
    </div>
    
    <button type="submit" class="btn btn-default">Đăng Nhập</button>
  </form>
</div>
</body>
</html>