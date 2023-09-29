// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:myarjuna/global_var.dart';

class TextBold extends StatelessWidget {
  const TextBold(
      {super.key, required this.text, required this.size, required this.color});
  final text, size, color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: size,
        color: color,
      ),
    );
  }
}

class TextBase extends StatelessWidget {
  const TextBase({super.key, this.text, this.size, this.color});
  final text, size, color;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: size ?? 14.sp, color: color, fontFamily: 'Avenir'),
    );
  }
}

class FlexText extends StatelessWidget {
  const FlexText({super.key, this.text, this.size, this.color, this.weight});
  final text, size, color, weight;
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Text(
        text,
        style: TextStyle(
            overflow: TextOverflow.fade,
            fontSize: size ?? 14.sp,
            color: color,
            fontWeight: weight,
            fontFamily: 'Avenir'),
      ),
    );
  }
}

class LabelText extends StatelessWidget {
  const LabelText({super.key, this.text});
  final text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: 16.sp, color: Colors.black54, fontFamily: 'Avenir'),
    );
  }
}

class StdText extends StatelessWidget {
  const StdText(
      {super.key,
      this.text,
      this.size,
      this.color,
      this.weight,
      this.textAlign});
  final text, size, color, weight, textAlign;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: TextOverflow.fade,
      textAlign: textAlign,
      style: TextStyle(
        fontSize: size,
        color: color,
        fontFamily: 'Avenir',
        fontWeight: weight,
      ),
    );
  }
}
