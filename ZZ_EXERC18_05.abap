REPORT zz_exerc18_05.

DATA: v_total TYPE i VALUE 0.

SELECTION-SCREEN BEGIN OF BLOCK b0 WITH FRAME TITLE text-001.
PARAMETERS: p_hours TYPE i,
            p_sal   TYPE i.

SELECTION-SCREEN END OF BLOCK b0.

START-OF-SELECTION.

  PERFORM f_extrasal.
*&---------------------------------------------------------------------*
*&      Form  F_EXTRASAL
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
*  -->  p1        text
*  <--  p2        text
*----------------------------------------------------------------------*
FORM f_extrasal .

  IF p_hours <= 40.
    WRITE: text-002.
  ELSE.
    v_total = ( p_hours - 40 ) * ( p_sal * '0.5' ).
    WRITE: text-003, v_total.
  ENDIF.

ENDFORM.
