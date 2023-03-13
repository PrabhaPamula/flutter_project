import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:shopping_app/consts/consts.dart';
import 'package:shopping_app/views/auth_screen/signup_screen.dart';
import 'package:shopping_app/widgets_common/applogo_widget.dart';
import 'package:shopping_app/widgets_common/bg_widget.dart';
import 'package:shopping_app/widgets_common/custom_textfield.dart';
import 'package:shopping_app/widgets_common/our_button.dart';

import '../home_screen/home.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: Column(
            children: [
              (context.screenHeight*0.1).heightBox,
              applogoWidget(),
              10.heightBox,
              "Log in to $appname".text.fontFamily(bold).white.size(10).make(),
              50.heightBox,
              Column(
                children: [
                  customTextField(hint: emailHint, title: email),
                  customTextField(hint: passwordHint, title: password),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(onPressed: () {}, child: forgotPass.text.make())),
                    5.heightBox,
                    //ourButton().box.width(context.screenWidth-50).make(),
                    ourButton(color: redColor, title: login, textColor: whiteColor, onPress: () {
                      Get.to(() => const Home());
                    })
                    .box
                    .width(context.screenWidth-50)
                    .make(),
                    5.heightBox,
                    createNewAccount.text.color(fontGrey).make(),
                    5.heightBox,
                    ourButton(color: lightGolden, title: signup, textColor: redColor, onPress: () {
                      Get.to(() => const SignupScreen());
                    })
                    .box
                    .width(context.screenWidth-50)
                    .make(),
                    50.heightBox,

                ],
              ).box.white.rounded.padding(const EdgeInsets.all(16)).width(context.screenWidth-70).shadowSm.make()
             ],
          ),
        ),
      ));
  }
}