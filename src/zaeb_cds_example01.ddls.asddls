//@AbapCatalog.sqlViewName: 'ZAEB_V_CDS_EXAMPLE01'
//@AbapCatalog.compiler.compareFilter: true
//@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS Example 01'
@Metadata.allowExtensions : true
//@Metadata.ignorePropagatedAnnotations: true

define view entity ZAEB_CDS_EXAMPLE01
  as select from /dmo/carrier
{
  key carrier_id    as AirlineID,
      name          as Name,
      currency_code as Currency
}
