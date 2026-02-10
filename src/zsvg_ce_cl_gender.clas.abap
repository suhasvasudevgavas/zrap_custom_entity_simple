CLASS zsvg_ce_cl_gender DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_rap_query_provider .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zsvg_ce_cl_gender IMPLEMENTATION.
  METHOD if_rap_query_provider~select.
    DATA lt_gender TYPE zsvg_ce_tt_gender.

    " TODO: variable is assigned but never used (ABAP cleaner)
    DATA(lv_offset) = io_request->get_paging( )->get_offset( ).
    " TODO: variable is assigned but never used (ABAP cleaner)
    DATA(lv_page_size) = io_request->get_paging( )->get_page_size( ).
    " TODO: variable is assigned but never used (ABAP cleaner)
    DATA(lt_requested_elements) = io_request->get_requested_elements( ).
    " TODO: variable is assigned but never used (ABAP cleaner)
    DATA(lt_sort_elements) = io_request->get_sort_elements( ).

    CALL FUNCTION 'Z_SVG_CE_FM_GET_GENDER'
      IMPORTING et_gender = lt_gender.

    io_response->set_total_number_of_records( CONV #( lines( lt_gender ) ) ).
    io_response->set_data( it_data = lt_gender ).
  ENDMETHOD.
ENDCLASS.
