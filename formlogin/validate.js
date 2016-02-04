var emailRegEx = /^((\w)+(\.(\w)+)*(@[a-zA-Z]+)(\.[a-zA-Z]+)+)$/;
var nameRegEx = /^([a-zA-Z \.]+)$/;
var dateRegEx = /^((199[6-9]|[2-9][0-9][0-9][0-9])-(0?[1-9]|1[0-2])-(0?[1-9]|[12][0-9]|3[0-1]))$/;
var today = new Date();

function resetFields(){
    $('#emailDiv').removeClass("has-success").removeClass("has-error");
    $('#nameDiv').removeClass("has-success").removeClass("has-error");
    $('#dobDiv').removeClass("has-success").removeClass("has-error");
    $('#emailSpan').removeClass("glyphicon glyphicon-ok").removeClass("glyphicon glyphicon-remove");
    $('#nameSpan').removeClass("glyphicon glyphicon-ok").removeClass("glyphicon glyphicon-remove");
    $('#dobSpan').removeClass("glyphicon glyphicon-ok").removeClass("glyphicon glyphicon-remove");
    $('#submitForm').removeClass('btn-danger').removeClass('btn-success').addClass('btn-primary');
}

function isEmail() {
    var email = document.getElementById('email').value;
    $('#emailLoad').slideUp(300).delay(2000).slideDown(300);
    if(!emailRegEx.test(email)){
        $('#emailDiv').removeClass("has-success");
        $('#emailSpan').removeClass("glyphicon glyphicon-ok");
        $('#emailDiv').addClass("has-error");
        $('#emailSpan').addClass("glyphicon glyphicon-remove");
        return false;
    }else{
        $('#emailDiv').removeClass("has-error");
        $('#emailSpan').removeClass("glyphicon glyphicon-remove");
        $('#emailDiv').addClass("has-success");
        $('#emailSpan').addClass("glyphicon glyphicon-ok");
        return true;
    }
}
function isName() {
    var name = document.getElementById('name').value;
    if(!nameRegEx.test(name)){
        $('#nameDiv').removeClass("has-success");
        $('#nameSpan').removeClass("glyphicon glyphicon-ok");
        $('#nameDiv').addClass("has-error");
        $('#nameSpan').addClass("glyphicon glyphicon-remove");
        return false;
    }else{
        $('#nameDiv').removeClass("has-error");
        $('#nameSpan').removeClass("glyphicon glyphicon-remove");
        $('#nameDiv').addClass("has-success");
        $('#nameSpan').addClass("glyphicon glyphicon-ok");
        return true;
    }
}

function isLeapYear(year){
    if(year%400==0)
        return true;
    else if(year%100==0)
        return false;
    else if(year%4==0)
        return true;
    return false;
}

function isThirtyOneDaysMonth(month){
    if(month==1||month==3||month==5||month==7||month==8||month==10||month==12)
        return true;
    return false;
}

function isDOB(){
    var date = document.getElementById('dob').value;
    var flag=true;
    if(!dateRegEx.test(date)){
        flag = false;
    }
    else{
        var dateSplit = date.split('-');
        var year = dateSplit[0];
        var month = dateSplit[1];
        var day = dateSplit[2];
        var enteredDate = new Date();
        enteredDate.setFullYear(year,month-1,day);
        if(month==2){
            if(isLeapYear(year) && day>29)flag = false;
            else if(!isLeapYear(year) && day>28) flag = false;
        }
        if(!isThirtyOneDaysMonth(month) && day > 30){
            flag = false;
        }
        if ( enteredDate > today){
            flag = false;
        }
    }
    if(flag){
        $('#dobDiv').removeClass("has-error");
        $('#dobSpan').removeClass("glyphicon glyphicon-remove");
        $('#dobDiv').addClass("has-success");
        $('#dobSpan').addClass("glyphicon glyphicon-ok");
        return true;
    }else{
        $('#dobDiv').removeClass("has-success");
        $('#dobSpan').removeClass("glyphicon glyphicon-ok");
        $('#dobDiv').addClass("has-error");
        $('#dobSpan').addClass("glyphicon glyphicon-remove");
        return false;
    }
    
}
function checkAll(){
    isName();
    isEmail();
    isDOB();
    if(!(isName() && isEmail() && isDOB())){
        $('#submitForm').removeClass('btn-primary').addClass('btn-danger');
    }else{
        $('#submitForm').removeClass('btn-danger').addClass('btn-success');
    }
    return (isName() && isEmail() && isDOB());
}