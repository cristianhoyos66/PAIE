<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<!--
To change this template, choose Tools | Templates
and open the template in the editor.
-->
<!DOCTYPE html>
<html>
    <head>
        <title></title>
        <meta 
            http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <form 
            style="text-align: center">
            <label>
                Usuario: 
            </label> 
            <input
                type="text"
                id="inputEmail"/> 
            <br><br>
            <label>
                Clave: 
            </label>
             <input 
                type="text"
                id="inputPass"/>
            <br><br>
            <button 
                type="button" id="btnSend">get user</button>
                
            <button 
                type="button" id="btnSend2">get user and email</button>
        </form>
        
         <script 
            src="https://code.jquery.com/jquery-2.2.4.min.js">
        </script>
        
        <script>
            $('#btnSend').on('click', function (e) {
                e.preventDefault();
                $.get('http://paieapprws.jelastic.servint.net/apprest/users/getUser', {
                    email: $('#inputEmail').val(),
                    //clave: $('#inputPass').val()
                }, function(resp) {
                    if (!$.isEmptyObject(resp)) {
                        alert(resp.email + ' ' + resp.pass);
                    } else {
                        alert('No existe el usuario');
                    }
                }).fail(function() {
                    alert('No funciono bebé');
                });
            });
            
            $('#btnSend2').on('click', function (e) {
                e.preventDefault();
                $.get('http://paieapprws.jelastic.servint.net/apprest/users/validateGetUser', {
                    email: $('#inputEmail').val(),
                    clave: $('#inputPass').val()
                }, function(resp) {
                    if (!$.isEmptyObject(resp)) {
                        alert(resp.email + ' ' + resp.pass);
                    } else {
                        alert('No existe el usuario');
                    }
                }).fail(function() {
                    alert('No funciono bebé');
                });
            });
        </script>
        
    </body>
</html>

