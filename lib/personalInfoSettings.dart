// import 'package:attendance/personalInfo.dart';

enum Personalinfosettings {
  kName,
  kMyOffice,
  kEmail,
}

extension cExtants on Personalinfosettings {
  String get title {
    return switch (this) {
      Personalinfosettings.kName => 'Name',
      Personalinfosettings.kMyOffice => 'PhoneNumber',
      Personalinfosettings.kEmail => 'Business Email ID',
    };
  }

  String get decription {
    return switch (this) {
      Personalinfosettings.kName => 'My Office',
      Personalinfosettings.kMyOffice => '7671844105',
      Personalinfosettings.kEmail => 'babisai55521@gmail.com',
    };
  }
}
