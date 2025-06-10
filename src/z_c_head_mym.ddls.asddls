@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption header'
@Metadata.ignorePropagatedAnnotations: true

@Metadata.allowExtensions: true
@Search.searchable: true  //anotación para habilitar filtros o campos de busqueda 

define root view entity z_c_head_mym
provider contract transactional_query // indica que esta vista soporta operaciones de lectura y escritura
as projection on z_r_head_mym

{
@Search.defaultSearchElement: true
key Id,
 Email,
 @Search.defaultSearchElement: true
 @Consumption.valueHelpDefinition: [{ entity: { name: 'z_r_head_mym' ,     // Ayuda de
                                                element: 'Firstname'}  }]  // Busqueda
 Firstname,
 @Search.defaultSearchElement: true
 Lastname,
 @Search.defaultSearchElement: true
 Country,
 @Search.defaultSearchElement: true
 Createon,
 @Search.defaultSearchElement: true
 Deliverydate,
 
 @ObjectModel.text.element: [ 'Orderstatus' ]
      @Consumption.valueHelpDefinition: [{ entity: { name: 'z_r_status_mym',
                                                     element: 'cod_sta' },
                                           useForValidation: true }]
 Orderestatus,
_status.Orderstatus,
 Imageurl,
 /* Associations */
 _Items : redirected to composition child Z_C_ITEMS_MYM
}
