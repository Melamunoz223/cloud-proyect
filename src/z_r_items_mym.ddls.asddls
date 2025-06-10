@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'cds item'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity z_r_items_mym
  as select from zitems_mym
  association to parent z_r_head_mym as _Head on $projection.IdHeader = _Head.Id
{
  key id              as Id,
  key id_header       as IdHeader,
      name            as Name,
      description     as Description,
      releasedate     as Releasedate,
      discontinuedate as Discontinuedate,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      price           as Price,
      currency_code   as CurrencyCode,
      @Semantics.quantity.unitOfMeasure : 'Unitofmeasure'
      height          as Height,
      @Semantics.quantity.unitOfMeasure : 'Unitofmeasure'
      width           as Width,
      depth           as Depth,
      quantity        as Quantity,
      unitofmeasure   as Unitofmeasure,
      _Head
}
