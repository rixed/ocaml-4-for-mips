(*************************************************************************)
(*                                                                       *)
(*                         OCaml LablTk library                          *)
(*                                                                       *)
(*            Jacques Garrigue, Kyoto University RIMS                    *)
(*                                                                       *)
(*   Copyright 1999 Institut National de Recherche en Informatique et    *)
(*   en Automatique and Kyoto University.  All rights reserved.          *)
(*   This file is distributed under the terms of the GNU Library         *)
(*   General Public License, with the special exception on linking       *)
(*   described in file ../../../LICENSE.                                 *)
(*                                                                       *)
(*************************************************************************)

(* $Id: list2.ml 11156 2011-07-27 14:17:02Z doligez $ *)

open StdLabels

let exclude x l = List.filter l ~f:((<>) x)

let rec flat_map ~f = function
    [] -> []
  | x :: l -> f x @ flat_map ~f l
