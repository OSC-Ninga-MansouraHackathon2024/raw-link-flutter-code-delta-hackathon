

import 'package:flutter/material.dart';
import 'package:luxira/core/widgets/custom_bottom_nav_bar.dart';

import '../widgets/home_view_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
   int _currentIndex = 0;

  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       backgroundColor: Colors.white,
       body: const HomeViewBody(),
       bottomNavigationBar:CustomBottomNavBar(onTap: _onTap, selectedIndex: _currentIndex,) ,
    );
  }
}