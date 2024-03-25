<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ include
file="../main/header.jsp"%>

<!-- ----------------------------------- content ----------------------------------- -->

<div class="title-container">
  <div class="title">
    <h2>Category</h2>
    <p>All Category > Video & Photography > etc</p>
  </div>
</div>

<div class="category">
  <div class="container" style="padding-right: 20px">
    <div class="row" style="padding: 0 20px">
      <div class="col-md-3">
        <a class="category-all" href="../allCate/all.html">All Category</a>
        <div class="line line-category"></div>
        <ul class="navbar-nav pcCate">
          <li><a class="category-big" href="../pcCate/pcAll.html"> PC & Peripherals</a></li>
          <li><a class="category-small" href="../pcCate/computer.html">Computer</a></li>
          <li><a class="category-small" href="../pcCate/pcEtc.html">etc</a></li>
        </ul>
        <ul class="navbar-nav homeCate">
          <li><a class="category-big" href="../homeCate/homeAll.html"> Home Appliances</a></li>
          <li><a class="category-small" href="../homeCate/kitchen.html">Kitchen</a></li>
          <li><a class="category-small" href="../homeCate/living.html">Living</a></li>
          <li><a class="category-small" href="../homeCate/homeEtc.html">etc</a></li>
        </ul>
        <ul class="navbar-nav videoCate">
          <li><a class="category-big" href="../videoCate/videoAll.html"> Video & Photography</a></li>
          <li><a class="category-small" href="../videoCate/camera.html">Camera</a></li>
          <li><a class="category-small" href="../videoCate/videoRecorder.html">Video recorder</a></li>
          <li><a class="category-small" href="../videoCate/videoPlayer.html">Video player</a></li>
          <li><a class="category-small" href="../videoCate/videoEtc.html" style="color: #185fff">etc</a></li>
        </ul>
        <ul class="navbar-nav healthCate">
          <li><a class="category-big" href="../healthCate/healthAll.html"> Health & Beauty</a></li>
          <li><a class="category-small" href="../healthCate/fitness.html">Fitness</a></li>
          <li><a class="category-small" href="../healthCate/beauty.html">Beauty Device</a></li>
          <li><a class="category-small" href="../healthCate/healthEtc.html">etc</a></li>
        </ul>
        <ul class="navbar-nav gameCate">
          <li><a class="category-big" href="../gameCate/gameAll.html"> Console & Game</a></li>
          <li><a class="category-small" href="../gameCate/console.html">Console</a></li>
          <li><a class="category-small" href="../gameCate/gamePack.html">Game Pack</a></li>
          <li><a class="category-small" href="../gameCate/gameEtc.html">etc</a></li>
        </ul>
      </div>

      <div class="col-md-9">
        <div class="condition float-end">
          <select class="w3-input-e3 box" id="domain-list">
            <option value="allProduct">모든 상품</option>
            <option value="review">리뷰 많은 순</option>
            <option value="qrade">평점 높은 순</option>
            <option value="newProduct">새상품순</option>
          </select>
        </div>

        <div class="clearfix" style="margin-bottom: 40px"></div>

        <div class="row">
          <!-- 상품 리스트 반복 요소 -->
          <div class="col-md-4">
            <div class="product">
              <a class="productImg" href="../../detail/detail.html">
                <img src="../../../static/images/michieda/michi.png" />
              </a>

              <div class="clearfix"></div>

              <a href="../../detail/detail.html">미치에다 슌스케</a>

              <div class="clearfix" style="margin-bottom: 4px"></div>

              <span class="price">72,500원</span>
              <p>월 구독료</p>
            </div>
          </div>
          <!-- 상품 리스트 반복 요소 끝 -->

          <div class="paging">
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

<!-- ----------------------------------- content 끝 ----------------------------------- -->
<%@ include file="../main/footer.jsp"%>
