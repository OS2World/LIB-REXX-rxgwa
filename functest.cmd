/* REXX                                                        */
/*                                                             */
/*  Use e2a() (EBCDIC to ASCII) and a2e() (ASCII to EBCDIC)    */
/*  the same way you would use stardard rexx functions such    */
/*  as x2d() or c2x()                                          */
/*                                                             */
if rxfuncquery('a2e') then
   call rxfuncadd 'a2e','rxgwa','a2e'
if rxfuncquery('e2a') then
   call rxfuncadd 'e2a','rxgwa','e2a'

ebcdic = '„àâ¢@â¢@Åï@≈¬√ƒ…√@¢£ôâïá@'
ascii  = 'This is an ASCII string'

say e2a(ebcdic)'... converted to ASCII'
say a2e(ascii)'..... converted to EBCDIC'
say e2a(a2e(ascii))'..... converted back to ASCII'

exit
