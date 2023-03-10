import 'package:flutter/material.dart';
import 'package:flutter_shop_app/providers/products.dart';
import 'package:flutter_shop_app/screens/edit_product_screen.dart';
import 'package:flutter_shop_app/widgets/app_drawer.dart';
import 'package:flutter_shop_app/widgets/user_product_item.dart';
import 'package:provider/provider.dart';

class UserProductsScreen extends StatelessWidget {

  static const routeName = '/user-products';

  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Products>(context);
    return Scaffold(
        appBar: AppBar(
          title: Text('Your Products'),
          actions: <Widget>[
            IconButton(onPressed: () {
              Navigator.of(context).pushNamed(EditProductScreen.routeName);
            }, icon: Icon(Icons.add))
          ],),
        drawer: AppDrawer(),
        body: Padding(padding: EdgeInsets.all(8),
          child: ListView.builder(itemCount: productsData.items.length,
              itemBuilder: (_, i) =>
                  Column(
                    children: [
                      UserProductItem(productsData.items[i].id, productsData.items[i].title,
                          productsData.items[i].imageUrl),
                      Divider(),

                    ],
                  )),
        ));
  }
}
