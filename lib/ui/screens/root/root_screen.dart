// ignore_for_file: use_super_parameters

import 'package:flutter/material.dart';
import 'package:furry_care/core/constants/app_assets.dart';
import 'package:furry_care/core/constants/colors.dart';
import 'package:furry_care/ui/custom_widgets/custom_bottom_navigator_bar.dart';
import 'package:furry_care/ui/screens/root/root_view_model.dart';
import 'package:provider/provider.dart';

class RootScreen extends StatelessWidget {
  final int? selectedScreen;
  const RootScreen({Key? key, this.selectedScreen = 0}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => RootViewModel(selectedScreen),
      child: Consumer<RootViewModel>(
        builder: (context, model, child) => Scaffold(
          backgroundColor: whiteColor,

          ///
          /// Start Body
          ///
          body: model.allScreen[model.selectedScreen],

          ///
          /// BottomBar
          ///
          bottomNavigationBar: bottomBar(model),
        ),
      ),
    );
  }
}

bottomBar(RootViewModel model) {
  return BottomAppBar(
    color: borderColor,
    elevation: 0.0,
    // height: 68.h,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CustomBottomNavigator(
          currentIndex: model.selectedScreen,
          indexNumber: 0,
          image: model.selectedScreen == 0 ? AppAssets.home1 : AppAssets.home,
          onPressed: () {
            model.updatedScreen(0);
          },
        ),
        CustomBottomNavigator(
          currentIndex: model.selectedScreen,
          indexNumber: 1,
          image: model.selectedScreen == 1
              ? AppAssets.services1
              : AppAssets.services,
          onPressed: () {
            model.updatedScreen(1);
          },
        ),
        CustomBottomNavigator(
          currentIndex: model.selectedScreen,
          indexNumber: 2,
          image: model.selectedScreen == 2 ? AppAssets.add : AppAssets.add1,
          onPressed: () {
            model.updatedScreen(2);
          },
        ),
        CustomBottomNavigator(
          currentIndex: model.selectedScreen,
          indexNumber: 3,
          image: model.selectedScreen == 3 ? AppAssets.ask : AppAssets.ask,
          onPressed: () {
            model.updatedScreen(3);
          },
        ),
        CustomBottomNavigator(
          currentIndex: model.selectedScreen,
          indexNumber: 4,
          image: model.selectedScreen == 4
              ? AppAssets.profile1
              : AppAssets.profile,
          onPressed: () {
            model.updatedScreen(4);
          },
        ),
      ],
    ),
  );
}
