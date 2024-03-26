<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ include
file="../main/header.jsp"%>

<!-- ----------------------------------- content ----------------------------------- -->

<div class="title-container">
  <div class="title">
    <h2>Subscribe & Payment</h2>
    <p>편리하게 구독이 시작됩니다</p>
  </div>
</div>

<div class="payment">
  <div class="container">
    <div class="row" style="padding: 0 20px">
      <!-- 주문자 정보, 배송지 -->
      <div class="col-md-8 payOrderDeliInfo">
        <div class="orderInfo">
          <h4>주문자 정보</h4>
          <div class="line"></div>

          <form name="orderInfo" method="get">
            <table>
              <colgroup>
                <col width="20%" />
                <col width="*" />
              </colgroup>
              <tbody>
                <tr>
                  <th>주문자명</th>
                  <td>도준우</td>
                </tr>
                <tr>
                  <td>
                    <div class="blank-height" style="height: 20px"></div>
                  </td>
                </tr>
                <tr>
                  <th>전화번호</th>
                  <td>010-0728-0725</td>
                </tr>
                <tr>
                  <td>
                    <div class="blank-height" style="height: 20px"></div>
                  </td>
                </tr>
                <tr>
                  <th>이메일</th>
                  <td>naniwafamily@naniwa.com</td>
                </tr>
              </tbody>
            </table>
          </form>

          <div class="line"></div>
        </div>

        <div class="deliInfo">
          <h4>배송지</h4>
          <div class="line"></div>

          <form name="deliInfo" method="post" action="" onsubmit="return check()">
            <table>
              <colgroup>
                <col width="20%" />
                <col width="*" />
              </colgroup>
              <tbody>
                <tr>
                  <th>받는 사람</th>
                  <td>
                    <input type="text" class="form-control" name="user_name" placeholder="받는 사람을 입력해주세요" />
                  </td>
                </tr>
                <tr>
                  <td>
                    <div class="blank-height" style="height: 20px"></div>
                  </td>
                </tr>
                <tr>
                  <th>전화번호</th>
                  <td>
                    <input type="text" class="form-control" name="user_phone" placeholder="전화번호를 입력해주세요" />
                  </td>
                </tr>
                <tr>
                  <td>
                    <div class="blank-height" style="height: 20px"></div>
                  </td>
                </tr>
                <tr>
                  <th>주소</th>
                  <td>
                    <div class="postNum">
                      <input
                        class="w3-input form-control"
                        type="text"
                        id="user_address"
                        name="user_address"
                        placeholder="우편번호 입력"
                      />
                      <button type="submit">우편번호 찾기</button>
                    </div>
                    <input
                      class="w3-input form-control"
                      type="text"
                      id="user_address"
                      name="user_address"
                      style="margin-bottom: 12px"
                      placeholder="기본주소를 입력해주세요"
                    />
                    <input
                      class="w3-input form-control"
                      type="text"
                      id="user_address"
                      name="user_address"
                      placeholder="상세주소를 입력해주세요"
                    />
                  </td>
                </tr>
              </tbody>
            </table>
          </form>

          <div class="line"></div>
        </div>
      </div>

      <!-- 주문상품, 결제하기버튼 -->
      <div class="col-md-4 orderProductInfoPay">
        <h4>주문상품</h4>
        <div class="orderProductImg">
          <img src="../../static/images/michieda/michieda1.png" />
        </div>
        <div class="orderProductInfo">
          <h4>미치에다 슌스케</h4>
          <p>컬러 : 스타라이트 | 구독기간 : 3개월</p>
          <p>결제 시작일 : 2024.03.11 (매월 11일)</p>
          <span>월 72,500원</span>
        </div>
        <div class="orderProduct">
          <button
            type="submit"
            class="toOption"
            style="background: #000"
            onclick="window.location.href='../detail/detail.html'"
          >
            옵션 변경
          </button>
          <button
            type="submit"
            class="toPay float-end"
            style="background: #185fff"
            onclick="window.location.href='../payment/paymentCom.html'"
          >
            결제하기
          </button>
        </div>
      </div>
    </div>
  </div>
</div>

<!-- ----------------------------------- content 끝 ----------------------------------- -->
<%@ include file="../main/footer.jsp"%>
