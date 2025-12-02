import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_ease/core/utils/constant.dart';
import 'package:shop_ease/core/utils/ui_utils.dart';
import 'package:shop_ease/core/widgets/back_btn.dart';
import 'package:shop_ease/core/widgets/bottom_btn.dart';

class CartLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(
        systemNavigationBarColor: appMainColor,
        statusBarColor: dsColor,
      ),
      child: Scaffold(
        appBar: AppBar(
          leading: BackBtn().marginAll(10),
          title: Text(
            "Cart",
            style: GoogleFonts.inter(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 17,
            ),
          ),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.symmetric(vertical: 7),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 120,
                            height: 100,
                            decoration: BoxDecoration(
                              color: dsColor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Container(
                                color: Colors.blue,
                                height: 50,
                                width: 50,
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Nike Sports Wear",
                                style: GoogleFonts.inter(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 17,
                                ),
                              ),
                              Text(
                                "\$45",
                                style: GoogleFonts.inter(
                                  color: Color(0xff8F959E),
                                  fontSize: 14,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.keyboard_arrow_down_rounded,color: Color(0xff8F959E),size: 17,),
                                      ),
                                      Text(
                                        "1",
                                        style: GoogleFonts.inter(
                                          color: Color(0xff8F959E),
                                          fontSize: 14,
                                        ),
                                      ),
                                      IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.keyboard_arrow_down_rounded,color: Color(0xff8F959E),size: 17,),
                                      ),
                                    ],
                                  ),
                                  IconButton(onPressed: (){}, icon: Icon(Icons.delete_outline,color: Color(0xff8F959E),size: 17,))
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ).marginSymmetric(horizontal: 15),
              ),
              mSpacer(),
              Text(
                "Order Info",
                style: GoogleFonts.inter(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 17,
                ),
              ).marginSymmetric(horizontal: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Subtotal",
                    style: GoogleFonts.inter(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    "\$45",
                    style: GoogleFonts.inter(
                      color: Color(0xff8F959E),
                      fontSize: 15,
                    ),
                  ),
                ],
              ).marginSymmetric(horizontal: 15),
              mSpacer(height: 5.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Shipping Cost",
                    style: GoogleFonts.inter(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    "\$10",
                    style: GoogleFonts.inter(
                      color: Color(0xff8F959E),
                      fontSize: 15,
                    ),
                  ),
                ],
              ).marginSymmetric(horizontal: 15),
              mSpacer(height: 5.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total",
                    style: GoogleFonts.inter(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    "\$55",
                    style: GoogleFonts.inter(
                      color: Color(0xff8F959E),
                      fontSize: 15,
                    ),
                  ),
                ],
              ).marginSymmetric(horizontal: 15),
              mSpacer(height: 20.0),
              BottomBtn(text: "Checkout",onPressed: (){},),
            ],
          ),
        ),
      ),
    );
  }
}
