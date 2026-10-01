@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS join'

define view entity ZAEB_CDS_EXAMPLE07
  as select from /dmo/flight as a
    inner join /dmo/carrier as b
      on a.carrier_id = b.carrier_id
{
    key a.carrier_id    as CarrierID,
    key a.connection_id as ConnectionID,
    key a.flight_date   as FlightDate,

        a.price         as FlightPrice,
        a.currency_code as CurrencyCode,
        b.name          as Name
}
