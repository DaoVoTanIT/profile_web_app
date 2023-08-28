import 'package:my_portfolio/models/link_model.dart';
import 'package:my_portfolio/models/technology.dart';
import 'package:my_portfolio/utils/constants.dart';

class ProjectModel {
  final String project;
  final String title;
  final String description;
  final String appPhotos;
  final String? projectLink;
  final List<TechnologyModel> techUsed;
  List<LinkModel>? links = [];
  final String? buttonText;

  ProjectModel({
    required this.project,
    required this.title,
    required this.description,
    required this.appPhotos,
    this.projectLink,
    required this.techUsed,
    this.buttonText,
    this.links,
  });

  static List<ProjectModel> projects = [
    ProjectModel(
      project: "Flutter",
      title: "Vime",
      description:
          "Book a personal appointment with the company, check in/out when entering and exiting the building/company, notify the user of the appointment when booking/approving/canceling an appointment, show,lter my appointment by company/building by day/week/month/year",
      appPhotos: 'outputs/vime.png',
      projectLink: "https://apps.apple.com/vn/app/vime/id1588555118",
      techUsed: [
        TechnologyConstants.flutter,
        TechnologyConstants.firebase,
        TechnologyConstants.github,
        TechnologyConstants.bloc,
      ],
      buttonText: "Download",
    ),
    ProjectModel(
      project: "Flutter",
      title: "Techpro Smart work",
      description:
          "Job management application, perform, Manage attendance, leave, overtime, Project and task management",
      appPhotos: 'outputs/cmms.png',
      projectLink:
          "https://apps.apple.com/vn/app/techpro-smartwork/id1578419364",
      techUsed: [
        TechnologyConstants.flutter,
        TechnologyConstants.firebase,
        TechnologyConstants.github,
        TechnologyConstants.bloc,
      ],
      buttonText: "Download",
    ),
    ProjectModel(
      project: "Flutter",
      title: "Techpro CMMS",
      description:
          "User work list, work order management, meter, asset, connect MQTT, work order cost calculation, perform assigned tasks",
      appPhotos: 'outputs/cmms.png',
      techUsed: [
        TechnologyConstants.flutter,
        TechnologyConstants.firebase,
        TechnologyConstants.github,
        TechnologyConstants.bloc,
        TechnologyConstants.mqtt,
      ],
      buttonText: "Download",
    ),
  ];

  static List<ProjectModel> demos = [
    ProjectModel(
      project: "Flutter App",
      title: "Flutter Web Portfolio",
      description: "",
      appPhotos: AppConstants.portfolioGif,
      projectLink: "https://github.com/AgnelSelvan/Flutter-Web-Portfolio",
      techUsed: [],
      buttonText: "Github Link",
    ),
  ];
}
