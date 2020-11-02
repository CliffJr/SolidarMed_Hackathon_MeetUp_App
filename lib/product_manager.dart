import 'package:flutter/material.dart';

import './products.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct;

  ProductManager({this.startingProduct = 'Sweets Tester'}){
    print('[ProductManager Widget] Constructor');
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager>{
  List<String> _products = [];

  @override
  void initState() {
    // TODO: implement initState
    _products.add(widget.startingProduct);
    super.initState();
  }

  @override
  void didUpdateWidget(covariant ProductManager oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(children: [Container(
      margin: EdgeInsets.all(10.0),
      child: RaisedButton(
          color: Theme.of(context).primaryColor,
          onPressed: () {
        setState(() {
          _products.add('Advanced Food tester');
        });

      }, child: Text('Add Product')),
    ),
    Products(_products)
    ],);

  }
}