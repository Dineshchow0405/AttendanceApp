enum Settings {
  kAdminSettings,
  kManagerSettings,
  kCustomizeSalary,
  kPagerBook,

  // kSwitchStyle,
}

extension SettingsExt on Settings {
  String get title {
    return switch (this) {
      Settings.kAdminSettings => 'Admin Settings',
      Settings.kManagerSettings => 'Manager Settings',
      Settings.kCustomizeSalary => 'Customize Salary Slips',
      Settings.kPagerBook => '',
    };
  }

  String get description {
    return switch (this) {
      Settings.kAdminSettings => '1 Admin You',
      Settings.kManagerSettings => '0 Manager Added',
      Settings.kCustomizeSalary => "Add Business Logo & Address",
      Settings.kPagerBook => "PagerBook Premium",
    };
  }

  bool get isPremium {
    return switch (this) {
      Settings.kAdminSettings => true,
      Settings.kManagerSettings => true,
      Settings.kCustomizeSalary => true,
      Settings.kPagerBook => false,
    };
  }

  bool get isNewFeature {
    return switch (this) {
      Settings.kAdminSettings => false,
      Settings.kManagerSettings => false,
      Settings.kCustomizeSalary => true,
      Settings.kPagerBook => false,
    };
  }

  bool get switchCase {
    return switch (this) {
      Settings.kAdminSettings => false,
      Settings.kManagerSettings => false,
      Settings.kCustomizeSalary => true,
      Settings.kPagerBook => false,
    };
  }
}
