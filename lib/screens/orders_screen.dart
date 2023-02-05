import 'package:flutter/material.dart';
import 'package:flutter_shop_app/widgets/order_item.dart';
import 'package:provider/provider.dart';

import '../providers/orders.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final orderData = Provider.of<Orders>(context);
    return Scaffold(
        appBar: AppBar(
          title: Text('Your Orders'),
        ),
        body: ListView.builder(itemCount: orderData.orders.length,
            itemBuilder: (context, i) => OrderItemWidget(orderData.orders[i]))
    );
  }
}
