import 'package:attendance/premimumfeatures.dart';

import 'package:flutter/material.dart';

class PremiumFeatures extends StatelessWidget {
  const PremiumFeatures({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Column(
          children: [
            for (var setting in Settings.values)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //20874407
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        setting.title,
                        style: TextStyle(fontWeight: FontWeight.w300),
                      ),
                      if (setting.isPremium) Icon(Icons.lock),
                      if (setting.isNewFeature)
                        Chip(
                          label: Text("New Feature"),
                          backgroundColor: Colors.red[400],
                          labelStyle: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w400),
                        ),
                      if (setting.switchCase)
                        Switch(value: true, onChanged: (v) {})
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        setting.description,
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
