@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Example 03'

define view entity ZAEB_CDS_EXAMPLE03
  as select from /dmo/flight
{
  key carrier_id      as CarrierID,
  key connection_id   as ConnectionID,
  key flight_date     as FlightDate,

      price           as FlightPrice,
      currency_code   as CurrencyCode,
      plane_type_id   as PlaneTypeID,
      seats_max       as SeatsMax,
      seats_occupied  as SeatsOccupied
}
