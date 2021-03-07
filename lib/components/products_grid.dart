import 'package:flutter/material.dart';
import 'package:char_diwari_ecommerce_app/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    // key value pair so make it easier for json files from firebase
    {
      "name": "Porta Metal Kitchen Sink",
      "picture": "images/sink2.jpg",
      "old_price": 15000,
      "price": 10000
    },
    {
      "name": "Makita Air Blower M4000G",
      "picture": "images/blower(2).jpg",
      "old_price": 8000,
      "price": 5500
    },
    {
      "name": "Philips LED Bulb",
      "picture": "images/bulb(2).jpg",
      "old_price": 450,
      "price": 300
    },
    {
      "name": "Kansai Interior Paint",
      "picture": "images/kansai(1).jpg",
      "old_price": 4500,
      "price": 3000
    },
    {
      "name": "Porta Sanitary HD22N",
      "picture": "images/toilet(2).jpg",
      "old_price": 13000,
      "price": 10500
    },
    {
      "name": "Pakistan Cables 7/29",
      "picture": "images/wire.jpg",
      "old_price": 7000,
      "price": 5500
    },
    {
      "name": "Lucky Cement Src",
      "picture": "images/cement(2).jpg",
      "old_price": 800,
      "price": 675
    },

    {
      "name": "LALUZ Chandelier",
      "picture": "images/chandelier(2).jpg",
      "old_price": 18000,
      "price": 15000
    },

    {
      "name": "Kansai Zen Putty",
      "picture": "images/putty.jpg",
      "old_price": 3500,
      "price": 2100
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        // it specifies that there must be 2 products at the same time
        gridDelegate:
        new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_prod(
            prod_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Single_prod(
      {this.prod_name,
        this.prod_picture,
        this.prod_old_price,
        this.prod_price});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: prod_name,
          child: Material(
            child: InkWell(
              // this code takes to other page on tapping the recent products
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                  builder: (context) => new ProductDetails(
                    // here the values of the product are being passed for the new page
                    product_detail_name: prod_name,
                    product_detail_old_price: prod_old_price,
                    product_detail_price: prod_price,
                    product_detail_picture: prod_picture,
                  ))),
              child: GridTile(
                footer: Container(
                  color: Colors.white70,
                  child: ListTile(
                    leading: Text(
                      prod_name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),

                    // removing the product price from this place as it is making the alignment go berserk
                    /*
                    title: Text(
                      "\$$prod_price",
                      style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.w800,
                          fontSize: 10.0),
                    ),
                    subtitle: Text(
                      "\$$prod_old_price",
                      style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.w800,
                          decoration: TextDecoration.lineThrough,
                          fontSize: 5.0),
                    ),
                    */
                  ),
                ),
                child: Image.asset(prod_picture, fit: BoxFit.cover),
              ),
            ),
          )),
    );
  }
}
