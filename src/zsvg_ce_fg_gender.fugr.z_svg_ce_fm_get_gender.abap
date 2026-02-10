FUNCTION z_svg_ce_fm_get_gender.
*"----------------------------------------------------------------------
*"*"Local Interface:
*"  EXPORTING
*"     REFERENCE(ET_GENDER) TYPE  ZSVG_CE_TT_GENDER
*"----------------------------------------------------------------------
  et_gender = VALUE #( ( gender = 'MALE' description = 'Male' )
                       ( gender = 'FEMALE' description = 'Female' ) ).
ENDFUNCTION.
