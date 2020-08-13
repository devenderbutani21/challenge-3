import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './widgets/floating_navbar.dart';
import './widgets/floating_navbar_item.dart';

enum MenuItems {
  vaccine,
  sanitizer,
  mask,
  gloves,
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        canvasColor: Color(0xff2b2c30),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _index = 0;
  MenuItems _selected = MenuItems.vaccine;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: PageScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Container(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: <Widget>[
                    Container(
                      margin:
                          EdgeInsets.only(left: 20.0, bottom: 18.0, top: 22.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            width: 14.0,
                            height: 3.0,
                            color: Colors.orange,
                          ),
                          SizedBox(
                            height: 3.0,
                          ),
                          Container(
                            width: 20.0,
                            height: 3.0,
                            color: Colors.white,
                          ),
                          SizedBox(
                            height: 3.0,
                          ),
                          Container(
                            width: 8.0,
                            height: 3.0,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 30.0),
                      child: Text(
                        'Home',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                        ),
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      margin: EdgeInsets.only(left: 200.0),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://cdn.pixabay.com/photo/2016/03/09/10/23/model-1246028_1280.jpg'),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _selected = MenuItems.vaccine;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          color: _selected == MenuItems.vaccine
                              ? Colors.white
                              : Colors.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Text(
                          'Vaccine',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: _selected == MenuItems.vaccine
                                ? Colors.black
                                : Colors.white,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _selected = MenuItems.sanitizer;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          color: _selected == MenuItems.sanitizer
                              ? Colors.white
                              : Colors.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Text(
                          'Sanitizer',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: _selected == MenuItems.sanitizer
                                ? Colors.black
                                : Colors.white,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _selected = MenuItems.mask;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          color: _selected == MenuItems.mask
                              ? Colors.white
                              : Colors.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Text(
                          'Mask',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: _selected == MenuItems.mask
                                ? Colors.black
                                : Colors.white,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _selected = MenuItems.gloves;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          color: _selected == MenuItems.gloves
                              ? Colors.white
                              : Colors.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Text(
                          'Gloves',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: _selected == MenuItems.gloves
                                ? Colors.black
                                : Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(
                        left: 20,
//                        bottom: 30.0,
                      ),
                      width: 220.0,
                      height: 270.0,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      child: Stack(
                        overflow: Overflow.visible,
                        children: [
                          Positioned(
                            top: -30,
                            left: 10,
                            child: Image.asset(
                              'assets/images/pro-vac.png',
                              width: 200.0,
                              height: 200.0,
                            ),
                          ),
                          Positioned(
                            top: 160,
                            left: 15,
                            child: Container(
                              height: 50,
                              child: Center(
                                child: Text(
                                  'Pro-Vac Venco',
                                  style: TextStyle(
                                    fontSize: 22.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 185,
                            left: 15,
                            child: Container(
                              height: 50,
                              child: Center(
                                child: Text(
                                  'by baximo',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 220,
                            left: 15,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  '\$34.50',
                                  style: TextStyle(
                                    fontSize: 24.0,
                                    color: Colors.orange,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Container(
                                  height: 40,
                                  width: 40,
                                  margin: EdgeInsets.only(
                                    left: 60,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.0),
                                    color: Colors.orange,
                                  ),
                                  child: IconButton(
                                    icon: Icon(Icons.shopping_bag_outlined),
                                    onPressed: () {},
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(top: 20, left: 20),
                      child: Text(
                        'Sanitation',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(
                        top: 20,
                        right: 10,
                      ),
                      child: Text(
                        'All',
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: FloatingNavbar(
          margin: EdgeInsets.only(
            bottom: 10.0,
            left: 35.0,
            right: 35.0,
          ),
          backgroundColor: Colors.grey.shade400.withOpacity(0.2),
          selectedBackgroundColor: Colors.orange,
          unselectedItemColor: Colors.grey.shade200,
          onTap: (int val) => setState(() => _index = val),
          currentIndex: _index,
          items: [
            FloatingNavbarItem(
              icon: Icons.home_outlined,
            ),
            FloatingNavbarItem(
              icon: Icons.favorite_border,
            ),
            FloatingNavbarItem(
              icon: Icons.search_outlined,
            ),
            FloatingNavbarItem(
              icon: Icons.shopping_bag_outlined,
            ),
          ],
        ),
      ),
    );
  }
}
