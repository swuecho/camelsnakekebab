open Core.Std;;
(* #require "pcre"; *)

let capitalize_http_header s =
    let uppercase_s = String.uppercase s in    
    let uppercase_http_headers =  
        ["CSP"; "ATT"; "WAP"; "IP" ;"HTTP"; "CPU" ;"DNT"; "SSL"; "UA"; "TE" ;"WWW"; "XSS"; "MD5"] in
      match List.mem uppercase_http_headers uppercase_s with
        | true -> uppercase_s 
        | _    -> String.capitalize s;;

let split_words str = 
(*  "A pattern that matches all known word separators." *)
    let word_separator_pattern =
        String.concat ~sep:"|" ["\\s+"; "_"; "-";
            "(?<=[A-Z])(?=[A-Z][a-z])";
            "(?<=[^A-Z_-])(?=[A-Z])";
            "(?<=[A-Za-z])(?=[^A-Za-z])"]
        |> Pcre.regexp in
    Pcre.split ~rex:word_separator_pattern str;;

let convert_case ~convert_first ~convert_rest ~sep ~str =
    match split_words str with  
        | [] -> failwith "illegal argument str"
        | hd::tl -> String.concat ~sep @@ (convert_first hd)::(List.map tl convert_rest);; (* ~sep <=> ~sep:sep *)
(*
val camle_case: string -> string;;
*)
    
let upper_camel_case str = 
    convert_case ~convert_first:String.capitalize ~convert_rest:String.capitalize ~sep:"" ~str;;

let lower_camel_case str =
    convert_case ~convert_first:String.lowercase ~convert_rest:String.capitalize ~sep:"" ~str;;

let camel_snake_case str = 
    convert_case ~convert_first:String.capitalize ~convert_rest:String.capitalize ~sep:"_" ~str;;

let lower_snake_case str = 
    convert_case ~convert_first:String.lowercase ~convert_rest:String.lowercase ~sep:"_"  ~str;;

let upper_snake_case str = 
    convert_case ~convert_first:String.lowercase ~convert_rest:String.lowercase ~sep:"_" ~str;;

let kebab_case  str = 
    convert_case ~convert_first:String.lowercase ~convert_rest:String.lowercase ~sep:"-" ~str;;

let http_header_case  str =  
    convert_case ~convert_first:capitalize_http_header ~convert_rest:capitalize_http_header ~sep:"-" ~str;;

(* write test Ounit*)

(* check the make convention of ocaml 
   "camelCase"        [lower-case capitalize "" ]
   "Snake_case"       [capitalize lower-case "_"]
   "SNAKE_CASE"       [upper-case upper-case "_"]
   "snake_case"       [lower-case lower-case "_"]
 *)    
