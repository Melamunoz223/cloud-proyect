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

Data: lt_header type table of zheader_mym,
      lt_item   type table of zitems_mym.

      lt_header = value #(
      ( id = 'ID001'
      email = 'ana@example.com'
      firstname = 'Ana'
      lastname = 'García'
      country = 'Colombia'
      createon = '20250101'
      deliverydate = '20250105'
      orderestatus = 1
      imageurl = 'IMG00001' )
      ).


    delete from zheader_mym.
    insert zheader_mym from table @lt_header.

    if sy-subrc eq 0.
      out->write( |registros insertados| ).
    endif.

    lt_item = value #(
    ( id            = 'ITM001'
    id_header     = 'ID001'
    name          = 'Producto A'
    description   = 'Descripción del producto A'
    releasedate   = sy-datum
    discontinuedate = sy-datum + 365
    price         = '125.00'
    currency_code = 'USD'
    height        = '10'
    width         = '5'
    depth         = '2'
    quantity      = '100'
    unitofmeasure = 'PC' )
    ( id            = 'ITM002'
    id_header     = 'ID001'
    name          = 'Producto B'
    description   = 'Descripción del producto B'
    releasedate   = sy-datum + 1
    discontinuedate = sy-datum + 400
    price         = '250.00'
    currency_code = 'EUR'
    height        = '15'
    width         = '8'
    depth         = '3'
    quantity      = '200'
    unitofmeasure = 'KG'  )
    ).


    delete from zitems_mym.
    insert zitems_mym from table @lt_item.

    if sy-subrc eq 0.
      out->write( |registros insertados2| ).
    endif.

ENDMETHOD.

ENDCLASS.
