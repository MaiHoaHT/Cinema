<%@page import="org.springframework.boot.autoconfigure.security.SecurityProperties.User"%>
<%@page import="org.springframework.ui.Model"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <!-- Bootstrap CSS -->
        <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css'>
        <!-- Font Awesome CSS -->
        <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css'>
        <title>HAY Cinema | Xem phim thả ga không lo deadline</title>
        <link rel = "icon" href = "https://www.3playmedia.com/wp-content/uploads/4-16.png" type = "image/x-icon">
    </head>

    <body>
        <!-- banner -->
        <div class="container-fluid banner">
            <div class="row">
                <div class="col-md-4 col-sm-3 col-3">
                    <picture>
                        <source media="(max-width: 768px)" srcset="../images/banner1.jpg">
                        <img class="logo-banner" src="../images/banner2.jpg" alt="Banner Hay cinema">
                    </picture>
                </div>
                
                <div class="input-group col-md-5 col-sm-5 col-3" style="display: inline;">
                    <div class="form-group has-search">
                        <span class="fa fa-search form-control-feedback"></span>
                        <input type="text" class="form-control" placeholder="Tìm tên phim, diễn viên...">
                    </div>
                </div>
                <div class="col-md-3 col-sm-4 col-5">

                    <a href="/logout" class="login">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-box-arrow-left" viewBox="0 0 16 16">
							  <path fill-rule="evenodd" d="M6 12.5a.5.5 0 0 0 .5.5h8a.5.5 0 0 0 .5-.5v-9a.5.5 0 0 0-.5-.5h-8a.5.5 0 0 0-.5.5v2a.5.5 0 0 1-1 0v-2A1.5 1.5 0 0 1 6.5 2h8A1.5 1.5 0 0 1 16 3.5v9a1.5 1.5 0 0 1-1.5 1.5h-8A1.5 1.5 0 0 1 5 12.5v-2a.5.5 0 0 1 1 0v2z"/>
							  <path fill-rule="evenodd" d="M.146 8.354a.5.5 0 0 1 0-.708l3-3a.5.5 0 1 1 .708.708L1.707 7.5H10.5a.5.5 0 0 1 0 1H1.707l2.147 2.146a.5.5 0 0 1-.708.708l-3-3z"/>
							</svg>
						<p style="display: inline; vertical-align: bottom;">Đăng xuất</p>
                    </a>

                </div>

            </div>
        </div>
    
        <nav class="navbar navbar-expand-sm bg-dark navbar-dark justify-content-end">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
                <span class="navbar-toggler-icon"></span>
            </button>
             <a class = "m-auto text-white navbar-brand">${user.name}</a>
            <div class="collapse navbar-collapse justify-content-end" id="collapsibleNavbar">
                <ul class="navbar-nav">
                    <li class="nav-item item">
                        <a class="nav-link" href="#">MUA VÉ</a>
                    </li>
                    <li class="nav-item dropdown item">
                        <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">PHIM</a>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="#">Action</a>
                            <a class="dropdown-item" href="#">Another action</a>
                            <a class="dropdown-item" href="#">Something else here</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#">Separated link</a>
                        </div>
                    </li>
                    
                    <li class="nav-item item">
                        <a class="nav-link" href="#">GÓC ĐIỆN ẢNH</a>
                    </li>
                    
                    <li class="nav-item item">
                        <a class="nav-link" href="#">SỰ KIÊN</a>
                    </li>
                    
                    <li class="nav-item item">
                        <a class="nav-link" href="#">RẠP/GIÁ VÉ</a>
                    </li>
                    
                    <li class="nav-item item">
                        <a class="nav-link" href="#">HỖ TRỢ</a>
                    </li>
                    
                    <li class="nav-item item">
                        <a class="nav-link" href="#">THÀNH VIÊN</a>
                    </li>
                </ul>
            </div>
        </nav>
    
        <div id="carouselExample" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators demo">
                <li data-target="#carouselExample" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExample" data-slide-to="1"></li>
                <li data-target="#carouselExample" data-slide-to="2"></li>
            </ol>
        
            <div class="carousel-inner view">
                <div class="carousel-item active">
                    <img src="https://cdn.galaxycine.vn/media/2022/11/21/2048wx682h_1668999612942.jpg" alt="">
                </div>
                <div class="carousel-item poster" >
                    <img src="https://cdn.galaxycine.vn/media/2022/11/10/2048x6822_1668066540867.jpg" alt="">
                </div>
                <div class="carousel-item poster">
                    <img src="https://cdn.galaxycine.vn/media/2022/11/23/11111_1669186351477.jpg" alt="">
                </div>
            </div>
    
            <a class="carousel-control-prev" href="#carouselExample" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
        
            <a class="carousel-control-next" href="#carouselExample" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    
        <div class="pl-5 pr-5 ml-5 mr-5">
            <h3 class="p-3 mt-4" style="color: #F0A851;"> <u>PHIM ĐANG CHIẾU </u></h3>
            <div class="row">
                <div class="col-md-4 col-sm-6 col-12 poster">
                    <img class="movie" src="https://cdn.galaxycine.vn/media/2022/11/21/450x300_1668999445553.jpg" alt="Avata">
                    <div class="middle">
                    <a href="/user/booking_ticket"><button type="button" class="btn btn-warning border">Xem thêm</button></a>
                    </div>
                    <p>ONE PIECE FILM RED</p>
                </div>
                <div class="col-md-4 col-sm-6 col-12 poster">
                    <img class="movie" src="https://cdn.galaxycine.vn/media/2022/11/10/300x450_1668066486371.jpg" alt="Avata">
                    <p>BLACK PANTHER: WAKANDA FOREVER</p>
                    <div class="middle">
                    <a href="/user/booking_ticket"><button type="button" class="btn btn-warning border">Xem thêm</button></a>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6 col-12 poster">
                    <img class="movie" src="https://cdn.galaxycine.vn/media/2022/11/15/1200x1800_1668505781787.jpg" alt="Avata">
                    <div class="middle">
                    <a href="/user/booking_ticket"><button type="button" class="btn btn-warning border">Xem thêm</button></a>
                    </div>
                    <p>SĂN LÙNG</p>
                </div>
                <div class="col-md-4 col-sm-6 col-12 poster">
                    <img class="movie" src="https://cdn.galaxycine.vn/media/2022/10/12/hpm_1665546188603.jpg" alt="Avata">
                    <p>HẠNH PHÚC MÁU</p>
				<div class="middle">
                    <a href="/user/booking_ticket"><button type="button" class="btn btn-warning border">Xem thêm</button></a>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6 col-12 poster">
                    <img class="movie" src="https://cdn.galaxycine.vn/media/2022/11/16/anne-co-gai-muon-mat-2_1668590403245.jpg" alt="Avata">
                    <p>ANNE - CÔ GÁI MUÔN MẶT</p>
                    <div class="middle">
                    <a href="/user/booking_ticket"><button type="button" class="btn btn-warning border">Xem thêm</button></a>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6 col-12 poster">
                    <img class="movie" src="https://cdn.galaxycine.vn/media/2022/11/21/300x450_1669022512155.jpg" alt="Avata">
                    <p>TRO TÀN RỰC RỠ</p>
                    <div class="middle">
                    <a href="/user/booking_ticket"><button type="button" class="btn btn-warning border">Xem thêm</button></a>
                    </div>
                </div>
            </div>
        </div>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="../css/home.css">
    </body>
    </html>