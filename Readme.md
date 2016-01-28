abinitio.vim
============

A simple set of indentation & folding rules for my Quantum Espresso and CP2K 
input files. Will not work for all input files, but only with my style. Still 
you are welcome to try and improve.

For Tagbar support, use [Universal Ctags](https://ctags.io) and add 
this to `~/.ctags`

    --langdef=input
    --langmap=input:+.in
    --regex-input=/^\s*&(END.*)$/\1/z,ignore/{exclusive}{scope=pop}
    --regex-input=/^\s*\/\s*$/\1/z,ignore/{exclusive}{scope=pop}
    --regex-input=/^\s*&(\S+)\s*/\1/s,section/{scope=push}
