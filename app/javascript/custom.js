$(document).ready(function () {
  $("#dnm").on("click", (event) => {
    if ($("html, body").hasClass("lock")) {
        $("html, body").removeClass("lock");
        $("#modal-registrations").toggleClass("hidden");
      } else {
        $("html, body").addClass("lock");
        $("#modal-registrations").toggleClass("hidden");
    }

    // if (!$(".modal-overlay").length) {
    //   $("body").append('<div class="modal-overlay"></div>');
    //   $(".modal-overlay").fadeIn(200);
    //   $("#modal-registrations").toggle("visible");
    // }
  });
  $('.icon-close').on("click", (event) => {
    $("html, body").removeClass("lock");
    $("#modal-registrations").toggleClass("hidden");
  })
});
