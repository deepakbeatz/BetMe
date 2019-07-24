<!DOCTYPE html>
<html>
<head>
	<link href='https://fonts.googleapis.com/css?family=Atma' rel='stylesheet'>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="static/css/home.css">
	<title>AppName</title>
	<link rel="icon" type="image/png" href="./canvas.png" />
	<meta name="theme-color" content=":rgb(235, 97, 5)" />
	<meta meta name="viewport" content= "width=device-width, user-scalable=no" />
</head>

<body onload="inc()"> 

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

<!--Start-->
<h1><i class="fas fa-dollar-sign"></i>BetMe </h1>
<hr>
<div class="conatiner" id="content">
	<div class="progress" style="height: 20px;">
		<div class="progress-bar" id="bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
		<div id="progressText" style="position: absolute; left: 0; top: 0; width: 100%; text-align:center; line-height: 20px;"></div>
	</div>
</div>

<div class="panel" id="gpanel">
	<div class="display">
	</div>

	<div class="lctrl">

		<table width="100%" height="100%" border="1px black" id ="tcontent">
		<tr>
		<td>1</td>
		<td>2</td>
		<td>3</td>
		</tr>
		<tr>
		<td>4</td>
		<td>5</td>
		<td>6</td>
		</tr>
		<tr>
		<td>7</td>
		<td>8</td>
		<td>9</td>
		</tr>
		<tr>
		<td></td>
		<td>0</td>
		<td></td>
		</tr>
		</table>

	</div>

	<div class="rctrl">
	<button id="gbutton">OK</button><br><br>
	<button id="rbutton">RESET</button>
	</div>


</div>

<script>
val=0;
inter = setInterval(inc,500);

function inc(){
	if(val < 100) {
		val+=Math.floor((Math.random() * 10) + 5);
		val = Math.min(val, 100);
		bar=document.getElementById("bar");
		progressText=document.getElementById("progressText");
		bar.style.width=val+"%";
		progressText.innerHTML = val + "%";
		
		
	} else {
		content=document.getElementById("content");
		content.innerHTML="";
		gpanel=document.getElementById("gpanel");
		gpanel.style.display="block";
		clearInterval(inter);
	}
}


</script>
</body>



</html>