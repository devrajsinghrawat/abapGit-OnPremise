@AccessControl.authorizationCheck: #CHECK 
@EndUserText.label: 'Projection View for online order' 
@Search.searchable: true 
@UI: { headerInfo: { typeName: 'Online Order Shop', 
                    typeNamePlural: 'Online Order Shop', 
                    title: { type: #STANDARD, label: 'Online Order Shop', value: 'order_id' } }, 
      presentationVariant: [{ sortOrder: [{ by: 'Creationdate',direction: #DESC }] }] } 
define root view entity ZC_ORDER_INFO_002 
  provider contract transactional_query 
  as projection on ZI_ORDER_INFO_002 
{ 
  
      @UI.facet: [          { id:                    'Orders', 
                                    purpose:         #STANDARD, 
                                   type:            #IDENTIFICATION_REFERENCE, 
                                   label:           'Order', 
                                    position:        10 }      ] 
  key Order_Uuid, 
      @UI: { lineItem:       [ { position: 10,label: 'order id', importance: #HIGH } ], 
               identification: [ { position: 10, label: 'order id' } ] } 
      @Search.defaultSearchElement: true 
      Order_Id, 
      @UI: { lineItem:       [ { position: 20,label: 'Ordered item', importance: #HIGH } ], 
              identification: [ { position: 20, label: 'Ordered item' } ] } 
      @Search.defaultSearchElement: true 
      Ordereditem, 
      Deliverydate as Deliverydate, 
      @UI: { lineItem:       [ { position: 50,label: 'Creation date', importance: #HIGH }, 
                               { type: #FOR_ACTION, dataAction: 'create_pr', label: 'Update IR' } ], 
            identification: [ { position: 50, label: 'Creation date' } ] } 
      Creationdate as Creationdate,
      @UI: { lineItem:       [ { position: 60,label: 'Purchase Req', importance: #HIGH }  ], 
             identification: [ { position: 60, label: 'Purchase Req' } ] } 
      _purchase_req.Purchasereqn as PurchaseRequistionNumber        
}
