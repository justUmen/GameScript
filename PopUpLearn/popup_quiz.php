<html>
<?php
include("../mysqli/FUNCTIONS.php");
?>
<!-- -->
<head>
<title>popup_quiz.php</title>
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
function execute_with_node_server(arg){
	console.log(arg);
	var objReq = new XMLHttpRequest();
	objReq.open("GET", "http://localhost:8888" + "?type=" + arg , false);
	objReq.send(null);
}
function close_popup(){
	//record more stuff, date and how many time click to close ???
	//if click to close i saw it and need confirm + test + record :p
	var objReq = new XMLHttpRequest();
	objReq.open("GET", "http://localhost:8888" + "?type=close_popup", false);
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

$FAMILY=$e[1];
$LEFT=$e[2];
#$RIGHT=preg_replace("/\n/","",$e[3]);
$RIGHT=$e[3];

$LANGUAGE_TAG_1=$e[4];
$LANGUAGE_TAG_2=preg_replace("/\n/","",$e[5]);

$LANG="en";
switch ($LANGUAGE_TAG_1) {
    case 1:
		$LANGUAGE_TAG_1="xx";$LANG="en";break; #xx is en ??? here or no, already in google_tts ?
    case 2:
		$LANGUAGE_TAG_1="en";$LANG="en";break;
    case 3:
		$LANGUAGE_TAG_1="fr";$LANG="fr";break;
    case 4:
		$LANGUAGE_TAG_1="th";$LANG="th";break;
    case 5:
		$LANGUAGE_TAG_1="de";$LANG="de";break;
    case 6:
		$LANGUAGE_TAG_1="es";$LANG="es";break;
    case 7:
		$LANGUAGE_TAG_1="it";$LANG="it";break;
    case 8:
		$LANGUAGE_TAG_1="no";$LANG="no";break;
    case 9:
		$LANGUAGE_TAG_1="ja";$LANG="ja";break;
    case 10:
		$LANGUAGE_TAG_1="zh";$LANG="zh";break;
    default:
		$LANGUAGE_TAG_1="en";$LANG="en";
}
switch ($LANGUAGE_TAG_2) {
    case 1:
		$LANGUAGE_TAG_2="xx";break; #xx is en ??? here or no, already in google_tts ?
    case 2:
		$LANGUAGE_TAG_2="en";break;
    case 3:
		$LANGUAGE_TAG_2="fr";break;
    case 4:
		$LANGUAGE_TAG_2="th";break;
    case 5:
		$LANGUAGE_TAG_2="de";break;
    case 6:
		$LANGUAGE_TAG_2="es";break;
    case 7:
		$LANGUAGE_TAG_2="it";break;
    case 8:
		$LANGUAGE_TAG_2="no";break;
    case 9:
		$LANGUAGE_TAG_2="ja";break;
    case 10:
		$LANGUAGE_TAG_2="zh";break;
    default:
		$LANGUAGE_TAG_2="en";
}

?>
<script>
function good_answer(){
	console.log("function good_answer");
	execute_with_node_server('echo "<?php echo $LEFT; ?>:<?php echo $RIGHT; ?>" >> /home/umen/SyNc/Projects/wikiface_new/popup/LOGS/good_answer;pkill -f "python3 /home/umen/SyNc/Projects/wikiface_new/popup/html_popup.py"');
	//close_popup();
}
function bad_answer(){
	//1 - Disable launcher_html_popup.sh
	//2 - kill html popup
	//3 - start again another question
	//execute_with_node_server('/home/umen/SyNc/Projects/wikiface_new/popup/toggle_popup.sh;pkill -f "python3 /home/umen/SyNc/Projects/wikiface_new/popup/html_popup.py";sleep 2;/home/umen/SyNc/Projects/wikiface_new/popup/toggle_popup.sh');
	return 0; //DO NOTHING FOR NOW
	//close_popup();
}
</script>

<body onload="document.getElementById('search-input').focus();">
<div id="on_click_close">

<div class='widget' id="content" style="top:10%;">
<?php echo "<div id='link'><img src='../img/flags/{$LANG}.jpeg' /> {$FAMILY}</div>"; ?><br>
<?php echo "<div id='left_right'>{$LEFT} : _____</div>"; ?>

<?php
echo "<div style='margin-top:10px;'>";
//echo "<a class='btn glyphicon' onclick='good_answer();' href='#' title='そ'>そ</a>";
//echo "<a class='btn glyphicon' onclick='bad_answer();' href='#' title='あ'>あ</a>";

//??? CODE TO SELECT ALL ANSWER FROM QUIZ, IS IT GOOD ??? :p arrache
//??? family.language_id !! :p ( and family.language_id=2) REMOVED
$query="SELECT e2.text as answer FROM subscribe_link, family, link, element e1 INNER JOIN element e2 where link.elem_1_id=e1.id and link.elem_2_id=e2.id and family.text='{$FAMILY}' and link.family_id=family.id and subscribe_link.link_id=link.id and e2.text!=\"{$RIGHT}\" and e1.text!=\"{$LEFT}\" LIMIT 30";
$result=mysqli_query($mysqli, $query);
$a=array();
$b=array();
while($row = mysqli_fetch_array($result)){
	array_push($a,"<a style='background-color:black;margin:3px;' class='btn glyphicon' onclick='bad_answer();' href='#'>{$row[0]}</a>");
	array_push($b,"{$row[0]}");
}
//ADD GOOD ANSWER
array_push($a,"<a style='background-color:black;margin:3px;' class='btn glyphicon' onclick='good_answer(\"{$LEFT}\",\"{$RIGHT}\");' href='#'>{$RIGHT}</a>");
array_push($b,"{$RIGHT}");
shuffle($a);
shuffle($b);
echo "</div>";
?>


  <script src="react_search/react.min.js"></script>
  <script src="react_search/react-search-input.js"></script>
  <div id="app"></div>
  <script>
NB_OF_BUTTON=0;
ONLY_GOOD_ANSWER=0;
    var App = React.createClass({
      displayName: "App",
      render: function render(){
        var mails = [
<?php
for ($i = 0; $i < count($b); $i++) {
	$elem=$b[$i];
	if($elem==$RIGHT){
	echo <<<END
        {
          user: {
            name: '$elem',
            LEFT: '$LEFT',
            answer: 'good'
          },
        },
END;
	}
	else {
	echo <<<END
        {
          user: {
            name: '$elem',
            answer: 'bad'
          },
        },
END;
	}
}
?>
        ];

        if (this.refs.search) {
          var filters = ['user.name'];
          mails = mails.filter(this.refs.search.filter(filters));
          //console.log(mails.length);
          //console.log(mails[0].user.answer);
          NB_OF_BUTTON=mails.length;
          if(NB_OF_BUTTON == 1){
			if(mails[0].user.answer == "good"){
				ONLY_GOOD_ANSWER=1;
			}
		  }
        }


        return (
          React.createElement("div", null,
            React.createElement(SearchInput, {id: 'focus_search',ref: "search", onChange: this.searchUpdated}),
              mails.map(function(mail) {
                if (mail.user.answer=="good") return (
                //(mail.user.LEFT,mail.user.name)
                  React.createElement("div", { onClick : good_answer, className: "btn glyphicon",style: {margin: "3px", backgroundColor: "black"}}, mail.user.name)
                );
                else return (
                  React.createElement("div", { onClick : bad_answer, className: "btn glyphicon",style: {margin: "3px", backgroundColor: "black"}}, mail.user.name)
                );
              })
          )
        );
      },

      searchUpdated: function searchUpdated(term) {
        this.setState({searchTerm: term}); // needed to force re-render
      }
    });

    React.render(React.createElement(App, null), document.getElementById("app"));

document.addEventListener('keydown', function(evt) {
	if(window.event.keyCode == 13 && NB_OF_BUTTON == 1 && ONLY_GOOD_ANSWER == 1) {
		console.log(window.event.keyCode+" "+NB_OF_BUTTON);
		//console.log("See only good answer and pressed enter");
		good_answer();
	}
});


  </script>


<!-- {$RIGHT} -->
</div>

</div>

<?php
//MENU BAR : out of #on_click_close so onclick don't close
echo "<div id='bottom_bar' style='text-align:center;'>";

echo "<a class='btn glyphicon glyphicon-trash' onclick='close_popup();' href='#' title='$RIGHT'></a>";

echo "</div>";
?>

<script>
function audio_play(arg){
	console.log(arg);
	var objReq = new XMLHttpRequest();
	objReq.open("GET", "http://localhost:8888" + "?type=" + "mplayer \"/home/umen/SyNc/Projects/wikiface_new/soundDB/<?php echo $LANGUAGE_TAG_1; ?>/<?php echo $LEFT; ?>.mp3\"" , false);
//objReq.open("GET", "http://localhost:8888" + "?type=" + "mplayer /home/umen/SyNc/Projects/wikiface_new/soundDB/<?php echo $LANGUAGE_TAG_1; ?>/<?php echo $LEFT; ?>.mp3 /home/umen/SyNc/Projects/wikiface_new/soundDB/<?php echo $LANGUAGE_TAG_2; ?>/<?php echo $RIGHT; ?>.mp3" , false);	
	//FOR QUIZ PLAY ONLY LEFT SIDE :p
	//???CHANGE NOT ONLY th FIND REAL SOLUTION FOR THIS :P, play sound from the "learning" LANGUAGE, here "th"
	//~ if("<?php echo $LANGUAGE_TAG_1; ?>"=="th"){
		//~ objReq.open("GET", "http://localhost:8888" + "?type=" + "mplayer /home/umen/SyNc/Projects/wikiface_new/soundDB/<?php echo $LANGUAGE_TAG_1; ?>/<?php echo $LEFT; ?>.mp3" , false);
	//~ }
	//~ else{
		//~ if("<?php echo $LANGUAGE_TAG_2; ?>"=="th"){
			//~ objReq.open("GET", "http://localhost:8888" + "?type=" + "mplayer /home/umen/SyNc/Projects/wikiface_new/soundDB/<?php echo $LANGUAGE_TAG_2; ?>/<?php echo $RIGHT; ?>.mp3" , false);
		//~ }
	//~ }
	objReq.send(null);
}

window.onload = function(){
 setTimeout(function(){
   audio_play();
 }, 1000);
};

//audio_play();
</script>

</body>
</html>
