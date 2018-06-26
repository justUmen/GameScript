CLREOL=$'\x1B[K'

function std_1(){
echo -e "$basic${CLREOL}
            %%%%%%%%%%%%%%%%%${CLREOL}
            %               %${CLREOL}
==========> %    COMMAND    %========>${CLREOL}
      stdin %               % stdout ( 1> / > )${CLREOL}
            %%%%%%%%%%%%%%%%%${CLREOL}
                  |${CLREOL}
                  |================>${CLREOL}
                   stderr ( 2> )${CLREOL}$reset"
}


function std_2(){
echo -e "$basic
            %%%%%%%%%%%%%%%%%${CLREOL}
            %               %${CLREOL}
==========> %    COMMAND    %========>${CLREOL}
stdin ( ${code}<${reset}${basic} ) %               % stdout ( 1> / > )${CLREOL}
            %%%%%%%%%%%%%%%%%${CLREOL}
                  |${CLREOL}
                  |================>${CLREOL}
                   stderr ( 2> )${CLREOL}$reset"
}



function std_3(){
echo -e "$basic
%%%%%%%%%%%%%%%%%           %%%%%%%%%%%%%%%%%${CLREOL}
%               %     stdin %               %${CLREOL}
%   cat LIST    %===(${code}|${reset}${basic})===> %     grep @    %========> ...${CLREOL}
%               % stdout    %               % stdout${CLREOL}
%%%%%%%%%%%%%%%%%           %%%%%%%%%%%%%%%%%${CLREOL}
        |                           |${CLREOL}
        |=================>         |================>${CLREOL}
         stderr                      stderr${CLREOL}$reset"
}


function std_4(){
echo -e "$basic
%%%%%%%%%%%%%%%%%${CLREOL}
%               % stdout${CLREOL}
%     cat X     %=====|           %%%%%%%%%%%%%%%%%${CLREOL}
%               %     |     stdin %               %${CLREOL}
%%%%%%%%%%%%%%%%%     |===(${code}|&${reset}${basic})==> %    grep cat   %========> ...${CLREOL}
        |             |           %               % stdout${CLREOL}
        |=============|           %%%%%%%%%%%%%%%%%${CLREOL}
         stderr                           |${CLREOL}
                                          |================>${CLREOL}
	                                       stderr${CLREOL}$reset"
}

#~ function stdout_stderr_2in1_1in2(){
#~ echo -e "$basic
#~ %%%%%%%%%%%%%%%%%${CLREOL}
#~ %               % stdout + stdout${CLREOL}
#~ %  (pwdd;pwd)   %========> $HOME/.GameScript_bash7${CLREOL}
#~ %               %   |      bash: pwdd: command not found${CLREOL}
#~ %%%%%%%%%%%%%%%%%   |${CLREOL}
        #~ |           | ( 2>&1 )${CLREOL}
        #~ |===========|${CLREOL}
         #~ stderr${CLREOL}
 #~ ${CLREOL}
#~ %%%%%%%%%%%%%%%%%${CLREOL}
#~ %               %${CLREOL}
#~ %  (pwdd;pwd)   %===|${CLREOL}
#~ %               %   | ( 1>&2 )${CLREOL}
#~ %%%%%%%%%%%%%%%%%   |${CLREOL}
        #~ |           |      $HOME/.GameScript_bash7${CLREOL}
        #~ |================> bash: pwdd: command not found${CLREOL}
         #~ stderr + stdout${CLREOL}$reset"
#~ }
