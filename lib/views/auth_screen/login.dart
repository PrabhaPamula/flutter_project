import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:shopping_app/consts/consts.dart';
import 'package:shopping_app/views/auth_screen/signup.dart';
import 'package:shopping_app/views/home_screen/home.dart';
import 'package:shopping_app/widgets_common/applogo_widget.dart';
import 'package:shopping_app/widgets_common/bg_widget.dart';
import 'package:shopping_app/widgets_common/reusabletext.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: lightGrey,
            //   gradient: LinearGradient(colors: [
              
            // ])
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                20, MediaQuery.of(context).size.height*0.2, 20, 0),
                child: Column(
                  children: [
                    applogoWidget(),
                    SizedBox(
                      height: 30,
                    ),
                    reusableTextField("Enter Username", false, _emailTextController),
                    SizedBox(
                      height: 20,
                    ),
                    reusableTextField("Enter Password", true, _passwordTextController),
                    SizedBox(
                      height: 20,
                    ),
                    loginSignupButton(context, true, () {
                      Navigator.push(context,
                       MaterialPageRoute(builder: (context) => Home()));
                    }),
                    signupOption()
                  ],
                ),
            ),
          ),
        ),
      ),
    );
  }

  Row signupOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Don't have account?",
        style: TextStyle(color: Colors.black)),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
             MaterialPageRoute(builder: (context) => Signup()));
          },
          child: const Text(
            " Sign Up",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}