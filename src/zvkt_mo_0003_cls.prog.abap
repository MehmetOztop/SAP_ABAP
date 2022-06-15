*&---------------------------------------------------------------------*
*& Include          ZVKT_MO_0003_CLS
*&---------------------------------------------------------------------*

CLASS lcl_salv DEFINITION.
  PUBLIC SECTION.
    TYPES: BEGIN OF gty_ekko,
             ebeln  TYPE ebeln,
             bukrs  TYPE bukrs,
             bstype TYPE bstyp,
             bsart  TYPE esart,
             lifnr  TYPE lifnr,
             spras  TYPE spras,
           END OF gty_ekko.

    DATA: gs_ekko TYPE gty_ekko,
          gt_ekko TYPE TABLE OF gty_ekko.

    DATA: go_salv TYPE REF TO cl_salv_table.

    METHODS: get_data,
      display_salv.

ENDCLASS.

CLASS lcl_salv IMPLEMENTATION.

  METHOD get_data.
    SELECT ebeln,
      bukrs,
      bstyp,
      bsart,
      lifnr,
      spras
      FROM ekko
      WHERE ebeln IN @so_ebeln
       INTO TABLE @gt_ekko.

  ENDMETHOD.
  METHOD display_salv.

    cl_salv_table=>factory(

      IMPORTING
        r_salv_table   =  go_salv   " Basis Class Simple ALV Tables
      CHANGING
        t_table        = gt_ekko
    ).
*    CATCH cx_salv_msg.    "

    go_salv->display( ).

  ENDMETHOD.

ENDCLASS.
