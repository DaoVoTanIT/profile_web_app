import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_portfolio/models/experience_model.dart';
import 'package:my_portfolio/pages/experience/presentation/widgets/link.dart';
import 'package:my_portfolio/pages/experience/presentation/widgets/technology_chip.dart';
import 'package:my_portfolio/utils/constants.dart';
import 'package:my_portfolio/utils/screen_helper.dart';
import 'package:my_portfolio/utils/sizes.dart';
import 'package:my_portfolio/utils/string_extension.dart';
import 'package:url_launcher/url_launcher.dart';

class ExperienceCard extends ConsumerWidget {
  final ExperienceModel experience;

  const ExperienceCard({Key? key, required this.experience}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Material(
      // color: Theme.of(context).colorScheme.primary,
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        onTap: () => _onTap(context),
        borderRadius: BorderRadius.circular(20),
        hoverColor: Theme.of(context).colorScheme.tertiary.withAlpha(40),
        splashColor: Theme.of(context).colorScheme.tertiary.withAlpha(30),
        highlightColor: Theme.of(context).colorScheme.tertiary.withAlpha(20),
        child: MouseRegion(
          cursor: SystemMouseCursors.basic,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Text(
                        experience.job ?? experience.company ?? '',
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                    gapW24,
                    if (!ScreenHelper.isMobile(context))
                      _buildExperienceDateText(context, ref),
                  ],
                ),
                gapH8,
                if (ScreenHelper.isMobile(context))
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        experience.company ?? "",
                        style: const TextStyle(
                          color: kCaptionColor,
                          height: 1.5,
                          fontSize: 15.0,
                        ),
                      ),
                      gapH4,
                      _buildExperienceDateText(context, ref),
                    ],
                  )
                else
                  Text(
                    experience.company == null
                        ? ''
                        : experience.company!.toUpperCase() ?? "",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      height: 1.5,
                      fontSize: 15.0,
                    ),
                  ),
                gapH8,
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        experience.description ?? "",
                        style: const TextStyle(
                          color: kCaptionColor,
                          height: 1.5,
                          fontSize: 15.0,
                        ),
                      ),
                    ),
                  ],
                ),
                gapH12,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // _buildLinks(),
                    if (experience.links?.isNotEmpty == true) gapH12 else gapH4,
                    _buildChips(context),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _onTap(BuildContext context) async {
    final url = experience.url;
    if (url == null) return;
    if (!await launchUrl(Uri.parse(url))) {
      if (context.mounted) {
        final snackBar = SnackBar(
          content: Text(
            "${tr('openUrlError'.tr())} ${experience.url}",
          ),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
    }
  }

  Widget _buildExperienceDateText(BuildContext context, WidgetRef ref) {
    final locale = context.locale;
    final startMonth = experience.startMonth?.localizedMonth(locale) ?? "";
    final startYear = experience.startYear?.localizedYear(locale);
    final startDate = startMonth.isEmpty ? startYear : "$startMonth $startYear";
    final endMonth = experience.endMonth?.localizedMonth(locale) ?? "";
    final endYear = experience.endYear?.localizedYear(locale);
    String? endDate;
    if (experience.isPresent == true) {
      endDate = tr('present'.tr());
    } else {
      endDate = endMonth.isEmpty ? endYear : "$endMonth $endYear";
    }
    if (startDate == null || endDate == null) return const Text("");
    return Text(
      "${startDate.capitalize()} - ${endDate.capitalize()}",
      style: const TextStyle(
        color: kCaptionColor,
        height: 1.5,
        fontSize: 15.0,
      ),
    );
  }

  Widget _buildChips(BuildContext context) {
    final experienceTechnologies = experience.technologies;
    if (experienceTechnologies == null) return const SizedBox.shrink();
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: experienceTechnologies.map((technology) {
        return IgnorePointer(
          child: TechnologyChip(
            name: technology.name,
            url: technology.logo,
          ),
        );
      }).toList(),
    );
  }

  Widget _buildLinks() {
    final experienceLinks = experience.links;
    if (experienceLinks == null) return const SizedBox.shrink();
    return Wrap(
      spacing: 16,
      runSpacing: 4,
      children: experienceLinks.map((link) {
        final experienceLinkUrl = link.url;
        final experienceLinkDisplay = link.displayLink;
        if (experienceLinkUrl == null) return const SizedBox.shrink();
        return LinkWidget(
          url: experienceLinkUrl,
          displayLink: experienceLinkDisplay ?? experienceLinkUrl,
          displayLeadingIcon: true,
        );
      }).toList(),
    );
  }
}
