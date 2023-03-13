import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:shopping_app/consts/consts.dart';
import 'package:shopping_app/widgets_common/our_button.dart';

class Productdetails extends StatelessWidget {
  final String? title;
  const Productdetails({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        title: title!.text.color(darkFontGrey).fontFamily(bold).make(),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.share)),
          IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_outline)),
        ],
      ),
      body: Column(
        children: [
          Expanded(child: Padding(
            padding: const EdgeInsets.all(8),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  //swiper section
                  VxSwiper.builder(
                    autoPlay: true,
                    height: 350,
                    itemCount: 3,
                    aspectRatio: 16/9,
                    itemBuilder: (context,index){
                      return Image.asset(
                        imgFc5,
                        width: double.infinity,
                        fit: BoxFit.cover,
                        );
                    },
                  ),

                  10.heightBox,
                  //title and details section
                  title!.text.size(16).color(darkFontGrey).fontFamily(semibold).make(),
                  10.heightBox,
                  //rating
                  VxRating(onRatingUpdate: (value){},
                  normalColor: textfieldGrey,
                  selectionColor: golden,
                  count: 5,
                  size: 25,
                  stepInt: true,
                  ),
                  10.heightBox,
                  "\$30.000".text.color(redColor).fontFamily(bold).size(18).make(),
                  10.heightBox,

                  Column
                  (
                    children: [
                      Row(
                      children: [
                        SizedBox(
                          width: 100,
                          child: "Quantity: ".text.color(textfieldGrey).make(),
                        ),
                        Row(
                          children: [
                            IconButton(onPressed: (){}, icon: const Icon(Icons.remove)),
                            "0".text.size(16).color(darkFontGrey).fontFamily(bold).make(),
                            IconButton(onPressed: (){}, icon: const Icon(Icons.add)),
                            "(0 available)".text.color(textfieldGrey).make(),
                          ],
                  
                        ),
                        
                      ],
                    ).box.padding(const EdgeInsets.all(8)).make(),

                     //total row
                  Row(
                        children: [
                          SizedBox(
                            width: 100,
                            child: "Total: ".text.color(textfieldGrey).make(),
                          ),
                          "\$0.00".text.color(redColor).size(16).fontFamily(bold).make(),
                        ],
                      ).box.padding(const EdgeInsets.all(8)).make(),
                    ], 
                  ).box.white.shadowSm.make(),

                  //description section
                  10.heightBox,
                  "Description".text.color(darkFontGrey).fontFamily(semibold).make(),
                  10.heightBox,
                  "This is the dummy description of the dummy product...".text.color(darkFontGrey).make(),

                ],
              ),
            ),
          )),
          SizedBox(
            width: double.infinity,
            height: 60,
            child: ourButton(color: redColor,onPress:(){}, textColor: whiteColor,title: "Add to Cart" ),
          ),
        ],
      ),
    );
  }
}