REPORT zz_exerc14_05.

DATA: v_val TYPE i,
      v_asw TYPE i.

SELECTION-SCREEN BEGIN OF BLOCK b0 WITH FRAME TITLE text-001.
SELECT-OPTIONS: s_val FOR v_val.


SELECTION-SCREEN END OF BLOCK b0.

START-OF-SELECTION.

v_asw = s_val-low.

WHILE v_asw <= s_val-high.
  WRITE: v_asw.
  v_asw = v_asw + 1.
ENDWHILE.
WRITE: /.

v_asw = s_val-high.

WHILE v_asw >= s_val-low.
  WRITE: v_asw.
  v_asw = v_asw - 1.
ENDWHILE.
