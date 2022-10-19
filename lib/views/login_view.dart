import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:naghsheha_app/constant/colors.dart';
import 'package:naghsheha_app/views/main_view.dart';
import 'package:naghsheha_app/views/signup_view.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

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
                    'برای ورود ایمیل خود و رمز عبور را وارد کنید.',
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
                padding: EdgeInsets.fromLTRB(24, 12, 24, 12),
                child: SizedBox(
                  width: Get.width,
                  height: 55,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.offAll(MainView());
                    },
                    child: Text('ورود'),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(SolidColors.themeColor),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('حساب کاربری ندارید؟'),
                  TextButton(
                    onPressed: () {
                      Get.to(SignupView());
                    },
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all(SolidColors.themeColor),
                    ),
                    child: const Text('ثبت نام کنید'),
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
