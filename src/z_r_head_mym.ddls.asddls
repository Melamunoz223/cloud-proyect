@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Root header'
@Metadata.ignorePropagatedAnnotations: true
define root view entity z_r_head_mym as select from zheader_mym
composition [1..*] of z_r_items_mym as _Items
{
    key id as Id,
    email as Email,
    firstname as Firstname,
    lastname as Lastname,
    country as Country,
    createon as Createon,
    deliverydate as Deliverydate,
    orderestatus as Orderestatus,
    imageurl as Imageurl,
   _Items
}
