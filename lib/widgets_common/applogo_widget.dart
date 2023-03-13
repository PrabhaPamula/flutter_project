import 'package:shopping_app/consts/consts.dart';

Widget applogoWidget() {
  //using velocity X here
  return Image.asset(icAppLogo).box.white.size(77, 77).padding(const EdgeInsets.all(8)).rounded.make();
  //return Image.asset(shoppingcart).box.white.size(77, 77).padding(const EdgeInsets.all(8)).rounded.make();
}