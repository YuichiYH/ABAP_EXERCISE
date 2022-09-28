REPORT ZZ_EXERC12_05.

data: v_fator TYPE i VALUE 1,
      v_result type i.

SELECTION-SCREEN BEGIN OF BLOCK b0 WITH FRAME TITLE text-001.
PARAMETERS: p_base TYPE i,
            p_mult TYPE i.

  SELECTION-SCREEN END OF BLOCK b0.

START-OF-SELECTION.

DO p_mult TIMES.
  v_result = p_base * v_fator.

  WRITE: v_result.

  v_fator = v_fator + 1.

ENDDO.
