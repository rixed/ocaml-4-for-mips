/***********************************************************************/
/*                                                                     */
/*                                OCaml                                */
/*                                                                     */
/*            Xavier Leroy, projet Cristal, INRIA Rocquencourt         */
/*                                                                     */
/*  Copyright 1996 Institut National de Recherche en Informatique et   */
/*  en Automatique.  All rights reserved.  This file is distributed    */
/*  under the terms of the GNU Library General Public License, with    */
/*  the special exception on linking described in file ../../LICENSE.  */
/*                                                                     */
/***********************************************************************/

/* $Id: chmod.c 11156 2011-07-27 14:17:02Z doligez $ */

#include <sys/types.h>
#include <sys/stat.h>
#include <mlvalues.h>
#include "unixsupport.h"

CAMLprim value unix_chmod(value path, value perm)
{
  int ret;
  ret = chmod(String_val(path), Int_val(perm));
  if (ret == -1) uerror("chmod", path);
  return Val_unit;
}
