$(document).ready(function () {
  function secslide() {
    $("#secslide")
      .stop()
      .animate({ marginLeft: -750 }, function () {
        $("#secslide li:first").appendTo("#secslide");
        $("#secslide").css({ marginLeft: 0 });
      });
  }
  setInterval(secslide, 8000);

  function secslidead() {
    $("#section1adunder")
      .stop()
      .animate({ marginLeft: -350 }, function () {
        $("#section1adunder li:first").appendTo("#section1adunder");
        $("#section1adunder").css({ marginLeft: 0 });
      });
  }
  setInterval(secslidead, 12000);

  function sec1Books(query, slideClass) {
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
          '<div class="secslideimg">' +
            "<img src='" +
            msg.documents[i].thumbnail +
            "'/>" +
            "</div>"
        );

        var str = msg.documents[i].title;
        var str2 = str.substring(0, 10);

        $(boxes[i]).append(
          '<div class="secslidetext">' +
            '<span class="s1">' +
            str2 +
            "</span><br>" +
            '<span class="s2">' +
            msg.documents[i].authors +
            "</span>" +
            "</div>"
        );
      }
    });
  }

  sec1Books("best", "secslide1");

  sec1Books("컴퓨터", "secslide2");

  sec1Books("공원", "secslide3");
});
