(* The type of tokens. *)
type token = 
  | THEN
  | INT of (int)
  | IF
  | EOF
  | ELSE

(* This exception is raised by the monolithic API functions. *)
exception Error

(* The monolithic API. *)
val prog: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (LC.value option)
