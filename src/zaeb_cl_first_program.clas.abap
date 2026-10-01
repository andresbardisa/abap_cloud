CLASS zaeb_cl_first_program DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zaeb_cl_first_program IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

   out->write( 'First program' ).

*   call FUNCTIOn '/DMO/FLIGHT_TRAVEL_UPDATE'

  ENDMETHOD.
ENDCLASS.
