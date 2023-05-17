$(".delete_acc").click(function() {
    var user_confirmation = confirm("Are you sure that you want to permanently delete your account?\nThis action cannot be undone!");

    if(user_confirmation == true)
    {
        //generating a code of randomly selected 6 digits
        //in order to make sure that user is confident in his choice
        var code = Math.floor(100000 + Math.random() * 900000);
        var get_code = window.prompt("Type \"" + code + "\" in order to delete your account!");

        if(get_code == code)
        {
            $("#load").load("account-deleting.php");
        }

        else
        {
            window.alert("Deleting account failed!");
        }
    }
});
