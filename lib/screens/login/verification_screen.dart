import 'package:flutter/material.dart';
import 'package:shop_app/screens/login/select_location_screen.dart';

import '../../widgets/app_widgets.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  var codeController= TextEditingController();

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        normalNavigate(context: context, method: const SelectLocationScreen());
      },
          child:const Icon(Icons.arrow_forward_ios)),
      body:screenBackGround(widget:  Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:   [           const SizedBox(height: 30,),

            IconButton(onPressed: ( ){
              Navigator.of(context).pop();
            }, icon: const Icon(Icons.arrow_back_ios)),
            const SizedBox(height: 50,),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text('inter your 4 digits code',style: TextStyle(fontSize: 40),),
            ),

            defaultFormField(controller: codeController,
                type: TextInputType.phone, label: 'code',hint: '----'),
            const Expanded(child: SizedBox()),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Align( alignment: Alignment.bottomLeft,
                child: Text('Resend code',style: TextStyle(fontSize: 25,color: Colors.green),),),
            )


          ]),)
    );

  }
}
