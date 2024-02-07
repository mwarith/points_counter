import 'package:flutter/material.dart';
import 'custom_button.dart';
import 'main.dart';

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
            fontSize: 125,
          ),
        ),
        for (int i = 2; i <= 6; i += 2)
          CustomButton(teamNum: widget.teamNum, add: i)
      ],
    );
  }
}
