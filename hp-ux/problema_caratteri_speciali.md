In terminale su HP-UX alcuni caratteri, come ad esempio `@` (*at*) non funziona come al solito.

Per impostare il terminale in maniera *"normale"*:

    stty sane
    stty erase "^h" intr "^c" kill "^u" susp "^z" eof "^d"

Fonte: http://www.unix.com/302938055-post4.html

