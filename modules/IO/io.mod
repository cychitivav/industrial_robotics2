MODULE IO
!   --------------------------------------------------Tools-----------------------------------------------------

    PERS tooldata toolBJC:=[TRUE,[[12.254,-0.002,214.736],[0.923879533,0,0.382683432,0]],[0.162,[-27.13,0,109.8621],[1,0,0,0],0.003,0.003,0.0003162]];

!   ------------------------------------------------Workobjects-----------------------------------------------------------

!   Horizontal
    PERS wobjdata horizontal:=[FALSE,TRUE,"",[[653.753,399.386,25],[0.363649594,0,0,0.931535814]],[[0,0,0],[1,0,0,0]]];

!   Inclined
    PERS wobjdata inclined:=[FALSE,TRUE,"",[[373.72422246,-432.807039289,90.000000038],[0.351258535,0.094119441,0.24109921,0.899794501]],[[0,0,0],[1,0,0,0]]];   

    PERS string names{2} := ["horizontal","inclined"];

    PERS wobjdata whiteBoard;

!   ------------------------------------------------Logic-----------------------------------------------------------
    
    PROC main()
        WHILE TRUE DO        
            IF DI_01 = 1 THEN
                TPWRITE(names{1});
                SET DO_01;

                whiteBoard := horizontal;

                pathBJC;
                RESET DO_01;
            ELSEIF DI_02 = 1 THEN
                TPWRITE(names{2});
                SET DO_02;

                whiteBoard := inclined;

                pathBJC;
                RESET DO_02;
            ENDIF 
        ENDWHILE
    ENDPROC
ENDMODULE