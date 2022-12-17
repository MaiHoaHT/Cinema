<%@page import="com.fasterxml.jackson.databind.deser.impl.CreatorCandidate.Param"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
    integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="css/login.css">
  <title>Đăng nhập</title>
</head>
<style>
  a {
   color: #bb9a4e;
   font-style: italic;
}
a:hover {
  	color: wheat;
    text-decoration: none;
    }

    .btn-primary {
      width: 50%;
      margin-left: 25%;
      background-color: rgb(240, 168, 81) !important;
      color: rgb(41, 1, 0);
      border: none;
      margin-bottom: 10px;
    }

    .custom {
      text-align: center;
      color: rgb(240, 168, 81);
    }

    body {
      background-image: url('images/b2.png');
      background-repeat: no-repeat;
      background-attachment: fixed;
      background-size: 100% 100%;
    }

    .form-color {
      background-color: rgba(33, 33, 32, 0.75) !important;
      border-color: rgba(0, 0, 0, 0.75) !important;
    }

    p,
    label {
      color: white;
    }

    .form-control:focus {
      background-color: #f3eac4;
      outline: #e3d1bd;
    }

    .form-control:hover {
      background-color: #fff5cf;
    }

    .input-group-text {
      background-color: rgb(95, 80, 63);
    }

    .invalid-feedback {
      color: rgb(233, 15, 15) !important;
    }
    .error {
      color: rgb(233, 15, 15);
    }

</style>

<body>
  <div class="container">
    <div class="mt-5 p-4 border rounded w-50 mx-auto form-color">
      <h1 class="custom">ĐĂNG NHẬP</h1>
      <form action = "/login" class="needs-validation" method = "post" novalidate>
        <div class="form-group mt-3">
          <!-- <label for="username">Username</label> -->
          <div class="input-group mb-3">
            <div class="input-group-prepend">
              <span class="input-group-text">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="white" class="bi bi-person-circle"
                  viewBox="0 0 16 16">
                  <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z" />
                  <path fill-rule="evenodd"
                    d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z" />
                </svg>
              </span>
            </div>
            <input id="username" type="email" class="form-control" placeholder="Email" name = "username" required>
            <div class="valid-feedback"></div>
            <div class="invalid-feedback">Vui lòng nhập chính xác email</div>
          </div>
        </div>
        <div class="form-group mt-4">
          <!-- <label for="password">Password</label> -->
          <div class="input-group mb-3">
            <div class="input-group-prepend">
              <span class="input-group-text">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="white" class="bi bi-unlock-fill"
                  viewBox="0 0 16 16">
                  <path
                    d="M11 1a2 2 0 0 0-2 2v4a2 2 0 0 1 2 2v5a2 2 0 0 1-2 2H3a2 2 0 0 1-2-2V9a2 2 0 0 1 2-2h5V3a3 3 0 0 1 6 0v4a.5.5 0 0 1-1 0V3a2 2 0 0 0-2-2z" />
                </svg>
              </span>
            </div>
            <input id="password" type="password" class="form-control" name = "password" placeholder="Mật khẩu" required>

            <div class="valid-feedback"></div>
            <div class="invalid-feedback">Bạn chưa nhập mật khẩu</div>
          </div>
        </div>
               <p class="error"><% 
       		if(!(request.getParameter("error") == null)){
       			out.print("Tên đăng nhập hoặc mật khẩu không hợp lệ");
       		}else{
       			out.print("");
       		}
           %></p>
        <div class="form-group">
          <a href="">Quên mật khẩu?</a>
        </div>
        <button type="submit" class="btn btn-primary">Đăng nhập</button>
        <div class="form-group">
          <p>Bạn chưa có tài khoản? <a href="/register">Đăng ký ngay.</a></p>
        </div>
      </form>

    </div>
  </div>
  <script>
    // Disable form submissions if there are invalid fields
    (function () {
      'use strict';
      window.addEventListener('load', function () {
        // Get the forms we want to add validation styles to
        var forms = document.getElementsByClassName('needs-validation');
        // Loop over them and prevent submission
        var validation = Array.prototype.filter.call(forms, function (form) {
          form.addEventListener('submit', function (event) {
            if (form.checkValidity() === false) {
              event.preventDefault();
              event.stopPropagation();
            }
            form.classList.add('was-validated');
          }, false);
        });
      }, false);
    })();
  </script>
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
    integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
    crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
    integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
    crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
    integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
    crossorigin="anonymous"></script>

</body>

</html>