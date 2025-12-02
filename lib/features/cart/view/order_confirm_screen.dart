import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:shop_ease/core/utils/constant.dart';
import 'package:shop_ease/core/utils/ui_utils.dart';
import 'package:shop_ease/core/widgets/back_btn.dart';
import 'package:shop_ease/core/widgets/bottom_btn.dart';

class OrderConfirmScreen extends StatelessWidget {
  const OrderConfirmScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(
        systemNavigationBarColor: appMainColor,
        statusBarColor: dsColor,
      ),
      child: Scaffold(
        appBar: AppBar(leading: BackBtn().marginAll(10)),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    SvgPicture.asset(
                      "assets/utils/order_confirm.svg",
                      height: 70,
                      width: 70,
                    ),
                    mSpacer(),
                    Text(
                      "Order Confirmed",
                      style: GoogleFonts.inter(
                        color: Color(0xff1D1E20),
                        fontWeight: FontWeight.w600,
                        fontSize: 17,
                      ),
                    ),
                    Text(
                      "Your order has been confirmed, we will send you confirmation email shortly.",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                        color: Color(0xff8F959E),
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              BottomBtn(text: "Continue Shopping"),
            ],
          ),
        ),
      ),
    );
  }
}
