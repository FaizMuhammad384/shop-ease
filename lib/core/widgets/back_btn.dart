import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class BackBtn extends StatelessWidget {
  const BackBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Get.back();
      },
      style: ElevatedButton.styleFrom(
        shape: CircleBorder(),
        backgroundColor: Color(0xffF5F6FA),
        elevation: .05,
        surfaceTintColor: Color(0xffF5F6FA),
      ),
      child: SvgPicture.asset(
        "assets/icons/back_arrow.svg",
        height: 22,
        width: 22,
      ),
    );
  }
}
