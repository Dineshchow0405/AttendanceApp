//import 'package:flutter/material.dart';

enum CalculateMonths {
  kCalenderMonth,
  kEveryMonth,
  kMonth28,
  kMonth26,
  kExclude,
}

extension CalculateMonthExt on CalculateMonths {
  String get title {
    return switch (this) {
      CalculateMonths.kCalenderMonth => 'Calander Month',
      CalculateMonths.kEveryMonth => 'Every Month 30 Days',
      CalculateMonths.kMonth28 => 'Every Month 28 Days',
      CalculateMonths.kMonth26 => 'Every Month 26 Days',
      CalculateMonths.kExclude => 'Exclude Weekly Offs',
    };
  }

  String get description {
    return switch (this) {
      CalculateMonths.kCalenderMonth =>
        'Ex: March - 31 days, April - 30 Days etc \n'
            "(Per day salary = Salary/No.Of days in month)",
      CalculateMonths.kEveryMonth =>
        'Ex: March - 30 days, April - 30 Days etc \n'
            "(Per day salary = Salary/30)",
      CalculateMonths.kMonth28 => 'Ex: March - 28 days, April - 28 Days etc \n'
          "(Per day salary = Salary/28)",
      CalculateMonths.kMonth26 => 'Ex: March - 26 days, April - 26 Days etc \n'
          "(Per day salary = Salary/26)",
      CalculateMonths.kExclude =>
        'Ex: Month with 31 days and 4 weekly-offs will have 27 payable days \n'
            "(Per day salary = Salary/Payable Days)",
    };
  }
}
