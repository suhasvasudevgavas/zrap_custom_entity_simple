@EndUserText.label: 'CDS custom entity for gender'

@ObjectModel.query.implementedBy: 'ABAP:ZSVG_CE_CL_GENDER'
@Metadata.allowExtensions: true
define custom entity zsvg_ce_gender

{
  key gender : abap.char(10);

      description : abap.char(20);
}
