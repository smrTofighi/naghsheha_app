import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:naghsheha_app/constant/colors.dart';
import 'package:naghsheha_app/constant/strings.dart';
import 'package:naghsheha_app/views/main_view.dart';
import '../constant/components.dart';

class RequestView extends StatelessWidget {
  const RequestView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: SolidColors.themeColor,
          title: const Text(Strings.requestText),
          centerTitle: true,
        ),
        drawer: drawerApp(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(8, 65, 8, 36),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "عنوان درخواست",
                  labelStyle: TextStyle(
                      color: SolidColors.themeColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 14),
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: RadioListTile(
                    value: 1,
                    groupValue: 1,
                    title: const Text("مسکونی"),
                    onChanged: (newValue) {},
                    activeColor: SolidColors.themeColor,
                    selected: false,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: RadioListTile(
                    value: 0,
                    groupValue: 1,
                    title: const Text("تجاری"),
                    onChanged: (newValue) {},
                    activeColor: SolidColors.themeColor,
                    selected: false,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 32, 8, 12),
              child: SizedBox(
                width: Get.width,
                height: 55,
                child: ElevatedButton(
                  onPressed: () {
                    Get.off(MainView());
                    Get.snackbar('درخواست ارسال شد',
                        'کارشناسان بعد از بررسی با شما تماس خواهند گرفت',
                        backgroundColor: Colors.white,
                        snackPosition: SnackPosition.BOTTOM);
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(SolidColors.themeColor)),
                  child: const Text('ارسال درخواست'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
