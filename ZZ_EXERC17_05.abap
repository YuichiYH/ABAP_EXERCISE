REPORT zz_exerc17_05.

DATA: v_select TYPE i,
      v_count  TYPE i.

SELECTION-SCREEN BEGIN OF BLOCK b0 WITH FRAME TITLE text-001.
SELECT-OPTIONS: s_range FOR v_select.

SELECTION-SCREEN END OF BLOCK b0.

START-OF-SELECTION.

  PERFORM f_odd.
*&---------------------------------------------------------------------*
*&      Form  F_ODD
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
*  -->  p1        text
*  <--  p2        text
*----------------------------------------------------------------------*
FORM f_odd.

  v_count = s_range-low.

  DO ( s_range-high - s_range-low + 1 ) TIMES.
    IF v_count mod 2 = 1.
      WRITE: v_count.
    ENDIF.

    v_count = v_count + 1.
  ENDDO.

ENDFORM.
