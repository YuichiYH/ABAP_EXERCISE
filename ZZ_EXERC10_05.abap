REPORT zz_exerc10_05.

DATA: d_asw TYPE i.

SELECTION-SCREEN BEGIN OF BLOCK b0 WITH FRAME TITLE text-001.
PARAMETERS: p_value1 TYPE i,
            p_value2 TYPE i.

SELECTION-SCREEN END OF BLOCK b0.

SELECTION-SCREEN BEGIN OF BLOCK b1 WITH FRAME TITLE text-002.
PARAMETERS: r_plus  RADIOBUTTON GROUP g0 DEFAULT 'X',
            r_minus RADIOBUTTON GROUP g0,
            r_divi  RADIOBUTTON GROUP g0,
            r_mult  RADIOBUTTON GROUP g0,
            r_rest  RADIOBUTTON GROUP g0.
SELECTION-SCREEN END OF BLOCK b1.

START-OF-SELECTION.

  CASE abap_true.
    WHEN r_plus.
      d_asw = p_value1 + p_value2.
      WRITE: d_asw.
    WHEN r_minus.
      d_asw = p_value1 - p_value2.
      WRITE: d_asw.
    WHEN r_divi.
      d_asw = p_value1 / p_value2.
      WRITE: d_asw.
    WHEN r_mult.
      d_asw = p_value1 * p_value2.
      WRITE: d_asw.
    WHEN r_rest.
      d_asw = p_value1 MOD p_value2.
      WRITE: d_asw.
  ENDCASE.
