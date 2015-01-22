%token <int> INT
%token IF
%token ELSE
%token THEN
%token EOF
%start <LC.value option> prog
%%

prog:
  | EOF       { None }
  | v = value { Some v }
  ;

value:
  | i = INT;
    {`Int i}
  | IF; cond = value; THEN; t = value; ELSE; e = value;
    {`If(cond,t,e)}
;
