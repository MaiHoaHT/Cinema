<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Đặt Vé</title>
  <link rel="stylesheet" href="../css/book_ticket.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
</head>

<body>
  <section id="section">
    <div class="container">

      <div class="leftCont">
        <div class="leftMainCont">
          <div class="legendContainer">
            <ul>
              <li>
                <div class="seat legend"></div>
                <small>Còn trống</small>
              </li>
              <li>
                <div class="seat legend selected"></div>
                <small>Đang chọn</small>
              </li>
              <li>
                <div class="seat legend occupied"></div>
                <small>Ghế đã chọn</small>
              </li>
            </ul>
          </div>

          <div class="mainSeatCont">
            <div class="screen">
              <small>MÀN HÌNH</small>
            </div>
            <div class="seatCont" id="seatCont">
              <div class="seatRowCont1 seatRowCont">
                <div class="row">
                  <div class="seat"></div>
                  <div class="seat occupied"></div>
                  <div class="seat"></div>
                  <div class="seat"></div>
                  <div class="seat"></div>
                  <div class="seat"></div>
                  <div class="seat"></div>
                  <div class="seat"></div>
                </div>
                <div class="row">
                  <div class="seat"></div>
                  <div class="seat occupied"></div>
                  <div class="seat"></div>
                  <div class="seat"></div>
                  <div class="seat"></div>
                  <div class="seat"></div>
                  <div class="seat"></div>
                  <div class="seat"></div>
                </div>
              </div>
              <div class="seatRowCont2 seatRowCont">
                <div class="row">
                  <div class="seat"></div>
                  <div class="seat occupied"></div>
                  <div class="seat"></div>
                  <div class="seat"></div>
                  <div class="seat"></div>
                  <div class="seat"></div>
                  <div class="seat"></div>
                  <div class="seat"></div>
                </div>
                <div class="row">
                  <div class="seat"></div>
                  <div class="seat occupied"></div>
                  <div class="seat"></div>
                  <div class="seat"></div>
                  <div class="seat"></div>
                  <div class="seat"></div>
                  <div class="seat"></div>
                  <div class="seat"></div>
                </div>
                <div class="row">
                  <div class="seat"></div>
                  <div class="seat occupied"></div>
                  <div class="seat"></div>
                  <div class="seat"></div>
                  <div class="seat"></div>
                  <div class="seat"></div>
                  <div class="seat"></div>
                  <div class="seat"></div>
                </div>
                <div class="row">
                  <div class="seat"></div>
                  <div class="seat occupied"></div>
                  <div class="seat"></div>
                  <div class="seat"></div>
                  <div class="seat"></div>
                  <div class="seat"></div>
                  <div class="seat"></div>
                  <div class="seat"></div>
                </div>
              </div>
              <div class="seatRowCont3 seatRowCont">
                <div class="row">
                  <div class="seat"></div>
                  <div class="seat occupied"></div>
                  <div class="seat"></div>
                  <div class="seat"></div>
                  <div class="seat"></div>
                  <div class="seat"></div>
                  <div class="seat"></div>
                  <div class="seat"></div>
                </div>
                <div class="row">
                  <div class="seat"></div>
                  <div class="seat occupied"></div>
                  <div class="seat"></div>
                  <div class="seat"></div>
                  <div class="seat"></div>
                  <div class="seat"></div>
                  <div class="seat"></div>
                  <div class="seat"></div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="rightCont">
        <div class="confirmCont">
          <div class="rightTopCont">


            <div class="movieInfo">
              <div class="selectMovie">
                <label>
                  <p>CHỌN PHIM</p>
                  <select id="selectMovie"></select>
                </label>
              </div>
              <div class="movieName">
                <p>TÊN PHIM</p>
                <h1 id="movieName">AVATAR</h1>
              </div>
              <div class="moviePrice">
                <p>GIÁ</p>
                <h1 id="moviePrice">120,000 VNĐ</h1>
              </div>
              <div class="dateCont">
                <p>NGÀY CHIẾU</p>
                <p class="dateOn">Wed , 31th march</p>

              </div>
            </div>
          </div>
          <div class="rightBottomCont">
            <div class="selectedSeatCont">
              <p>GHẾ ĐÃ CHỌN</p>
              <div class="selectedSeatsHolder" id="selectedSeatsHolder">
                <span class="noSelected">kHÔNG CÓ</span>
              </div>
            </div>
            <div class="numberOfSeatsCont">
              <div class="numberOfSeatEl">
                <p><span id="numberOfSeat">0</span> Ghế</p>
              </div>
              <div class="priceCont">
                <p id="totalPrice">0 VNĐ</p>
              </div>
            </div>
            <div class="buttonCont">
              <div class="cancelBtn">
 					<a href="/user/"><button type="button" id = "cancelBtn" class="btn btn-warning border">Hủy</button></a>
              </div>
              <div class="proceedBtnEl">
                <button id="proceedBtn">TIẾP TỤC</button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <script src="../js/book_ticket.js"></script>
</body>

</html>