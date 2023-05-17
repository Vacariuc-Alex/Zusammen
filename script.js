function setLocalStorage()
{
    var value = document.getElementById("email").value;
    var name = localStorage.getItem("email");
    if (getLocalStorage("email") == false || value != name)
    {
        localStorage.setItem("email", value);
        document.getElementById("email").value = localStorage.getItem("email");
    }

    value = document.getElementById("password").value;
    name = localStorage.getItem("password");
    if (getLocalStorage("password") == false || value != name)
    {
        localStorage.setItem("password", value);
        document.getElementById("password").value = localStorage.getItem("password");
    }
}

function getLocalStorage(id)
{
    var name = localStorage.getItem(id);
    if (name != null && name != "value")
    {
        document.getElementById(id).value = name;
        return true;
    }

    else
        return false;
}
