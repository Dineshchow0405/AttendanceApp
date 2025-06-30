enum accountSetting {
  kLanguage,
  kPassWord,
  kBusiness,
  kAlarm,
  kKyb,
}

extension bExtants on accountSetting {
  String get title {
    return switch (this) {
      accountSetting.kLanguage => 'Language ',
      accountSetting.kPassWord => 'Security Password ',
      accountSetting.kBusiness => 'Businesses ',
      accountSetting.kAlarm => 'Alarm ',
      accountSetting.kKyb => 'KYB ',
    };
  }

  String get description {
    return switch (this) {
      accountSetting.kLanguage => 'English',
      accountSetting.kPassWord => 'Edit Password',
      accountSetting.kBusiness => '1 Active Businesses',
      accountSetting.kAlarm => 'Alarm: 10:00 AM',
      accountSetting.kKyb => 'Complete KYB to Avail online payment service...',
    };
  }

  bool get isNewFeature {
    return switch (this) {
      accountSetting.kLanguage => false,
      accountSetting.kPassWord => false,
      accountSetting.kBusiness => false,
      accountSetting.kAlarm => true,
      accountSetting.kKyb => false,
    };
  }
}
