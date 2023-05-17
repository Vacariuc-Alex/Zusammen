function setSessionStorage()
{
    var value = document.getElementById("name").value;
    var name = sessionStorage.getItem("name");
    if (getSessionStorage("name") == false || value != name)
    {
        sessionStorage.setItem("name", value);
        document.getElementById("name").value = sessionStorage.getItem("name");
    }

    value = document.getElementById("email").value;
    name = sessionStorage.getItem("email");
    if (getSessionStorage("email") == false || value != name)
    {
        sessionStorage.setItem("email", value);
        document.getElementById("email").value = sessionStorage.getItem("email");
    }

    value = document.getElementById("date_of_birth").value;
    name = sessionStorage.getItem("date_of_birth");
    if (getSessionStorage("date_of_birth") == false || value != name)
    {
        sessionStorage.setItem("date_of_birth", value);
        document.getElementById("date_of_birth").value = sessionStorage.getItem("date_of_birth");
    }

    value = document.getElementById("location").value;
    name = sessionStorage.getItem("location");
    if (getSessionStorage("location") == false || value != name)
    {
        sessionStorage.setItem("location", value);
        document.getElementById("location").value = sessionStorage.getItem("location");
    }

    value = document.getElementById("password").value;
    name = sessionStorage.getItem("password");
    if (getSessionStorage("password") == false || value != name)
    {
        sessionStorage.setItem("password", value);
        document.getElementById("password").value = sessionStorage.getItem("password");
    }

    value = document.getElementById("re_password").value;
    name = sessionStorage.getItem("re_password");
    if (getSessionStorage("re_password") == false || value != name)
    {
        sessionStorage.setItem("re_password", value);
        document.getElementById("re_password").value = sessionStorage.getItem("re_password");
    }
}

function getSessionStorage(id)
{
    var name = sessionStorage.getItem(id);
    if (name != null && name != "value")
    {
        document.getElementById(id).value = name;
        return true;
    }

    else
        return false;
}
