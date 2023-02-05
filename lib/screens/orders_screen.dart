import 'package:flutter/material.dart';
import 'package:flutter_shop_app/widgets/app_drawer.dart';
import 'package:flutter_shop_app/widgets/order_item.dart';
import 'package:provider/provider.dart';

import '../providers/orders.dart';

class OrderScreen extends StatelessWidget {

  static const routeName = '/orders';

  @override
  Widget build(BuildContext context) {
    final orderData = Provider.of<Orders>(context);
    return Scaffold(
        appBar: AppBar(
          title: Text('Your Orders'),
        ),
        drawer: AppDrawer(),
        body: ListView.builder(itemCount: orderData.orders.length,
            itemBuilder: (context, i) => OrderItemWidget(orderData.orders[i]))
    );
  }
}
