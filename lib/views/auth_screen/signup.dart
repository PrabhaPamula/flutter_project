import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/consts/consts.dart';
import 'package:shopping_app/views/auth_screen/login.dart';
import 'package:shopping_app/views/home_screen/home.dart';
import 'package:shopping_app/widgets_common/applogo_widget.dart';
import 'package:shopping_app/widgets_common/reusabletext.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _userNameTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
            color: Colors.grey[800],
        ),
        
      ),
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
              20, MediaQuery.of(context).size.height*0.15, 20, 0),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.0),
                  child: Text(
                    "Sign Up",
                    style: GoogleFonts.notoSerif(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                20.heightBox,
                applogoWidget(),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField(" Enter Username", false, _userNameTextController),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField(" Enter Email Id", false, _emailTextController),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField(" Enter Password", true, _passwordTextController),
                const SizedBox(
                  height: 20,
                ),
                loginSignupButton(context, false, () {
                  Navigator.push(context,
                   MaterialPageRoute(builder: (context) => Login()));
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}