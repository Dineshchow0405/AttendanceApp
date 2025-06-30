import 'package:attendance/Settingss.dart';
import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Column(
            children: [
              for (var a in BuSetting.values)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text(
                          a.title,
                          style: TextStyle(fontWeight: FontWeight.w300),
                        ),
                        if (a.title.isNotEmpty && a.isNewFeature)
                          Chip(
                            label: Text("New Feature"),
                            backgroundColor: Colors.red[400],
                            labelStyle: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          a.description,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        if (a.title.isEmpty && a.isNewFeature)
                          Chip(
                            label: Text("New Feature"),
                            backgroundColor: Colors.red[400],
                            labelStyle: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400),
                          ),
                        Spacer(),
                        if (a.isArrow)
                          Icon(Icons.keyboard_arrow_right_outlined)
                        else if (a.switchCase)
                          Switch(value: true, onChanged: (v) {}),
                      ],
                    ),
                    SizedBox(height: 10),
                    Divider(
                      height: 3,
                      color: Colors.blue[100],
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
