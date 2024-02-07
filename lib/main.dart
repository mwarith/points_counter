import 'package:flutter/material.dart';
import 'team.dart';

int countA = 0, countB = 0;

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
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
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Team(
                  teamNum: 1,
                ),
                VerticalDivider(
                  width: 20,
                  thickness: 5,
                  indent: 20,
                  endIndent: 0,
                  color: Colors.black,
                ),
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
