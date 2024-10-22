$(document).ready(function () {
  function prev() {
    $(".sliders li:last").prependTo(".sliders");
    $(".sliders").css("margin-left", -1100);
    $(".sliders").stop().animate({ marginLeft: 0 }, 800);
  }

  function next() {
    $(".sliders")
      .stop()
      .animate({ marginLeft: -1100 }, function () {
        $(".sliders li:first").appendTo(".sliders");
        $(".sliders").css({ marginLeft: 0 });
      });
  }

  function slides() {
    $(".sliders")
      .stop()
      .animate({ marginLeft: -1100 }, function () {
        $(".sliders li:first").appendTo(".sliders");
        $(".sliders").css({ marginLeft: 0 });
      });
  }

  setInterval(slides, 6000);

  $(".prev").click(function () {
    prev();
  });

  $(".next").click(function () {
    next();
  });

  function Books(query, slideClass) {
    $.ajax({
      method: "GET",
      url: "https://dapi.kakao.com/v3/search/book?target=title",
      data: { query: query, size: 4 },
      headers: { Authorization: "KakaoAK 8eafd195b358ea9fa8e6c83c802eeb42" },
    }).done(function (msg) {
      console.log(msg.documents[1].title);
      console.log(msg.documents[1].thumbnail);

      // for문 (4개)
      var boxes = document.getElementsByClassName(slideClass);

      for (var i = 0; i < boxes.length; i++) {
        $(boxes[i]).prepend(
          '<div class="slide1img">' +
            "<img src='" +
            msg.documents[i].thumbnail +
            "'/>" +
            "</div>"
        );

        var str = msg.documents[i].title;
        var str2 = str.substring(0, 10);
        var str4 = str.substring(0, 15);

        $(boxes[i]).append(
          '<div class="slide1text">' +
            '<span class="p1">' +
            str2 +
            "</span><br>" +
            '<span class="p2">' +
            str4 +
            "</span><br>" +
            '<span class="p3">' +
            msg.documents[i].authors +
            "</span>" +
            "</div>"
        );
      }
    });
  }

  Books("자바스크립트", "slide1");

  Books("정원", "slide2");

  Books("new", "slide3");
});
