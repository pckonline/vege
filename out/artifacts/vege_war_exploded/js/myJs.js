$(document).ready(function(){
//    这个是log的动画效果
    $("#lo1").hide(0,function(){
        $("#lo2").hide(0,function(){
            $("#lo3").hide(0,function(){
                $("#lo4").hide(0,function(){
                    $("#lo5").hide(0,function(){
                        $("#lo1").show(500,function(){
                            $("#lo2").show(500,function(){
                                $("#lo3").show(500,function(){
                                    $("#lo4").show(500,function(){
                                        $("#lo5").show(500,function(){
                                        });
                                    });
                                });
                            });
                        });
                    });
                });
            });
        });
    });
    //服务团队
    $("#workme1").hide(0,function(){
        $("#worker1").click(2000,function(){
            $("#worker1").attr("src","/img/01.jpg");
            $("#workme1").show(500);
        });
    });
    //这个是百度地图的div隐藏
    $("#allmap").hide(0);

    //海报右方
    $("#body1").show();
    $("#body2").hide();
    $("#day1").hover(function(){
        $("#day2").css("color","#ffffff").css("background-color","#ababab");
        $("#day1").css("color","black").css("background-color","#ffffff");
        $("#body2").hide();
        $("#body1").show();
    });
    $("#day2").hover(function(){
        $("#day1").css("color","#ffffff").css("background-color","#ababab");
        $("#day2").css("color","black").css("background-color","#ffffff");
        $("#body1").hide();
        $("#body2").show();
    });
    //超级返利
    $("#activebody1").show();
    $("#activebody2").hide();
    $("#activeone").hover(function(){
        $("#activetwo").css("color","#ffffff").css("background-color","#ababab");
        $("#activeone").css("color","black").css("background-color","#ffffff");
        $("#activebody2").hide();
        $("#activebody1").show();
    });
    $("#activetwo").hover(function(){
        $("#activeone").css("color","#ffffff").css("background-color","#ababab");
        $("#activetwo").css("color","black").css("background-color","#ffffff");
        $("#activebody1").hide();
        $("#activebody2").show();
    });
});


