REPORT zz_exerc16_05.

DATA: v_select  TYPE i,
      v_answer  TYPE i VALUE 0,
      v_counter TYPE i.


SELECTION-SCREEN BEGIN OF BLOCK b0 WITH FRAME TITLE text-001.
SELECT-OPTIONS: s_range FOR v_select.

SELECTION-SCREEN END OF BLOCK b0.

START-OF-SELECTION.

  PERFORM f_sumodd.


*&---------------------------------------------------------------------*
*&      Form  F_SUMODD
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
*  -->  p1        text
*  <--  p2        text
*----------------------------------------------------------------------*
FORM f_sumodd.
  v_counter = s_range-low.

  DO ( s_range-high - s_range-low + 1 ) TIMES.
    IF ( ( v_counter MOD 2 ) = 1 ) AND ( ( v_counter MOD 3 ) = 0 ).
      v_answer = v_answer + v_counter.
    ENDIF.

    v_counter = v_counter + 1.

  ENDDO.

  WRITE: text-002, v_answer.
ENDFORM.
