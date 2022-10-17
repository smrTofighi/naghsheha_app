import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:naghsheha_app/constant/Strings.dart';
import 'package:naghsheha_app/constant/colors.dart';
import 'package:naghsheha_app/views/home_view.dart';
import 'package:naghsheha_app/views/profile_view.dart';

class MainView extends StatelessWidget {
  MainView({super.key});
  RxInt selectedIndex = 1.obs;
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

  Drawer drawerApp() {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            ListTile(
              title: const Align(
                alignment: Alignment.centerRight,
                child: Text('ورود'),
              ),
              leading: const Icon(
                Icons.person,
                color: SolidColors.themeColor,
              ),
              onTap: () {},
            ),
            const Divider(
              color: SolidColors.themeColor,
              thickness: 1,
            ),
            ListTile(
              title: const Align(
                alignment: Alignment.centerRight,
                child: Text('ماشین حساب'),
              ),
              leading: const Icon(
                Icons.calculate,
                color: SolidColors.themeColor,
              ),
              onTap: () {},
            ),
            ListTile(
              title: const Align(
                alignment: Alignment.centerRight,
                child: Text('درخواست نقشه'),
              ),
              leading: const Icon(
                Icons.map,
                color: SolidColors.themeColor,
              ),
              onTap: () {},
            ),
            ListTile(
              title: const Align(
                alignment: Alignment.centerRight,
                child: Text('تماس با ما'),
              ),
              leading: const Icon(
                Icons.call,
                color: SolidColors.themeColor,
              ),
              onTap: () {},
            ),
            ListTile(
              title: const Align(
                alignment: Alignment.centerRight,
                child: Text('واتساپ'),
              ),
              leading: const Icon(
                Icons.whatsapp,
                color: SolidColors.themeColor,
              ),
              onTap: () {},
            ),
            ListTile(
              title: const Align(
                alignment: Alignment.centerRight,
                child: Text('درباره ما'),
              ),
              leading: const Icon(
                Icons.info,
                color: SolidColors.themeColor,
              ),
              onTap: () {},
            ),
            ListTile(
              title: const Align(
                alignment: Alignment.centerRight,
                child: Text('خروج'),
              ),
              leading: const Icon(
                Icons.exit_to_app,
                color: SolidColors.themeColor,
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }

  Widget floatingActionButton() {
    return FloatingActionButton(
      onPressed: () {},
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
