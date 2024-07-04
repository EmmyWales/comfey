import 'package:comfey/utils/appcolor.dart';
import 'package:comfey/view/home/cart.dart';
import 'package:comfey/view/home/discovery.dart';
import 'package:comfey/view/home/home.dart';
import 'package:comfey/view/home/profile.dart';
import 'package:comfey/view/home/tourist_discovery/tourist_discovery.dart';
import 'package:comfey/view/home/wallet.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:ui';

class HomeNavigation extends StatefulWidget {
  const HomeNavigation({super.key});

  @override
  State<HomeNavigation> createState() => _HomeNavigationState();
}

class _HomeNavigationState extends State<HomeNavigation> {
  int index = 0;
  List<Widget> screens = [
    const HomeScreen(),
    const TouristDiscovery(),
    const CartScreen(),
    const WalletScreen(),
    const ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        backgroundColor: AppColor.primary,
        currentIndex: index,
        type: BottomNavigationBarType.fixed,
        onTap: (value) => setState(() => index = value),
        selectedIconTheme: IconThemeData(color: AppColor.conblck),
        selectedItemColor: AppColor.white,
        selectedLabelStyle: GoogleFonts.poppins(color: AppColor.white),
        unselectedLabelStyle: TextStyle(color: AppColor.white),
        unselectedItemColor: AppColor.white,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore_rounded),
            label: "Discovery",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card),
            label: "Wallet",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
