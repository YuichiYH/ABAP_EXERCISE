REPORT zz_exerc02_05.

SELECTION-SCREEN BEGIN OF block b0 WITH FRAME TITLE text-001.
PARAMETERS:
  a TYPE i,
  b TYPE i,
  c TYPE i.
SELECTION-SCREEN END OF block b0.

START-OF-SELECTION.

  WRITE: 'valor de a:', a,
  / 'valor de b:', b,
  / 'valor de c:', c.

  IF a > b.
    PERFORM true USING 'a > b'.
  ELSE.
    PERFORM false USING 'a > b'.
  ENDIF.

  IF b = a.
    PERFORM true USING 'b = a'.
  ELSE.
    PERFORM false USING 'b = a'.
  ENDIF.

  IF ( a >= b ) AND ( c <> 5 ).
    PERFORM true USING '( a >= b ) AND ( c <> 5 )'.
  ELSE.
    PERFORM false USING '( a >= b ) AND ( c <> 5 )'.
  ENDIF.

  IF ( b < a ) OR ( a = 3 ).
    PERFORM true USING '( b < a ) OR ( a = 3 )'.
  ELSE.
    PERFORM false USING '( b < a ) OR ( a = 3 )'.
  ENDIF.

  IF ( a > b ) OR ( a = 3 ).
    PERFORM true USING '( a > B ) or ( a = 3 )'.
  ELSE.
    PERFORM false USING '( a > B ) or ( a = 3 )'.
  ENDIF.

  IF ( c <= 7 ) AND ( b > 0 ) AND ( c > a ).
    PERFORM true USING '( c <= 7 ) and ( b > 0 ) and ( c > a )'.
  ELSE.
    PERFORM false USING '( c <= 7 ) and ( b > 0 ) and ( c > a )'.
  ENDIF.


FORM true USING logic_op TYPE string.
  WRITE: / logic_op, text-002.
ENDFORM.

FORM false USING logic_op TYPE string.
  WRITE: / logic_op, text-003.
ENDFORM.
