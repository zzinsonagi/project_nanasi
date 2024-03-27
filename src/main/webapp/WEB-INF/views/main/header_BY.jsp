<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <!-- bootstrap -->
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
      crossorigin="anonymous"
    />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet" />
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
      crossorigin="anonymous"
    ></script>

    <!-- jQuery CDN -->
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

    <!-- css -->
    <link rel="stylesheet" href="/resources/css/mainSt.css" />
    <!-- <link rel="stylesheet" href="/resources/css/searchCateSt.css" /> -->
    <!-- <link rel="stylesheet" href="/resources/css/orderSt.css" /> -->
    <link rel="stylesheet" href="/resources/css/memSt.css" />
    <link rel="stylesheet" href="/resources/css/adminSt.css" />

    <title>WhatSub</title>
  </head>

  <body>
    <!-- ----------------------------------- header ----------------------------------- -->
    <header>
      <nav class="navbar navbar-expand-lg">
        <div class="header">
          <a class="navbar-brand" href="../main/main.html">
            <img src="../../static/images/mainlogo.png" />
          </a>

          <form class="d-flex" role="search" action="/search/plist" method="get">
            <div class="search">
              <button type="submit"><i class="bi bi-search"></i></button>
              <input class="search-input" type="search" name="keyword" placeholder="Search for…" />
            </div>
          </form>

          <div class="navTag">
            <a class="join" href="../member/terms.html"><i class="bi bi-person-plus-fill"></i>Join</a>
            <a class="login" href="../member/login.html"><i class="bi bi-lock-fill"></i>Login</a>
            <a class="join" href="../my/wish.html"><i class="bi bi-cart-check-fill"></i>My Sub</a>
            <a class="login" href="../main/main.html"><i class="bi bi-unlock-fill"></i>Logout</a>
            <a class="join" href="../admin/adminReturn.html"><i class="bi bi-person-square"></i>Admin</a>
            <a class="login" href="../main/main.html"><i class="bi bi-unlock-fill"></i>Logout</a>
          </div>
        </div>
      </nav>
    </header>
    <p class="kara"></p>

    <!-- ----------------------------------- header 끝 ----------------------------------- -->
  </body>
</html>
