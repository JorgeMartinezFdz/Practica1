        ;|------------------------------------------------------------------------------|
        ;|PROGRAMA PARA REALIZAR UNA RESTA CONSECUTIVA DE 1 A R0 Y DESPUÉS REALIZAR UNA |
        ;|SUMA  CONSECUTIVA DE 2 AL MISMO REGISTRO......................................|
        ;|POR:  JORGE MARTÍNEZ FERNÁNDEZ NO. CONTROL:18100740...........................|
        ;|MATERIA: SISTEMAS EMBEBIDOS...................................................|
        ;|FECHA:17/02/22................................................................|
        ;|______________________________________________________________________________|


        mov     r0, #15 ;Cargamos R0 con un dato decimal
        cmp     r0, #0
        bl      sumar
regreso bl      restar ;Salta a la subrutina llamada restar
        end

        ;SUBRUTINA PARA RESTAR EN 1
restar  sub     r0, r0, #1 ;substraer 1 de R0 R0=R0-1
        cmp     r0, #0 ;IF(RO==0) THEN
        bne     restar ;SALTA NUEVAMENTE A RESTAR
        ;ELSE   REGRESA AL PROGRAMA PRINCIPAL

        ;SUBRUTINA PARA SUMAR EN 2
sumar   add     r0, r0, #2 ;ADICIONA 2 A R0, R0=R0+2
        cmp     r0, #10 ;IF(R0=10) THEN
        bne     sumar ;SALTA NUEVAMENTE A SUMAR
        b       regreso
        ;ELSE   REGRESA AL PROGRAMA PRINCIPAL





