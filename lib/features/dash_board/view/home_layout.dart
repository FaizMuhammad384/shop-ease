import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_ease/core/dash_board/choose_brand.dart';
import 'package:shop_ease/core/dash_board/product_item.dart';
import 'package:shop_ease/core/dash_board/search_field.dart';
import 'package:shop_ease/core/utils/constant.dart';
import 'package:shop_ease/core/widgets/back_btn.dart';
import 'package:shop_ease/features/dash_board/layouts/cart_layout.dart';
import 'package:shop_ease/features/product/srs/all_product_screen.dart';
import 'package:shop_ease/features/product/srs/product_details_screen.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(
        systemNavigationBarColor: bgColor,
        statusBarColor: bgColor,
      ),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          leadingWidth: 0,
          titleSpacing: 0,
          automaticallyImplyLeading: false,
          title: BackBtn(imgPath: "assets/dashboard/menu.svg"),
          actions: [
            BackBtn(
              imgPath: "assets/dashboard/Bag.svg",
              onTap: () {
                Get.to(() => CartLayout());
              },
            ),
          ],
        ),

        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
            child: Column(
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello",
                      style: GoogleFonts.inter(
                        color: Color(0xff1D1E20),
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "Welcome to EaseShop.",
                      style: GoogleFonts.inter(
                        color: Color(0xff8F959E),
                        fontSize: 17,
                      ),
                    ),
                    SizedBox(height: 15),

                    //   search field
                    SearchField(),
                    SizedBox(height: 14),

                    //   brand names
                    ChooseBrand(
                      onTap: () {
                        Get.to(() => AllProductScreen());
                      },
                    ),
                    SizedBox(height: 5),
                    SizedBox(
                      height: 40,
                      child: ListView.builder(
                        itemCount: 20,
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Container(
                            height: 40,
                            width: 80,
                            margin: EdgeInsets.only(right: 8),
                            decoration: BoxDecoration(
                              color: dsColor,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.card_travel, size: 20),
                                SizedBox(width: 3),
                                Text(
                                  "Adidas",
                                  style: GoogleFonts.inter(
                                    color: Color(0xff1D1E20),
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 14),

                    //   product list
                  ],
                ),
                //   product grid
                Expanded(
                  child: GridView.builder(
                    itemCount: 4,
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisExtent: 220,
                    ),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Get.to(() => ProductDetailsScreen());
                        },
                        child: ProductItem(),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
