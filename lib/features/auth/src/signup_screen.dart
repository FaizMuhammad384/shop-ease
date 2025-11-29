import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_ease/core/utils/constant.dart';
import 'package:shop_ease/core/widgets/back_btn.dart';
import 'package:shop_ease/core/widgets/bottom_btn.dart';
import 'package:shop_ease/core/widgets/my_field.dart';
import 'package:shop_ease/features/auth/src/login_screen.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

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
              SizedBox(height: 8),
              Align(alignment: Alignment.centerLeft, child: BackBtn()),
              Text(
                "Sign Up",
                style: GoogleFonts.inter(
                  color: Color(0xff1D1E20),
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    spacing: 8,
                    children: [
                      MyField(labelText: "Name"),
                      MyField(labelText: "Email"),
                      MyField(labelText: "Password"),
                      MyField(labelText: "Confirm Password"),
                    ],
                  ),
                ),
              ),
              BottomBtn(
                text: "Sign Up",
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
