function validate_form()
{
    var fname=document.registration.full_name.value;
    if(fname==null||fname=="")
    {
        alert("Name Field should not blank");
        return false;
    }
    else
    {
        return true;
    }
    
}