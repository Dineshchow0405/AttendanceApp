import 'package:attendance/accountSettings.dart';
import 'package:flutter/material.dart';

class Accountsetting extends StatelessWidget {
  const Accountsetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Column(
          children: [
            for (var b in accountSetting.values)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        b.title,
                        style: TextStyle(fontWeight: FontWeight.w300),
                      ),
                      if (b.isNewFeature)
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
                        b.description,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Icon(Icons.keyboard_arrow_right_outlined),
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
    );
  }
}
