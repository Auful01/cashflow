import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Space extends StatelessWidget {
  const Space({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 10.h,
    );
  }
}

class SpaceCustom extends StatelessWidget {
  var custom;
  SpaceCustom({super.key, this.custom});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: custom);
  }
}

class SpaceWidth extends StatelessWidget {
  const SpaceWidth({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 10.w,
    );
  }
}

// ignore: must_be_immutable
class SpaceWidthCustom extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  var custom;
  SpaceWidthCustom({super.key, this.custom});

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: custom);
  }
}
