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

(* $Id: jg_toplevel.ml 11156 2011-07-27 14:17:02Z doligez $ *)

open Tk

let titled ?iconname title  =
  let iconname = match iconname with None -> title | Some s -> s in
  let tl = Toplevel.create Widget.default_toplevel in
  Wm.title_set tl title;
  Wm.iconname_set tl iconname;
  Wm.group_set tl ~leader: Widget.default_toplevel;
  tl
