@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Root header'
@Metadata.ignorePropagatedAnnotations: true
define root view entity z_r_head_mym
  as select from zheader_mym
  composition [1..*] of z_r_items_mym as _Items
  association [0..1] to z_r_status_mym as _status on $projection.Orderestatus = _status.cod_sta
  
{
  key id           as Id,
      email        as Email,
      firstname    as Firstname,
      lastname     as Lastname,
      country      as Country,
      createon     as Createon,
      deliverydate as Deliverydate,
      orderestatus as Orderestatus,
//      case orderestatus
//      when 1 then 1
//      when 2 then 2
//      when 3 then 3
//      else 0
//      end          as Orderstatus,
      imageurl     as Imageurl,
      _Items,
      _status
}
