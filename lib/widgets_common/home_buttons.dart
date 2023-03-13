import 'package:shopping_app/consts/consts.dart';

Widget homeButtons({width, height, icon, String? title, onPress}) {
  return Column(
    children: [
      Image.asset(icon, width: 26,),
      5.heightBox,
      title!.text.fontFamily(semibold).color(darkFontGrey).make(),
    ],
  ).box.rounded.white.size(width, height).make();
}