import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shop_ease/core/utils/constant.dart';
import 'package:shop_ease/features/dash_board/layouts/cart_layout.dart';
import 'package:shop_ease/features/dash_board/layouts/home_layout.dart';
import 'package:shop_ease/features/dash_board/layouts/profile_layout.dart';
import 'package:shop_ease/features/dash_board/layouts/wish_list_layout.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var currentIndex = 0;
  List<Widget> pages = [HomeLayout(), WishListLayout(), ProfileLayout()];

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(
        systemNavigationBarColor: dsColor,
        statusBarColor: bgColor,
      ),

      child: Scaffold(
        body: IndexedStack(index: currentIndex, children: pages),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: dsColor,
          selectedItemColor: appMainColor,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
          ],
          currentIndex: currentIndex,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
        ),
      ),
    );
  }
}
