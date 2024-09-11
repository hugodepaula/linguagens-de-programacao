       program-id. HELLOWORLD.

       *>   Exemplo de programa Hello World na linguagem C
       *>   Objetivo de apresentar a diferença entre sintaxe e semântica

       environment division.
       configuration section.

       data division.
       working-storage section.
       linkage section.
   
       *> Semântica: bloco de comandos
       *> Sintaxe: procedure -> end (abre com declaração e termina com end)

       procedure division.
           
            *> Semântica: fim de instrução
            *> Sintaxe: . (poto)

            DISPLAY "Hello World".    .

       end program HELLOWORLD.

