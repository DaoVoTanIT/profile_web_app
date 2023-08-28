import 'package:my_portfolio/utils/constants.dart';

class TechnologyModel {
  final String name;
  final String logo;

  TechnologyModel(this.name, this.logo);
}

class TechnologyConstants {
  static TechnologyModel flutter =
      TechnologyModel("Flutter", AppConstants.flutterImage);
  static TechnologyModel github =
      TechnologyModel("Github", AppConstants.github);
  static TechnologyModel firebase =
      TechnologyModel("Firebase", AppConstants.firebaseImage);
  static TechnologyModel mqtt = TechnologyModel("MQTT", AppConstants.mqttImage);
  static TechnologyModel sql = TechnologyModel("SQL", AppConstants.sqlImage);
  static TechnologyModel getX = TechnologyModel("GetX", AppConstants.getXImage);
  static TechnologyModel bloc = TechnologyModel("Bloc", AppConstants.blocImg);
    static TechnologyModel dart = TechnologyModel("Dart", AppConstants.dartImg);


  static List<TechnologyModel> technologyLearned = [
    flutter,
    bloc,
    github,
    firebase,
    mqtt,
    getX,
    sql,
    dart
  ];
}
