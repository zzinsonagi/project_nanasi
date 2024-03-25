<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ include
file="../main/header.jsp"%>

<!-- ----------------------------------- content ----------------------------------- -->

<div class="detail">
  <div class="container">
    <div class="row" style="padding: 0 20px">
      <!-- 이미지 창 -->

      <div class="col-md-7">
        <div class="main-image">
          <img src="../../static/images/michieda/michieda1.png" alt="Image 1" />
        </div>

        <!-- 스크립트 이미지 경로도 수정해야함 -->
        <ul class="thumbnails">
          <li class="thumbnail" data-index="0">
            <img src="../../static/images/michieda/michieda1.png" alt="Thumbnail 1" />
          </li>
          <li class="thumbnail" data-index="1">
            <img src="../../static/images/michieda/michieda2.png" alt="Thumbnail 2" />
          </li>
          <li class="thumbnail" data-index="2">
            <img src="../../static/images/michieda/michieda3.png" alt="Thumbnail 3" />
          </li>
          <li class="thumbnail" data-index="3">
            <img src="../../static/images/michieda/michieda4.png" alt="Thumbnail 4" />
          </li>
        </ul>
      </div>

      <!-- 상품명 옵션선택 등 -->

      <div class="col-md-5">
        <div class="productNamePricePath">
          <div class="productPath float-end">
            <a href="../category/allCate/all.html">Home > Home Appiances > Living</a>
          </div>
          <div class="clearfix" style="margin-bottom: 28px"></div>
          <div class="productPath" style="margin-bottom: 16px">
            <a href="../category/allCate/all.html">NANIWA DANSHI > </a>
          </div>
          <div class="productName">
            <h2>나니와단시 미치에다 슌스케</h2>
          </div>
          <div class="productPrice">
            <p class="float-end">728,725,000원</p>
            <div class="clearfix"></div>
            <h2 class="float-end">월 72,500원</h2>
            <div class="clearfix"></div>
          </div>
        </div>

        <div class="line">
          <div class="productColorPeriod">
            <form name="" method="post">
              <div class="productColor">
                <p>컬러</p>
                <div class="color">
                  <span>색상 선택</span>
                  <div class="color-choice">
                    <button class="midnight" id="midnight" name="color" style="background: #2e3641"></button>
                    <button class="starlight" id="starlight" name="color" style="background: #f0e5d3"></button>
                    <button class="spacegray" id="spacegray" name="color" style="background: #7d7e80"></button>
                    <button class="silver" id="silver" name="color" style="background: #e3e4e6"></button>
                  </div>
                </div>
              </div>

              <div class="productPeriod">
                <p>구독 기간</p>
                <ul
                  class="nav nav-pills gap-2 p-2 bg-primary rounded-5"
                  id=""
                  role="tablist"
                  style="
                    --bs-nav-link-color: var(--bs-white);
                    --bs-nav-pills-link-active-color: var(--bs-primary);
                    --bs-nav-pills-link-active-bg: var(--bs-white);
                  "
                >
                  <li class="period" role="presentation">
                    <button
                      class="nav-link active rounded-5"
                      id="three"
                      data-bs-toggle="tab"
                      type="button"
                      role="tab"
                      aria-selected="true"
                    >
                      3개월
                    </button>
                  </li>
                  <li class="period" role="presentation">
                    <button
                      class="nav-link rounded-5"
                      id="six"
                      data-bs-toggle="tab"
                      type="button"
                      role="tab"
                      aria-selected="false"
                    >
                      6개월
                    </button>
                  </li>
                  <li class="period" role="presentation">
                    <button
                      class="nav-link rounded-5"
                      id="nine"
                      data-bs-toggle="tab"
                      type="button"
                      role="tab"
                      aria-selected="false"
                    >
                      9개월
                    </button>
                  </li>
                  <li class="period" role="presentation">
                    <button
                      class="nav-link rounded-5"
                      id="contact-tab2"
                      data-bs-toggle="tab"
                      type="button"
                      role="tab"
                      aria-selected="false"
                    >
                      12개월
                    </button>
                  </li>
                </ul>
              </div>
            </form>
          </div>

          <div class="productInfo">
            <form name="" method="get">
              <div class="antiDeliveryDate">
                <span>예상 배송 날짜</span>
                <p class="anti-right">2024.03.11 (월)</p>
              </div>
              <div class="antiSubscriptDate">
                <span>예상 구독 기간</span>
                <p class="anti-right">2024.03.11(월) ~ 2024.06.11(화) / 3개월</p>
              </div>
              <div class="line"></div>
              <div class="monthPrice">
                <p>월 구독료</p>
                <h2 class="anti-right">월 72,500원</h2>
              </div>
            </form>
          </div>

          <div class="productPayButton">
            <button type="submit" class="toList" style="background: #000">목록에 넣기</button>
            <button
              type="submit"
              class="toSub float-end"
              style="background: #185fff"
              onclick="window.location.href='../payment/payment.html'"
            >
              지금 구독하기
            </button>
          </div>
        </div>
      </div>
    </div>
  </div>

  <script>
    const thumbnails = document.querySelectorAll(".thumbnail");
    const mainImage = document.querySelector(".main-image img");

    thumbnails.forEach((thumbnail) => {
      thumbnail.addEventListener("click", () => {
        const index = thumbnail.getAttribute("data-index");
        const imageUrl = `../../static/images/michieda/michieda${parseInt(index) + 1}.png`;

        mainImage.style.opacity = 0; // 이미지 투명도 조정
        setTimeout(() => {
          mainImage.src = imageUrl;
          mainImage.style.opacity = 1; // 투명도를 1로 다시 설정하여 페이드 효과
        }, 200); // 0.5초 뒤에 이미지 변경

        thumbnails.forEach((thumbnail) => {
          thumbnail.classList.remove("selected");
        });
        thumbnail.classList.add("selected");
      });
    });
  </script>

  <script>
    const colorButtons = document.querySelectorAll(".color-choice button");
    const colorText = document.querySelector(".color span");

    colorButtons.forEach((button) => {
      button.addEventListener("click", (event) => {
        const selectedColor = event.target.className; // 선택된 버튼의 클래스 이름 추출
        colorText.textContent = selectedColor; // "색상 선택" 글자 변경

        switch (selectedColor) {
          case "midnight":
            colorText.textContent = "미드나이트";
            break;
          case "starlight":
            colorText.textContent = "스타라이트";
            break;
          case "spacegray":
            colorText.textContent = "스페이스그레이";
            break;
          case "silver":
            colorText.textContent = "실버";
            break;
          default:
            colorText.textContent = "색상 선택";
            break;
        }
      });
    });

    // 컬러 선택 버튼 클릭 시 폼 제출 방지
    $(document).ready(function () {
      $(".color-choice button").click(function (event) {
        event.preventDefault();
      });
    });
  </script>

  <!-- 상품정보, 리뷰, qna  -->

  <div class="productInfoReviewQna">
    <div class="box">
      <!-- 상품정보, 리뷰, qna 분류 버튼-->
      <div class="productGroup">
        <div class="topBox">
          <input type="button" value="상품정보" data-n="1" class="topBtn topBtn1" />
          <input type="button" value="리뷰" data-n="2" class="topBtn topBtn2" />
          <input type="button" value="Q&A" data-n="3" class="topBtn topBtn3" />
        </div>
        <div class="line" style="width: 1280px; margin: 0 auto"></div>
      </div>

      <!-- 상품정보 content -->
      <div class="content detailInfo">
        <div class="contentBox1">
          <img src="../../static/images/detailInfo.png" alt="상품정보 이미지" />
        </div>
      </div>

      <!-- 리뷰 content -->
      <div class="content detailReview">
        <div class="contentBox2">
          <h4>상품리뷰 3건</h4>

          <!-- 리뷰 반복 -->

          <form name="review" method="get">
            <div class="review">
              <div class="reviewWrite">
                <!-- 별점 -->
                <div class="star">
                  <span class="star-input">
                    <span class="input">
                      <input type="radio" name="star-input" value="1" id="p1" />
                      <label for="p1">1</label>
                      <input type="radio" name="star-input" value="2" id="p2" />
                      <label for="p2">2</label>
                      <input type="radio" name="star-input" value="3" id="p3" />
                      <label for="p3">3</label>
                      <input type="radio" name="star-input" value="4" id="p4" />
                      <label for="p4">4</label>
                      <input type="radio" name="star-input" value="5" id="p5" />
                      <label for="p5">5</label>
                    </span>
                    <output for="star-input"><b>0</b></output>
                  </span>
                </div>

                <div class="clear-class"></div>

                <div class="writerInfo">
                  <p>도준우 | 2024-03-17 |</p>
                  <button type="button"><p>신고</p></button>
                  <p>|</p>
                  <button type="button"><p>수정</p></button>
                  <p>|</p>
                  <button type="button"><p>삭제</p></button>
                </div>
                <div class="writerInfo">
                  <p>컬러 : 스타라이트 / 구독기간 : 3개월</p>
                </div>

                <div class="clear-class"></div>

                <div class="reviewContent">
                  <p>
                    만족스러운 리뷰 만족스러운 리뷰 만족스러운 리뷰 만족스러운 리뷰 만족스러운 리뷰 만족스러운 리뷰
                    만족스러운 리뷰 만족스러운 리뷰 만족스러운 리뷰 만족스러운 리뷰 만족스러운 리뷰 만족스러운 리뷰
                    만족스러운 리뷰 만족스러운 리뷰 만족스러운 리뷰 만족스러운 리뷰 만족스러운 리뷰 만족스러운 리뷰
                    만족스러운 리뷰 만족스러운 리뷰
                  </p>
                </div>
              </div>
              <!--<div class="thumbnailImg">
							<img src="../../static/images/michieda/michieda1.png" alt="썸네일 이미지">
						</div>-->
            </div>
          </form>
          <div class="line"></div>
          <!-- 리뷰 반복 끝 -->

          <div class="paging2">
            <a href=""><i class="bi bi-chevron-double-left"></i></a>
            <a href="" class="active">1</a>
            <a href="">2</a>
            <a href="">3</a>
            <a href="">4</a>
            <a href="">5</a>
            <a href=""><i class="bi bi-chevron-double-right"></i></a>
          </div>
        </div>
      </div>

      <!-- 별점 스크립트 -->
      <script src="js/jquery-1.11.3.min.js"></script>
      <script src="js/star.js"></script>

      <!-- Q&A content, adminst-->
      <div class="content detailQna">
        <div class="contentBox3">
          <div class="qna">
            <div class="qnaTitle">
              <h4>Q&A 3건</h4>
              <button onclick="window.location.href='../detail/detailQna.html'">Q&A 작성하기</button>
            </div>
            <div class="qnaWrite">
              <div class="line"></div>
              <div class="qnaWriteTitle">
                <p style="width: 15%">답변상태</p>
                <p style="width: 60%">제목</p>
                <p style="width: 10%">작성자</p>
                <p style="width: 15%">등록일</p>
              </div>
              <div class="line"></div>

              <form name="qnaList" method="get">
                <!-- Q&A list 반복되는 부분 -->
                <div class="qnaList">
                  <div class="qnaState">
                    <!-- 답변상태 -->
                    <span class="qnaListWait">미답변</span>
                  </div>
                  <div class="qnaListTitle">
                    <!-- 제목 -->
                    <a href="../detail/detailQnaView.html">배송일부터 구독 시작인가요?</a>
                  </div>
                  <div class="qnaListWriter">
                    <!-- 작성자 -->
                    <p>도준우</p>
                  </div>
                  <div class="qnaListDate">
                    <!-- 등록일 -->
                    <p>2024.03.18</p>
                  </div>
                </div>
                <div class="line"></div>
                <!-- Q&A list 반복되는 부분 끝 -->

                <!-- 답변완료 버튼만 뽑고 삭제할 부분 -->
                <div class="qnaList">
                  <div class="qnaState">
                    <!-- 답변상태 -->
                    <span class="qnaListCom">답변완료</span>
                  </div>
                  <div class="qnaListTitle">
                    <!-- 제목 -->
                    <a href="../detail/detailQnaView.html"
                      >주문하면 보통 언제부터 배송되나요? 구독 한달은 30일 기준인가요?</a
                    >
                  </div>
                  <div class="qnaListWriter">
                    <!-- 작성자 -->
                    <p>도준우</p>
                  </div>
                  <div class="qnaListDate">
                    <!-- 등록일 -->
                    <p>2024.03.18</p>
                  </div>
                </div>
                <div class="line"></div>
                <!-- 답변완료 버튼만 뽑고 삭제할 부분 끝 -->
              </form>

              <div class="paging2">
                <a href=""><i class="bi bi-chevron-double-left"></i></a>
                <a href="" class="active">1</a>
                <a href="">2</a>
                <a href="">3</a>
                <a href="">4</a>
                <a href="">5</a>
                <a href=""><i class="bi bi-chevron-double-right"></i></a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <script>
    $(document).ready(function () {
      var topInx = 1;
      var prvTopInx = 1;

      /* 초기설정 */
      $(".content").hide();
      $(".detailInfo").show();

      $(".topBtn").click(function () {
        $(".topBtn").removeClass("active");
        $(this).addClass("active");

        prvTopInx = topInx;
        topInx = parseInt($(this).attr("data-n"));
        contentChange();
      });

      function contentChange() {
        $(".content").hide();
        $(".detailInfo").show(); // 기본적으로 상품정보는 항상 보이도록 설정

        // 클릭된 버튼에 따라 해당 내용을 보이도록 설정
        if (topInx === 1) {
          $(".detailInfo").show();
        } else if (topInx === 2) {
          $(".detailInfo").hide();
          $(".detailReview").show();
        } else if (topInx === 3) {
          $(".detailInfo").hide();
          $(".detailQna").show();
        }
      }
    });
  </script>

  <script>
    $(document).ready(function () {
      $(".topBtn:first").addClass("active");

      $(".topBtn").click(function () {
        $(".topBtn").removeClass("active");
        $(this).addClass("active");
        console.log("Clicked topBtn with data-n: " + $(this).data("n"));
      });
    });
  </script>

  <!-- ----------------------------------- content 끝 ----------------------------------- -->
  <%@ include file="../main/footer.jsp"%>
</div>
