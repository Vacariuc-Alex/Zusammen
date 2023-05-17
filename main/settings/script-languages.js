//declaring the variables and defining as undefined
var nativeLanguage, foreignLanguage;
nativeLanguage = foreignLanguage = 'undefined';

//check if user selected language
function check() {
    if(nativeLanguage == 'undefined' || nativeLanguage == 'Choose your native language!')
    {
        return 1;
    }

    else if (foreignLanguage == 'undefined') {
        return 2;
    }

    else {
        return 3;
    }
}

//display all native languages
$.ajax({
    url: "language-settings.php",
    success:function(data)
    {
        $('#nativeLanguage').html(data);
    }
});

$("#nativeLanguage").on("change", function() {
    nativeLanguage = this.value;
    foreignLanguage = 'undefined';

    //display foreign language box
    $("#foreignLanguage").css("display", "block");

    //display foreign languages for the native language
    $.ajax({
        url: "language-settings.php",
        method:"POST",
        data:{nativeLanguage:nativeLanguage},

        success:function(data)
        {
            $('#foreignLanguage').html(data);
        }
    });

    //define the session variables
    $("#foreignLanguage").on("change", function() {
        foreignLanguage = this.value;

        $.ajax({
            url: "language-settings.php",
            method:"POST",
            data:{nativeLanguage:nativeLanguage, foreignLanguage:foreignLanguage},

            success:function()
            {

            }
        });
    });
});
