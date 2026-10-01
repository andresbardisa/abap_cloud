@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Example 04'

define view entity ZAEB_CDS_EXAMPLE04
  as select from /dmo/flight
{
    key carrier_id     as CarrierID,
    key connection_id  as ConnectionID,
    key flight_date    as FlightDate,

        seats_max      as SeatsMax,
        seats_occupied as SeatsOccupied,

        ( seats_max - seats_occupied ) as SeatsAvailable
}
