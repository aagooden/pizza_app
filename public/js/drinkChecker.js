function drinkCheckboxChecker()
{
    var checkboxs=document.getElementsByName("drinks");
    var okay=false;
    for(var i=0,l=checkboxs.length;i<l;i++)
    {
        if(checkboxs[i].checked)
        {
            okay=true;
            break;
        }
    }
    if(okay)console.log("Thank you for checking a checkbox");
    else alert("Please check at least one checkbox");
}