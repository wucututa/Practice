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
  $(".icon-close").on("click", (event) => {
    $("html, body").removeClass("lock");
    $("#modal-registrations").toggleClass("hidden");
  });

  $("#name").val(localStorage.getItem("name") || "");
  $("#email").val(localStorage.getItem("email") || "");
  $("#password").val(localStorage.getItem("password") || "");
  // Function to validate the name
  function validateName() {
    var name = $("#name").val();
    if (name.length === 0) {
      $("#nameError").text("Name is required");
      return false;
    } else {
      $("#nameError").text("");
      return true;
    }
  }

  // Function to validate the email
  function validateEmail() {
    var email = $("#email").val();
    // Simple email validation (for illustration purposes)
    if (!/^\S+@\S+\.\S+$/.test(email)) {
      $("#emailError").text("Invalid email address");
      return false;
    } else {
      $("#emailError").text("");
      return true;
    }
  }

  // Function to validate the password
  function validatePassword() {
    var password = $("#password").val();
    if (password.length < 6) {
      $("#passwordError").text("Password must be at least 6 characters long");
      return false;
    } else {
      $("#passwordError").text("");
      return true;
    }
  }

  // Blur event handlers for each input field
  $("#name").blur(validateName);
  $("#email").blur(validateEmail);
  $("#password").blur(validatePassword);

  // Load form data from localStorage on page load
  $("#name").val(localStorage.getItem("name") || "");
  $("#email").val(localStorage.getItem("email") || "");
  $("#password").val(localStorage.getItem("password") || "");

  // Save form data to localStorage on input change
  $("#name, #email, #password").on("input", function () {
    console.log(1);
    localStorage.setItem("name", $("#name").val());
    localStorage.setItem("email", $("#email").val());
    localStorage.setItem("password", $("#password").val());
  });

  // Form submission handler
  $("#myForm").submit(function (event) {
    // Perform validation when the form is submitted
    var isNameValid = validateName();
    var isEmailValid = validateEmail();
    var isPasswordValid = validatePassword();

    // Prevent form submission if any validation fails
    if (!isNameValid || !isEmailValid || !isPasswordValid) {
      event.preventDefault();
    }
  });

});


export function name(params) {
  console.log(params);
}