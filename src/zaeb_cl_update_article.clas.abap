CLASS zaeb_cl_update_article DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zaeb_cl_update_article IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    DATA lt_art TYPE STANDARD TABLE OF zaeb_tab_article.

    lt_art = VALUE #(

      ( id_art = '1'
        descr  = 'Mini color'
        desc2  = 'Mini estuches'
        color  = 'azul'
        piezas = 12
        stock  = 10
        url    = 'https://lalibreteria.mx/cdn/shop/files/la-libreteria-blackwing-458-01_700x.jpg?v=1786089628' )

      ( id_art = '2'
        descr  = 'Estuche grande'
        desc2  = 'Estuche escolar'
        color  = 'rojo'
        piezas = 24
        stock  = 15
        url    = 'https://lalibreteria.mx/cdn/shop/products/la-libreteria-Libreta-MonthyPlanner-3_204e518f-b0a5-4ed1-a5c3-676dd8e98a6f_700x.jpg?v=1588283579' )

      ( id_art = '3'
        descr  = 'Cuaderno A5'
        desc2  = 'Cuaderno tapa dura'
        color  = 'verde'
        piezas = 50
        stock  = 30
        url    = 'http://example.com/3' )

      ( id_art = '4'
        descr  = 'Bolígrafo azul'
        desc2  = 'Bolígrafo tinta azul'
        color  = 'azul'
        piezas = 100
        stock  = 75
        url    = 'http://example.com/4' )

      ( id_art = '5'
        descr  = 'Lápiz HB'
        desc2  = 'Lápiz de grafito'
        color  = 'amarillo'
        piezas = 200
        stock  = 120
        url    = 'http://example.com/5' )

      ( id_art = '6'
        descr  = 'Goma blanca'
        desc2  = 'Goma de borrar'
        color  = 'blanco'
        piezas = 80
        stock  = 45
        url    = 'http://example.com/6' )

      ( id_art = '7'
        descr  = 'Rotulador negro'
        desc2  = 'Rotulador permanente'
        color  = 'negro'
        piezas = 60
        stock  = 35
        url    = 'http://example.com/7' )

      ( id_art = '8'
        descr  = 'Carpeta A4'
        desc2  = 'Carpeta archivadora'
        color  = 'gris'
        piezas = 40
        stock  = 20
        url    = 'http://example.com/8' )

      ( id_art = '9'
        descr  = 'Mochila escolar'
        desc2  = 'Mochila para colegio'
        color  = 'negro'
        piezas = 15
        stock  = 8
        url    = 'http://example.com/9' )

      ( id_art = '10'
        descr  = 'Tijeras escolar'
        desc2  = 'Tijeras punta roma'
        color  = 'rojo'
        piezas = 25
        stock  = 18
        url    = 'http://example.com/10' )

      ( id_art = '11'
        descr  = 'Regla 30cm'
        desc2  = 'Regla transparente'
        color  = 'transparente'
        piezas = 35
        stock  = 22
        url    = 'http://example.com/11' )

      ( id_art = '12'
        descr  = 'Marcador azul'
        desc2  = 'Marcador fluorescente'
        color  = 'azul'
        piezas = 70
        stock  = 50
        url    = 'http://example.com/12' )

      ( id_art = '13'
        descr  = 'Agenda 2026'
        desc2  = 'Agenda diaria'
        color  = 'negro'
        piezas = 30
        stock  = 12
        url    = 'http://example.com/13' )

      ( id_art = '14'
        descr  = 'Archivador A4'
        desc2  = 'Archivador de anillas'
        color  = 'azul'
        piezas = 20
        stock  = 10
        url    = 'http://example.com/14' )

      ( id_art = '15'
        descr  = 'Post-it amarillo'
        desc2  = 'Notas adhesivas'
        color  = 'amarillo'
        piezas = 100
        stock  = 65
        url    = 'http://example.com/15' )

    ).

    MODIFY zaeb_tab_article FROM TABLE @lt_art.

    IF sy-subrc = 0.
      out->write( |Se actualizaron { lines( lt_art ) } registros.| ).
    ELSE.
      out->write( |Error al actualizar los registros. SY-SUBRC: { sy-subrc }| ).
    ENDIF.

  ENDMETHOD.

ENDCLASS.
