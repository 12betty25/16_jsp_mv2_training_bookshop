<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%--

	 <Resource 
		auth="Container" 
		driverClassName="com.mysql.cj.jdbc.Driver"
		loginTimeout="10" 
		maxWait="5000" 
		name="jdbc/bookshop" 
		username="root"
		password="1234" 
		type="javax.sql.DataSource"
		url="jdbc:mysql://localhost:3306/BOOKSHOP?serverTimezone=UTC&amp;useSSL=false"
	/> 


 --%>

<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ashion Template">
    <meta name="keywords" content="Ashion, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Ashion | Template</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cookie&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700;800;900&display=swap"
    rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="bootstrap/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="bootstrap/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="bootstrap/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="bootstrap/css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="bootstrap/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="bootstrap/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="bootstrap/css/style.css" type="text/css">
   
    <script>
    
    	function orderBook(bookCd) {
    		if ("${sessionScope.memberId == null}" == "true") {
    			alert("로그인을 먼저 진행해주세요.");
    			location.href = "login";
    		}
    		else {
    			location.href = "orderBook?bookCd="+bookCd+"&orderGoodsQty=1"
    		}
    		
    	}
    	
    	//pages -> mypages를 클릭했을 때
	    function modifyMember() {
			
	    	if ("${sessionScope.memberId == null}" == "true") {
				alert("로그인을 먼저 진행해주세요.");
				location.href = "login";
			}
			else {
				location.href = "modifyMember";
			}
			
		}
	    
	    function myOrderList() {
			
	    	//pages -> my order list를 클릭했을 때
	    	if ("${sessionScope.memberId == null}" == "true") {
				alert("로그인을 먼저 진행해주세요.");
				location.href = "login";
			}
			else {
				location.href = "myOrderList";
			}
			
		}
    
    </script>
</head>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Header Section Begin -->
    <header class="header">
        <div class="container-fluid">
            <div class="row">
                <div class="col-xl-3 col-lg-2">
                    <div class="header__logo">
                        <a href="bookList"><img src="bootstrap/img/logo.png" alt=""></a>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-7">
                    <nav class="header__menu">
                    <!-- 다른 페이지 또는 현재 페이지의 다른 부분과 연결되는 네비게이션 링크(navigation links)들의 집합을 정의할 때 사용합니다. -->
                        <ul>
                            <li><a href="bookList">Home</a></li>
                            <li><a href="#">Pages</a>
                                <ul class="dropdown">
                                    <li><a href="javascript:modifyMember()">My Page</a></li>
                                    <li><a href="javascript:myOrderList()">My Order List</a></li>
                                </ul>
                            </li>
                        </ul>
                    </nav>
                </div>
                <div class="col-lg-3">
                    <div class="header__right">
                    	<c:choose>
                    		<c:when test="${sessionScope.memberId == null}">
		                        <div class="header__right__auth">
		                            <a href="login">Login</a>
		                            <a href="register">Register</a>
		                        </div>
                    		</c:when>
                    		<c:otherwise>
		                        <div class="header__right__auth">
		                            로그인 계정 : '${sessionScope.memberId }' / 
		                            <a href="logout">Logout</a>
		                        </div>
                    		</c:otherwise>
                    	</c:choose>
                    </div>
                </div>
            </div>
            <div class="canvas__open">
                <i class="fa fa-bars"></i>
            </div>
        </div>
    </header>
    <!-- Header Section End -->
    <div class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__links">
                        <a href="bookList"><i class="fa fa-home"></i> Home</a>
                        <span>FAQ</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <section class="checkout spad">
        <div class="container">
            <form action="register" method="post" class="checkout__form" onsubmit="return checkFormData();">
                    <div class="col-lg-8">
                        <h5>FAQ</h5>
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="checkout__form__input">
									<table border="1">
										<tr>
											<td width="500" height="20" align="center">제목</td>
											<td width="200" align="center">작성일</td>
										</tr>
									</table>
                             	</div>
                             	<br>
                             <div align="right">
	                             <button type="submit" class="site-btn" onclick="location.href='qNAWrite'">글쓰기</button>
                             </div>
                        </div>
                    </div>
                  </div>
               </form>
            </div>
        </section>
        
        
        
        
        
    <!-- Footer Section Begin -->
    <footer class="footer">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-6 col-sm-7">
                    <div class="footer__about">
                        <div class="footer__logo">
                            <a href="bookList"><img src="bootstrap/img/logo.png" alt=""></a>
                        </div>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt
                        cilisis.</p>
                        <div class="footer__payment">
                            <a href="#"><img src="bootstrap/img/payment/payment-1.png" alt=""></a>
                            <a href="#"><img src="bootstrap/img/payment/payment-2.png" alt=""></a>
                            <a href="#"><img src="bootstrap/img/payment/payment-3.png" alt=""></a>
                            <a href="#"><img src="bootstrap/img/payment/payment-4.png" alt=""></a>
                            <a href="#"><img src="bootstrap/img/payment/payment-5.png" alt=""></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2 col-md-3 col-sm-5">
                    <div class="footer__widget">
                        <h6>Quick links</h6>
                        <ul>
                            <li><a href="#">About</a></li>
                            <li><a href="#">Blogs</a></li>
                            <li><a href="#">Contact</a></li>
                            <li><a href="QnA">FAQ</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-2 col-md-3 col-sm-4">
                    <div class="footer__widget">
                        <h6>Account</h6>
                        <ul>
                            <li><a href="#">My Account</a></li>
                            <li><a href="#">Orders Tracking</a></li>
                            <li><a href="#">Checkout</a></li>
                            <li><a href="#">Wishlist</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-8 col-sm-8">
                    <div class="footer__newslatter">
                        <h6>NEWSLETTER</h6>
                        <form action="#">
                            <input type="text" placeholder="Email">
                            <button type="submit" class="site-btn">Subscribe</button>
                        </form>
                        <div class="footer__social">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-youtube-play"></i></a>
                            <a href="#"><i class="fa fa-instagram"></i></a>
                            <a href="#"><i class="fa fa-pinterest"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    <div class="footer__copyright__text">
                        <p>Copyright &copy; <script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a></p>
                    </div>
                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                </div>
            </div>
        </div>
    </footer>
    <!-- Footer Section End -->

    <!-- Search Begin -->
    <div class="search-model">
        <div class="h-100 d-flex align-items-center justify-content-center">
            <div class="search-close-switch">+</div>
            <form class="search-model-form">
                <input type="text" id="search-input" placeholder="Search here.....">
            </form>
        </div>
    </div>
    <!-- Search End -->

    <!-- Js Plugins -->
    <script src="bootstrap/js/jquery-3.3.1.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="bootstrap/js/jquery.magnific-popup.min.js"></script>
    <script src="bootstrap/js/jquery-ui.min.js"></script>
    <script src="bootstrap/js/mixitup.min.js"></script>
    <script src="bootstrap/js/jquery.countdown.min.js"></script>
    <script src="bootstrap/js/jquery.slicknav.js"></script>
    <script src="bootstrap/js/owl.carousel.min.js"></script>
    <script src="bootstrap/js/jquery.nicescroll.min.js"></script>
    <script src="bootstrap/js/main.js"></script>
</body>

</html>