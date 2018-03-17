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
%   cat LIST    %===(${code}|${reset}${basic})===> %     grep @    %========>${CLREOL}
%               % stdout    %               % stdout${CLREOL}
%%%%%%%%%%%%%%%%%           %%%%%%%%%%%%%%%%%${CLREOL}
        |                           |${CLREOL}
        |=================>         |================>${CLREOL}
         stderr                      stderr${CLREOL}$reset"
}


function std_4(){
echo -e "$basic
%%%%%%%%%%%%%%%%%${CLREOL}
%               %${CLREOL}
%     cat X     %=========>${CLREOL}
%               % stdout${CLREOL}
%%%%%%%%%%%%%%%%%           %%%%%%%%%%%%%%%%%${CLREOL}
        |             stdin %               %${CLREOL}
        |=======(${code}|&${reset}${basic})======> %    grep cat   %========>${CLREOL}
         stderr             %               % stdout${CLREOL}
                            %%%%%%%%%%%%%%%%%${CLREOL}
                                    |${CLREOL}
                                    |================>${CLREOL}
	                                 stderr${CLREOL}$reset"
}

