function menu_over(e) {
  e.setAttribute("class", "nav-item active"); //<li class="nav-item active">
}

function menu_out(e) {
  e.setAttribute("class", "nav-item");        //<li class="nav-item">
}

function cd() {
  location.assign("signup.html");
}

$(document).ready(function() {

  $('#loginForm').submit(function() {
    //submit이 자동으로 되는 기능을 막기
    event.preventDefault();

    //id,pwd를 가져오기
    //docuent.getElementById("id").value
    var id = $('#id').val();
    var pwd = $('#pwd').val();
    console.log(id, pwd);

    //서버로 post전송(djax호출방식) 더미서버 이용
    $.post("http://httpbin.org/post", {
        "id": id,
        "pwd": pwd
      },
      function(data) {
        //alert(data.form.id+'님 로그인되었습니다.');
        var myModal = $('#myModal');
        myModal.modal();
        myModal.find('.modal-body').text(data.form.id + '님 로그인되었습니다.')
      });
  });

  $('#signupForm').submit(function() {
    //submit이 자동으로 되는 기능을 막기
    event.preventDefault();

    //id,pwd를 가져오기
    //docuent.getElementById("id").value
    var  name  = $('#name').val();
    var  number = $('#number').val();
    console.log(name, number);

    //서버로 post전송(djax호출방식) 더미서버 이용
    $.post("http://httpbin.org/post", {
        "name": name,
        "number": number
      },
      function(data) {
        //alert(data.form.id+'님 로그인되었습니다.');
        var myModal = $('#myModal');
        myModal.modal();
        myModal.find('.modal-body').text(data.form.name + '님 회원가입되었습니다.')
      });
  });
});
