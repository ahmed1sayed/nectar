import 'package:flutter/material.dart';
import 'package:shop_app/screens/login/login%20screen.dart';

import '../../widgets/app_constants.dart';
import '../../widgets/app_widgets.dart';

class SelectLocationScreen extends StatefulWidget {
  const SelectLocationScreen({Key? key}) : super(key: key);

  @override
  State<SelectLocationScreen> createState() => _SelectLocationScreenState();
}

class _SelectLocationScreenState extends State<SelectLocationScreen> {
  var zoneController= TextEditingController();
  var areaController= TextEditingController();

  @override
  Widget build(BuildContext context) {
    var maxHeight=   MediaQuery.of(context).size.height;
    var maxWidth=    MediaQuery.of(context).size.width;
    return       Scaffold(

      body:screenBackGround(widget:SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:     [   SizedBox(height: maxHeight*.042,),

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: IconButton(onPressed: ( ){
                  Navigator.of(context).pop();
                }, icon:const Icon(Icons.arrow_back_ios)),
              ),
              SizedBox(height: maxHeight*.028,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(child: Image(image:
                const AssetImage('assets/images/illustration.png'),width: maxWidth*.3,)),
              ),
              const   Padding(
                padding: EdgeInsets.all(10.0),
                child: Center(child: Text('Select your location',style: TextStyle(fontSize: 40),)),

              ),
              const  Padding(
                padding: EdgeInsets.all(5.0),
                child: Center(child: Text('Switch on your location to stady in tune\n with what\'s happening in your area',style: TextStyle(fontSize: 20),)),
              ),
              defaultFormField(controller: zoneController,
                  type: TextInputType.text, label: 'types your zone',suffix: Icons.keyboard_arrow_down_outlined ),
              defaultFormField(controller: areaController,
                  type: TextInputType.text, label: 'types your area' ,suffix: Icons.keyboard_arrow_down_outlined),
              SizedBox(height: maxHeight*.028,),


              Center(child: defaultButton(img: greenButton,text: 'Submit',isCustom: false,onTap: (){   normalNavigate(context: context, method:
              const LoginScreen());})),




            ]),
      ),
      )
    );

  }
}
