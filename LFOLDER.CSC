#include <wpfolder.sc>

class: WPSLockedFolder,
       external stem   = LockFolder_,
       local,
       major version = 1,
       minor version = 1;

parent: WPFolder;

passthru: C.ih;
#include "lfolderd.h"
#define INCL_WINWORKPLACE
#define INCL_BASE
#include <os2.h>
#include <string.h>
endpassthru;

data:
  char szPassword[20];

methods:
  override wpOpen;
