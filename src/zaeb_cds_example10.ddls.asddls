@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Flight with Carrier Association'

define view entity ZAEB_CDS_EXAMPLE10
  as select from /dmo/flight

  association [1..1] to /dmo/carrier as _Carrier
    on $projection.CarrierID = _Carrier.carrier_id
{
    key carrier_id    as CarrierID,
    key connection_id as ConnectionID,
    key flight_date   as FlightDate,

        price         as Price,
        currency_code as CurrencyCode,
        _Carrier.name as name,

        _Carrier
}
