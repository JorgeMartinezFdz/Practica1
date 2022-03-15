            ;|------------------------------------------------------------------------------|
            ;|PROGRAMA PARA REALIZAR LA MULTIPLICACION DE DOS NUMEROS ENTEROS...............|
            ;|POR:  JORGE MARTÍNEZ FERNÁNDEZ NO. CONTROL:18100740...........................|
            ;|MATERIA: SISTEMAS EMBEBIDOS...................................................|
            ;|FECHA:17/02/22................................................................|
            ;|______________________________________________________________________________|



            mov     r0, #740; primer digito a
            mov     r1, #6 ; segundo digito b
            mov     r2, r1 ; en r2 creamos un contador igual al valor inicial de b
            bl      multiplicar ; se llama a la rutina multiplicar
regreso     end



multiplicar 
            add     r3,r3,r0 ;r3=r0+r0
            sub     r2,r2, #1 ; se resta uno al contador para llevar el control
            cmp     r2,#0 ; se compara si al contador se volvio cero
            bne     multiplicar ; se regresa a la funcion multiplicar si no se cuplio que r2=0
            b       regreso