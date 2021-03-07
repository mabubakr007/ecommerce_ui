import 'package:flutter/material.dart';
// local files
import 'package:char_diwari_ecommerce_app/home.dart';

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_price;
  final product_detail_old_price;
  final product_detail_picture;

  ProductDetails(
      {this.product_detail_name,
        this.product_detail_price,
        this.product_detail_old_price,
        this.product_detail_picture});
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // this has the same app bar as the original home page
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
            "Char Diwaari Shop",
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

      //defining the body of the app
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white70,
                child: Image.asset(widget.product_detail_picture),
              ),
              footer: new Container(
                color: Colors.white70,
                child: ListTile(
                  leading: new Text(
                    widget.product_detail_name,
                    style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  title: new Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text(
                          "${widget.product_detail_old_price}",
                          style: TextStyle(
                              color: Colors.grey,
                              decoration: TextDecoration.lineThrough),
                        ),
                      ),
                      Expanded(
                          child: new Text(
                            "${widget.product_detail_price}",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                            ),
                          )),
                    ],
                  ),
                ),
              ),
            ),
          ),

          // the buttons on the product page start from here
          Row(
            children: <Widget>[
              // the size button
              Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return new AlertDialog(
                              title: new Text("Size"),
                              content: new Text("Choose the Size"),
                              actions: <Widget>[
                                new MaterialButton(
                                  onPressed: () {
                                    // the close functionality to pop and return to last view
                                    Navigator.of(context).pop(context);
                                  },
                                  child: new Text("Close"),
                                )
                              ],
                            );
                          });
                    },
                    color: Colors.white,
                    textColor: Colors.grey,
                    elevation: 0.2,
                    child: Row(
                      children: <Widget>[
                        Expanded(child: new Text("Size")),
                        Expanded(child: new Icon(Icons.arrow_drop_down))
                      ],
                    ),
                  )),

              // this is the color button
              Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return new AlertDialog(
                              title: new Text("Color"),
                              content: new Text("Choose the Color"),
                              actions: <Widget>[
                                new MaterialButton(
                                  onPressed: () {
                                    // the close functionality to pop and return to last view
                                    Navigator.of(context).pop(context);
                                  },
                                  child: new Text("Close"),
                                )
                              ],
                            );
                          });
                    },
                    color: Colors.white,
                    textColor: Colors.grey,
                    elevation: 0.2,
                    child: Row(
                      children: <Widget>[
                        Expanded(child: new Text("Color")),
                        Expanded(child: new Icon(Icons.arrow_drop_down))
                      ],
                    ),
                  )),

              // this is the Quantity button
              Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return new AlertDialog(
                              title: new Text("Quantity"),
                              content: new Text("Choose the Quantity"),
                              actions: <Widget>[
                                new MaterialButton(
                                  onPressed: () {
                                    // the close functionality to pop and return to last view
                                    Navigator.of(context).pop(context);
                                  },
                                  child: new Text("Close"),
                                )
                              ],
                            );
                          });
                    },
                    color: Colors.white,
                    textColor: Colors.grey,
                    elevation: 0.2,
                    child: Row(
                      children: <Widget>[
                        Expanded(child: new Text("Qty")),
                        Expanded(child: new Icon(Icons.arrow_drop_down))
                      ],
                    ),
                  ))
            ],
          ),

          // these are the second buttons
          Row(
            children: <Widget>[
              // the buy button button
              Expanded(
                  child: MaterialButton(
                      onPressed: () {},
                      color: Colors.red,
                      textColor: Colors.white,
                      elevation: 0.2,
                      child: new Text("BUY NOW"))),

              new IconButton(
                  icon: Icon(Icons.add_shopping_cart),
                  color: Colors.red,
                  onPressed: () {}),
              new IconButton(
                  icon: Icon(Icons.favorite_border),
                  color: Colors.red,
                  onPressed: () {}),
            ],
          ),

          Divider(
            color: Colors.white,
          ),

          new ListTile(
            title: new Text("Product Details"),
            subtitle: new Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
          ),

          Divider(
            color: Colors.white,
          ),

          new Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text(
                  "Product Name:",
                  style: TextStyle(color: Colors.grey, fontSize: 16.0),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: new Text(widget.product_detail_name),
              )
            ],
          ),

          Divider(
            color: Colors.white,
          ),

          new Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text(
                  "Product Seller:",
                  style: TextStyle(color: Colors.grey, fontSize: 16.0),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: new Text("Char Diwaari"),
              )
            ],
          ),

          Divider(
            color: Colors.white,
          ),

          new Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text(
                  "Product Condition:",
                  style: TextStyle(color: Colors.grey, fontSize: 16.0),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: new Text("New Box Pack"),
              )
            ],
          ),
          // here we are referencing the Similar Products defined below
          Divider(
            color: Colors.white,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Text("Similar Products",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0)),
          ),
          Container(
            height: 360.0,
            child: Similar_Products(),
          )
        ],
      ),
    );
  }
}

// we are creating a new section to have the related products down here

class Similar_Products extends StatefulWidget {
  @override
  _Similar_ProductsState createState() => _Similar_ProductsState();
}

class _Similar_ProductsState extends State<Similar_Products> {
  var product_list = [
    // key value pair so make it easier for json files from firebase

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
      "name": "Porta Metal Kitchen Sink",
      "picture": "images/sink2.jpg",
      "old_price": 15000,
      "price": 10000
    },
    {
      "name": "Porta Sanitary HD22N",
      "picture": "images/toilet(2).jpg",
      "old_price": 13000,
      "price": 10500
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
          return Similar_Single_prod(
            prod_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}

class Similar_Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Similar_Single_prod(
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
