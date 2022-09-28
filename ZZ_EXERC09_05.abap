REPORT zz_exerc09_05.

SELECTION-SCREEN BEGIN OF BLOCK b0 WITH FRAME TITLE text-001.
PARAMETERS: p_altura TYPE p DECIMALS 2.
SELECTION-SCREEN END OF BLOCK b0.

SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE text-002.
PARAMETERS: r_m RADIOBUTTON GROUP r1,
            r_f RADIOBUTTON GROUP r1.
SELECTION-SCREEN END OF BLOCK b1.

START-OF-SELECTION.

  IF r_m = abap_true.
    PERFORM f_pesom USING p_altura.

  ELSEIF r_f = abap_true.
    PERFORM f_pesof USING p_altura.

  ELSE.
    MESSAGE s208(00) WITH text-003 DISPLAY LIKE 'E'.

  ENDIF.

FORM f_pesom USING altura TYPE p.
  DATA:
        v_peso TYPE p DECIMALS 2.

  v_peso = ( '72.7' * altura ) - 58.

  WRITE: 'o peso ideal é de', v_peso.
ENDFORM.

FORM f_pesof USING altura TYPE p.
  DATA:
        v_peso TYPE p DECIMALS 2.

  v_peso = ( '62.1' * altura ) - '44.7'.

  WRITE: 'o peso ideal é de', v_peso.
ENDFORM.
