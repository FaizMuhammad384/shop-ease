import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_ease/core/dash_board/product_item.dart';
import 'package:shop_ease/core/utils/constant.dart';
import 'package:shop_ease/core/widgets/back_btn.dart';

class WishListLayout extends StatelessWidget {
  const WishListLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(
        systemNavigationBarColor: bgColor,
        statusBarColor: bgColor,
      ),

      child: SafeArea(
        child: Scaffold(
          // appBar: AppBar(
          //   centerTitle: false,
          //   leadingWidth: 0,
          //   titleSpacing: 0,
          //   title: BackBtn(),
          //   automaticallyImplyLeading: false,
          //   // actions: [BackBtn(imgPath: "assets/dashboard/Bag.svg")],
          // ),
          body: Column(
            children: [
              ListTile(
                title: Text(
                  "5 Items",
                  style: GoogleFonts.inter(
                    color: Color(0xff1D1E20),
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                subtitle: Text(
                  "In wishlist",
                  style: GoogleFonts.inter(
                    color: Color(0xff8F959E),
                    fontSize: 13,
                  ),
                ),
                tileColor: bgColor,
              ),
              SizedBox(height: 10),
              Expanded(
                child: GridView.builder(
                  itemCount: 12,
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisExtent: 220,
                  ),
                  itemBuilder: (context, index) {
                    return ProductItem();
                  },
                ).marginSymmetric(horizontal: 15),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
