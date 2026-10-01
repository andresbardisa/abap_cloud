@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS parámetro'

define view entity ZAEB_CDS_EXAMPLE13
  with parameters
    P_CARRIER_ID : abap.char(3)

  as select from /dmo/flight
{
    key carrier_id    as AirlineID,
    key connection_id as ConnectionID,
    key flight_date   as FlightDate,

        price         as Price,
        currency_code as Currency
}
where carrier_id = $parameters.P_CARRIER_ID // LH
