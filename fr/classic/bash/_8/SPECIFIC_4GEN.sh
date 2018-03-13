CLREOL=$'\x1B[K'

function stds(){
echo -e "$basic
%%%%%%%%%%%%%%%%%          %%%%%%%%%%%%%%%%%
%               %    stdin %               % 
%   cat LIST    %========> %    |grep @    %========>
%               % stdout   %               % stdout
%%%%%%%%%%%%%%%%%          %%%%%%%%%%%%%%%%%
        |                          |
        |================>         |================>
         stderr                     stderr


        ${CLREOL}
${CLREOL}$reset"
}

