import 'package:flutter/material.dart';
import 'team.dart';

int countA = 0, countB = 0;

void main() {
  runApp(const PointsCounter());
}

class PointsCounter extends StatefulWidget {
  const PointsCounter({super.key});

  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Points Counter",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: const Color(0XFFff9800),
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Team(
                  teamNum: 1,
                ),
                // const VerticalDivider(
                //   width: 20,
                //   thickness: 5,
                //   indent: 20,
                //   endIndent: 0,
                //   color: Colors.black,
                // ),
                Team(
                  teamNum: 2,
                ),
              ],
            ),
            const SizedBox(
              height: 100,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  countA = countB = 0;
                });
              },
              style: ButtonStyle(
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                backgroundColor: const MaterialStatePropertyAll(
                  Color(0XFFff9800),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.all(5.0),
                child: Text(
                  "Reset",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
