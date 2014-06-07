## camelsnakekebab 

port of  https://metacpan.org/pod/String::CamelSnakeKebab 


## Example

```ocaml
assert_equal ["foo"; "bar"] (split_words "foo bar");;
assert_equal ["foo"; "bar"] (split_words "foo\n\tbar");;
assert_equal ["foo"; "bar"] (split_words "foo-bar");;
assert_equal ["foo"; "Bar"] (split_words "fooBar");;
assert_equal ["Foo"; "Bar"] (split_words "FooBar");;
assert_equal ["foo"; "bar"] (split_words "foo_bar");; 
assert_equal ["FOO"; "BAR"] (split_words "FOO_BAR");; 
assert_equal ["foo1"] (split_words "foo1");; 
assert_equal ["foo1bar"] (split_words "foo1bar");; 
assert_equal ["foo1";"bar"] (split_words "foo1_bar");;
assert_equal ["foo1";"Bar"] (split_words "foo1Bar");;
assert_equal "FluxCapacitor" (upper_camel_case "flux_capacitor");;
assert_equal "fluxCapacitor" (lower_camel_case "flux_capacitor");;
assert_equal "a_snake_slithers_slyly" ( lower_snake_case "ASnakeSlithersSlyly");; 
assert_equal "address1" ( lower_snake_case "address1");; 
assert_equal "A_Snake_Slithers_Slyly" ( upper_snake_case "ASnakeSlithersSlyly");; 
assert_equal  "I_AM_CONSTANT" (constant_case "I am constant");;
assert_equal  "peppers-meat-pineapple" (kebab_case "Peppers_Meat_Pineapple");;
assert_equal  "X-SSL-Cipher"   ( http_header_case "x-ssl-cipher");; 
```

## write a summary

the regex problem
1. tride str.split, do not support pcre
2. Re2. do not support (?<= (?=  which is import to my case
3. Pcre-ocaml, can not get it work and hard to find a example
   after see an example, finally get it works.
   but it still have bug in it
   submit bug report, and the author get it work
4. finally get it work 
