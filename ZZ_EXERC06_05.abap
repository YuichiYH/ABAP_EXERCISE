REPORT ZZ_EXERC06_05.

SELECTION-SCREEN BEGIN OF BLOCK b0 WITH FRAME TITLE text-001.
  PARAMETERS: p_value TYPE i.

SELECTION-SCREEN END OF BLOCK b0.

START-OF-SELECTION.

IF p_value <= 3.
  WRITE: text-002, p_value.

ELSE.
  MESSAGE s208(00) WITH text-003 DISPLAY LIKE 'E'.

ENDIF.
