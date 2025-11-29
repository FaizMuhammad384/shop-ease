import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_ease/core/utils/constant.dart';
import 'package:shop_ease/core/widgets/back_btn.dart';
import 'package:shop_ease/core/widgets/bottom_btn.dart';
import 'package:shop_ease/core/widgets/my_field.dart';
import 'package:shop_ease/features/auth/src/forgot_password_screen.dart';
import 'package:shop_ease/features/auth/src/signup_screen.dart';



class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
              Align(alignment: Alignment.topLeft, child: BackBtn()),
              Text(
                "Welcome",
                style: GoogleFonts.inter(
                  color: Color(0xff1D1E20),
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "Please enter your data to continue",
                style: GoogleFonts.inter(
                  color: Color(0xff8F959E),
                  fontSize: 15,
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
                      MyField(labelText: "Email"),
                      MyField(labelText: "Password"),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {
                            Get.to(() => ForgotPasswordScreen());
                          },
                          child: Text(
                            "Forgot password?",
                            style: GoogleFonts.inter(
                              color: Color(0xffEA4335),
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              BottomBtn(
                text: "Login",
                onPressed: () {
                  Get.to(() => SignupScreen());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
