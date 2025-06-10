CLASS zcl_data_mym DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_data_mym IMPLEMENTATION.

METHOD if_oo_adt_classrun~main.

out->write( |en proceso insertados2| ).

Data: lt_header type table of zheader_mym,
      lt_item   type table of zitems_mym,
      lt_status type table of zstatus_mym.

      lt_header = value #(
      ( id = 'ID001' email = 'david@example.com' firstname = 'David' lastname = 'García' country = 'Colombia' createon = '20250103' deliverydate = '20250105' orderestatus = 1  imageurl =
'https://i.pinimg.com/originals/c7/f9/5d/c7f95dc56ec6d7ab2400c9a2d1cdabb4.jpg' )
      ( id = 'ID002'  email = 'ana@example.com' firstname = 'Ana' lastname = 'García' country = 'Colombia' createon = '20250101' deliverydate = '20250105' orderestatus = 1  imageurl =
'https://i.pinimg.com/originals/af/a4/58/afa45850e32dec8b2adb910e4fd5a4ac.png' )
      ( id = 'ID003' email = 'carlos@example.com' firstname = 'Carlos' lastname = 'Pérez' country = 'México' createon = '20250102' deliverydate = '20250107' orderestatus = 2 imageurl =
'https://i.pinimg.com/1200x/cc/04/d3/cc04d3fed2b7d120665540ef4c578707.jpg' )
      ( id = 'ID004' email = 'laura@example.com' firstname = 'Laura' lastname = 'Martínez' country = 'Argentina' createon = '20250103' deliverydate = '20250108' orderestatus = 3 imageurl =
'https://i.pinimg.com/originals/cd/7b/4a/cd7b4a052e85cc31c2dafd7b1c995d44.png' )
      ( id = 'ID005' email = 'pedro@example.com' firstname = 'Pedro' lastname = 'Ramírez' country = 'Chile' createon = '20250104' deliverydate = '20250109' orderestatus = 2 imageurl =
'https://i.pinimg.com/236x/cb/65/04/cb65043d5c7f9abeddbc9e131310037a.jpg' )
      ( id = 'ID006' email = 'maria@example.com' firstname = 'María' lastname = 'López' country = 'Perú' createon = '20250105' deliverydate = '20250110' orderestatus = 1 imageurl =
      'https://i.pinimg.com/236x/36/2a/6b/362a6b943ab4a8615189799b22eaa508.jpg'
)
      ( id = 'ID007' email = 'jorge@example.com' firstname = 'Jorge' lastname = 'Sánchez' country = 'Colombia' createon = '20250106' deliverydate = '20250111' orderestatus = 2 imageurl =
      'https://i.pinimg.com/236x/cb/65/04/cb65043d5c7f9abeddbc9e131310037a.jpg' )
      ( id = 'ID008' email = 'sofia@example.com' firstname = 'Sofía' lastname = 'Torres' country = 'Uruguay' createon = '20250107' deliverydate = '20250112' orderestatus = 1 imageurl =
'https://i.pinimg.com/236x/3d/6b/c9/3d6bc9ab5e520a66523e3dffab399bf0.jpg' )
      ( id = 'ID009' email = 'diego@example.com' firstname = 'Diego' lastname = 'Morales' country = 'Paraguay' createon = '20250108' deliverydate = '20250113' orderestatus = 2 imageurl =
'https://i.pinimg.com/474x/d1/cc/72/d1cc7217bda0ea141900c93162ff5272.jpg' )
      ( id = 'ID010' email = 'camila@example.com' firstname = 'Camila' lastname = 'Rojas' country = 'Ecuador' createon = '20250109' deliverydate = '20250114' orderestatus = 3 imageurl =
'https://i.pinimg.com/236x/3d/6b/c9/3d6bc9ab5e520a66523e3dffab399bf0.jpg' )
      ( id = 'ID011' email = 'juan@example.com' firstname = 'Juan' lastname = 'Herrera' country = 'Bolivia' createon = '20250110' deliverydate = '20250115' orderestatus = 3 imageurl =
'https://i.pinimg.com/236x/d1/2b/07/d12b07e55c0d0f6057541c0e45c30612.jpg' )
      ( id = 'ID012' email = 'paula@example.com' firstname = 'Paula' lastname = 'Vargas' country = 'Venezuela' createon = '20250111' deliverydate = '20250116' orderestatus = 1 imageurl =
'https://i.pinimg.com/236x/3d/6b/c9/3d6bc9ab5e520a66523e3dffab399bf0.jpg' )
      ( id = 'ID013' email = 'alejandro@example.com' firstname = 'Alejandro' lastname = 'Cruz' country = 'España' createon = '20250112' deliverydate = '20250117' orderestatus = 2 imageurl =
'https://i.pinimg.com/1200x/cc/04/d3/cc04d3fed2b7d120665540ef4c578707.jpg' )
      ( id = 'ID014' email = 'valentina@example.com' firstname = 'Valentina' lastname = 'Mendoza' country = 'Colombia' createon = '20250113' deliverydate = '20250118' orderestatus = 3 imageurl =
'https://i.pinimg.com/236x/73/28/07/7328077e2d2675fee4b6f10f46a16601.jpg' )
      ( id = 'ID015' email = 'mateo@example.com' firstname = 'Mateo' lastname = 'Silva' country = 'México' createon = '20250114' deliverydate = '20250119' orderestatus = 1 imageurl =
'https://i.pinimg.com/736x/56/1a/d4/561ad4a651c1f93c0b37c0773d1a3f27.jpg' )
      ( id = 'ID016' email = 'isabella@example.com' firstname = 'Isabella' lastname = 'Castro' country = 'Argentina' createon = '20250115' deliverydate = '20250120' orderestatus = 2 imageurl =
'https://i.pinimg.com/736x/bf/8b/8f/bf8b8f4458aa8a3c857686de61f0e15c.jpg' )
      ( id = 'ID017' email = 'sebastian@example.com' firstname = 'Sebastián' lastname = 'Ortega' country = 'Chile' createon = '20250116' deliverydate = '20250121' orderestatus = 2 imageurl =
'https://i.pinimg.com/474x/d1/cc/72/d1cc7217bda0ea141900c93162ff5272.jpg' )
      ( id = 'ID018' email = 'martina@example.com' firstname = 'Martina' lastname = 'Gómez' country = 'Perú' createon = '20250117' deliverydate = '20250122' orderestatus = 3 imageurl =
'https://i.pinimg.com/736x/7c/b1/02/7cb102dfadbbde56f8b6c23f0f04986a.jpg' )
      ( id = 'ID019' email = 'lucas@example.com' firstname = 'Lucas' lastname = 'Navarro' country = 'Ecuador' createon = '20250118' deliverydate = '20250123' orderestatus = 2 imageurl =
'https://i.pinimg.com/736x/8b/47/51/8b4751bb4c227f8ca3b545f651a10788.jpg' )
      ( id = 'ID020' email = 'emma@example.com' firstname = 'Emma' lastname = 'Reyes' country = 'Colombia' createon = '20250119' deliverydate = '20250124' orderestatus = 1 imageurl =
'https://i.pinimg.com/736x/7c/b1/02/7cb102dfadbbde56f8b6c23f0f04986a.jpg' )
      ( id = 'ID021' email = 'david@example.com' firstname = 'David' lastname = 'Córdoba' country = 'México' createon = '20250120' deliverydate = '20250125' orderestatus = 3 imageurl =
'https://i.pinimg.com/736x/56/1a/d4/561ad4a651c1f93c0b37c0773d1a3f27.jpg' ) ).



    delete from zheader_mym.
    insert zheader_mym from table @lt_header.

    if sy-subrc eq 0.
      out->write( |registros insertados| ).
    endif.

    lt_item = value #(
  ( id = 'ITM001' id_header = 'ID001' name = 'Producto A' description = 'Descripción del producto A' releasedate = sy-datum discontinuedate = sy-datum + 365 price = '125.00' currency_code = 'USD' height = '10' width = '5' depth = '2' quantity = '100'
unitofmeasure = 'PC' )
  ( id = 'ITM002' id_header = 'ID001' name = 'Producto B' description = 'Descripción del producto B' releasedate = sy-datum + 1 discontinuedate = sy-datum + 400 price = '250.00' currency_code = 'EUR' height = '15' width = '8' depth = '3' quantity = '200'
unitofmeasure = 'KG' )
  ( id = 'ITM003' id_header = 'ID002' name = 'Producto B' description = 'Descripción del producto B' releasedate = sy-datum + 1 discontinuedate = sy-datum + 400 price = '250.00' currency_code = 'EUR' height = '15' width = '8' depth = '3' quantity = '200'
unitofmeasure = 'KG' )
  ( id = 'ITM004' id_header = 'ID003' name = 'Producto C' description = 'Descripción del producto C' releasedate = sy-datum discontinuedate = sy-datum + 300 price = '300.00' currency_code = 'USD' height = '12' width = '6' depth = '4' quantity = '50'
unitofmeasure = 'PC' )
  ( id = 'ITM005' id_header = 'ID004' name = 'Producto D' description = 'Descripción del producto D' releasedate = sy-datum discontinuedate = sy-datum + 365 price = '100.00' currency_code = 'EUR' height = '20' width = '10' depth = '5' quantity = '150'
unitofmeasure = 'KG' )
  ( id = 'ITM006' id_header = 'ID004' name = 'Producto E' description = 'Descripción del producto E' releasedate = sy-datum + 2 discontinuedate = sy-datum + 500 price = '90.00' currency_code = 'USD' height = '8' width = '4' depth = '2' quantity = '75'
unitofmeasure = 'PC' )
  ( id = 'ITM007' id_header = 'ID005' name = 'Producto F' description = 'Descripción del producto F' releasedate = sy-datum discontinuedate = sy-datum + 200 price = '110.00' currency_code = 'USD' height = '13' width = '7' depth = '3' quantity = '60'
unitofmeasure = 'PC' )
  ( id = 'ITM008' id_header = 'ID006' name = 'Producto G' description = 'Descripción del producto G' releasedate = sy-datum discontinuedate = sy-datum + 400 price = '150.00' currency_code = 'EUR' height = '10' width = '5' depth = '2' quantity = '80'
unitofmeasure = 'KG' )
  ( id = 'ITM009' id_header = 'ID007' name = 'Producto H' description = 'Descripción del producto H' releasedate = sy-datum discontinuedate = sy-datum + 365 price = '210.00' currency_code = 'USD' height = '16' width = '9' depth = '4' quantity = '120'
unitofmeasure = 'PC' )
  ( id = 'ITM010' id_header = 'ID007' name = 'Producto I' description = 'Descripción del producto I' releasedate = sy-datum + 3 discontinuedate = sy-datum + 450 price = '180.00' currency_code = 'EUR' height = '14' width = '8' depth = '3' quantity = '90'
unitofmeasure = 'KG' )
  ( id = 'ITM011' id_header = 'ID008' name = 'Producto J' description = 'Descripción del producto J' releasedate = sy-datum discontinuedate = sy-datum + 365 price = '130.00' currency_code = 'USD' height = '11' width = '6' depth = '2' quantity = '110'
unitofmeasure = 'PC' )
  ( id = 'ITM012' id_header = 'ID009' name = 'Producto K' description = 'Descripción del producto K' releasedate = sy-datum discontinuedate = sy-datum + 365 price = '275.00' currency_code = 'USD' height = '17' width = '9' depth = '4' quantity = '95'
unitofmeasure = 'KG' )
  ( id = 'ITM013' id_header = 'ID009' name = 'Producto L' description = 'Descripción del producto L' releasedate = sy-datum discontinuedate = sy-datum + 420 price = '95.00' currency_code = 'EUR' height = '10' width = '5' depth = '2' quantity = '70'
unitofmeasure = 'PC' )
  ( id = 'ITM014' id_header = 'ID010' name = 'Producto M' description = 'Descripción del producto M' releasedate = sy-datum discontinuedate = sy-datum + 365 price = '160.00' currency_code = 'USD' height = '15' width = '7' depth = '3' quantity = '85'
unitofmeasure = 'PC' )
  ( id = 'ITM015' id_header = 'ID011' name = 'Producto N' description = 'Descripción del producto N' releasedate = sy-datum discontinuedate = sy-datum + 380 price = '105.00' currency_code = 'EUR' height = '13' width = '6' depth = '2' quantity = '65'
unitofmeasure = 'KG' )
  ( id = 'ITM016' id_header = 'ID012' name = 'Producto O' description = 'Descripción del producto O' releasedate = sy-datum discontinuedate = sy-datum + 390 price = '185.00' currency_code = 'USD' height = '12' width = '5' depth = '2' quantity = '115'
unitofmeasure = 'PC' )
  ( id = 'ITM017' id_header = 'ID013' name = 'Producto P' description = 'Descripción del producto P' releasedate = sy-datum discontinuedate = sy-datum + 365 price = '300.00' currency_code = 'EUR' height = '20' width = '10' depth = '5' quantity = '100'
unitofmeasure = 'KG' )
  ( id = 'ITM018' id_header = 'ID014' name = 'Producto Q' description = 'Descripción del producto Q' releasedate = sy-datum discontinuedate = sy-datum + 360 price = '145.00' currency_code = 'USD' height = '14' width = '7' depth = '3' quantity = '55'
unitofmeasure = 'PC' )
  ( id = 'ITM019' id_header = 'ID014' name = 'Producto R' description = 'Descripción del producto R' releasedate = sy-datum discontinuedate = sy-datum + 420 price = '95.00' currency_code = 'EUR' height = '9' width = '4' depth = '2' quantity = '45'
unitofmeasure = 'KG' )
  ( id = 'ITM020' id_header = 'ID015' name = 'Producto S' description = 'Descripción del producto S' releasedate = sy-datum discontinuedate = sy-datum + 365 price = '170.00' currency_code = 'USD' height = '16' width = '8' depth = '3' quantity = '125'
unitofmeasure = 'PC' )
  ( id = 'ITM021' id_header = 'ID016'  name = 'Producto T' description = 'Descripción del producto T' releasedate = sy-datum discontinuedate = sy-datum + 300 price = '220.00' currency_code = 'EUR' height = '18' width = '9' depth = '4' quantity = '95'
unitofmeasure = 'KG' )
  ( id = 'ITM022' id_header = 'ID017' name = 'Producto U' description = 'Descripción del producto U' releasedate = sy-datum discontinuedate = sy-datum + 365 price = '135.00' currency_code = 'USD' height = '11' width = '6' depth = '3' quantity = '105'
unitofmeasure = 'PC' )
  ( id = 'ITM023' id_header = 'ID017' name = 'Producto V' description = 'Descripción del producto V' releasedate = sy-datum discontinuedate = sy-datum + 390 price = '190.00' currency_code = 'USD' height = '15' width = '8' depth = '4' quantity = '115'
unitofmeasure = 'KG' )
  ( id = 'ITM024' id_header = 'ID018' name = 'Producto W' description = 'Descripción del producto W' releasedate = sy-datum discontinuedate = sy-datum + 365 price = '210.00' currency_code = 'EUR' height = '16' width = '8' depth = '3' quantity = '85'
unitofmeasure = 'PC' )
  ( id = 'ITM025' id_header = 'ID018' name = 'Producto X' description = 'Descripción del producto X' releasedate = sy-datum discontinuedate = sy-datum + 400 price = '250.00' currency_code = 'USD' height = '17' width = '9' depth = '4' quantity = '60'
unitofmeasure = 'KG' )
  ( id = 'ITM026' id_header = 'ID019' name = 'Producto Y' description = 'Descripción del producto Y' releasedate = sy-datum discontinuedate = sy-datum + 370 price = '160.00' currency_code = 'USD' height = '14' width = '7' depth = '3' quantity = '75'
unitofmeasure = 'PC' )
  ( id = 'ITM027' id_header = 'ID020' name = 'Producto Z' description = 'Descripción del producto Z' releasedate = sy-datum discontinuedate = sy-datum + 365 price = '140.00' currency_code = 'EUR' height = '12' width = '6' depth = '3' quantity = '100'
unitofmeasure = 'KG' )
  ( id = 'ITM028' id_header = 'ID020' name = 'Producto AA' description = 'Descripción del producto AA' releasedate = sy-datum discontinuedate = sy-datum + 420 price = '180.00' currency_code = 'USD' height = '13' width = '7' depth = '3' quantity = '90'
unitofmeasure = 'PC' )
  ( id = 'ITM029' id_header = 'ID021' name = 'Producto AB' description = 'Descripción del producto AB' releasedate = sy-datum discontinuedate = sy-datum + 360 price = '195.00' currency_code = 'EUR' height = '10' width = '5' depth = '2' quantity = '65'
unitofmeasure = 'KG' )
).


    delete from zitems_mym.
    insert zitems_mym from table @lt_item.

    if sy-subrc eq 0.
      out->write( |registros insertados2| ).
    endif.

     out->write( |en proceso| ).

    lt_status = value #(
    ( cod_sta = 1 orderstatus = 'Canceled' )
    ( cod_sta = 2 orderstatus = 'In progress' )
    ( cod_sta = 3 orderstatus = 'Acepted' )

    ).

        delete from zstatus_mym.
    insert zstatus_mym from table @lt_status.

    if sy-subrc eq 0.
      out->write( |registros insertados3| ).
    endif.




ENDMETHOD.

ENDCLASS.
