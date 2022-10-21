import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:naghsheha_app/constant/Strings.dart';
import 'package:naghsheha_app/constant/colors.dart';
import 'package:naghsheha_app/views/home_view.dart';
import 'package:naghsheha_app/views/profile_view.dart';
import 'package:naghsheha_app/views/request_view.dart';

import '../constant/components.dart';

class MainView extends StatelessWidget {
  MainView({super.key});
  RxInt selectedIndex = 0.obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: SolidColors.themeColor,
        centerTitle: true,
        title: const Text(Strings.naghshehaText),
      ),
      drawer: drawerApp(),
      body: Obx(
        () => IndexedStack(
          children: const [
            HomeView(),
            ProfileView(),
          ],
          index: selectedIndex.value,
        ),
      ),
      floatingActionButton: floatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Obx(
        () => bottomNavigation(),
      ),
    );
  }

  Widget floatingActionButton() {
    return FloatingActionButton(
      onPressed: () {
        Get.to(const RequestView());
      },
      backgroundColor: SolidColors.themeColor,
      child: const Icon(Icons.add),
    );
  }

  Widget bottomNavigation() {
    return AnimatedBottomNavigationBar(
        icons: const [
          Icons.home,
          Icons.person,
        ],
        gapLocation: GapLocation.center,
        activeIndex: selectedIndex.value,
        activeColor: SolidColors.themeColor,
        onTap: (index) {
          selectedIndex.value = index;
        });
  }
}
