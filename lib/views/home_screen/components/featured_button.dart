import 'package:shopping_app/consts/consts.dart';

Widget featuredButton({String? title, icon}) {
  return Row(
    children: [
      Image.asset(icon, width: 60, fit: BoxFit.fill),
      10.widthBox,
      title!.text.fontFamily(semibold).color(darkFontGrey).make(),
    ],
  ).box.width(200).margin(const EdgeInsets.symmetric(horizontal: 4)).padding(const EdgeInsets.all(8)).roundedSM.outerShadowSm.make();
}