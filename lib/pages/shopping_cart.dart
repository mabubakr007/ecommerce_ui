import 'dart:ui';

import 'package:flutter/material.dart';

// local files
import 'package:char_diwari_ecommerce_app/home.dart';
import 'package:char_diwari_ecommerce_app/components/cart_products.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // same app bar on all the pages
      appBar: new AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0.2,
        backgroundColor: Colors.yellow,
        title: InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => new DynamicHomePage()));
          },
          child: Text(
            "Your Shopping Cart",
            style: TextStyle(color: Colors.black),
          ),
        ),
        shadowColor: Colors.black,
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              onPressed: () {}),
          // removed the shopping cart icon here
        ],
      ),

      // body of shopping cart page
      body: new Cart_products(),

      bottomNavigationBar: new Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(
                child: ListTile(
                  title: new Text("Total"),
                  subtitle: new Text("Rs. 50000"),
                )),
            Expanded(
                child: new MaterialButton(
                  onPressed: () {},
                  child: new Text(
                    "CheckOut",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.red,
                ))
          ],
        ),
      ),
    );
  }
}
