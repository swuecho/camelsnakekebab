open OUnit2;;
open Camelsnakekebab;;
(*
my %tests = (
    "foo bar"    => [qw/foo bar/],
    "foo\n\tbar" => [qw/foo bar/],
    "foo-bar"    => [qw/foo bar/],
    "fooBar"     => [qw/foo Bar/],
    "FooBar"     => [qw/Foo Bar/],
    "foo_bar"    => [qw/foo bar/],
    "FOO_BAR"    => [qw/FOO BAR/],
    "foo1"       => [qw/foo1/],
    "foo1bar"    => [qw/foo1bar/],
    "foo1_bar"   => [qw/foo1 bar/],
    "foo1Bar"    => [qw/foo1 Bar/],
);

*)

let test_split1 test_ctxt = assert_equal ["foo"; "bar"] (split_words "foo bar");;
let test_split2 test_ctxt = assert_equal ["foo"; "bar"] (split_words "foo\n\tbar");;
let test_split3 test_ctxt = assert_equal ["foo"; "bar"] (split_words "foo-bar");;
let test_split4 test_ctxt = assert_equal ["foo"; "bar"] (split_words "foo_bar");;
let test_split5 test_ctxt = assert_equal ["foo"; "bar"] (split_words "fooBar");; (* thisi is brken for now *)

(* Name the test cases and group them together *)
let suite_split_words=
"suite_case">:::
 ["test1">:: test_split1;
  "test2">:: test_split2;
  "test3">:: test_split3;
  "test4">:: test_split4;
  "test5">:: test_split5;
 ];;

(*
my %tests = (
    'FluxCapacitor'          => sub { upper_camel_case 'flux-capacitor'         },
    'fluxCapacitor'          => sub { lower_camel_case 'flux-capacitor'         },
    'a_snake_slithers_slyly' => sub { lower_snake_case 'ASnakeSlithersSlyly'    },
    'address1'               => sub { lower_snake_case 'address1'               },
    'A_Snake_Slithers_Slyly' => sub { upper_snake_case 'ASnakeSlithersSlyly'    },
    'I_AM_CONSTANT'          => sub { constant_case    'I am constant'          },
    'peppers-meat-pineapple' => sub { kebab_case       'Peppers_Meat_Pineapple' },
    'X-SSL-Cipher'           => sub { http_header_case 'x-ssl-cipher'           },
);

let test23 test_ctxt = assert_equal "a_snake_slithers_slyly" (lower_snake_case "ASnakeSlithersSlyly");; 
let test24 test_ctxt = assert_equal "address1" (lower_snake_case "address1");;
  "test3">:: test3; 
  "test4">:: test4;
  run_test_tt_main suite1;
*)
let test_upper_camel_case test_ctxt = assert_equal "FluxCapacitor" (upper_camel_case "flux_capacitor");;
let test_lower_camel_case  test_ctxt = assert_equal "fluxCapacitor" (lower_camel_case "flux_capacitor");;

(* Name the test cases and group them together *)
let suite_convert_case =
"suite_case">:::
 ["test21">:: test_upper_camel_case;
  "test22">:: test_lower_camel_case;
 ];;


let () =
  run_test_tt_main suite_convert_case;
  run_test_tt_main suite_split_words;
;;

