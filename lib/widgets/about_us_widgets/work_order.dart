// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:html';

import 'package:flutter/material.dart';
import 'package:paint_burak/constants/about_us_texts.dart';
import 'package:paint_burak/widgets/text_widgets/font_advent_text.dart';
import 'package:paint_burak/widgets/text_widgets/font_orbitron_text.dart';

class WorkOrder extends StatelessWidget {
  const WorkOrder({super.key});

  @override
  Widget build(BuildContext context) {
    var workOrderList = WorkOrderList;
    var workOrderCount = workOrderList.length;
    return Column(
      children: [
        for (var i = 1; i < workOrderCount + 1; i++)
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: FontAdventText(
                    text: i.toString(),
                    fontSize: 25,
                    color: Colors.cyan,
                  ),
                ),
              ),
              Expanded(
                flex: 9,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: FontAdventText(
                    text: workOrderList[i - 1].toString(),
                    fontSize: 20,
                    color: const Color.fromARGB(255, 75, 75, 75),
                  ),
                ),
              ),
            ],
          )
      ],
    );
  }
}
