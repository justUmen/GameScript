<html>
<!-- -->
<head>
<title>popup.php</title>
<link href="bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
<link href="popup.css" rel="stylesheet">
<script type="text/javascript">
if(window.screen.availHeight==768){
	document.write("<style>#content { width:1366px; }</style>");
}
else{
	document.write("<style>#content { width:1920px; }</style>");
}
</script>
<script>
function close_popup(){
	//record more stuff, date and how many time click to close ???
	//if click to close i saw it and need confirm + test + record :p
	var objReq = new XMLHttpRequest();
	objReq.open("GET", "http://localhost:8888" + "?type=close_popup", false);
	objReq.send(null);
}
function nodeserver(nodecode){
	//record more stuff, date and how many time click to close ???
	//if click to close i saw it and need confirm + test + record :p
	var objReq = new XMLHttpRequest();
	objReq.open("GET", "http://localhost:8888" + "?type=" + nodecode, false);
	objReq.send(null);
}
function close_popup_TEST(){
	//no record for TESTING PURPOSE (keep ?)
	var objReq = new XMLHttpRequest();
	objReq.open("GET", "http://localhost:8888" + "?type=close_popup_TEST", false);
	objReq.send(null);
}
</script>
</head>
<?php
//$f_contents = file("my_line.txt");
//$line = $f_contents[array_rand($f_contents)];
//$data = $line;
$line = fgets(fopen("my_line.txt", 'r'));
//ADD A BLACKLIST FILE :p (with click to add to blacklist)
//ADD THIS POP UP ON OPENBOX MENU
//if you dont want popup about it anymore
$e = explode(":", $line);
//e[0] is not LANG it's LINK...
//$LANG=$e[0];

//EXAMPLE
//43:hiragana:ro:ろ:1:9

$FAMILY=$e[1];
$LEFT=$e[2];
#$RIGHT=preg_replace("/\n/","",$e[3]);
$RIGHT=$e[3];

$LANGUAGE_TAG_1=$e[4];
$LANGUAGE_TAG_2=preg_replace("/\n/","",$e[5]);

?>

<!--
<body onload="audio_play();">
-->
<body>
<div id="on_click_close" onclick="close_popup();return false;">

<div class='widget' id="content">
<?php echo "<div id='link'>{$FAMILY}</div>"; ?>
<?php echo "<div id='left_right'><img src='img/flags/{$LANGUAGE_TAG_1}.jpeg' /> : <img src='img/flags/{$LANGUAGE_TAG_2}.jpeg' /></div>"; ?>
<?php echo "<div id='left_right'>{$LEFT} : {$RIGHT}</div>"; ?>
</div>

<?php
//number of images : > 1 ? :P img.1 img.2 etc...
if(isset($_GET['img'])){
	//echo "<style>#content{top:25% !important;}</style>";
	echo "<div id='Image1' class='widget'><img src='../imgDB/{$LANG}/{$FAMILY}/{$LEFT}_{$RIGHT}.png' /></div>";
	echo "<div id='Image2' class='widget'><img src='../imgDB/{$LANG}/{$FAMILY}/{$LEFT}_{$RIGHT}.png' /></div>";
}

//include htmlDB elem 1, elem 2 and link :p
//echo "<div id='Elem1_html' class='widget'>";include("../htmlDB/{$LANG}/element/{$LEFT}.html");echo "</div>";
//echo "<div id='Elem2_html' class='widget'>";include("../htmlDB/{$LANG}/element/{$RIGHT}.html");echo "</div>";
//echo "<div id='Link_html' class='widget'>";include("../htmlDB/{$LANG}/link/{$LEFT}_{$RIGHT}.html");echo "</div>";
//echo "<div id='Family_html' class='widget'>";include("../htmlDB/{$LANG}/family/{$FAMILY}.html");echo "</div>";
?>

</div>

<?php
//MENU BAR : out of #on_click_close so onclick don't close
echo "<div id='bottom_bar'>";
echo "<a class='btn glyphicon glyphicon-random' onclick='new_random_error();' href='#' title='New random error'></a>";
echo "<a class='btn glyphicon glyphicon-headphones' onclick='audio_play();return false' href='#' title='Play sound'></a>";
echo "<a class='btn glyphicon glyphicon-list' onclick='return false' href='#' title='List all'></a>";
echo "<a class='btn glyphicon glyphicon-stats' onclick='return false' href='#' title='My stats'></a>";
echo "<a class='btn glyphicon glyphicon-volume-up' onclick='return false' href='#' title='Toggle Sound'></a>";

echo "<a class='btn glyphicon glyphicon-edit' onclick='return false' href='#' title='Edit this page'></a>";
echo "<a class='btn glyphicon glyphicon-trash' onclick='return false' href='#' title='Delete this link'></a>";

echo "</div>";
?>

</body>
<script>
function new_random_error(){
	//nodeserver("pkill -f \"/bin/bash /home/umen/SyNc/Projects/python_popup/launcher_html_popup.sh\";");
	close_popup(); //Close itself
}

//for audio.play() :p
//~ audio = new Audio("http://localhost/wikiface_new/soundDB/th/<?php echo $LEFT; ?>.mp3");
//~ audio.volume=1;

//Play touch keyboard
document.onkeypress = function(){
	audio_play();
};

function audio_play(arg){
	console.log(arg);
	var objReq = new XMLHttpRequest();
//	objReq.open("GET", "http://localhost:8888" + "?type=" + "mplayer /home/umen/SyNc/Projects/wikiface_new/soundDB/mix/<?php echo $LEFT; ?>_<?php echo $RIGHT; ?>.mp3" , false);
	//~ objReq.open("GET", "http://localhost:8888" + "?type=" + "mplayer /home/umen/SyNc/Projects/wikiface_new/soundDB/<?php echo $LANGUAGE_TAG_1; ?>/<?php echo $LEFT; ?>.mp3 /home/umen/SyNc/Projects/wikiface_new/soundDB/<?php echo $LANGUAGE_TAG_2; ?>/<?php echo $RIGHT; ?>.mp3" , false);
	objReq.open("GET", "http://localhost:8888" + "?type=" + "mplayer \"/home/umen/SyNc/Projects/wikiface_new/soundDB/<?php echo $LANG; ?>/<?php echo $LEFT; ?>.mp3\" \"/home/umen/SyNc/Projects/wikiface_new/soundDB/<?php echo $LANGUAGE_TAG_2; ?>/<?php echo $RIGHT; ?>.mp3\"" , false);
	//~ objReq.open("GET", "http://localhost:8888" + "?type=" + "mplayer /home/umen/SyNc/Projects/wikiface_new/soundDB/<?php echo $LANGUAGE_TAG_2; ?>/<?php echo $RIGHT; ?>.mp3" , false);
	objReq.send(null);
}


window.onload = function(){
 setTimeout(function(){
   audio_play();
 }, 1000);
};
</script>


</html>
