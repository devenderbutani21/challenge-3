import 'package:flutter/material.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';

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

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: <Widget>[
              SizedBox(height: 20,),
              Row(
                children: <Widget>[
                  Container(
                    child: IconButton(
                      icon: Icon(Icons.menu),
                      onPressed: () {},
                      color: Colors.white,
                      iconSize: 30,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 30.0),
                    child: Text(
                      'Home',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    margin: EdgeInsets.only(left: 200.0),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://cdn.pixabay.com/photo/2016/03/09/10/23/model-1246028_1280.jpg'),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Text(
                      'Vaccine',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Text(
                      'Sanitizer',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Text(
                      'Mask',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Text(
                      'Gloves',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
//              Row(
//                children: <Widget>[
//                  Card(
//                    color: Colors.white,
//                  ),
//                ],
//              ),
            ],
          ),
        ),
        bottomNavigationBar: FloatingNavbar(
          backgroundColor: Colors.red,
          selectedBackgroundColor: Colors.orange,
          unselectedItemColor: Colors.grey.shade200,
          onTap: (int val) => setState(() => _index = val),
          currentIndex: _index,
          items: [
            FloatingNavbarItem(
              icon: Icons.home_outlined,
              title: 'Home',
            ),
            FloatingNavbarItem(
              icon: Icons.favorite_border,
              title: 'Favorites',
            ),
            FloatingNavbarItem(
              icon: Icons.search_outlined,
              title: 'Search',
            ),
            FloatingNavbarItem(
              icon: Icons.shopping_cart_outlined,
              title: 'Cart',
            ),
          ],
        ),
      ),
    );
  }
}
