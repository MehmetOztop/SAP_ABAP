*&---------------------------------------------------------------------*
*& Include          ZVKT_MO_0006_PAI
*&---------------------------------------------------------------------*
*&---------------------------------------------------------------------*
*&      Module  USER_COMMAND_0100  INPUT
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
MODULE user_command_0100 INPUT.
  CASE sy-ucomm.
    WHEN '&BACK'.
      SET SCREEN 0.
    WHEN '&EXIT'.
      SET SCREEN 0.
  ENDCASE.
ENDMODULE.
