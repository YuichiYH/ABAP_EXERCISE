REPORT zz_exerc13_05.

DATA:
      v_answer TYPE i VALUE 1.

SELECTION-SCREEN BEGIN OF BLOCK b0 WITH FRAME TITLE text-001.
PARAMETERS: p_range TYPE i.


SELECTION-SCREEN END OF BLOCK b0.


START-OF-SELECTION.

  WHILE p_range >= v_answer.
    WRITE: v_answer.
    v_answer = v_answer * 2.

  ENDWHILE.
