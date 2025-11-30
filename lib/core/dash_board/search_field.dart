import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_ease/core/utils/constant.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        filled: true,
        fillColor: dsColor,
        hintText: "Search...",
        contentPadding: EdgeInsets.symmetric(vertical: 8),
        hintStyle: GoogleFonts.inter(
          fontSize: 15,
          color: Color(0xff8F959E),
        ),
        prefixIcon: SvgPicture.asset(
          "assets/dashboard/Search.svg",
          height: 20,
          width: 20,
        ).paddingAll(12),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
