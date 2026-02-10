@EndUserText.label: 'CDS custom entity for gender'

@ObjectModel.query.implementedBy: 'ABAP:ZCL_SVG_GENDER'
define custom entity zsvg_ce_gender

{
  key gender : abap.char(10);

      description : abap.char(20);
}
