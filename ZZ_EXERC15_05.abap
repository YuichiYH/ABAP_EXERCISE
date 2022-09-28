REPORT zz_exerc15_05.

SELECTION-SCREEN BEGIN OF BLOCK b0 WITH FRAME TITLE text-001.
PARAMETERS: p_num1 TYPE i,
            p_num2 TYPE i,
            p_num3 TYPE i,
            p_num4 TYPE i,
            p_num5 TYPE i.
SELECTION-SCREEN END OF BLOCK b0.

START-OF-SELECTION.

  PERFORM f_sum.
  PERFORM f_avrg.
  PERFORM f_grt.
  PERFORM f_sml.
  PERFORM f_avrgeven.

*&---------------------------------------------------------------------*
*&      Form  F_SUM
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
*  -->  p1        text
*  <--  p2        text
*----------------------------------------------------------------------*
FORM f_sum .

  DATA: v_answer TYPE i.

  v_answer = p_num1 + p_num2 + p_num3 + p_num4 + p_num5.

  WRITE: / text-101, v_answer.

ENDFORM.
*&---------------------------------------------------------------------*
*&      Form  F_AVRG
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
*  -->  p1        text
*  <--  p2        text
*----------------------------------------------------------------------*
FORM f_avrg .

  DATA: v_answer TYPE i.

  v_answer = p_num1 + p_num2 + p_num3 + p_num4 + p_num5 / 5 .

  WRITE: / text-102, v_answer.

ENDFORM.
*&---------------------------------------------------------------------*
*&      Form  F_GRT
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
*  -->  p1        text
*  <--  p2        text
*----------------------------------------------------------------------*
FORM f_grt .

  DATA: v_answer TYPE i.

  v_answer = p_num1.

  IF v_answer < p_num2.
    v_answer = p_num2.
  ENDIF.

  IF v_answer < p_num3.
    v_answer = p_num3.
  ENDIF.

  IF v_answer < p_num4.
    v_answer = p_num4.
  ENDIF.

  IF v_answer < p_num5.
    v_answer = p_num5.
  ENDIF.

  WRITE: / text-103, v_answer.

ENDFORM.
*&---------------------------------------------------------------------*
*&      Form  F_SML
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
*  -->  p1        text
*  <--  p2        text
*----------------------------------------------------------------------*
FORM f_sml .

  DATA: v_answer TYPE i.

  v_answer = p_num1.

  IF v_answer > p_num2.
    v_answer = p_num2.
  ENDIF.

  IF v_answer > p_num3.
    v_answer = p_num3.
  ENDIF.

  IF v_answer > p_num4.
    v_answer = p_num4.
  ENDIF.

  IF v_answer > p_num5.
    v_answer = p_num5.
  ENDIF.

  WRITE: / text-104, v_answer.

ENDFORM.
*&---------------------------------------------------------------------*
*&      Form  F_AVRGEVEN
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
*  -->  p1        text
*  <--  p2        text
*----------------------------------------------------------------------*
FORM f_avrgeven .

  DATA: v_answer TYPE i VALUE 0,
        v_even   TYPE i VALUE 0.


  IF p_num1 MOD 2 = 0 .
    v_answer = v_answer + p_num1.
    v_even = v_even + 1.
  ENDIF.

  IF p_num2 MOD 2 = 0.
    v_answer = v_answer + p_num2.
    v_even = v_even + 1.
  ENDIF.

  IF p_num3 MOD 2 = 0.
    v_answer = v_answer + p_num3.
    v_even = v_even + 1.
  ENDIF.

  IF p_num4 MOD 2 = 0.
    v_answer = v_answer + p_num4.
    v_even = v_even + 1.
  ENDIF.

  IF p_num5 MOD 2 = 0.
    v_answer = v_answer + p_num5.
    v_even = v_even + 1.

  ENDIF.

  v_answer = v_answer / v_even.

  WRITE: / text-105, v_answer.

ENDFORM.
