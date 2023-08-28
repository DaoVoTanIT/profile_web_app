import 'package:collection/collection.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_portfolio/models/experience_model.dart';
import 'package:my_portfolio/pages/experience/presentation/widgets/experience_card.dart';
import 'package:my_portfolio/utils/sizes.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ExperienceDesktop extends ConsumerWidget {
  const ExperienceDesktop(this.width, {Key? key}) : super(key: key);
  final double width;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: LayoutBuilder(builder: (context, constraints) {
        return ResponsiveWrapper(
          maxWidth: width,
          minWidth: width,
          defaultScale: false,
          child: Flex(
            direction:
                constraints.maxWidth > 720 ? Axis.horizontal : Axis.vertical,
            children: [
              Expanded(
                flex: constraints.maxWidth > 720.0 ? 1 : 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "workExperience".tr(),
                      style: const TextStyle(
                        fontWeight: FontWeight.w900,
                        height: 1.3,
                        fontSize: 35.0,
                      ),
                    ),
                    const SizedBox(
                      height: 25.0,
                    ),
                    ...listExperience.mapIndexed((index, experience) {
                      return Column(
                        children: [
                          ExperienceCard(experience: experience),
                          if (index != listExperience.length - 1) gapH24,
                        ],
                      );
                    }),
                  ],
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
