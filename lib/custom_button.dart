import 'package:flutter/material.dart';
import 'main.dart';

class CustomButton extends StatefulWidget {
  final int teamNum, add;

  const CustomButton({
    super.key,
    required this.teamNum,
    required this.add,
  });

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            if (widget.teamNum == 1) {
              countA += widget.add;
            } else {
              countB += widget.add;
            }
          });
        },
        style: ButtonStyle(
          backgroundColor: const MaterialStatePropertyAll(
            Color(0XFFff9800),
          ),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
        child: Text(
          "Add ${widget.add} Points",
          style: const TextStyle(
            fontSize: 15,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
