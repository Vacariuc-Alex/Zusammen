$( document ).ready(function() {
    //functions to display the divs that are clicked in menu_settings_bar_li
    $(".menu_settings_bar_li #account").click(function() {
        $(".menu_settings_bar_li").eq(0).css("background", "#dadada");
        $(".menu_settings_bar_li").eq(1).css("background", "transparent");
        $(".menu_settings_bar_li").eq(2).css("background", "transparent");
        $(".menu_settings_bar_li").eq(3).css("background", "transparent");

        $(".footer_distance_span").css({
            "marginTop" : "15rem",
            "marginLeft" : "10rem"
        });

        $(".account_settings").css("display", "block");
        $(".profile_settings").css("display", "none");
        $(".password_settings").css("display", "none");
        $(".language_settings").css("display", "none");
    });

    $(".menu_settings_bar_li #profile").click(function() {
        $(".menu_settings_bar_li").eq(0).css("background", "transparent");
        $(".menu_settings_bar_li").eq(1).css("background", "#dadada");
        $(".menu_settings_bar_li").eq(2).css("background", "transparent");
        $(".menu_settings_bar_li").eq(3).css("background", "transparent");

        $(".footer_distance_span").css({
            "marginTop" : "18rem",
            "marginLeft" : "13rem"
        });

        $(".account_settings").css("display", "none");
        $(".profile_settings").css("display", "block");
        $(".password_settings").css("display", "none");
        $(".language_settings").css("display", "none");
    });

    $(".menu_settings_bar_li #password").click(function() {
        $(".menu_settings_bar_li").eq(0).css("background", "transparent");
        $(".menu_settings_bar_li").eq(1).css("background", "transparent");
        $(".menu_settings_bar_li").eq(2).css("background", "#dadada");
        $(".menu_settings_bar_li").eq(3).css("background", "transparent");

        $(".footer_distance_span").css({
            "marginTop" : "13rem",
            "marginLeft" : "13rem"
        });

        $(".account_settings").css("display", "none");
        $(".profile_settings").css("display", "none");
        $(".password_settings").css("display", "block");
        $(".language_settings").css("display", "none");
    });

    $(".menu_settings_bar_li #language").click(function() {
        $(".menu_settings_bar_li").eq(0).css("background", "transparent");
        $(".menu_settings_bar_li").eq(1).css("background", "transparent");
        $(".menu_settings_bar_li").eq(2).css("background", "transparent");
        $(".menu_settings_bar_li").eq(3).css("background", "#dadada");

        $(".footer_distance_span").css({
            "marginTop" : "auto",
            "marginLeft" : "15rem"
        });

        $(".account_settings").css("display", "none");
        $(".profile_settings").css("display", "none");
        $(".password_settings").css("display", "none");
        $(".language_settings").css("display", "block");
    });
});
