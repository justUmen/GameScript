function funcjs_7_echo_au_revoir_test(){
GS_text.innerHTML += `<hr>
<hr>`;}
function funcjs_10_wc_test(){
GS_text.innerHTML += `<hr>
 1  2 10 test
<hr>`;}
function funcjs_15_cat_test(){
GS_text.innerHTML += `<hr>
au revoir
<hr>`;}
function funcjs_30_echo_au_revoir_wc(){
GS_text.innerHTML += `<hr>
      1       2      10
<hr>`;}
function funcjs_35_cat_LIST(){
GS_text.innerHTML += `<hr>
<pre>Joseph
email:joseph@bjornulf.org
Carla
email:carla@bjornulf.org
Charlie
email:charlie@bjornulf.org
Akemail
email:akemail@bjornulf.org
Bob
email:bob@bjornulf.org
Albert
email:albert@bjornulf.org
Jessica
email:jessica@bjornulf.org
Carla
email:carla@bjornulf.org</pre>
<hr>`;}
function funcjs_40_cat_LIST_grep_email(){
GS_text.innerHTML += `<hr>
<pre>email:joseph@bjornulf.org
email:carla@bjornulf.org
email:charlie@bjornulf.org
Akemail
email:akemail@bjornulf.org
email:bob@bjornulf.org
email:albert@bjornulf.org
email:jessica@bjornulf.org
email:carla@bjornulf.org</pre>
<hr>`;}
function funcjs_44_cat_LIST_grep__(){
GS_text.innerHTML += `<hr>
<pre>email:joseph@bjornulf.org
email:carla@bjornulf.org
email:charlie@bjornulf.org
email:akemail@bjornulf.org
email:bob@bjornulf.org
email:albert@bjornulf.org
email:jessica@bjornulf.org
email:carla@bjornulf.org</pre>
<hr>`;}
function funcjs_47_cat_LIST_grep___EMAILS(){
GS_text.innerHTML += `<hr>
<hr>`;}
function funcjs_51_cat_LIST_grep__v__(){
GS_text.innerHTML += `<hr>
<pre>Joseph
Carla
Charlie
Akemail
Bob
Albert
Jessica
Carla</pre>
<hr>`;}
function funcjs_54_cat_LIST_grep__v___sort(){
GS_text.innerHTML += `<hr>
<pre>Akemail
Albert
Bob
Carla
Carla
Charlie
Jessica
Joseph</pre>
<hr>`;}
function funcjs_58_cat_LIST_grep__v___sort_uniq(){
GS_text.innerHTML += `<hr>
<pre>Akemail
Albert
Bob
Carla
Charlie
Jessica
Joseph</pre>
<hr>`;}
function funcjs_66_grep__v___LIST_sort__u(){
GS_text.innerHTML += `<hr>
<pre>Akemail
Albert
Bob
Carla
Charlie
Jessica
Joseph</pre>
<hr>`;}
function funcjs_74_echo_au_revoir_wc__l(){
GS_text.innerHTML += `<hr>
1
<hr>`;}
function funcjs_77_echo__n_au_revoir_wc__l(){
GS_text.innerHTML += `<hr>
0
<hr>`;}
function funcjs_83_cat_X__grep_cat(){
GS_text.innerHTML += `<hr>
cat: X: No such file or directory
<hr>`;}
function funcjs_85_cat_X__grep__v_cat(){
GS_text.innerHTML += `<hr>
<hr>`;}
var d_listener = function(event2) {
	D=1;
	if (event2.key == 'd') {
		console.log("CTRL + d");
		document.getElementById('GS_man').style.display="none";
	}
	else{
		console.log("NO D, REMOVE LISTENER");
		GS_text.innerHTML += `<hr>`;
		if(FOCUS) clearInterval(FOCUS);
		document.removeEventListener('keydown', d_listener, false );
	}
}
function funcjs_98_cat_new(){
document.getElementById('GS_man').style.width="10px";
document.getElementById('GS_man').style.height="10px";
document.getElementById('GS_man').style.display="block";
GS_text.innerHTML += `<hr><textarea id='intera_textarea' style='width:100%;height:300px;'></textarea>`;
FOCUS=setInterval(function () { document.getElementById("intera_textarea").focus(); }, 1000);
document.addEventListener('keydown', (event) => {
	CTRL=0;
	D=0;
    if (event.key == 'Control') {
		console.log("CTRL PRESSED");
		document.addEventListener('keydown', d_listener, false );
    }
});
}
function funcjs_100_cat_new(){
document.getElementById('GS_man').style.width="100%";
document.getElementById('GS_man').style.height="100%";
GS_text.innerHTML += `<hr>
<hr>`;}
function funcjs_105_wc_new(){
GS_text.innerHTML += `<hr>
 2  4 18
<hr>`;}
function funcjs_107_wc_new(){
GS_text.innerHTML += `<hr>
 2  4 18 new
<hr>`;}
function funcjs_116_wc___new(){
GS_text.innerHTML += `<hr>
 2  4 18 -
<hr>`;}
function funcjs_121_wc___new_wcnew(){
GS_text.innerHTML += `<hr>
<hr>`;}
function funcjs_123_cat_wcnew(){
GS_text.innerHTML += `<hr>
 2  4 18 -
<hr>`;}
