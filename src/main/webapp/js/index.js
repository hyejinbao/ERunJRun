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
      var email2 = document.getElementById("email2");
      var selectedValue = email2.value;

      if (selectedValue === "직접입력") {
          email2.value = ""; // 직접입력을 선택하면 email2를 비워둠
          email2.focus();    // email2 필드에 포커스를 맞춤
      } else {
          email2.value = selectedValue; // 선택한 도메인으로 email2 필드를 채움
      }
  }

  document.getElementById("email2").addEventListener("focus", function() {
      var email2 = document.getElementById("email2");
      setTimeout(function() {
          email2.value = ""; // 포커스될 때 필드 비우기
      }, 0); // 잠시 후에 필드를 비움
  });