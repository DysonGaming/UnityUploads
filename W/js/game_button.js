window.onload=function() {
    var button = document.getElementById('ButtonGame');
    var button2 = document.getElementById('ButtonCanon');

    button.onclick = function(){
        
        location.href = "ChilliGame.php";

    };
  
    button2.onclick = function(){
        
        location.href = "CanonGame.php";

    };
};