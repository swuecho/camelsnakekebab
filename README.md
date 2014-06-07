## camelsnakekebab 

port of  https://metacpan.org/pod/String::CamelSnakeKebab 


## Example

```ocaml
let test_upper_camel_case _ = assert_equal "FluxCapacitor" (upper_camel_case "flux_capacitor");;
let test_lower_camel_case  _ = assert_equal "fluxCapacitor" (lower_camel_case "flux_capacitor");;
let test_lower_snake_case1 _ = assert_equal "a_snake_slithers_slyly" ( lower_snake_case "ASnakeSlithersSlyly");; 
let test_lower_snake_case2 _ = assert_equal "address1" ( lower_snake_case "address1");; 
let test_upper_snake_case _ = assert_equal "A_Snake_Slithers_Slyly" ( upper_snake_case "ASnakeSlithersSlyly");; 
let test_constant_case _ = assert_equal   "I_AM_CONSTANT" (constant_case "I am constant");;
let test_kebab_case _ =  assert_equal  "peppers-meat-pineapple" (kebab_case "Peppers_Meat_Pineapple");;
let test_http_header_case _ = assert_equal     "X-SSL-Cipher"   ( http_header_case "x-ssl-cipher");; 
```



## TODO
1. write make file?( oasis ?)
2. upload to opam? (need final review)



## write a summary

the regex problem
1. tride str.split, do not support pcre
2. Re2. do not support (?<= (?=  which is import to my case
3. Pcre-ocaml, can not get it work and hard to find a example
   after see an example, finally get it works.
   but it still have bug in it
   submit bug report, and the author get it work
4. finally get it work 

