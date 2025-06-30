import 'package:attendance/personalInfoSettings.dart';
import 'package:flutter/material.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Column(
          children: [
            for (var c in Personalinfosettings.values)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        c.title,
                        style: TextStyle(fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        c.decription,
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
              )
          ],
        ),
      ),
    );
  }
}
