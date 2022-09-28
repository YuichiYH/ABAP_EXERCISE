REPORT zz_exerc04_05.

DATA: v_media TYPE i.

CONSTANTS: c_num_notas TYPE i VALUE 4.

SELECTION-SCREEN BEGIN OF BLOCK b0 WITH FRAME TITLE text-001.
PARAMETERS:
  p_nota1 TYPE i,
  p_nota2 TYPE i,
  p_nota3 TYPE i,
  p_nota4 TYPE i.

SELECTION-SCREEN END OF BLOCK b0.

START-OF-SELECTION.

PERFORM f_media using p_nota1 p_nota2 p_nota3 p_nota4.

WRITE: 'media de notas é de ', v_media.

FORM f_media USING nota1 TYPE i
                   nota2 TYPE i
                   nota3 TYPE i
                   nota4 TYPE i.

  v_media = ( nota1 + nota2 + nota3 + nota4 ) / c_num_notas.


ENDFORM.
