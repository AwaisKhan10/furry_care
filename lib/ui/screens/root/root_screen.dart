import 'package:flutter/material.dart';
import 'package:furry_care/core/constants/app_assets.dart';
import 'package:furry_care/core/constants/colors.dart';
import 'package:furry_care/core/other/screen_utils.dart';
import 'package:furry_care/ui/custom_widgets/custom_bottom_navigator_bar.dart';
import 'package:furry_care/ui/screens/root/root_view_model.dart';
import 'package:provider/provider.dart';

class RootScreen extends StatelessWidget {
  final int? selectedScreen;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  RootScreen({Key? key, this.selectedScreen = 0}) : super(key: key);

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

  Widget buildDrawer(BuildContext context) {
    return Drawer(
      backgroundColor: accentColor,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: accentColor,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(40.r))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: CircleAvatar(
                radius: 50.r,
                backgroundImage: AssetImage(
                  AppAssets.user2,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: CircleAvatar(
                radius: 50.r,
                backgroundImage: AssetImage(
                  AppAssets.user2,
                ),
              ),
            ),
          ],
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
