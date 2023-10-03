@AbapCatalog.sqlViewName: 'ZC_ORDER_INFO_0'
@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@EndUserText.label: 'Projection View for ZR_ORDER_INFO_003'
define view ZC_ORDER_INFO_002 as select from zorder_info_003
{
    key order_uuid as OrderUuid,
    order_id as OrderId,
    ordereditem as Ordereditem,
    deliverydate as Deliverydate,
    creationdate as Creationdate,
    created_by as CreatedBy,
    created_at as CreatedAt,
    last_changed_by as LastChangedBy,
    last_changed_at as LastChangedAt,
    local_last_changed_at as LocalLastChangedAt
}
