import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:naghsheha_app/constant/colors.dart';
import 'package:naghsheha_app/models/fake_data.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          recentlyNewsText(),
          recentlyNewsList(),
          const SizedBox(
            height: 12,
          ),
          tagsList(),
          selectedMapsText(),
          selectedMapsList(),
        ],
      ),
    );
  }

  SizedBox recentlyNewsList() {
    return SizedBox(
      height: Get.height / 3.5,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.fromLTRB(
                index == 1 - 1 ? 16 : 4, 0, index == 0 ? 16 : 4, 0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: Get.height / 5.3,
                    width: Get.width / 2.0,
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(16.0),
                            ),
                            image: DecorationImage(
                                image: NetworkImage(
                                  images[index],
                                ),
                                fit: BoxFit.cover),
                          ),
                          foregroundDecoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(16.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: Get.width / 2.4,
                  child: const Text(
                    'این یک خبر است و جهت تست است و هیچ اعتباری ندارد',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    // style: TextStyles.styleTitleNewPostList,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          );
        },
        scrollDirection: Axis.horizontal,
        itemCount: images.length,
      ),
    );
  }

  SizedBox tagsList() {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        itemBuilder: (context, index) => Container(
          padding: const EdgeInsets.all(4),
          margin: const EdgeInsets.fromLTRB(4, 8, 8, 4),
          height: 35,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(100),
              ),
              color: SolidColors.themeColor),
          child: Row(
            children: [
              const Icon(
                Icons.tag,
                color: Colors.white,
              ),
              Text(
                tags[index],
                style: const TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
        scrollDirection: Axis.horizontal,
        itemCount: tags.length,
      ),
    );
  }

  SizedBox selectedMapsList() {
    return SizedBox(
      height: Get.height / 4.2,
      child: ListView.builder(
        itemBuilder: (context, index) => Container(
          margin: const EdgeInsets.all(12),
          height: Get.height / 5.3,
          width: Get.width / 2.0,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(12),
              ),
              image: DecorationImage(
                  image: NetworkImage(images[index]), fit: BoxFit.cover),
              color: SolidColors.themeColor),
        ),
        scrollDirection: Axis.horizontal,
        itemCount: images.length,
      ),
    );
  }

  Padding selectedMapsText() {
    return const Padding(
      padding: EdgeInsets.fromLTRB(0, 16, 12, 4),
      child: Align(
        alignment: Alignment.centerRight,
        child: Text(
          'نقشه های برگزیده',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Padding recentlyNewsText() {
    return const Padding(
      padding: EdgeInsets.fromLTRB(0, 16, 12, 4),
      child: Align(
        alignment: Alignment.centerRight,
        child: Text(
          'نقشه های برگزیده',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
