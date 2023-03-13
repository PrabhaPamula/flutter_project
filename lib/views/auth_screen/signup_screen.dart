import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../consts/consts.dart';
import '../../widgets_common/applogo_widget.dart';
import '../../widgets_common/bg_widget.dart';
import '../../widgets_common/custom_textfield.dart';
import '../../widgets_common/our_button.dart';
import '../home_screen/home.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}


class _SignupScreenState extends State<SignupScreen> {
  bool? isCheck = false;
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
              "Join the to $appname".text.fontFamily(bold).white.size(10).make(),
              50.heightBox,
              Column(
                children: [
                  customTextField(hint: nameHint, title: name),
                  customTextField(hint: emailHint, title: email),
                  customTextField(hint: passwordHint, title: password),
                  customTextField(hint: passwordHint, title: retypePassword),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(onPressed: () {}, child: forgotPass.text.make())),
                    5.heightBox,
                    //ourButton().box.width(context.screenWidth-50).make(),
                   
                    Row(
                      children: [
                        Checkbox(checkColor: redColor ,value: isCheck, onChanged: (newValue) {
                          setState(() {
                            isCheck = newValue;
                          });
                        },
                        ),
                        10.widthBox,
                        Expanded(
                          child: RichText(
                            text: const TextSpan(
                              children: [
                                TextSpan(
                                  text: "I agree to the ",
                                  style: TextStyle(
                                    fontFamily: bold,
                                    color: fontGrey,
                                  )
                                ),
                                TextSpan(
                                  text: termsandConditions,
                                  style: TextStyle(
                                    fontFamily: bold,
                                    color: fontGrey,
                                  )
                                ),
                                TextSpan(
                                  text: "&",
                                  style: TextStyle(
                                    fontFamily: bold,
                                    color: fontGrey,
                                  )
                                ),
                                TextSpan(
                                  text: privacypolicy,
                                  style: TextStyle(
                                    fontFamily: bold,
                                    color: fontGrey,
                                  )
                                ),
                              ],
                            )
                          )
                        )
                      ],
                    ),

                    ourButton(color: redColor, title: signup, textColor: whiteColor, onPress: () {
                      // Get.to(() => const HomeScreen());
                    })
                    .box
                    .width(context.screenWidth-50)
                    .make(),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        alreadyHaveAccount.text.color(fontGrey).make(),
                        login.text.color(redColor).make().onTap(() {
                          Get.back();
                        }),
                      ],
                    ),
                    

                ],
              ).box.white.rounded.padding(const EdgeInsets.all(16)).width(context.screenWidth-70).shadowSm.make()
             ],
          ),
        ),
      ));
  }
}