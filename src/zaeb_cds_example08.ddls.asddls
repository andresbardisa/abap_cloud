@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS join'
define view entity ZAEB_CDS_EXAMPLE08
   as select from /dmo/flight as a
  inner join /dmo/connection as b
  on a.carrier_id = b.carrier_id and
     b.connection_id = b.connection_id 
  
{
     key a.carrier_id    as CarrierID
//    CONNECTION_ID
//    AIRPORT_FROM_ID
//    AIRPORT_TO_ID
//    DEPARTURE_TIME
//    ARRIVAL_TIME
//    DISTANCE
    
}  
