window.onload=function() {

  var canvas = document.getElementById('myCanvas');
  var context = canvas.getContext('2d');
  var counter = -322;
  var counterTuborg = counter + 300; // -122
  var counterDIR = 1;
  var counterDIRTuborg = 1;
  var running = true;
  var visible = false;
  var button = document.getElementById('ButtonStop');
  var button2 = document.getElementById('ButtonStart');
  var buttonreset = document.getElementById('ButtonReset');

    button.onclick = function(){

      running = false;

    };

    button2.onclick = function(){

      running = true;

    };

    buttonreset.onclick = function(){
      running = true;
      visible = false;
      counter = -322;
      counterTuborg = counter + 300; // -122
      counterDIR = 1;
      counterDIRTuborg = 1;
    };

    var julemand = new Image();
    julemand.src="./img/Julemand.png";

    var julemand2 = new Image();
    julemand2.src="./img/Julemand2.png";

    var tuborg1 = new Image();
    tuborg1.src="./img/tuborg1.png";

    var tuborg2 = new Image();
    tuborg2.src="./img/tuborg2.png";

  function animate(){
    if (running) {
      counter = counter + counterDIR;
      counterTuborg = counterTuborg + counterDIRTuborg;
    };

    // Draw figure

    context.clearRect(0,0,1022,100);
    //context.fillRect(counter,40,100,100);
    if (counterDIR!=1) {
      context.drawImage(julemand2,counter,0);
    } else {
      context.drawImage(julemand,counter,0);
    }

    if (counterDIRTuborg !=1 && visible) {
      context.drawImage(tuborg2,counterTuborg,0);
    } else if (visible) {
      context.drawImage(tuborg1,counterTuborg,0);
    };

    // initiate and restart

    setTimeout(animate,10);

    if (counter == 1032) {
      counterDIR = -1;
    };

    if (counter == -222) {
      counterDIR = 1;
    };

    if (counterTuborg == 1032) {
      counterDIRTuborg = -1;
      visible = true;
    };

    if (counterTuborg == -222) {
      counterDIRTuborg = 1;
    };

  };
  animate();
};
