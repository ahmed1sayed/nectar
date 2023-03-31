import 'package:flutter/material.dart';
import 'package:shop_app/screens/login/login%20screen.dart';

import '../../widgets/app_constants.dart';
import '../../widgets/app_widgets.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController phoneController=TextEditingController();
  TextEditingController nameController=TextEditingController();
  TextEditingController emailController=TextEditingController();
  TextEditingController passController=TextEditingController();
  var formKey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var maxHeight=   MediaQuery.of(context).size.height;
    var maxWidth=    MediaQuery.of(context).size.width;
    return Scaffold(


        body:screenBackGround(
          widget:  SingleChildScrollView(

            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    SizedBox(height: maxHeight*.045,),
                  SizedBox(height: maxHeight*.2,
                    child:   Center(child:

                    Image(image: const AssetImage('assets/images/Group (1).png'),width: maxWidth*.15,)),
                  ),
                  //const SizedBox(height: 5,),
                  const Padding(
                    padding: EdgeInsets.only(
                  top: 15, left: 5, right: 5),
                    child: Text(' Sign Up',  style:TextStyle(fontSize: 45,color: Colors.black)
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 15.0),
                    child: Text('inter your email and password', style:TextStyle(fontSize: 22,color: Colors.black54)
                    ),
                  ),
                    SizedBox(height: maxHeight*.04,),

                  defaultFormField(controller: nameController,
                      type: TextInputType.text,
                      validate: (String? value) {
                        if (value!.isEmpty) {
                          return 'write your user name';
                        }
                        else {
                          return null;
                        }
                      },
                      label: 'name',
                      prefix: Icons.person),
                  defaultFormField(controller: emailController,
                      type: TextInputType.text,
                      validate: (String? value) {
                        if (value!.isEmpty) {
                          return 'write your email';
                        }
                        else {
                          return null;
                        }
                      },
                      label: 'email',
                      prefix: Icons.email),


                  defaultFormField(controller: passController,
                      scure:false
                  ,
                      suffix: Icons.visibility_outlined,
                      IconSOnPressed: () {


                      },
                      type: TextInputType.text,
                      validate: (String? validate) {
                        if (validate!.isEmpty) {
                          return 'write your password';
                        }
                        else {
                          return null;
                        }
                      },
                      label: 'password',
                      prefix: Icons.lock),

                  Row(mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: TextButton(onPressed:(){} , child: const Text('forgot your password?',style: TextStyle(
                             color:Colors.black,
                            fontSize: 16),),),
                      )
                    ],
                  ),
                  //todo Login Button
                  Center(child: defaultButton(img: greenButton,text: 'Sign Up',isCustom: false)),
                  //todo register Button
                  RegisterTxtButton(text: 'Login',onPressed: () {
                    normalNavigate(context: context, method: const LoginScreen());
                  }),

                ],
              ),
            ),
          ),)


    );
  }
}
