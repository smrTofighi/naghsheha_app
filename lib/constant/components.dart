import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:naghsheha_app/constant/colors.dart';
import 'package:naghsheha_app/views/request_view.dart';

import '../views/login_view.dart';

Widget myListTile(String title, IconData icons, Function() onPressed) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(28, 8, 28, 0),
    child: SizedBox(
      width: Get.width,
      height: 65,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(1000)),
                    color: SolidColors.themeColor.withOpacity(0.7)),
                child: Icon(
                  icons,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                width: 18,
              ),
              Text(
                title,
                style: const TextStyle(fontSize: 14),
              )
            ],
          ),
          IconButton(
            onPressed: onPressed,
            icon: const Icon(
              Icons.keyboard_arrow_left_sharp,
            ),
          )
        ],
      ),
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
            onTap: () {
              Get.to(const LoginView());
            },
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
            onTap: () {
              Get.to(const RequestView());
            },
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
