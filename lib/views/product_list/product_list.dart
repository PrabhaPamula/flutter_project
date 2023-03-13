// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
// import 'package:get/get.dart';
// import 'package:shopping_app/consts/consts.dart';
// import 'package:shopping_app/consts/lists.dart';
// import 'package:shopping_app/views/product_list/product_details.dart';
// import 'package:shopping_app/widgets_common/bg_widget.dart';

// class ProductList extends StatelessWidget {
//   const ProductList({super.key});

//   @override
//   Widget build(BuildContext context) {
//       return Container(
//         padding: const EdgeInsets.all(12),
//         color: lightGrey,
//         width: context.screenWidth,
//         height: context.screenHeight,
//             child: Column(
//               children: [
//                 //items container
//                 20.heightBox,
//                 Expanded(
//                   child: GridView.builder(
//                     physics: const BouncingScrollPhysics(),
//                     shrinkWrap: true,
//                     itemCount: 10,
//                     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisExtent: 250, mainAxisSpacing: 8, crossAxisSpacing: 8), 
//                     itemBuilder: (context, index) {
//                       return Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Image.asset(
//                               productListImages[index], 
//                               height: 150,
//                               width: 200, 
//                               fit: BoxFit.cover,
//                             ),
                            
//                             productListNames[index].text.fontFamily(semibold).color(darkFontGrey).make(),
//                             10.heightBox,
//                             productListPrice[index].text.color(redColor).fontFamily(bold).size(16).make(),
//                             10.heightBox,
//                           ],
//                         ).box.white.margin(const EdgeInsets.symmetric(horizontal: 4)).roundedSM.outerShadowSm.padding(const EdgeInsets.all(12)).make().onTap(() {
//                           Get.to(() => const Productdetails(title: "dummy title"));
//                         });
//                     })
//                 )
//               ],
//             ),
//           );
    
//   }
// }


import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:shopping_app/consts/consts.dart';
import 'package:shopping_app/consts/lists.dart';
import 'package:shopping_app/views/product_list/product_details.dart';
import 'package:shopping_app/widgets_common/bg_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'package:shopping_app/views/model/cart_model.dart';
import 'package:shopping_app/views/components/product_item_tile.dart';
import 'package:shopping_app/views/cart_screen/cart_screen.dart';

class ProductList extends StatefulWidget {
  const ProductList({super.key});

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        //appBar: AppBar(
          //backgroundColor: Colors.transparent,
         // elevation: 0,
          // leading: Padding(
          //   padding: const EdgeInsets.only(left: 24.0),
          //   child: Icon(
          //     Icons.location_on,
          //     color: Colors.grey[700],
          //   ),
          // ),
          // title: Text(
          //   'Sydney, Australia',
          //   style: TextStyle(
          //     fontSize: 16,
          //     color: Colors.grey[700],
          //   ),
          // ),
          // centerTitle: false,
          // actions: [
          //   Padding(
          //     padding: const EdgeInsets.only(right: 24.0),
          //     child: Container(
          //       padding: EdgeInsets.all(16),
          //       decoration: BoxDecoration(
          //         color: Colors.grey[200],
          //         borderRadius: BorderRadius.circular(12),
          //       ),
          //       child: Icon(
          //         Icons.person,
          //         color: Colors.grey,
          //       ),
          //     ),
          //   ),
          // ],
        //),
        // floatingActionButton: FloatingActionButton(
        //   backgroundColor: Colors.black,
        //   onPressed: () => Navigator.push(
        //     context,
        //     MaterialPageRoute(
        //       builder: (context) {
        //         return CartPage();
        //       },
        //     ),
        //   ),
        //   child: const Icon(Icons.shopping_bag),
        // ),
        body: Container(
          padding: const EdgeInsets.all(12),
          color: lightGrey,
          child: SafeArea(
            child: Column(
              
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                30.heightBox,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Text(
                    "Welcome",
                    style: GoogleFonts.notoSerif(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ),
    
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Text(
                    "What do you want to buy today?",
                    style: GoogleFonts.notoSerif(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
                
                20.heightBox,
                
                // "Welcome".text.fontFamily(semibold).color(darkFontGrey).size(24).make(),
                // 10.heightBox,
                // "What do you want to buy today?".text.color(darkFontGrey).fontFamily(bold).size(16).make(),
                // 10.heightBox,
    
    
    
                Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                height: 60,
                color: lightGrey,
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    suffixIcon: Icon(Icons.search),
                    filled: true,
                    fillColor: whiteColor,
                    hintText:search,
                    hintStyle: TextStyle(color: textfieldGrey),
                  ),
                  
                ),
                
                ),
                //const SizedBox(height: 48),
                
                // good morning bro
                // const Padding(
                //   padding: EdgeInsets.symmetric(horizontal: 24.0),
                //   child: Text('Good morning,'),
                // ),
                
                // const SizedBox(height: 4),
                
                // // Let's order fresh items for you
                // Padding(
                //   padding: const EdgeInsets.symmetric(horizontal: 24.0),
                //   child: Text(
                //     "Let's order the products for you",
                //     style: GoogleFonts.notoSerif(
                //       fontSize: 36,
                //       fontWeight: FontWeight.bold,
                //     ),
                //   ),
                // ),
                
                // const SizedBox(height: 24),
                
                // const Padding(
                //   padding: EdgeInsets.symmetric(horizontal: 24.0),
                //   child: Divider(),
                // ),
                
                //const SizedBox(height: 24),
    
                const SizedBox(height: 24),
                // categories -> horizontal listview
                // Padding(
                //   padding: const EdgeInsets.symmetric(horizontal: 24.0),
                //   child: Text(
                //     "All Products",
                //     style: GoogleFonts.notoSerif(
                //       fontWeight: FontWeight.bold,
                //       fontSize: 24,
                //     ),
                //   ),
                // ),
                
                // recent orders -> show last 3
                Expanded(
                  child: Consumer<CartModel>(
                    builder: (context, value, child) {
                      return GridView.builder(
                        padding: const EdgeInsets.all(12),
                        physics: const BouncingScrollPhysics(),
                        itemCount: value.shopItems.length,
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 1 / 1.2,
                          mainAxisSpacing: 15, 
                          crossAxisSpacing: 8, 
                          mainAxisExtent: 250,
                        ),
                        itemBuilder: (context, index) {
                          return GroceryItemTile(
                            itemName: value.shopItems[index][0],
                            itemPrice: value.shopItems[index][1],
                            imagePath: value.shopItems[index][2],
                            color: value.shopItems[index][3],
                            onPressed: () =>
                                Provider.of<CartModel>(context, listen: false)
                                    .addItemToCart(index),
                          );
                        },
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