import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_ease/core/utils/constant.dart';
import 'package:shop_ease/core/widgets/bottom_btn.dart';
import 'package:shop_ease/core/widgets/my_field.dart';
import 'package:shop_ease/features/auth/src/login_screen.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(
        systemNavigationBarColor: appMainColor,
        statusBarColor: bgColor,
      ),
      child: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Column(
            spacing: 8,
            children: [
              SizedBox(height: 20),
              Text(
                "Forgot Password",
                style: GoogleFonts.inter(
                  color: Color(0xff1D1E20),
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 20),
              SvgPicture.asset(
                "assets/icons/forgot_img.svg",
                height: 130,
                width: 130,
              ),
              Expanded(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: MyField(labelText: "Email"),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Text(
                  "Please write your email to receive a confirmation code to set a new password.",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    color: Color(0xff8F959E),
                    fontSize: 14,
                  ),
                ),
              ),
              SizedBox(height: 20),
              BottomBtn(
                text: "Confirm Email",
                onPressed: () {
                  Get.to(() => LoginScreen());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
