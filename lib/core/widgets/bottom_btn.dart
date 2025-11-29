import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_ease/core/utils/constant.dart';

class BottomBtn extends StatelessWidget {

  final VoidCallback? onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: appMainColor,
        surfaceTintColor: appMainColor,
        shadowColor: appMainColor,
        fixedSize: Size(double.maxFinite, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
      ),
        child: Text(
          text,
          style: GoogleFonts.inter(
            color: Colors.white,
            fontSize: 17,
          ),
        ),
    );
  }

  const BottomBtn({
    super.key,
    this.onPressed,
    required this.text,
  });
}
