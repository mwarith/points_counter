import 'package:flutter/material.dart';

int countA = 0, countB = 0;

class Team extends StatefulWidget {
  final int teamNum;

  const Team({
    super.key,
    required this.teamNum,
  });

  @override
  State<Team> createState() => _TeamState();
}

class _TeamState extends State<Team> {
  Widget CustomButton({required int teamNum, required int add}) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            teamNum == 1 ? countA += add : countB += add;
          });
        },
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          backgroundColor: const Color(0XFFff9800),
        ),
        child: Text(
          "Add $add Points",
          style: const TextStyle(
            fontSize: 15,
            color: Colors.black,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Team ${widget.teamNum}",
          style: const TextStyle(
            fontSize: 40,
          ),
        ),
        Text(
          widget.teamNum == 1 ? "$countA" : "$countB",
          style: const TextStyle(
            fontSize: 80,
          ),
        ),
        for (int i = 2; i <= 6; i += 2)
          CustomButton(teamNum: widget.teamNum, add: i)
      ],
    );
  }
}
