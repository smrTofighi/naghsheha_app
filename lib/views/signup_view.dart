import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:naghsheha_app/constant/colors.dart';
import 'package:naghsheha_app/views/login_view.dart';
import 'package:naghsheha_app/views/main_view.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: Get.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(12, 0, 20, 12),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'خوش آمدید',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(12, 12, 20, 12),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'برای ثبت نام کافی است مقادیر زیر را کامل کنید.',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(24, 12, 24, 12),
                child: TextField(
                  cursorColor: SolidColors.themeColor,
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14),
                  decoration: InputDecoration(
                    labelText: "نام کاربر",
                    labelStyle: TextStyle(
                        color: SolidColors.themeColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 14),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(24, 12, 24, 12),
                child: TextField(
                  cursorColor: SolidColors.themeColor,
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14),
                  decoration: InputDecoration(
                    labelText: "ایمیل",
                    labelStyle: TextStyle(
                        color: SolidColors.themeColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 14),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(24, 12, 24, 12),
                child: TextField(
                  cursorColor: SolidColors.themeColor,
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14),
                  decoration: InputDecoration(
                    labelText: "رمز عبور",
                    labelStyle: TextStyle(
                        color: SolidColors.themeColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 14),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 12, 24, 12),
                child: SizedBox(
                  width: Get.width,
                  height: 55,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.offAll(MainView());
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(SolidColors.themeColor),
                    ),
                    child: const Text('ثبت نام'),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('حساب کاربری دارید؟'),
                  TextButton(
                    onPressed: () {
                      Get.to(const LoginView());
                    },
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all(SolidColors.themeColor),
                    ),
                    child: const Text('وارد شوید'),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
