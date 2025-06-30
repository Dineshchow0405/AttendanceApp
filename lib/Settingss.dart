enum BuSetting {
  kBuName,
  kMoncal,
  kDailyWork,
  kShiftSetting,
  kAttendence,
  kTrack,
  kattendnceOut,
  kAbsent,
  kWeekely,
  kDepartments,
  kAutomations,
  kWorkRate,
  kBusiness,
  kSalary,
  kShare,
  kBusinessName,
  kMake,
}

extension BuSettingExt on BuSetting {
  String get title {
    return switch (this) {
      BuSetting.kBuName => 'BusinessName ',
      BuSetting.kMoncal => 'Month Calculation ',
      BuSetting.kDailyWork => 'Daily Work Entry ',
      BuSetting.kShiftSetting => 'Shift Settings ',
      BuSetting.kAttendence => 'Attendance Setting ',
      BuSetting.kTrack => 'Track in & Out time ',
      BuSetting.kattendnceOut => '',
      BuSetting.kAbsent => 'Absent on Previous days ',
      BuSetting.kWeekely => 'Weekly-Off Settings ',
      BuSetting.kDepartments => 'Departments ',
      BuSetting.kAutomations => 'Automations Rules ',
      BuSetting.kWorkRate => '',
      BuSetting.kBusiness => 'Business Bank Account ',
      BuSetting.kSalary => 'Salary Details Access to Staff ',
      BuSetting.kShare => 'Share Staff App Link ',
      BuSetting.kBusinessName => 'Business Name in Bank Statement ',
      BuSetting.kMake => 'Make Job Poster ',
    };
  }

  String get description {
    return switch (this) {
      BuSetting.kBuName => 'Pramukesh And Co ',
      BuSetting.kMoncal => 'Every Month 26 Days ',
      BuSetting.kDailyWork => '5 Staffs ',
      BuSetting.kShiftSetting => '1 Shift Added ',
      BuSetting.kAttendence => 'Auto-Attendance Rule ',
      BuSetting.kTrack => 'Disabled ',
      BuSetting.kattendnceOut => 'Attendence on Holidays ',
      BuSetting.kAbsent => 'Disabled ',
      BuSetting.kWeekely => 'Configure & manage weekly off templets ',
      BuSetting.kDepartments => '2 Departments | 5 / 5 Staff Assigned ',
      BuSetting.kAutomations => 'Set Fines & Overtimes ',
      BuSetting.kWorkRate => 'Work Rate Card ',
      BuSetting.kBusiness => 'Enter Details for instant Refunds ',
      BuSetting.kSalary => 'All staff ',
      BuSetting.kShare => '0/5 Using app ',
      BuSetting.kBusinessName => 'Pramukesh And Co ',
      BuSetting.kMake => 'Hire Staff',
    };
  }

  bool get isNewFeature {
    return switch (this) {
      BuSetting.kBuName => false,
      BuSetting.kMoncal => false,
      BuSetting.kDailyWork => false,
      BuSetting.kShiftSetting => true,
      BuSetting.kAttendence => false,
      BuSetting.kTrack => true,
      BuSetting.kattendnceOut => true,
      BuSetting.kAbsent => true,
      BuSetting.kWeekely => true,
      BuSetting.kDepartments => true,
      BuSetting.kAutomations => true,
      BuSetting.kWorkRate => false,
      BuSetting.kBusiness => false,
      BuSetting.kSalary => true,
      BuSetting.kShare => false,
      BuSetting.kBusinessName => false,
      BuSetting.kMake => false,
    };
  }

  bool get switchCase {
    return switch (this) {
      BuSetting.kBuName => false,
      BuSetting.kMoncal => false,
      BuSetting.kDailyWork => false,
      BuSetting.kShiftSetting => false,
      BuSetting.kAttendence => true,
      BuSetting.kTrack => false,
      BuSetting.kattendnceOut => false,
      BuSetting.kAbsent => false,
      BuSetting.kWeekely => false,
      BuSetting.kDepartments => false,
      BuSetting.kAutomations => false,
      BuSetting.kWorkRate => false,
      BuSetting.kBusiness => false,
      BuSetting.kSalary => false,
      BuSetting.kShare => false,
      BuSetting.kBusinessName => false,
      BuSetting.kMake => false,
    };
  }

  bool get isArrow {
    return switch (this) {
      BuSetting.kBuName => true,
      BuSetting.kMoncal => true,
      BuSetting.kDailyWork => true,
      BuSetting.kShiftSetting => true,
      BuSetting.kAttendence => false,
      BuSetting.kTrack => true,
      BuSetting.kattendnceOut => true,
      BuSetting.kAbsent => true,
      BuSetting.kWeekely => true,
      BuSetting.kDepartments => true,
      BuSetting.kAutomations => true,
      BuSetting.kWorkRate => true,
      BuSetting.kBusiness => true,
      BuSetting.kSalary => true,
      BuSetting.kShare => true,
      BuSetting.kBusinessName => true,
      BuSetting.kMake => true,
    };
  }
}
