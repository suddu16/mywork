function ajaxFunction(user){
    
    var comment = document.getElementById('commentId');
    var ajaxRequest;
        ajaxRequest = new XMLHttpRequest();
    
    ajaxRequest.onreadystatechange = function(){
        if(ajaxRequest.readyState==4){
            var com = document.getElementById('comments');
            com.innerHTML=ajaxRequest.response;
        }
    }
    var query="?comment="+comment.value+"&user="+user;
    ajaxRequest.open("GET","getcomments.jsp"+query,true);
    ajaxRequest.send(null);
    comment.value="";
}