
      ASCII to EBCDIC / EBCDIC to ASCII conversion in OS/2 REXX
      ---------------------------------------------------------

                   RXGWA10.ZIP - Version 1.0

The included Dynamic Link Library (RXGWA.DLL) contains functions to
convert ASCII to EBCDIC - a2e() and EBCDIC to ASCII - e2a().

They are particularly useful in writing APPC & CPI-C REXX applications
on OS/2 computer for communications with mainframes.

a2e (ASCII to EBCDIC)
  returns an ASCII string when passed an EBCDIC string.

e2a (EBCDIC to ASCII)
  returns an EBCDIC string when passed an ASCII string.

RXGWA.DLL must be copied to a subdirectory that is included in your
LIBPATH.

The functions must be registered in your REXX program using the
RXFUNCADD function. For example...

             call RxFuncAdd 'a2e','rxgwa','a2e'

Use FUNCTEST.CMD program as an example of how to call these functions

Some Cautions:
1) Strings passed to each of these functions must be less than 64K.
2) There are several ways of converting ASCII to EBCDIC.  If you don't
   like the conversion method used here, edit the convert[] array and
   recompile & re-link RXGWA.DLL.

DISCLAIMERS:
I freely admit I'm not an expert in writing REXX functions, I just
followed the examples that came with the CSET/2 toolkit (thanx IBM).
So, be careful about using these functions in anything you consider
critical. RXGWA.DLL is freeware.  Feel free to use or modify these
programs however you see fit.  HOWEVER, please do not hold me
responsible for any damage they might cause you or your data.

If you have any suggestions, please drop me an E-mail. I'm considering
writing some functions to return the CPIC return code string given the
return code number (e.g. rc2str('1') -> 'CM_ALLOCATE_FAILURE_NO_RETRY')
... or others such as status_received number to string.  Let me know if
anyone wants these functions.

                                      Gerald W. (Jerry) am Ende
                                      Compuserve 73237,131
                                      March 13, 1993
