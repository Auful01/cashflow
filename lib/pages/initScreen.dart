import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ScreenInit extends StatefulWidget {
  final widget;
  const ScreenInit({super.key, this.widget});

  @override
  State<ScreenInit> createState() => _ScreenInitState();
}

class _ScreenInitState extends State<ScreenInit> {
  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
      child: Scaffold(
        body: SingleChildScrollView(
          child: widget.widget,
        ),
      ),
    );
  }
}
