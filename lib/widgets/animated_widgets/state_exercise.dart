import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class StateExercise extends StatefulWidget {
  String param;

  StateExercise({key, required this.param});

  @override
  State<StateExercise> createState() => _StateExerciseState();
}

class _StateExerciseState extends State<StateExercise> {
  bool isHover = false;
  Color hoverItemColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    /*setState(() {
      isHover ? HoverItemColor = Colors.yellow : Colors.black;
    });*/

    return InkWell(
      onTap: () {
        context.goNamed(widget.param);
      },
      onHover: (value) {
        setState(() {
          value ? isHover = true : isHover = false;
          isHover
              ? hoverItemColor = Colors.yellow
              : hoverItemColor = Colors.black;
        });
        print(isHover.toString() + " " + hoverItemColor.toString());
      },
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      child: Text(
        widget.param,
        style: TextStyle(color: hoverItemColor),
      ),
    );
  }
}
