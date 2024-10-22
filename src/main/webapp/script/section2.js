$(document).ready(function () {
  function prev2() {
    $("#sec2book1slide > li:last").prependTo("#sec2book1slide");
    $("#sec2book1slide").css("margin-left", -1100);
    $("#sec2book1slide").stop().animate({ marginLeft: 0 }, 800);
  }

  function next2() {
    $("#sec2book1slide")
      .stop()
      .animate({ marginLeft: -1100 }, function () {
        $("#sec2book1slide > li:first").appendTo("#sec2book1slide");
        $("#sec2book1slide").css({ marginLeft: 0 });
      });
  }

  $(".prev2").click(function () {
    prev2();
  });

  $(".next2").click(function () {
    next2();
  });

  function prev2_2() {
    $("#sec2book1slide_2 > li:last").prependTo("#sec2book1slide_2");
    $("#sec2book1slide_2").css("margin-left", -1100);
    $("#sec2book1slide_2").stop().animate({ marginLeft: 0 }, 800);
  }

  function next2_2() {
    $("#sec2book1slide_2")
      .stop()
      .animate({ marginLeft: -1100 }, function () {
        $("#sec2book1slide_2 > li:first").appendTo("#sec2book1slide_2");
        $("#sec2book1slide_2").css({ marginLeft: 0 });
      });
  }

  $(".prev2_2").click(function () {
    prev2_2();
  });

  $(".next2_2").click(function () {
    next2_2();
  });

  $.ajax({
    method: "GET",
    url: "https://dapi.kakao.com/v3/search/book?target=title",
    data: { query: "한국", size: 10 },
    headers: { Authorization: "KakaoAK 8eafd195b358ea9fa8e6c83c802eeb42" },
  }).done(function (msg) {
    console.log(msg.documents[0].title);
    console.log(msg.documents[0].thumbnail);

    var slides = document.getElementsByClassName("sec2slide");

    for (var i = 0; i < 11 && i < msg.documents.length; i++) {
      $(slides[i]).prepend(
        '<div class="sec2slideimg">' +
          "<img src='" +
          msg.documents[i].thumbnail +
          "'/>" +
          "</div>"
      );

      var str = msg.documents[i].title;
      var str2 = str.substring(0, 20);

      $(slides[i]).append(
        '<div class="sec2slidetext">' +
          '<span class="s2_1">' +
          str2 +
          "</span></div>"
      );
    }
  });

  $.ajax({
    method: "GET",
    url: "https://dapi.kakao.com/v3/search/book?target=title",
    data: { query: "학생", size: 10 },
    headers: { Authorization: "KakaoAK 8eafd195b358ea9fa8e6c83c802eeb42" },
  }).done(function (msg) {
    console.log(msg.documents[0].title);
    console.log(msg.documents[0].thumbnail);

    var slides_2 = document.getElementsByClassName("sec2slide_2");

    for (var i = 0; i < 11 && i < msg.documents.length; i++) {
      $(slides_2[i]).prepend(
        '<div class="sec2slideimg">' +
          "<img src='" +
          msg.documents[i].thumbnail +
          "'/>" +
          "</div>"
      );

      var str = msg.documents[i].title;
      var str2 = str.substring(0, 20);

      $(slides_2[i]).append(
        '<div class="sec2slidetext">' +
          '<span class="s2_1">' +
          str2 +
          "</span></div>"
      );
    }
  });

  $.ajax({
    method: "GET",
    url: "https://dapi.kakao.com/v3/search/book?target=title",
    data: { query: "학교", size: 10 },
    headers: { Authorization: "KakaoAK 8eafd195b358ea9fa8e6c83c802eeb42" },
  }).done(function (msg) {
    console.log(msg.documents[0].title);
    console.log(msg.documents[0].thumbnail);

    var slides_3 = document.getElementsByClassName("sec2slide_3");

    for (var i = 0; i < 11 && i < msg.documents.length; i++) {
      $(slides_3[i]).prepend(
        '<div class="sec2slideimg_3">' +
          "<img src='" +
          msg.documents[i].thumbnail +
          "'/>" +
          "</div>"
      );

      var str = msg.documents[i].title;
      var str2 = str.substring(0, 20);

      $(slides_2[i]).append(
        '<div class="sec2slidetext_3">' +
          '<span class="s2_1">' +
          str2 +
          "</span></div>"
      );
    }
  });
});
