REPORT zz_exerc11_05.

DATA:
      v_num TYPE i.

SELECTION-SCREEN BEGIN OF BLOCK b0 WITH FRAME TITLE text-001.
PARAMETERS: p_range TYPE i.
SELECTION-SCREEN END OF BLOCK b0.

START-OF-SELECTION.

v_num = 1.

DO p_range TIMES.
  WRITE: v_num.
  v_num = v_num + 1.
ENDDO.