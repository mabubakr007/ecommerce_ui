import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

// local files

import 'package:char_diwari_ecommerce_app/components/horizontal_list_view.dart';
import 'package:char_diwari_ecommerce_app/components/products_grid.dart';
import 'package:char_diwari_ecommerce_app/pages/shopping_cart.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Text(
        'Hey from the Stateless Widget',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}

class DynamicHomePage extends StatefulWidget {
  DynamicHomePage({Key key}) : super(key: key);

  @override
  DynamicHomePageState createState() => DynamicHomePageState();
}

class DynamicHomePageState extends State<DynamicHomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 325.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/sink1.jpg'),
          AssetImage('images/blower(1).jpg'),
          AssetImage('images/chandelier(1).jpg'),
          AssetImage('images/cement(1).jpg'),
          AssetImage('images/toilet(1).jpg'),
          AssetImage('images/putty.jpg'),
        ],
        autoplay: false, // donot want images to be playing
        animationCurve:
        Curves.fastLinearToSlowEaseIn, // come in slow and go out fast
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        indicatorBgPadding: 8.0,
        dotBgColor: Colors.transparent,
      ),
    );
    return Scaffold(
      appBar: new AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0.2,
        backgroundColor: Colors.yellow,
        title: Text(
          "Char Diwaari Shop",
          style: TextStyle(color: Colors.black),
        ),
        shadowColor: Colors.black,
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
              ),
              onPressed: () {}),
          new IconButton(
              icon: Icon(
                Icons.shopping_cart,
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => new Cart()));
              })
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            // header part of our drawer
            new UserAccountsDrawerHeader(
              accountName: Text(
                'Muhammad Abubakr',
                style: TextStyle(color: Colors.black),
              ),
              accountEmail: Text('k173856@nu.edu.pk',
                  style: TextStyle(color: Colors.black)),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, color: Colors.white),
                ),
              ),
              decoration: new BoxDecoration(color: Colors.yellow),
            ),
            // working on the body
            InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('Home Page'),
                  leading: Icon(Icons.home, color: Colors.black),
                )),

            InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('My Account'),
                  leading: Icon(Icons.person, color: Colors.black),
                )),

            InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('My Order'),
                  leading: Icon(Icons.shopping_basket, color: Colors.black),
                )),

            InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => new Cart()));
                },
                child: ListTile(
                  title: Text('Shopping Cart'),
                  leading: Icon(Icons.shopping_cart, color: Colors.black),
                )),

            InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('Favorites'),
                  leading: Icon(Icons.favorite, color: Colors.red),
                )),
            Divider(),
            InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('Settings'),
                  leading: Icon(Icons.settings, color: Colors.grey),
                )),

            InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('About'),
                  leading: Icon(Icons.help, color: Colors.grey),
                )),
          ],
        ),
      ),
      // change with Column
      body: new ListView(
        children: <Widget>[
          // display image carousel or stop displaying it
          image_carousel,
          // padding widget
          new Padding(
            /* child: Container(
              alignment: Alignment.centerleft,
            )
            */
              padding: const EdgeInsets.all(8.0),
              child: new Text('Categories')),

          // Horizontal list view of categories
          Horizontal_list(),

          // padding
          new Padding(
            padding: const EdgeInsets.all(15.0),

            /* child: Container(
              alignment: Alignment.centerleft,
            )
            */
            child: new Text('Recent Products'),
          ),

          // grid view of recent products
          // replace with flexible and no height
          Container(
            height: 320.0,
            child: Products(),
          )
        ],
      ),
    );
  }
}
