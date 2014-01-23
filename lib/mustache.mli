exception Missing_param of string with sexp
exception Bad_template of string with sexp

type t =
  | Iter_var
  | String of string
  | Escaped of string                
  | Section of section
  | Unescaped of string
  | Partial of string
  | Concat of t list
and section = {
  name: string;
  contents: t;
} with sexp

val tokenize : string -> ('a * string) list
  -> [> `Text of string | `Token of 'a * string ] list

val of_string : string -> t
val to_string : t -> string
val render : t -> Cow.Json.t -> string
