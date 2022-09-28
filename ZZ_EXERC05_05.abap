REPORT zz_exerc05_05.

DATA: d_idade     TYPE i,
      d_idade2015 TYPE i.

SELECTION-SCREEN BEGIN OF BLOCK b0 WITH FRAME TITLE text-001.
PARAMETERS:
  p_ano TYPE i.


SELECTION-SCREEN END OF BLOCK b0.

START-OF-SELECTION.

PERFORM f_idade using p_ano.

WRITE:   text-002, d_idade.
WRITE: / text-003, d_idade2015.

FORM f_idade USING ano TYPE i.

  d_idade = sy-datum(4) - ano.
  d_idade2015 = 2015 - ano.

  ENDFORM.
