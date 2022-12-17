<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css" />
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
    <title>Đăng ký</title>
    <style>
        a {
            color: #bb9a4e;
            font-style: italic;
        }

        a:hover {
            color: black;
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
            margin-top: 10px;
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

        .form-control:focus {
            background-color: #f3eac4;
            outline: #e3d1bd;
        }

        .form-control:hover {
            background-color: #fff5cf;
        }

        label {
            color: white;
        }

        .invalid-feedback {
            color: rgb(233, 15, 15) !important;
        }

        #error-mess {
            color: rgb(233, 15, 15);
            font-size: small;
        }
    </style>
</head>

<body>
    <div class="container">
        <div class="mt-5 p-4 border rounded w-50 mx-auto form-color">
          <div>
          <p class="custom"><% 
          if(!(session.getAttribute("msg") == null)){
        	  out.println(session.getAttribute("msg"));
        	  session.removeAttribute("msg");
          }else{
        	  out.print("");
          }
           %></p>
          </div>
            <h1 class="custom">ĐĂNG KÝ</h1>
            <form action="createUserData" method="post" class="needs-validation" novalidate>
                <div class="form-group">
                    <label for="email">Email *</label>
                    <input type="email" class="form-control" placeholder="Nhập email" id="email" name="email" required>
                    <div class="valid-feedback"></div>
                    <div class="invalid-feedback">Vui lòng nhập chính xác email</div>
                </div>
                <div class="form-group">
                    <label for="name">Họ và tên *</label>
                    <input type="text" class="form-control" placeholder="Nhập họ và tên" id="name" name="name" required>
                    <div class="valid-feedback"></div>
                    <div class="invalid-feedback">Vui lòng nhập họ tên</div>
                </div>
                <div class="form-row">
                    <div class="col">
                        <div class="form-group">
                            <label for="password">Mật khẩu *</label>
                            <input type="password" class="form-control" placeholder="Nhập mật khẩu" id="password"
                                name="password" required>
                            <div class="valid-feedback"></div>
                            <div class="invalid-feedback">Bạn chưa nhập mật khẩu</div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="form-group">
                            <label for="confirmPassword"><br></label>
                            <input type="password" class="form-control" placeholder="Xác nhận mật khẩu"
                                id="confirmPassword" name="confirmPassword" required>
                            <div id="error-mess"></div>
                            <div class="invalid-feedback">Vui lòng xác nhận mật khẩu</div>
                        </div>
                    </div>
                </div>

                <div class="form-row">
                    <div class="col">
                        <div class="form-group">
                            <label for="phone">Số điện thoại</label>
                            <input type="number" class="form-control" placeholder="Số điện thoại" id="phone"
                                name="phone" required>
                            <div class="valid-feedback"></div>
                            <div class="invalid-feedback">Vui lòng nhập số điện thoại</div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="form-group">
                            <label for="birthday">Ngày sinh</label>
                            <input type="date" class="form-control" id="birthday" name="birthday" required>
                            <div class="valid-feedback"></div>
                            <div class="invalid-feedback">Vui lòng nhập ngày sinh</div>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label for="address">Địa chỉ</label>
                    <input type="text" class="form-control" placeholder="Địa chỉ" id="address" name="address" required>
                    <div class="valid-feedback"></div>
                    <div class="invalid-feedback">Vui lòng nhập địa chỉ</div>
                </div>
                <div class="form-group form-check">
                    <label class="form-check-label">
                        <input class="form-check-input" type="checkbox" name="remember" required>Tôi đồng ý với điều
                        khoản chính sách sử dụng
                        <div class="valid-feedback"></div>
                        <div class="invalid-feedback">Vui lòng nhấn đồng ý để tiếp tục</div>
                    </label>
                </div>
                <button type="submit" class="btn btn-primary">Đăng ký</button>
            </form>
        </div>
    </div>
    <script>
        function checkPassword() {
            var password1 = document.getElementById("password").value;
            var password2 = document.getElementById("confirmPassword").value;
            var error = document.getElementById("error-mess");

            if (password1 != password2) {
                error.innerHTML = "Mật khẩu xác nhận không trùng khớp";
                return false;
            }
            return true;
        }
        // Disable form submissions if there are invalid fields
        (function () {
            'use strict';
            window.addEventListener('load', function () {
                // Get the forms we want to add validation styles to
                var forms = document.getElementsByClassName('needs-validation');
                // Loop over them and prevent submission
                var validation = Array.prototype.filter.call(forms, function (form) {
                    form.addEventListener('submit', function (event) {
                        if (form.checkValidity() === false || checkPassword() === false) {
                            event.preventDefault();
                            event.stopPropagation();
                        }
                        form.classList.add('was-validated');
                    }, false);
                });
            }, false);
        })();
    </script>

</body>

</html>