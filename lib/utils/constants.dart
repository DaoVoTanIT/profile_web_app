import 'package:flutter/material.dart';
import 'package:my_portfolio/models/header_item.dart';
import 'package:my_portfolio/translations/export_lang.dart';
import 'package:my_portfolio/utils/utils.dart';

const Color kPrimaryColor = Color(0xFF2574FF);
// Color(0xFFFFD800);
const Color kBackgroundColor = Color.fromRGBO(7, 17, 26, 1);
const Color kDangerColor = Color.fromARGB(255, 243, 22, 22);
const Color kCaptionColor = Color.fromRGBO(166, 177, 187, 1);
const Color backgroundWhite = Color(0xFFFFFFFF);
const Color contentColorYellow = Color(0xFFFFC300);

// Lets replace all static sizes
const double kDesktopMaxWidth = 1000.0;
const double kTabletMaxWidth = 760.0;
double getMobileMaxWidth(BuildContext context) =>
    MediaQuery.of(context).size.width * .8;

class AppConstants {
  static const linkedInUrl =
      "https://www.linkedin.com/in/agnel-selvan-328421192/";
  static const instagramUrl = "https://www.instagram.com/_agnel.selvan_/";
  static const githubUrl = "https://github.com/AgnelSelvan";
  static const mediumUrl = "https://medium.com/@agnelselvan";

  static const _assets = "assets/";
  static const _outputs = "outputs/";
  static const avtImage = "assets/images/avt/profile.jpg";
  static const flutterLogo = "assets/images/avt/flutter_logo.jpg";

  static const _svg = _assets + "svg/";
  static const guySvg = _svg + "guy.svg";
  static const personSvg = _svg + "person.svg";

  static const _images = _assets + "images/";

  static const _socialImages = _images + "social/";
  static const emailImage = _socialImages + "email.png";
  static const linkedInImage = _socialImages + "linkedin-logo.png";
  static const instaImage = _socialImages + "instagram.png";
  static const githubImage = _socialImages + "github.png";
  static const mediumImage = _socialImages + "medium.png";

  static const _techImages = _images + "technology/";
  static const flutterImage = _techImages + "flutter.png";
  static const pythonImage = _techImages + "python.png";
  static const phpImage = _techImages + "php.png";
  static const github = _techImages + "github.png";
  static const firebaseImage = _techImages + "firebase.png";
  static const mqttImage = _techImages + "mqtt.png";
  static const sqlImage = _techImages + "sql.png";
  static const swiftImage = _techImages + "swift.png";
  static const sceneKitImage = _techImages + "scenekit.jpeg";
  static const getXImage = _techImages + "getx.png";
  static const blocImg = _techImages + "bloc.png";
  static const dartImg = _techImages + "dart.png";

  static const _projectsImages = _images + "projects/";
  static const smartStoreImage = _projectsImages + "1.jpeg";
  static const crossTheRoadImage = _projectsImages + "2.jpeg";
  static const newsUpImage = _projectsImages + "3.jpeg";
  static const musicLabImage = _projectsImages + "4.jpeg";
  static const personalFaceImage = _projectsImages + "5.jpeg";
  static const computerStoreImage = _projectsImages + "6.jpeg";
  static const vimeImg = _outputs + "vime.png";
  static const cmmsImage = _outputs + "cmms.png";

  static const _gifs = _outputs + "gif/";
  static const portfolioGif = _gifs + "mobile.gif";
  static const fag = _assets + "flag/";
  static const flagUsa = fag + "usa_flag.png";
  static const flagVn = fag + "vietnam_flag.png";

  static List<NameOnTap> socialLoginDatas = [
    NameOnTap(
        title: emailImage,
        onTap: () {
          Utilty.openMail();
        }),
    NameOnTap(
        title: linkedInImage,
        onTap: () {
          Utilty.openUrl(linkedInUrl);
        }),
    NameOnTap(
        title: instaImage,
        onTap: () {
          Utilty.openUrl(instagramUrl);
        }),
    NameOnTap(
        title: githubImage,
        onTap: () {
          Utilty.openUrl(githubUrl);
        }),
    NameOnTap(
        title: mediumImage,
        onTap: () {
          Utilty.openUrl(mediumUrl);
        }),
  ];
}
