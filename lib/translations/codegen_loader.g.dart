import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader {
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>> load(String fullPath, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String, dynamic> en = {
    'home': 'Home',
    'about': 'About',
    'services': 'Services',
    'portfolio': 'Portfolio',
    'contact': 'Contact',
    'mobileApplicationDeveloper': 'Mobile Application Developer',
    'softwareEngineer': 'Software Engineer',
    'aboutMe': 'About Me',
    'email': 'Email',
    'im': "I'm",
    'aMobileApplicationDeveloper': 'A Mobile Developer',
    'aflutterDeveloper': 'A Flutter Developer',
    'technologyIHaveWorkedWith': 'Technology I have worked with',
    'project': 'Project',
    'yearExperience': 'year\nExperience',
    'address': 'Address',
    'facebook': 'Facebook',
    'descAboutMe':
        'I have 1.5 years of experience in the field of mobile application development and I love design, application development and I aim to become an expert in this field to create products. great product. I have the ability to think logically and analytically, solve problems, think creatively, work independently or in groups, ready to continuously update skills and knowledge',
    'technologiesUsed': 'Technologies Used',
    'workExperience': 'Work Experience'
  };
  static const Map<String, dynamic> vi = {
    'home': 'Trang chủ',
    'about': 'Về tôi',
    'services': 'Services',
    'portfolio': 'Portfolio',
    'contact': 'Liên hệ',
    'mobileApplicationDeveloper': 'Lập trình viên phát triển ứng dụng di động',
    'softwareEngineer': 'Kĩ sư phần mềm',
    'aboutMe': 'Về tôi',
    'im': "Tôi là",
    'aMobileApplicationDeveloper':
        'một lập trình viên phát triển ứng dụng di động',
    'technologyIHaveWorkedWith': 'Công nghệ tôi đã làm việc',
    'project': 'Dự án',
    'yearExperience': 'năm\nkinh nghiệm',
    'address': 'Địa chỉ',
    'facebook': 'Facebook',
    'descAboutMe':
        'Tôi có 1,5 năm kinh nghiệm trong lĩnh vực nhà phát triển ứng dụng di động và tôi yêu thích về thiết kế, phát triển ứng dụng và tôi định hướng bản thân trở thành chuyên gia trong lĩnh vực này để tạo ra những sản phẩm tuyệt vời. Tôi Có khả năng tư duy logic và phân tích giải quyết vấn đề, suy luận sáng tạo, làm việc độc lập hoặc theo nhóm, sẵn sàng cập nhật liên tục các kỹ năng và kiến ​​thức',
    'technologiesUsed': 'Công nghệ sử dụng',
    'email': 'Email',
    'workExperience': 'Kinh nghiệm làm việc'
  };
  static const Map<String, Map<String, dynamic>> mapLocales = {
    'en': en,
    'vi': vi
  };
}
