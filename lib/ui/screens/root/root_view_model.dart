import 'package:flutter/material.dart';
import 'package:furry_care/core/enums/view_state.dart';
import 'package:furry_care/core/view_model/base_view_model.dart';
import 'package:furry_care/ui/screens/home/home_screen.dart';

class RootViewModel extends BaseViewModel {
  final PageController pageController = PageController(initialPage: 0);
  RootViewModel(val) {
    updatedScreen(val);
    notifyListeners();
  }
  int selectedScreen = 0;
  // int selectIndex = 0;

  List<Widget> allScreen = [
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    // ExploreScreen(),
    // ProfileScreen(),
  ];

  updatedScreen(int index) {
    setState(ViewState.busy);
    selectedScreen = index;
    setState(ViewState.idle);
    // selectIndex = index;
    notifyListeners();
  }

  // pushScreen(int index) {
  //   pageController.animateToPage(index,
  //       duration: Duration(milliseconds: 2000), curve: Curves.bounceIn);
  //   selectedScreen = index;
  //   notifyListeners();
  // }
}
