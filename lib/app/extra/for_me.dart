import 'package:flutter/material.dart';

class PriceChangeApp extends StatefulWidget {
  @override
  _PriceChangeAppState createState() => _PriceChangeAppState();
}

class _PriceChangeAppState extends State<PriceChangeApp> {
  double productPrice = 10.0;

  void increasePrice() {
    setState(() {
      productPrice += 1.0;
    });
  }

  void decreasePrice() {
    setState(() {
      if (productPrice > 1.0) {
        productPrice -= 1.0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Price Change App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Product Price: \$${productPrice.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: increasePrice,
                  child: Text('Increase Price'),
                ),
                SizedBox(width: 20.0), // Add some spacing between the buttons
                ElevatedButton(
                  onPressed: decreasePrice,
                  child: Text('Decrease Price'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
