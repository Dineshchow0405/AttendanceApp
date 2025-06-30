enum Accountsettings {
  kLanguage,
  kPassWord,
  kBusiness,
  kAlarm,
  kKyb,
}

extension bExtants on Accountsettings {
  String get title {
    return switch (this) {
      Accountsettings.kLanguage => 'Language ',
      Accountsettings.kPassWord => 'Security Password ',
      Accountsettings.kBusiness => 'Businesses ',
      Accountsettings.kAlarm => 'Alarm ',
      Accountsettings.kKyb => 'KYB ',
    };
  }

  String get description {
    return switch (this) {
      Accountsettings.kLanguage => 'English',
      Accountsettings.kPassWord => 'Edit Password',
      Accountsettings.kBusiness => '1 Active Businesses',
      Accountsettings.kAlarm => 'Alarm: 10:00 AM',
      Accountsettings.kKyb => 'Complete KYB to Avail online payment service...',
    };
  }

  bool get isNewFeature {
    return switch (this) {
      Accountsettings.kLanguage => false,
      Accountsettings.kPassWord => false,
      Accountsettings.kBusiness => false,
      Accountsettings.kAlarm => true,
      Accountsettings.kKyb => false,
    };
  }
}
