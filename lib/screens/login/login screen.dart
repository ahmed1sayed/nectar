import 'package:flutter/material.dart';
import 'package:shop_app/screens/login/register_screen.dart';

import '../../widgets/app_constants.dart';
import '../../widgets/app_widgets.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
              SizedBox(height: maxHeight*.22,
                child:   Center(child:

                Image(image: const AssetImage('assets/images/Group (1).png'),width: maxWidth*.15,)),
              ),
              //const SizedBox(height: 5,),
              const Padding(
                padding: EdgeInsets.only(
                    bottom: 5, top: 15, left: 5, right: 5),
                child: Text(' Login',  style:TextStyle(fontSize: 45,color: Colors.black)
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Text('inter your email and password', style:TextStyle(fontSize: 22,color: Colors.black54)
                ),
              ),
                SizedBox(height: maxHeight*0.042,),

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
                  /*   LoginCubit
                        .get(context)
                        .isIcon,*/,
                  suffix: /*LoginCubit.get(context).suffex*/Icons.visibility_outlined,
                  IconSOnPressed: () {

                    /*     LoginCubit
                          .get(context)
                          .changePassIcon();
                      print(LoginCubit.get(context).isIcon);*/
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
                      // ignore: use_full_hex_values_for_flutter_colors
                        color:Colors.black,
                        fontSize: 16),),),
                  )
                ],
              ),
              //todo Login Button
              Center(child: defaultButton(img: greenButton,text: 'Login',isCustom: false)),
              //todo register Button
              RegisterTxtButton(text: 'Sign Up',onPressed: () {
                normalNavigate(context: context, method: const RegisterScreen());
              }),
            ],
          ),
        ),
      ),)


    );
  }
}
