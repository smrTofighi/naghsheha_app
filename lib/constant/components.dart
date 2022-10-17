import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
                    color: Colors.redAccent.withOpacity(0.7)),
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
