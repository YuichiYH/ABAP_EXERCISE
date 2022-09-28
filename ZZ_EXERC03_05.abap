REPORT zz_exerc03_05.

DATA:
      v_area TYPE i.
SELECTION-SCREEN BEGIN OF BLOCK b0 WITH FRAME TITLE text-001.
PARAMETERS:
  p_base   TYPE i,
  p_altura TYPE i.


SELECTION-SCREEN END OF BLOCK b0.

START-OF-SELECTION.

  PERFORM area_triangulo USING: p_altura
                                p_base.

  WRITE: text-002, v_area.


FORM area_triangulo USING
                    altura TYPE i
                    base TYPE i.

  v_area = ( altura * base ) / 2.

ENDFORM.
