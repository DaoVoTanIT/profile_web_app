import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_portfolio/pages/experience/presentation/experience_section.dart';
import 'package:my_portfolio/pages/home/components/animated_texts_componenets.dart';
import 'package:my_portfolio/pages/home/components/download_button.dart';
import 'package:my_portfolio/translations/export_lang.dart';
import 'package:my_portfolio/utils/constants.dart';
import 'package:my_portfolio/utils/screen_helper.dart';
import 'package:my_portfolio/utils/utils.dart';

import '../../../models/carousel_item_model.dart';

List<CarouselItemModel> carouselItems(
        double carouselContainerHeight, BuildContext context) =>
    List.generate(
      5,
      (index) => CarouselItemModel(
        text: SizedBox(
          height: carouselContainerHeight,
          child: Stack(
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (ScreenHelper.isMobile(context))
                      const Row(
                        children: [
                          AnimatedImageContainer(
                            width: 200,
                            height: 200,
                          ),
                        ],
                      ),
                    Text(
                      "mobileApplicationDeveloper".tr(),
                      style: const TextStyle(
                        color: kPrimaryColor,
                        fontWeight: FontWeight.w900,
                        fontSize: 18.0,
                        letterSpacing: 2,
                      ),
                    ),
                    const SizedBox(
                      height: 18.0,
                    ),
                    Text(
                      "Võ Tấn Đào".toUpperCase(),
                      style: const TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.w900,
                        height: 1.3,
                        letterSpacing: 2.3,
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        Text(
                          "softwareEngineer".tr(),
                          style: const TextStyle(
                            color: kCaptionColor,
                            fontSize: 15.0,
                            height: 1.0,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Icon(
                          Icons.location_on,
                          color: kCaptionColor,
                          size: 14,
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        const Text(
                          "Hồ Chí Minh",
                          style: TextStyle(
                            color: kCaptionColor,
                            fontSize: 15.0,
                            height: 1.0,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 18.0,
                    ),
                    const Row(
                      children: [
                        DownloadButton(),
                      ],
                    ),
                    const SizedBox(
                      height: 18.0,
                    ),
                  ],
                ),
              ),

              // SizedBox(
              //   height: carouselContainerHeight - 70,
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.end,
              //     crossAxisAlignment: CrossAxisAlignment.end,
              //     children: AppConstants.socialLoginDatas
              //         .map((e) => InkWell(
              //               onTap: e.onTap,
              //               child: Container(
              //                 width: 20,
              //                 height: 20,
              //                 margin: const EdgeInsets.all(10),
              //                 child: Image.asset(e.title),
              //               ),
              //             ))
              //         .toList(),
              //   ),
              // )
            ],
          ),
        ),
        image: const AnimatedImageContainer(),
      ),
    );
