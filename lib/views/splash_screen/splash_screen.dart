import 'package:get/get.dart';
import 'package:shopping_app/consts/consts.dart';
import 'package:shopping_app/views/auth_screen/login.dart';
import 'package:shopping_app/views/auth_screen/login_screen.dart';
import 'package:shopping_app/widgets_common/applogo_widget.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  //creating a method to change screen

  changeScreen() {
    Future.delayed(const Duration(seconds: 2), () {
      //using getX
      Get.to(() => const Login());
      //Get.to(() => const LoginScreen());
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    changeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          children: [
            Align(alignment: Alignment.topLeft, child: Image.asset(icSplashBg, width: 300,)),
            20.heightBox,
            applogoWidget(),
            10.heightBox,
            appname.text.fontFamily(bold).size(22).white.make(),
            5.heightBox,
            appversion.text.white.make(),
            //const Spacer(),
            //credits.text.white.fontFamily(semibold).make(),
            //30.heightBox,
          ],
        ),
      ),
    );
    //return const Placeholder();
  }
}