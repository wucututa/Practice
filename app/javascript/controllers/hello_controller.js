import { Controller } from "@hotwired/stimulus";
// import { name } from "../custom";
export default class extends Controller {
  initialize() {
    // Khởi tạo giá trị mặc định cho các trường
    this.error = {
      nameError: null,
      emailError: null,
      passwordError: null,
    };

    this.form = {
      name: null,
      email: null,
      password: null,
    };
  }

  static targets = ['name', 'email', 'password'];
  
  static values = { xxx: String, email: String, password: String, count: Number };

  static classes = ['active', 'hidden'];

  static actions = ['click->myController#handleClick'];


  connect() {
    // console.log(this.nameTarget);
    // console.log(this.emailTarget);
    // console.log(this.passwordTarget);

    console.log(this.xxxValue);
    console.log(this.emailValue);
    console.log(this.passwordValue);
    console.log(this.countValue);

    this.element.classList.add('active');
    this.element.classList.remove('hidden');

    // console.log("🚀", this.nameTarget.value);
    // console.log("🚀", this.emailTarget.value);
    // console.log("🚀", this.passwordTarget.value);
    // name('1212')
  }
}
