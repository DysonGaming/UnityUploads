window.onload=function(){
	var canvas = document.getElementById('myCanvas');
	var context = canvas.getContext('2d');
	var kanon = new Image();
	kanon.src="./img/kanon.png";
	var Enemy = new Image();
	Enemy.src="./img/T90.png";
	var skud = false;
	x = 100;
	y = 735;
	var radius = 3;
	var skudKnap = $("#skudKnap");
	
	// Hastighedsslider
	var slider = document.getElementById("hastighed");
	var output = document.getElementById("hast");
	output.innerHTML = slider.value;
	slider.oninput = function() {
		output.innerHTML = this.value;// Viser hastigheden på siden
	}
	
	//Vinkelslider
	var vinkel = document.getElementById("vinkel");
	var vinkeloutput = document.getElementById("vink");
	vinkeloutput.innerHTML = vinkel.value;
	vinkel.oninput = function() {
		vinkeloutput.innerHTML = this.value; // Viser vinklen på siden
		$("kanon.src").rotate(angle);
	}

	horizontalValue = vinkeloutput.innerHTML;
	verticalEnergy = output.innerHTML*-0.040000;
	
	//Skud
	skudKnap.click(function(){
		skud = true;
		animate();
	});
	
	// Viser kanon når siden loades
	kanon.onload = function(){
		
		context.drawImage(kanon,10,730);
	}

	// Viser kanon når siden loades
	Enemy.onload = function()
	JSON{
	
		context.drawImage(Enemy,20,5 00);
	}
	
	function animate(){

		// Kuglens koordinater
		// x = 100;
		// y = 720;

		x = x + 3.5;
		y = y + verticalEnergy;

		verticalEnergy += 0.01982; 

		xLine = x + 1;
		yLine = y + 1; 

		if (skud == true){
			context.clearRect(0,0,1024,800);
			// Kuglen tegnes
			context.beginPath();
			context.arc(x, y, radius, 0, 2 * Math.PI, false);
			context.fillStyle = 'black';
			context.fill();	

			// Streg Tegnes
			context.beginPath();
			context.arc(x, y, 7, 0, 6 * Math.PI, false);
			context.fillStyle = 'black';
			context.fill();	

			setTimeout(animate,10);
			if (x > 1050){
				x = 100;
				y = 735;
				verticalEnergy = output.innerHTML*-0.040000;
				skud = false;
			};
		};
		context.drawImage(kanon,10,730);
	};
animate();
};