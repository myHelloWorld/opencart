#get orders to be shipped
SELECT concat(`shipping_lastname`,`shipping_firstname`), `shipping_zone`,`shipping_city`,concat('',cast(o.order_id as char), firstname),concat(`shipping_address_1`,'   ',`shipping_postcode`),`shipping_address_2` ,'QE1348', `shipping_postcode`,concat(op.model,'*',cast(op.quantity as char)),'Michael' as Sender,'ZY'as trackNum, o.order_id as orderId,
'' as status, op.model,1 as quatity, comment FROM oc_order o,oc_order_product op
where o.order_id = op.order_id
and (o.order_status_id = 18 OR o.order_status_id =21)
order by o.order_id desc

