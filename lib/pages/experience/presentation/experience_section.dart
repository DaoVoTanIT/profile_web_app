import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_portfolio/pages/experience/presentation/experience_desktop.dart';
import 'package:my_portfolio/utils/constants.dart';
import 'package:my_portfolio/utils/screen_helper.dart';

class ExperienceSection extends ConsumerWidget {
  const ExperienceSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // return const Responsive(
    //   desktop: ExperienceDesktop(),
    // );
    return ScreenHelper(
      desktop: const ExperienceDesktop(kDesktopMaxWidth),
      tablet: const ExperienceDesktop(kTabletMaxWidth),
      mobile: ExperienceDesktop(getMobileMaxWidth(context)),
    );
  }
}
