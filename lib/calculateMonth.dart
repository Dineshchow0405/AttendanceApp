import 'package:attendance/calculatemonthSetting.dart';
import 'package:flutter/material.dart';

class CalculateMonth extends StatelessWidget {
  const CalculateMonth({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: const Color(0xff7c94b6),

      child: Column(
        children: [
          // DecoratedBox(
          //   decoration: BoxDecoration(
          //     color: const Color(0xff7c94b6),
          //     border: Border.all(
          //       width: 1,
          //     ),
          //     borderRadius: BorderRadius.circular(12),
          //   ),
          // ),
          for (var f in CalculateMonths.values)
            Row(
              children: [
                Icon(Icons.dangerous),
                Text(
                  f.title,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          Column(
            children: [
              for (var f in CalculateMonths.values)
                Text(
                  f.description,
                  style: TextStyle(fontWeight: FontWeight.w400),
                ),
            ],
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
