import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:shopping_app/consts/consts.dart';
import 'package:shopping_app/views/auth_screen/login.dart';
import 'package:shopping_app/widgets_common/bg_widget.dart';

// class ProfileScreen extends StatelessWidget {
//   const ProfileScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return bgWidget(
//       child: Scaffold(
//         backgroundColor: lightGrey,
//         body: SafeArea(
//           child: Container(
//             padding: const EdgeInsets.symmetric(horizontal: 24.0),
            
//             //padding: const EdgeInsets.all(8),
//             child: Column(
              
//               children: [
                
//                 Row(
//                   children: [
//                     SizedBox(
//                       height: 200,
//                     ),
                   
//                     Image.asset(imgProfile2,width: 100,fit: BoxFit.cover).box.roundedFull.clip(Clip.antiAlias).make(),
//                     10.heightBox,
//                     Expanded(child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         " Dummy User".text.fontFamily(semibold).black.make(),
                       
//                         " customer@example.com".text.black.make(),

//                       ],
//                     )),
                    
//                   ],
//                 ),
//                 Row(
//                   children: [
//                     OutlinedButton(
//                           style: OutlinedButton.styleFrom(
//                             side: const BorderSide(
//                               color: Colors.black,
//                             )
//                           ),
//                           onPressed: (){
//                             Navigator.push(context,
//                               MaterialPageRoute(builder: (context) => Login()));
//                           }, 
//                           child: logout.text.fontFamily(semibold).black.make(),
//                           ),
//                         ],
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        backgroundColor: lightGrey,
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            
            //padding: const EdgeInsets.all(8),
            child: Column(
              
              children: [
                
                // SizedBox(
                //   height: 200,
                // ),
                50.heightBox,
                Image.asset(imgProfile,width: 100,fit: BoxFit.cover).box.roundedFull.clip(Clip.antiAlias).alignTopCenter.make(),
                20.heightBox,
                Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  10.heightBox,
                  Row(
                    children: [
                      "Username: ".text.fontFamily(semibold).size(16).black.make(),
                      "Dummy User".text.fontFamily(semibold).size(16).black.make(),
                    ],
                  ),
                  10.heightBox,
                  Row(
                    children: [
                      "Email: ".text.black.size(16).make(),
                      "customer@example.com".text.black.size(16).make(),
                    ],
                  ),
                20.heightBox,
                  OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(
                            color: Colors.black,
                          )
                        ),
                        onPressed: (){
                          FirebaseAuth.instance.signOut().then((value) {
                            print("Signed Out");
                            Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Login()));
                          });
                          
                        }, 
                        child: logout.text.fontFamily(semibold).black.make(),
                        ),
                
                ],
                              ).box.white.rounded.padding(const EdgeInsets.all(16)).width(context.screenWidth-50).shadowSm.make(),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}