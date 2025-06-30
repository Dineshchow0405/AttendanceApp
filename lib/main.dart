import 'package:attendance/Attendance.dart';
import 'package:attendance/Settings.dart';
import 'package:attendance/accountSetting.dart';
import 'package:attendance/personalInfo.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  Menu currentMenu = Menu.kHomepage;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.analytics),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.download),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.settings),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.messenger_outline),
            ),
          ],
          title: const Text("Attendence"),
          backgroundColor: Colors.white,
          centerTitle: false,
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: Menu.values.indexOf(currentMenu),
          onTap: (value) {
            currentMenu = Menu.values[value];
            setState(() {});
          },
          type: BottomNavigationBarType.fixed,
          items: [
            for (final menuItem in Menu.values)
              BottomNavigationBarItem(
                icon: Icon(menuItem.icon),
                label: menuItem.label,
              ),
          ],
        ),
        body: currentMenu.wgt,
      ),
    );
  }
}

enum Menu {
  kHomepage,
  kAttendance,
  kGeo,
  kSettings;

  IconData get icon {
    return switch (this) {
      Menu.kHomepage => Icons.person_2,
      Menu.kAttendance => Icons.hail_outlined,
      Menu.kGeo => Icons.location_on_rounded,
      Menu.kSettings => Icons.settings,
    };
  }

  String get label {
    return switch (this) {
      Menu.kHomepage => "Staff",
      Menu.kAttendance => "Attendence",
      Menu.kGeo => "Geo",
      Menu.kSettings => "Settings",
    };
  }

  Widget get wgt {
    return switch (this) {
      Menu.kHomepage => Accountsetting(),
      Menu.kAttendance => Attendance(),
      Menu.kGeo => PersonalInfo(),
      Menu.kSettings => Settings(),
    };
  }
}
