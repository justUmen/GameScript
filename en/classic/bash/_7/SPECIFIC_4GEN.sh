CLREOL=$'\x1B[K'

function stderr(){
echo -e "$basic
%%%%%%%%%%%%%%%%%${CLREOL}
%               % stdout${CLREOL}
%      lss      %========>${CLREOL}
%               %${CLREOL}
%%%%%%%%%%%%%%%%%${CLREOL}
        |${CLREOL}
        |================> ${codeError}bash: lss: command not found${reset}${basic}${CLREOL}
         stderr${CLREOL}$reset"
}


function stderr_2(){
echo -e "$basic
%%%%%%%%%%%%%%%%%${CLREOL}
%               % stdout${CLREOL}
%      lss      %========>${CLREOL}
%               %${CLREOL}
%%%%%%%%%%%%%%%%%${CLREOL}
        |${CLREOL}
        |================> ${codeError}bash: lss: command not found${reset}${basic}${CLREOL}
         stderr ( ${code}2>${reset}${basic} )${CLREOL}$reset"
}


function stdout(){
echo -e "$basic
%%%%%%%%%%%%%%%%%${CLREOL}
%               % stdout${CLREOL}
%      pwd      %========> ${codeFile}$HOME/.GameScript_bash7${reset}${basic}${CLREOL}
%               %${CLREOL}
%%%%%%%%%%%%%%%%%${CLREOL}
        |${CLREOL}
        |================>${CLREOL}
         stderr${CLREOL}$reset"
}

function stdout_2(){
echo -e "$basic
%%%%%%%%%%%%%%%%%${CLREOL}
%               % stdout ( ${code}1>${reset}${basic} / ${code}>${reset}${basic} )${CLREOL}
%      pwd      %========> ${codeFile}$HOME/.GameScript_bash7${reset}${basic}${CLREOL}
%               %${CLREOL}
%%%%%%%%%%%%%%%%%${CLREOL}
        |${CLREOL}
        |================>${CLREOL}
         stderr${CLREOL}$reset"
}


function stdout_stderr_1(){
echo -e "$basic
%%%%%%%%%%%%%%%%%${CLREOL}
%               % stdout ( ${code}1>${reset}${basic} )${CLREOL}
%     pwdd      %========>${CLREOL}
%               %${CLREOL}
%%%%%%%%%%%%%%%%%${CLREOL}
        |${CLREOL}
        |================> ${codeError}bash: pwdd: command not found${reset}${basic}${CLREOL}
         stderr ( ${code}2>${reset}${basic} )${CLREOL}
${CLREOL}
%%%%%%%%%%%%%%%%%${CLREOL}
%               % stdout ( ${code}1>${reset}${basic} )${CLREOL}
%      pwd      %========> ${codeFile}$HOME/.GameScript_bash7${reset}${basic}${CLREOL}
%               %${CLREOL}
%%%%%%%%%%%%%%%%%${CLREOL}
        |${CLREOL}
        |================>${CLREOL}
         stderr ( ${code}2>${reset}${basic} )${CLREOL}$reset"
}

function stdout_stderr_2(){
echo -e "$basic
%%%%%%%%%%%%%%%%%${CLREOL}
%               % stdout ( ${code}1>${reset}${basic} )${CLREOL}
%   (ls&&lss)   %========> ${codeFile}e  error  f  file  err  out${reset}${basic}${CLREOL}
%               %${CLREOL}
%%%%%%%%%%%%%%%%%${CLREOL}
        |${CLREOL}
        |================> ${codeError}bash: lss: command not found${reset}${basic}${CLREOL}
         stderr ( ${code}2>${reset}${basic} )${CLREOL}$reset"
}

function stdout_stderr_3(){
echo -e "$basic
%%%%%%%%%%%%%%%%%${CLREOL}
%               % stdout   ${codeFile}${reset}${basic} ( pwdd )${CLREOL}
%  (pwdd;pwd)   %========> ${codeFile}$HOME/.GameScript_bash7${reset}${basic} ( pwd )${CLREOL}
%               %${CLREOL}
%%%%%%%%%%%%%%%%%${CLREOL}
        |                  ${codeError}bash: pwdd: command not found${reset}${basic} ( pwdd )${CLREOL}
        |================> ${codeError}${reset}${basic} ( pwd )${CLREOL}
         stderr${CLREOL}$reset"
}

function stdout_stderr_4(){
echo -e "$basic
%%%%%%%%%%%%%%%%%${CLREOL}
%               % stdout${CLREOL}
%  (pwdd;pwd)   %========> ${codeFile}$HOME/.GameScript_bash7${reset}${basic}${CLREOL}
%               %${CLREOL}
%%%%%%%%%%%%%%%%%${CLREOL}
        |${CLREOL}
        |================> ${codeError}bash: pwdd: command not found${reset}${basic}${CLREOL}
         stderr${CLREOL}$reset"
}

function stdout_stderr_2in1(){
echo -e "$basic
%%%%%%%%%%%%%%%%%${CLREOL}
%               % stdout + stderr${CLREOL}
%  (pwdd;pwd)   %========> ${codeFile}$HOME/.GameScript_bash7${reset}${basic}${CLREOL}
%               %   |      ${codeError}bash: pwdd: command not found${reset}${basic}${CLREOL}
%%%%%%%%%%%%%%%%%   |${CLREOL}
        |           | ( ${code}2>&1${reset}${basic} )${CLREOL}
        |===========|${CLREOL}
         stderr${CLREOL}$reset"
}

function stdout_stderr_1in2(){
echo -e "$basic
%%%%%%%%%%%%%%%%%${CLREOL}
%               %${CLREOL}
%  (pwdd;pwd)   %===|${CLREOL}
%               %   | ( ${code}1>&2${reset}${basic} )${CLREOL}
%%%%%%%%%%%%%%%%%   |${CLREOL}
        |           |      ${codeFile}$HOME/.GameScript_bash7${reset}${basic}${CLREOL}
        |================> ${codeError}bash: pwdd: command not found${reset}${basic}${CLREOL}
         stderr + stdout${CLREOL}$reset"
}



