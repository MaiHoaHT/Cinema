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
                    <source media="(max-width: 768px)" srcset="images/banner1.jpg">
                    <img class="logo-banner" src="images/banner2.jpg" alt="Banner Hay cinema">
                </picture>
            </div>
            
            <div class="input-group col-md-5 col-sm-5 col-3" style="display: inline;">
                <div class="form-group has-search">
                    <span class="fa fa-search form-control-feedback"></span>
                    <input type="text" class="form-control" placeholder="Tìm tên phim, diễn viên...">
                </div>
            </div>
            
            <div class="col-md-3 col-sm-4 col-5">
                <a href="/login" class="login">
                    <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-person-add" viewBox="0 0 16 16">
                        <path d="M12.5 16a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7Zm.5-5v1h1a.5.5 0 0 1 0 1h-1v1a.5.5 0 0 1-1 0v-1h-1a.5.5 0 0 1 0-1h1v-1a.5.5 0 0 1 1 0Zm-2-6a3 3 0 1 1-6 0 3 3 0 0 1 6 0ZM8 7a2 2 0 1 0 0-4 2 2 0 0 0 0 4Z"/>
                        <path d="M8.256 14a4.474 4.474 0 0 1-.229-1.004H3c.001-.246.154-.986.832-1.664C4.484 10.68 5.711 10 8 10c.26 0 .507.009.74.025.226-.341.496-.65.804-.918C9.077 9.038 8.564 9 8 9c-5 0-6 3-6 4s1 1 1 1h5.256Z"/>
                    </svg>
                    <p style="display: inline; vertical-align: bottom;">Đăng nhập</p>
                </a>
            </div>
        </div>
    </div>

    <nav class="navbar navbar-expand-sm bg-dark navbar-dark justify-content-end">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
            <span class="navbar-toggler-icon"></span>
        </button>

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
            <div class="carousel-item">
                <img src="https://cdn.galaxycine.vn/media/2022/11/10/2048x6822_1668066540867.jpg" alt="">
            </div>
            <div class="carousel-item">
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
    


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/home.css">
</body>
</html>