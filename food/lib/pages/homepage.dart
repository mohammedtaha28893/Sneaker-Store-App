import 'package:flutter/material.dart';
import 'package:food/pages/shop_page.dart';

import '../components/bottom_nav_bar.dart';
import 'cart_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  //pages
  final List<Widget> _pages = [

    const ShopPage(),

    const CartPage(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: BottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 37, 37, 37),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //logo
            Column(
              children: [
                DrawerHeader(
              child: Image.asset('lib/images/nike.png', color: Colors.white,)
            ),

            //lisitng of pages
            //page listing 1
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: ListTile(
                leading: Icon(
                Icons.home, 
                color: Colors.white),
                title: Text('Home', style: TextStyle(color: Colors.white)),
              ),
            ),

            //page listing 2
             const Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: ListTile(
                leading: Icon(
                Icons.shopping_bag_rounded, 
                color: Colors.white),
                title: Text('Cart', style: TextStyle(color: Colors.white)),
              ),
            ),

            //page listing 3
             const Padding(
              padding: EdgeInsets.only(left: 25, bottom: 25),
              child: ListTile(
                leading: Icon(
                Icons.logout_rounded, 
                color: Colors.white),
                title: Text('LogOut', style: TextStyle(color: Colors.white)),
              ),
            ),
           ],
          ),

          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
} 