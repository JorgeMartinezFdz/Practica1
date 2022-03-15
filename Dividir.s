        ;|------------------------------------------------------------------------------|
        ;|PROGRAMA PARA REALIZAR LA DIVISION DE DOS NUMEROS CUYO RESULTADO SEA UN ENTERO|
        ;| SIN RECIDUOS.................................................................|
        ;|SUMA  CONSECUTIVA DE 2 AL MISMO REGISTRO......................................|
        ;|POR:  JORGE MARTÍNEZ FERNÁNDEZ NO. CONTROL:18100740...........................|
        ;|MATERIA: SISTEMAS EMBEBIDOS...................................................|
        ;|FECHA:17/02/22................................................................|
        ;|______________________________________________________________________________|
        
        
        
        mov     r0, #20 ; primer digito a
        mov     r1, #4 ; segundo digito b
        mov     r2, #0 ; se crea un contador que nos dara el cociente
        bl      dividir


dividir 
        sub     r0,r0,r1
        add     r2, r2, #1
        cmp     r0,#0
        bne     dividir
