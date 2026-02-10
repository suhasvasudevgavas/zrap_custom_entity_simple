FUNCTION zget_gender.
*"----------------------------------------------------------------------
*"*"Local Interface:
*"  EXPORTING
*"     REFERENCE(ET_GENDER) TYPE  ZTT_GENDER
*"----------------------------------------------------------------------
  et_gender = VALUE #( ( gender = 'Male' description = 'Male' )
                       ( gender = 'Female' description = 'Female' ) ).
ENDFUNCTION.
