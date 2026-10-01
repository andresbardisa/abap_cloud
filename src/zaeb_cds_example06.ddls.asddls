@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Ejemplo varias columnas'

define view entity ZAEB_CDS_EXAMPLE06
  as select from /dmo/flight
{
  key carrier_id        as CarrierID,
  key connection_id     as ConnectionID,
  key flight_date       as FlightDate,

      price             as Price,
      currency_code     as CurrencyCode,
      plane_type_id     as PlaneTypeID,
      seats_max         as SeatsMax,
      seats_occupied    as SeatsOccupied,

      ( seats_max - seats_occupied ) as SeatsAvailable,

      case
        when ( seats_max - seats_occupied ) = 0
          then 'Full'
        when ( seats_max - seats_occupied ) < 20
          then 'Almost Full'
        when ( seats_max - seats_occupied ) >= 20
          then 'Available'
        else 'Error'
      end as FlightStatus
}
