$(document).ready(function () {

    // search user name
    $('#username').blur(function () {
        var username = $(this).val();
        $.ajax({
            url: "check/checkuser.php",
            method: "POST",
            data: {username: username},
            dataType: "text",
            success: function (data) {
                $('#userStatus').html(data);
            }
        });
    });

    //auto complete
    $('#skill').keyup(function () {
        var skill = $(this).val();

        if (skill != '') {
            $.ajax({
                url: "check/checkskill.php",
                method: "POST",
                data: {skill: skill},
                success: function (data) {

                    $('#skillStatus').fadeIn();
                    $('#skillStatus').html(data);

                }
            });
        }

    });

    $(document).on('click', 'li', function () {
        $('#skill').val($(this).text());
        $('#skillStatus').fadeOut();

    })


    //live search
    $('#search').keyup(function () {
        var search = $(this).val();

        if (search != '') {
            $.ajax({
                url: "check/livesearch.php",
                method: "POST",
                data: {search:search},
                success: function (data) {
                    $('#searchLive').html(data);

                }
            });
        }

    });



    //auto refresh
    $('#autoSubmit').click(function () {
        var content = $("#body").val();

        if ($.trim(content) !='') {
            $.ajax({
                url: "check/refresh.php",
                method: "POST",
                data: {body:content},
                dataType:"text",
                success: function (data) {
                    $("#body").val("");
                }
            });
            return false;
        }

    });

    setInterval(function () {
        $("#autoDataShow").load("check/getrefresh.php").fadeIn("slow");
    },1000)

});



