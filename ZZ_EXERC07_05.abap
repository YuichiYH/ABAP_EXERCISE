REPORT zz_exerc07_05.

SELECTION-SCREEN BEGIN OF BLOCK b0 WITH FRAME TITLE text-001.
PARAMETERS:
  p_valor1 TYPE i,
  p_valor2 TYPE i.

SELECTION-SCREEN END OF BLOCK b0.

START-OF-SELECTION.

  IF p_valor1 = p_valor2.
    MESSAGE s208(00) WITH text-002.
  ELSEIF p_valor1 > p_valor2.
    WRITE: text-003, p_valor1.

  ELSE.
    WRITE: text-003, p_valor2.
  ENDIF.
