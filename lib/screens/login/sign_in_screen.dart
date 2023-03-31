import 'package:flutter/material.dart';
import 'package:shop_app/screens/login/number_screen.dart';
import 'package:shop_app/widgets/app_widgets.dart';

import '../../widgets/app_constants.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
 var numController= TextEditingController();
  @override
  //assets/images/601 1.png
  Widget build(BuildContext context) {
    var maxHeight=   MediaQuery.of(context).size.height;
   // var maxWidth=    MediaQuery.of(context).size.width;
    return   Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:   [
       const Image(image: AssetImage('assets/images/601 1.png'),),
            const   Text('get your groceries with nectar'),

          defaultFormField(controller: numController,ontap: (){
normalNavigate(context: context, method: const NumberScreen());
          },img: 'assets/images/Rectangle 11.png',
              type: TextInputType.none, hint: '  phone number'),
              SizedBox(height: maxHeight*0.03,),

            const   Text('or connect with social media'),
              SizedBox(height: maxHeight*0.03,),

            defaultButton(img: googleButton,text: 'G' ,supText: 'continue with google',isCustom: true),

              SizedBox(height: maxHeight*0.015,),
            defaultButton(img: facebookButton,text: 'f' ,supText: 'continue with facebook',isCustom: true),

          ]),
    );
  }
}


