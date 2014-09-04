# NMAKE-compatible MAKE file for the REXX sample program RXGWA.DLL.
# This uses the IBM C Set/2 compiler and LINK386.

rxgwa.dll:        rxgwa.obj     rxgwa.def
         LINK386 rxgwa.obj,rxgwa.dll,,REXX,rxgwa.def;

rxgwa.obj:        rxgwa.c
         icc -c -Ge- rxgwa.c


