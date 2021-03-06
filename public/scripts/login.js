$(document).ready(function(){

    $("#txtusername").val('admin');
    $("#txtpassword").val('12345');

    $("#btnlogin").on('click', function(){

        var param = {
            username: $("#txtusername").val(),
            password: $("#txtpassword").val()
        }

        $.ajax({
            url: url_authen + 'login',
            data: JSON.stringify(param),
            dataType: "json",
            contentType: 'application/json; charset=utf-8',
            type: 'POST',
            async: false,
            success: function(res){
                if (res.status == 'login successfully'){
                    swal({
                        title: res.message,
                        text: res.status,
                        type: 'success',
                    }, (result) =>{
                        if (result){
                            window.location.replace('../register?i=' + res.data[0].userid + '&u=' + res.data[0].username + '&t=' + res.data[0].token);
                        }
                    });
                }
            }
        });

    });

    $("#btnsignup").on('click', function(){
        window.location.href = '../signup';
    });


});