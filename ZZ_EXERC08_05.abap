REPORT zz_exerc08_05.

SELECTION-SCREEN BEGIN OF BLOCK b0 WITH FRAME TITLE text-001.
PARAMETERS:
  p_value TYPE i.

SELECTION-SCREEN END OF BLOCK b0.

START-OF-SELECTION.

IF ( p_value mod 2 ) = 0.
  MESSAGE s208(00) WITH text-002.

else.
  MESSAGE s208(00) with text-003.

ENDIF.