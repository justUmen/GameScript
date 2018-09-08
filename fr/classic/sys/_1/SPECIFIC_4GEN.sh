CLREOL=$'\x1B[K'

function tree_1(){
echo -e "
$code Processus: Votre terminal $reset$basic
|-- $code Processus: Son instance de bash $reset$basic
|   |-- $code Processus: Son instance de GameScript $reset$basic"
}
