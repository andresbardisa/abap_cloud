@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Example 02 where'

define view entity ZAEB_CDS_EXAMPLE02
  as select from /dmo/carrier
{
    key carrier_id    as AirlineID,
        name          as Name,
        currency_code as Currency
}
where currency_code = 'USD'
