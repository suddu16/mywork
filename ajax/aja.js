function ajaxFunc(){
    var ajax = document.getElementById("ajax").value;
    var xml = new XMLHttpRequest();
    xml.onreadystatechange = function(){
        if(xml.readyState==4){
            document.getElementById("data").innerHTML = xml.responseText;
        }
    }
    xml.open("GET","getComments.jsp?data="+ajax,true);
    xml.send();
}