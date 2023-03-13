import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:shopping_app/consts/consts.dart';
import 'package:shopping_app/consts/lists.dart';
import 'package:shopping_app/views/home_screen/components/featured_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      color: lightGrey,
      width: context.screenWidth,
      height: context.screenHeight,
      child: SafeArea(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
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

            //featured categories
           10.heightBox,
           Expanded(
             child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
               child: Column(
                children: [
                  Align(
                  alignment: Alignment.centerLeft,
                  child: featuredCategories.text.color(darkFontGrey).size(18).fontFamily(semibold).make()),
                  20.heightBox,
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                        3,
                        (index) => Column(
                          children: [
                            featuredButton(icon: featuredImages1[index], title: featuredTitles1[index]),
                            10.heightBox,
                            featuredButton(icon: featuredImages2[index], title: featuredTitles2[index]),
                          ],
                        )).toList(),
                    ),
                  ),

                  //all products section
                  20.heightBox,
                  GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 6,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: 8, crossAxisSpacing: 8, mainAxisExtent: 300), 
                    itemBuilder: (context, index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            imgP5, 
                            height: 200,
                            width: 200, 
                            fit: BoxFit.cover,
                          ),
                          const Spacer(),
                          "Laptop 4GB/64GB".text.fontFamily(semibold).color(darkFontGrey).make(),
                          10.heightBox,
                          "\$600".text.color(redColor).fontFamily(bold).size(16).make(),
                          10.heightBox,
                        ],
                      ).box.white.margin(const EdgeInsets.symmetric(horizontal: 4)).roundedSM.padding(const EdgeInsets.all(12)).make();
                  })


                ],
               ),
             ),
           ),



          ],
        )),
    );
  }
}