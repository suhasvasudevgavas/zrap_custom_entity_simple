CLASS zcl_svg_gender DEFINITION
  PUBLIC FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    INTERFACES if_rap_query_provider .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_svg_gender IMPLEMENTATION.
  METHOD if_rap_query_provider~select.
    DATA lt_gender TYPE ztt_gender.
    DATA lv_count  TYPE int8.

    " TODO: variable is assigned but never used (ABAP cleaner)
    DATA(lv_offset) = io_request->get_paging( )->get_offset( ).
    " TODO: variable is assigned but never used (ABAP cleaner)
    DATA(lv_page_size) = io_request->get_paging( )->get_page_size( ).
    " TODO: variable is assigned but never used (ABAP cleaner)
    DATA(lt_requested_elements) = io_request->get_requested_elements( ).
    " TODO: variable is assigned but never used (ABAP cleaner)
    DATA(lt_sort_elements) = io_request->get_sort_elements( ).

    CALL FUNCTION 'ZGET_GENDER'
      IMPORTING et_gender = lt_gender.

    lv_count = lines( lt_gender ).

    io_response->set_total_number_of_records( iv_total_number_of_records = lv_count ).
    io_response->set_data( it_data = lt_gender ).
  ENDMETHOD.
ENDCLASS.
