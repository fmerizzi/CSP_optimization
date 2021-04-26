% Lets make the worst queen problem model there is. 

include "globals.mzn";

% the chessboard dim
int: m;

% queen in row 1..m is in coloumn 1..m
array[1..m] of var 1..m: board;


% Check for perpendicular constraint
constraint alldifferent(board);

% And now the diagonal
constraint alldifferent([board[i] - i | i in 1..m]);
% inverse
constraint alldifferent([board[i] + i | i in 1..m]);

solve satisfy;

output [show(board)];
