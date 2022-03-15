            ;|------------------------------------------------------------------------------|
            ;|PROGRAMA PARA REALIZAR EL CALCULO DE EL CUADRADO DE UN NUMERO.................|
            ;|POR:  JORGE MARTÍNEZ FERNÁNDEZ NO. CONTROL:18100740...........................|
            ;|MATERIA: SISTEMAS EMBEBIDOS...................................................|
            ;|FECHA:01/03/22................................................................|
            ;|______________________________________________________________________________|

            MOV     R0, #87; EN R0 SE ALOJA EL NUMERO EL CUAL SERA ELEVADO AL CUADRADO
            BL      POTENCIA; LLAMADA A LA SUBRUTINA POTENCIA
            END


POTENCIA    
            MOV     R2, R0; R2=R0 R2 ACTUA COMO UN CONTADOR DE CUANTAS VECES SERA NECESARIO
            ;       SUMAR EL NUMERO PARA OBTENER LA MULTIPLICACION
            BL      MULTIPLICAR; LLAMADO A LA SUBRUTINA MULTIPLICAR


MULTIPLICAR 
            ADD     R3,R3,R0 ;R3=R3+R0
            SUB     R2,R2, #1 ; R2-=1 SE REDUCE EL CONTADOR DE MULTIPLICACIONES
            CMP     R2,#0 ; IF R2=0 THEN REGRESA A POTENCIA
            BNE     MULTIPLICAR; ELSE REGRESA A MULTIPLICAR
