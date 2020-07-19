$(document).ready(function(){

    var userid = document.getElementById('attruserid').innerHTML;
    var token = document.getElementById('attrtoken').innerHTML;

    $("#btnsubmit").on('click', function(){
        $("#btnsubmit").jqxValidator('validate');
    });

    $("#btnsubmit").jqxValidator({
        rules:[
            { input: '#txtcode', action: 'keyup, blur', message: 'Textbox is not null.', rule: 'required' }
        ]
    });

    $("#btnsubmit").on('validationSuccess', function(){

        var param = {
            'serialcode': $("#txtcode").val(),
            'userid': userid
        }

        $.ajax({
            url: url_regis + 'regiscode',
            data: JSON.stringify(param),
            dataType: "json",
            contentType: 'application/json; charset=utf-8',
            headers: { 'authen-token': token },
            type: 'POST',
            async: false,
            success: function(res){
                //if (res.length == 0){
                    if (res.status == 'Register Successfully'){
                        swal({
                            title: res.status,
                            text: res.message,
                            type: 'success',
                        }, (result) =>{
                            $("#txtcode").val('');
                        });
                    }
                    else{
                        swal({
                            title: res.status,
                            text: res.message,
                            type: 'error',
                        }, (result) =>{
                            $("#txtcode").val('');
                        });
                    }

            }
        });

    });

    $("#lblogout").on('click', function(){
        
        var param = {
            'userid': userid
        }

        $.ajax({
            url: url_authen + 'logout',
            data: JSON.stringify(param),
            dataType: "json",
            contentType: 'application/json; charset=utf-8',
            type: 'POST',
            async: false,
            success: function(res){
                //if (res.length == 0){
                    if (res.status == 'logout successfully'){
                        swal({
                            title: 'Logout',
                            text: res.message,
                            type: 'success',
                        }, (result) => {
                            if (result){
                                window.location.replace('../');
                            }
                        });

                    }
                    else{
                        swal({
                            title: res.status,
                            text: res.message,
                            type: 'error',
                        });
                    }   
            }
        });

    });
});