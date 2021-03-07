import 'package:flutter/material.dart';

class Horizontal_list extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 125.0,
      child: ListView(
        scrollDirection:
        Axis.horizontal, // this makes it a horizontal list view
        children: <Widget>[
          Category(
            Image_location: 'images/cats/electric.png',
            Image_caption: 'electric',
          ),
          Category(
            Image_location: 'images/cats/bathroom.png',
            Image_caption: 'bathroom',
          ),
          Category(
            Image_location: 'images/cats/kitchen.png',
            Image_caption: 'kitchen',
          ),
          Category(
            Image_location: 'images/cats/lighting.png',
            Image_caption: 'lighting',
          ),
          Category(
            Image_location: 'images/cats/paint.png',
            Image_caption: 'paint',
          ),
          Category(
            Image_location: 'images/cats/building_materials.png',
            Image_caption: 'materials',
          )
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String Image_location;
  final String Image_caption;

  Category({this.Image_location, this.Image_caption});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(2.0),
        child: InkWell(
          onTap: () {},
          child: Container(
            width: 100.0,
            child: ListTile(
              title: Image.asset(Image_location, height: 100.0, width: 80.0),
              subtitle: Container(
                  alignment: Alignment.topCenter, child: Text(Image_caption)),
            ),
          ),
        ));
  }
}
