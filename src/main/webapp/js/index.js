  const navbarBurger = document.querySelector('.navbar_burger');
  const navbarburgerback = document.querySelector('.navbar_burger_back');
  const navbarMenu = document.querySelector('.navbar_menu');
  const navbarOverlay = document.querySelector('.navbar_overlay');

  navbarBurger.addEventListener('click', () => {
    navbarMenu.classList.toggle('active');
    navbarOverlay.classList.toggle('active');
  });

  navbarburgerback.addEventListener('click', () => {
    navbarMenu.classList.remove('active');
    navbarOverlay.classList.remove('active');
  });

  navbarOverlay.addEventListener('click', () => {
    navbarMenu.classList.remove('active');
    navbarOverlay.classList.remove('active');
  });
  /*이메일선택*/
  function emailChange() {
      var email2 = document.getElementById("email2").value;

      if (email2 === "직접입력") {
          email2 = ""; // 직접입력을 선택하면 email2를 비워둠
          email2.focus();    // email2 필드에 포커스를 맞춤
      } else {
          email2.value = email2; // 선택한 도메인으로 email2 필드를 채움
      }
  }
  /*이메일보기*/
  function showDatalist() {
      var email2 = document.getElementById("email2");
      email2.setAttribute('list', 'email2_list'); // 포커스될 때 datalist를 연결
  }