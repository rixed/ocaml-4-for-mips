/***********************************************************************/
/*                                                                     */
/*                                OCaml                                */
/*                                                                     */
/*  Contributed by Stephane Glondu <steph@glondu.net>                  */
/*                                                                     */
/*  Copyright 2009 Institut National de Recherche en Informatique et   */
/*  en Automatique.  All rights reserved.  This file is distributed    */
/*  under the terms of the GNU Library General Public License, with    */
/*  the special exception on linking described in file ../../LICENSE.  */
/*                                                                     */
/***********************************************************************/

/* $Id: initgroups.c 11156 2011-07-27 14:17:02Z doligez $ */

#include <errno.h>

#include <sys/types.h>
#include <limits.h>
#include <grp.h>

int main(void)
{
  if (initgroups("root", 0) == -1 && errno != EPERM) return 1;
  return 0;
}
