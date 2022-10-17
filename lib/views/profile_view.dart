import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:naghsheha_app/constant/colors.dart';
import 'package:naghsheha_app/constant/components.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 24,
          ),
          Container(
            width: 80,
            height: 80,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(1000)),
                color: SolidColors.themeColor),
            child: const Center(
              child: Text(
                'م',
                style: TextStyle(fontSize: 26),
              ),
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          const Text(
            'محمد رضاتوفیقی',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          myListTile('تنظیمات و حریم شخصی', Icons.settings, () {}),
          myListTile('اعلان ها', Icons.notifications, () {}),
          myListTile('لیست درخواست ها', Icons.list_alt, () {}),
          myListTile('خروج از حساب کاربری', Icons.exit_to_app, () {})
        ],
      ),
    );
  }
}
