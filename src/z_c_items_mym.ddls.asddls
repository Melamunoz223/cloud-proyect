@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Comsump'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity Z_C_ITEMS_MYM as projection on z_r_items_mym
{
    key Id,
    key IdHeader,
    Name,
    Description,
    Releasedate,
    Discontinuedate,
    @Semantics.amount.currencyCode: 'CurrencyCode'
    Price,
    CurrencyCode,
    @Semantics.quantity.unitOfMeasure : 'Unitofmeasure'
    Height,
    @Semantics.quantity.unitOfMeasure : 'Unitofmeasure'
    Width,
    Depth,
    Quantity,
    Unitofmeasure,
    /* Associations */
    _Head : redirected to parent z_c_head_mym
}
