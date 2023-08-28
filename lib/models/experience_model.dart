import 'package:flutter/material.dart';
import 'package:my_portfolio/models/technology.dart';

class ExperienceModel {
  final String? job;
  final String? company;
  final String? description;
  final String? url;
  final bool? isPresent;
  final int? startYear;
  final int? startMonth;
  final int? endYear;
  final int? endMonth;
  final List<TechnologyModel>? technologies;
  final List<Link>? links;
  ExperienceModel(
      {this.job,
      this.company,
      this.description,
      this.url,
      this.isPresent,
      this.startYear,
      this.startMonth,
      this.endYear,
      this.endMonth,
      this.technologies,
      this.links});
}

class Link {
  const Link({
    required this.url,
    this.displayLink,
    this.displayLeadingIcon = false,
    this.underlined = false,
    this.hoverColor,
  });

  final String url;
  final String? displayLink;
  final bool displayLeadingIcon;
  final bool underlined;
  final Color? hoverColor;
}

List<ExperienceModel> listExperience = [
  ExperienceModel(
      job: "Mobile Developer",
      company: "TECHPRO TECHNOLOGY DEVELOPMENT JOINT STOCK COMPANY",
      description:
          'Build and edit modules and features as required, research new technology, apply improved business framework and Implement reports and other requirements of the Project Manager.',
      isPresent: true,
      startYear: 2022,
      endYear: 2023,
      technologies: [
        TechnologyConstants.flutter,
        TechnologyConstants.dart,
        TechnologyConstants.bloc,
        TechnologyConstants.github,
        TechnologyConstants.mqtt,
        TechnologyConstants.getX,
        TechnologyConstants.mqtt,
      ],
      links: [
        const Link(
            url: "https://sites.disney.com/waltdisneyimagineering/",
            displayLink: "Walt Disney Imagineering")
      ]),
  ExperienceModel(
      company: "University of Transport and Communications",
      description:
          'At here - My Univerity, I learned to be a software engineer. And my direction is a mobile developer',
      isPresent: false,
      startYear: 2018,
      endYear: 2022,
      technologies: [
        TechnologyConstants.flutter,
        TechnologyConstants.dart,
        // TechnologyConstants.bloc,
        // TechnologyConstants.github,
        // TechnologyConstants.mqtt,
        // TechnologyConstants.getX,
        // TechnologyConstants.mqtt,
      ],
      links: [
        const Link(
            url: "https://sites.disney.com/waltdisneyimagineering/",
            displayLink: "Walt Disney Imagineering")
      ])
];
