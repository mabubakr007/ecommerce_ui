import 'package:flutter/material.dart';

// local files

class Cart_products extends StatefulWidget {
  @override
  _Cart_productsState createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
  var Products_on_the_cart = [
    {
      "name": "Kansai Interior Paint",
      "picture": "images/kansai(1).jpg",
      "price": 3000,
      "size": "M",
      "color": "Peach",
      "quantity": 1,
    },
    {
      "name": "Porta Sanitary HD22N",
      "picture": "images/toilet(2).jpg",
      "price": 10500,
      "size": "L",
      "color": "White",
      "quantity": 3,
    },
    {
      "name": "Makita Air Blower M4000G",
      "picture": "images/blower(2).jpg",
      "price": 5500,
      "size": "S",
      "color": "Grey",
      "quantity": 10,
    }
  ];
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: Products_on_the_cart.length,
      itemBuilder: (context, index) {
        return Single_Cart_Product(
          cart_prod_name: Products_on_the_cart[index]["name"],
          cart_prod_color: Products_on_the_cart[index]["color"],
          cart_prod_quantity: Products_on_the_cart[index]["quantity"],
          cart_prod_size: Products_on_the_cart[index]["size"],
          cart_prod_price: Products_on_the_cart[index]["price"],
          cart_prod_picture: Products_on_the_cart[index]["picture"],
        );
      },
    );
  }
}

class Single_Cart_Product extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_picture;
  final cart_prod_price;
  final cart_prod_size;
  final cart_prod_color;
  final cart_prod_quantity;

  Single_Cart_Product(
      {this.cart_prod_name,
        this.cart_prod_picture,
        this.cart_prod_price,
        this.cart_prod_size,
        this.cart_prod_color,
        this.cart_prod_quantity});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        // leading section to show product
        leading: Image.asset(
          cart_prod_picture,
          width: 80.0,
          height: 100.0,
        ),

        // name of product
        title: new Text(cart_prod_name),

        // details of project

        subtitle: new Column(
          children: <Widget>[
            // Row inside the Column
            new Row(
              children: <Widget>[
                // this section is for Size of Products
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: new Text("Size:"),
                ),
                Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: new Text(
                    cart_prod_size,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),

                // this section is for Color of Products

                new Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                  child: new Text("Color:"),
                ),
                Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: new Text(
                      cart_prod_color,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),

                // this section is for the Price of Products
              ],
            ),
            new Container(
              alignment: Alignment.topLeft,
              child: new Text(
                "Rs. ${cart_prod_price}",
                style: TextStyle(
                    fontSize: 17.0,
                    color: Colors.red,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        trailing: new Wrap(
          children: [
            new IconButton(icon: Icon(Icons.arrow_drop_up), onPressed: () {}),
            new Text("$cart_prod_quantity"),
            new IconButton(icon: Icon(Icons.arrow_drop_down), onPressed: () {})
          ],
        ),
      ),
    );
  }
}
