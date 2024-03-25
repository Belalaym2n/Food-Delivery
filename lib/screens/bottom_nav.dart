import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/tabs/home_screen.dart';
import 'package:food_delivery/tabs/order.dart';
import 'package:food_delivery/tabs/profile.dart';
import 'package:food_delivery/tabs/wallet.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentTabIndex = 0;

  late List<Widget> pages;
  late Widget currentPage;
  late HomeScreen homepage;
  late Profile profile;
  late Order order;
  late Wallet wallet;

  @override
  void initState() {
    homepage = HomeScreen();
    order = Order();
    profile = Profile();
    wallet = Wallet();
    pages = [homepage, order, wallet, profile];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
          height: 50,
          backgroundColor: Colors.white,
          color: Colors.black,
// animationCurve: Curves.fastOutSlowIn,
      iconPadding: 4,
          animationDuration: Duration(milliseconds: 500),
          onTap: (int index) {
            setState(() {
              currentTabIndex = index;
            });
          },
          items: [
            CurvedNavigationBarItem(child:
            Icon(
              Icons.home_outlined,
              color: Colors.white,
            ),),


            CurvedNavigationBarItem(child:
            Icon(
              Icons.shopping_bag_outlined,
              color: Colors.white,
            ),),
            CurvedNavigationBarItem(child:
            Icon(
              Icons.wallet,
              color: Colors.white,
            ),),

            CurvedNavigationBarItem(child:
            Icon(
              Icons.person_outline,
              color: Colors.white,
            )
              ,),



          ]),
      body: pages[currentTabIndex],
    );
  }
}

