import 'package:flutter/material.dart';

enum itemQuantity {
  fifty,
  hundred,
  hundredfifty,
}

class ProductDetailsScreen extends StatefulWidget {
  static const routeName = '/product-detail';

  @override
  _ProductDetailsScreenState createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  itemQuantity _selectedQuantity = itemQuantity.fifty;
  int _quantity = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              Stack(
                overflow: Overflow.visible,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(
                      top: 20,
                      left: 20,
                      right: 20,
                    ),
                    height: 250,
                    width: 400,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  Positioned(
                    top: 20,
                    left: 60,
                    child: Image.asset(
                      'assets/images/pro-vac.png',
                      width: 300.0,
                      height: 300.0,
                    ),
                  ),
                  Positioned(
                    top: 20,
                    left: 20,
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white70,
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                  Positioned(
                    top: 20,
                    right: 20,
                    child: IconButton(
                      icon: Icon(
                        Icons.favorite_border,
                        color: Colors.white70,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 70,
                ),
                child: Text(
                  'Pro - Vac Venco',
                  style: TextStyle(
                    fontSize: 24.0,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 10,
                ),
                child: Text(
                  'by baximo',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.grey,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 10,
                  left: 20,
                  right: 20,
                ),
                child: Text(
                  'A COVID-19 vaccine manufacturing plant of the institute in Kunming, capital city Yunnan Province, will be put into use in the second half of 2020.',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white70,
                    fontWeight: FontWeight.bold,
                    height: 1.5,
                  ),
                  softWrap: true,
                  textAlign: TextAlign.center,
                ),
              ),
              Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(
                      top: 30,
                      left: 20,
                    ),
                    width: 100.0,
                    height: 1.0,
                    color: Colors.grey,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: 30,
                      left: 40,
                      right: 20,
                    ),
                    child: Text(
                      '\$34.50',
                      style: TextStyle(
                        fontSize: 28.0,
                        color: Colors.orange,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: 30,
                      left: 20,
                    ),
                    width: 100.0,
                    height: 1.0,
                    color: Colors.grey,
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedQuantity = itemQuantity.fifty;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                          color: _selectedQuantity == itemQuantity.fifty
                              ? Colors.white
                              : Colors.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Text(
                          '50ml',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: _selectedQuantity == itemQuantity.fifty
                                ? Colors.black
                                : Colors.white,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedQuantity = itemQuantity.hundred;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                          color: _selectedQuantity == itemQuantity.hundred
                              ? Colors.white
                              : Colors.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Text(
                          '100ml',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: _selectedQuantity == itemQuantity.hundred
                                ? Colors.black
                                : Colors.white,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedQuantity = itemQuantity.hundredfifty;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                          color: _selectedQuantity == itemQuantity.hundredfifty
                              ? Colors.white
                              : Colors.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Text(
                          '150ml',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color:
                                _selectedQuantity == itemQuantity.hundredfifty
                                    ? Colors.black
                                    : Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Stack(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(
                      top: 20,
                    ),
                    width: 150,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.withOpacity(0.2),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: 25,
                      left: 5,
                    ),
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey,
                    ),
                    child: IconButton(
                      icon: Icon(
                        Icons.remove,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        setState(() {
                          if (_quantity == 0) {
                          } else {
                            _quantity -= 1;
                          }
                        });
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: 30,
                      left: 70,
                    ),
                    width: 40,
                    height: 40,
                    child: Text(
                      _quantity.toString(),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: 25,
                      left: 105,
                    ),
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: IconButton(
                      icon: Icon(
                        Icons.add,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        setState(() {
                          _quantity += 1;
                        });
                      },
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 40,
                ),
                height: 60,
                width: 400,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(
                        left: 120,
                      ),
                      child: Icon(
                        Icons.shopping_bag_outlined,
                        size: 25,
                      ),
                    ),
                    Container(
                      child: Text(
                        'Add to Bucket',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
