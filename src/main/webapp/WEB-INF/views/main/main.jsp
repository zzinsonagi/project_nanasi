<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ include
file="../main/header_JH.jsp"%>
<!-- ----------------------------------- content ----------------------------------- -->

<div class="main">
  <!-- 메인 비주얼 -->
  <div class="mainVisual">
    <div class="game">
      <div class="mainImg">
        <img src="/resources/images/game.png" />
      </div>
      <div class="mainText">
        <strong>Game</strong><br /><br /><br />
        <span class="prodThin">시간순삭! 커비의 전설</span><br />
        <span class="prodBold">닌텐도 스위치 OLED</span><br />
        <p>실시간으로 시간이 녹아 없어지는 걸 경험할 수 있습니다!</p>
        <div class="mainButton">
          <button onclick="window.location.href='../category/allCate/all.html'">
            SUBSCRIPT NOW <i class="bi bi-arrow-right"></i>
          </button>
        </div>
      </div>
    </div>

    <div class="pure">
      <div class="mainImg">
        <img src="/resources/images/pure.png" style="position: absolute; top: 32px; left: 572px" />
      </div>
      <div class="mainText">
        <strong>Pure</strong><br /><br /><br />
        <span class="prodThin">집 안의 공기, 걱정 놓으세요</span><br />
        <span class="prodBold">LG 퓨리케어 360˚</span><br />
        <p>집 안의 공기, 걱정 놓으세요. Pure가 책임집니다.</p>
        <div class="mainButton">
          <button onclick="window.location.href='../category/allCate/all.html'">
            SUBSCRIPT NOW <i class="bi bi-arrow-right"></i>
          </button>
        </div>
      </div>
    </div>

    <div class="clean">
      <div class="mainImg">
        <img src="/resources/images/clean.png" style="position: absolute; top: 92px; left: 672px" />
      </div>
      <div class="mainText">
        <strong>Clean</strong><br /><br /><br />
        <span class="prodThin">청소는 잊어버리고 여유를 즐겨보세요</span><br />
        <span class="prodBold">아이룸 옵티머스 울트라</span><br />
        <p>깔끔한 집으로 당신의 시간을 소중하게 만들어 드립니다!</p>
        <div class="mainButton">
          <button onclick="window.location.href='../category/allCate/all.html'">
            SUBSCRIPT NOW <i class="bi bi-arrow-right"></i>
          </button>
        </div>
      </div>
    </div>

    <div class="camera">
      <div class="mainImg">
        <img src="/resources/images/camera.jpg" style="position: absolute; top: 32px; left: 700px" />
      </div>
      <div class="mainText">
        <strong>Camera</strong><br /><br /><br />
        <span class="prodThin">지나가는 순간, 순간을 멈추는 매력!</span><br />
        <span class="prodBold">폴라로이드 원스텝</span><br />
        <p>즐거움이 기록되는 곳! 추억을 아름답게 기록하는 당신의 파트너.</p>
        <div class="mainButton">
          <button onclick="window.location.href='../category/allCate/all.html'">
            SUBSCRIPT NOW <i class="bi bi-arrow-right"></i>
          </button>
        </div>
      </div>
    </div>

    <div class="kitchen">
      <div class="mainImg" style="position: absolute">
        <img src="/resources/images/kitchen.jpg" />
      </div>
      <div class="mainText">
        <strong>Kitchen</strong><br /><br /><br />
        <span class="prodThin">즐거운 요리 경험을 선사하는 스마트 공간</span><br />
        <span class="prodBold">쿠킨 팝업 토스터기</span><br />
        <p>집에서도 요리가 즐거워지는 순간! 새로운 요리 체험을 시작하세요!</p>
        <div class="mainButton">
          <button onclick="window.location.href='../category/allCate/all.html'">
            SUBSCRIPT NOW <i class="bi bi-arrow-right"></i>
          </button>
        </div>
      </div>
    </div>
  </div>

  <script>
    const elements = document.querySelectorAll(".game, .pure, .clean, .camera, .kitchen");

    // Hide all elements except the first one
    elements.forEach((element, index) => {
      if (index !== 0) {
        element.style.display = "none";
      }
    });

    let index = 0;

    function fadeInElement(element) {
      element.style.display = "block";
      element.classList.remove("fade-out");
      element.classList.add("fade-in");
    }

    function fadeOutElement(element) {
      element.classList.remove("fade-in");
      element.classList.add("fade-out");
    }

    function showNextElement() {
      fadeOutElement(elements[index]);
      index = (index + 1) % elements.length;
      fadeInElement(elements[index]);
    }

    // Automatically show next element every few seconds (adjust as needed)
    setInterval(showNextElement, 1500);
  </script>

  <div class="clearfix"></div>

  <!-- 브랜드 로고 -->
  <div class="mainLogo">
    <img src="/resources/images/philips.png" />
    <img src="/resources/images/dyson.png" />
    <img src="/resources/images/apple.png" />
    <img src="/resources/images/playstation.png" />
    <img src="/resources/images/nintendo.png" />
  </div>

  <!-- 브랜드스토리 -->
  <div class="mainStory">
    <div class="storyTitle">
      <h1>Wassup?</h1>
      <img src="/resources/images/mainlogo.png" />
    </div>
    <div class="storyContent"></div>
    <div class="storyCard">
      <div class="flip">
        <div class="card">
          <div class="front">
            <h1><i class="bi bi-phone-vibrate-fill"></i></h1>
            <h2>소형가전 전문</h2>
            <P>Specialized in Small Appliances</P>
          </div>
          <div class="back">
            <p>소형가전 전문</p>
            <span class="backContent">작지만 효율적, 소형가전 구독 서비스로 새로운 생활의 편의를 경험하세요!</span>
          </div>
        </div>
      </div>

      <div class="flip">
        <div class="card">
          <div class="front">
            <h1><i class="bi bi-calendar-week-fill"></i></h1>
            <h2>간편한 단기구독</h2>
            <P>Easy Short-term Subscription</P>
          </div>
          <div class="back">
            <p>간편한 단기구독</p>
            <span class="backContent">짧은 기간, 간단한 절차! <br />다양한 제품을 구독으로 경험하세요!</span>
          </div>
        </div>
      </div>

      <div class="flip">
        <div class="card">
          <div class="front">
            <h1><i class="bi bi-box-seam-fill"></i></h1>
            <h2>편리한 배송 및 수거</h2>
            <P>Convenient Delivery and Collection</P>
          </div>
          <div class="back">
            <p>편리한 배송 및 수거</p>
            <span class="backContent">결제 후 배송은 집 앞에서, 수거도 집 앞에서 간편하게!</span>
          </div>
        </div>
      </div>

      <div class="flip">
        <div class="card">
          <div class="front">
            <h1><i class="bi bi-tools"></i></h1>
            <h2>꼼꼼한 사후처리</h2>
            <P>Meticulous Post-Processing</P>
          </div>
          <div class="back">
            <p>꼼꼼한 사후처리</p>
            <span class="backContent">신속하고 꼼꼼한 사후처리로 고객 만족을 최우선으로 합니다!</span>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!--mainStory-->
</div>

<!-- ----------------------------------- content 끝 ----------------------------------- -->
<%@ include file="../main/footer.jsp"%>
