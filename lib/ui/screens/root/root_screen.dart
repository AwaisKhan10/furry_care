import 'package:flutter/material.dart';
import 'package:furry_care/core/constants/app_assets.dart';
import 'package:furry_care/core/constants/colors.dart';
import 'package:furry_care/ui/custom_widgets/custom_bottom_navigator_bar.dart';
import 'package:furry_care/ui/screens/menu/menu_screen.dart';
import 'package:furry_care/ui/screens/root/root_view_model.dart';
import 'package:provider/provider.dart';

class RootScreen extends StatelessWidget {
  final int? selectedScreen;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  RootScreen({super.key, this.selectedScreen = 0});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => RootViewModel(selectedScreen),
      child: Consumer<RootViewModel>(
        builder: (context, model, child) => Scaffold(
          key: _scaffoldKey,
          backgroundColor: whiteColor,

          ///
          /// Start Body
          ///
          body: model.allScreen[model.selectedScreen],

          ///
          /// BottomBar
          ///
          bottomNavigationBar: bottomBar(model),

          ///
          /// Right Drawer
          ///
          endDrawer: buildDrawer(context),
        ),
      ),
    );
  }

  Widget bottomBar(RootViewModel model) {
    return BottomAppBar(
      color: borderColor,
      elevation: 0.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomBottomNavigator(
            currentIndex: model.selectedScreen,
            indexNumber: 0,
            text: 'Feed',
            image: model.selectedScreen == 0 ? AppAssets.feed1 : AppAssets.feed,
            onPressed: () {
              model.updatedScreen(0);
            },
          ),
          CustomBottomNavigator(
            currentIndex: model.selectedScreen,
            indexNumber: 1,
            text: 'Shop',
            image: model.selectedScreen == 1 ? AppAssets.shop1 : AppAssets.shop,
            onPressed: () {
              model.updatedScreen(1);
            },
          ),
          CustomBottomNavigator(
            currentIndex: model.selectedScreen,
            indexNumber: 2,
            text: 'Volunteer',
            image: model.selectedScreen == 2
                ? AppAssets.volunteer1
                : AppAssets.volunteer,
            onPressed: () {
              model.updatedScreen(2);
            },
          ),
          CustomBottomNavigator(
            currentIndex: model.selectedScreen,
            indexNumber: 3,
            text: 'Ask a Vet',
            image: model.selectedScreen == 3 ? AppAssets.chat : AppAssets.chat,
            onPressed: () {
              model.updatedScreen(3);
            },
          ),
          CustomBottomNavigator(
            currentIndex: model.selectedScreen,
            indexNumber: 4,
            text: 'Menu',
            image: model.selectedScreen == 4
                ? AppAssets.menu_icon
                : AppAssets.menu_icon,
            onPressed: () {
              _scaffoldKey.currentState?.openEndDrawer();
            },
          ),
        ],
      ),
    );
  }
}
