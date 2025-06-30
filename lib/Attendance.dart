import 'package:flutter/material.dart';

Map<String, String> data = {
  "Present": "5",
  "Absent": "0",
  "Half Day": "0",
  "Leave": "5",
  "Fine": "0.00",
  "OverTime": "0.00",
};

class Attendance extends StatelessWidget {
  const Attendance({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Ask Staff to mark attendence whith selfie!"),
            SizedBox(height: 10),
            Row(
              children: [
                FilledButton(
                  // style: ButtonStyle(backgroundColor:),
                  onPressed: () {},
                  child: Text(
                    "Check 7 days Free Trail",
                    // style: TextStyle(backgroundColor: Colors.black),
                  ),
                ),
                Spacer(),
                Icon(Icons.chevron_right_outlined),
              ],
            ),
            Column(
              children: [
                Divider(
                  height: 30,
                  color: Colors.blue,
                ),
                Row(
                  children: [
                    Icon(Icons.keyboard_arrow_left),
                    Spacer(),
                    Text(
                      "9 Dec | Mon",
                    ),
                    Spacer(),
                    Icon(Icons.chevron_right_outlined),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Wrap(
                children: [
                  for (var key in data.keys)
                    Container(
                      margin: EdgeInsets.all(8.0),
                      alignment: Alignment.center,
                      color: Colors.grey[300],
                      height: 80,
                      width: 80,
                      child: Column(
                        children: [
                          Text(key),
                          Text(data[key]!),
                        ],
                      ),
                    ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.grey[300],
                height: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Icon(
                            Icons.content_paste,
                            color: Colors.blue,
                          ),
                          Text("Daily Work Summary"),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Icon(
                            Icons.post_add_outlined,
                            color: Colors.blue,
                          ),
                          Text("Add Work(Work Basis)"),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Icon(
                            Icons.badge,
                            color: Colors.blue,
                          ),
                          Text("Mangages Leaves"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Search Staff',
                suffixIcon: Icon(Icons.search),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Creative Department(1)",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(15.0),
              color: Colors.grey[300],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Sai Sirisha Chundru",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Text("8:30 Hrs"),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FilledButton(
                        onPressed: () {},
                        child: Text("Present"),
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        child: Text("Half Day"),
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        child: Text("Absent"),
                      ),
                      Icon(Icons.keyboard_arrow_down_rounded),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Normal",
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Technical Department(4)",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(15.0),
              color: Colors.grey[300],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Keerthi Polepalli",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Text("8:30 Hrs"),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FilledButton(
                        onPressed: () {},
                        child: Text("Present"),
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        child: Text("Half Day"),
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        child: Text("Absent"),
                      ),
                      Icon(Icons.keyboard_arrow_down_rounded),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Normal",
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(15.0),
              color: Colors.grey[300],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Rakesh Sai Charan Kavalipurapu",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Text("8:30 Hrs"),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FilledButton(
                        onPressed: () {},
                        child: Text("Present"),
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        child: Text("Half Day"),
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        child: Text("Absent"),
                      ),
                      Icon(Icons.keyboard_arrow_down_rounded),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Normal",
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(15.0),
              color: Colors.grey[300],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Dinesh Venkata Krishna Reddy",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Text("3:30 Hrs"),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FilledButton(
                        onPressed: () {},
                        child: Text("Present"),
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        child: Text("Half Day"),
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        child: Text("Absent"),
                      ),
                      Icon(Icons.keyboard_arrow_down_rounded),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Normal",
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(15.0),
              color: Colors.grey[300],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Bhanushankar Bodapudi",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Text("3:30 Hrs"),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FilledButton(
                        onPressed: () {},
                        child: Text("Present"),
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        child: Text("Half Day"),
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        child: Text("Absent"),
                      ),
                      Icon(Icons.keyboard_arrow_down_rounded),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Normal",
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
