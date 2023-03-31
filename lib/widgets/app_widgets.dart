

import 'package:flutter/material.dart';
Widget screenBackGround({required Widget widget})=>
Stack(
 children:[
 Column(

   mainAxisAlignment: MainAxisAlignment.spaceBetween,
   children: const [
   Image(image: AssetImage('assets/images/Rectangle 17.png'))
  ,
    Expanded(child: SizedBox()),
    Image(image: AssetImage('assets/images/Rectangle 16.png'))


 ],),
   widget

 ]

 );
Widget defaultButton({required String img,required String text,required bool isCustom, supText,onTap})=>
   InkWell(
       onTap:onTap,
   child:SizedBox(
     height: 68,
     width: 365,
     child: Stack(
     alignment: Alignment.center,
     children:   [
     Image(image: AssetImage(img),
     ),isCustom==false?Center(
     child: Text(text, style: const TextStyle(
     fontSize: 30,
     fontWeight: FontWeight.bold,
     fontStyle: FontStyle.normal,
     color: Colors.white),),
     ):Padding(
       padding: const EdgeInsets.only(left: 20.0),
       child: Row(
           mainAxisAlignment: MainAxisAlignment.start,
           children: [
             Text(text, style: const TextStyle(
                 fontSize: 30,
                 fontWeight: FontWeight.bold,
                 fontStyle: FontStyle.normal,
                 color: Colors.white),),
             const SizedBox(width: 50,),Text(supText, style: const TextStyle(
                 fontSize: 20,
                 fontWeight: FontWeight.normal,
                 fontStyle: FontStyle.normal,
                 color: Colors.white),),
           ],),
     )

 ],),
   ) );
void navigateTo(context,widget)=>Navigator.push(context, MaterialPageRoute(builder: (context)=>widget));

Padding defaultFormField({required controller,
  hint,
ontap,
  required TextInputType type,
  String? Function(String?)? validate,
       label,
  IconData ? prefix,
  IconData ? suffix,
  bool scure = false,
  img,
  void Function()?IconSOnPressed,
  void Function()?IconPOnPressed,
  void Function()?imgOntap,flag


}){
  return  Padding(
    padding:  const EdgeInsets.only(right: 25,left: 25,bottom: 10,top: 10),
    child: TextFormField(

onTap: ontap??(){},
      keyboardType: type,
      controller: controller,

      validator: validate,
      obscureText: scure,
      decoration:   InputDecoration(

        border:  const UnderlineInputBorder(),
        hintText: hint??'',
        labelText:label,
        prefixIconConstraints: const BoxConstraints(maxHeight: 45,maxWidth: 90),

        prefixIcon:
       img!=null?
       flag==null?Padding(
         padding: const EdgeInsets.all(10.0),
         child: InkWell(
             onTap: imgOntap,
             child: Image(image:AssetImage(img))),
       ):Padding(
         padding: const EdgeInsets.all(10.0),
         child: InkWell(
             onTap:imgOntap ,
             child: flag,),
       ):null,

        suffixIcon: IconButton(icon:  Icon(suffix),onPressed: IconSOnPressed
        ),


      ),


    ),

  );
}

Widget CustomButton({required void Function()? onTap,required String title,double? width,double? height, double? fontSize }){
  return Center(
    child: Padding(
      padding:const EdgeInsets.only(top: 5),

      child: SizedBox(
        height:height?? 40,
        width:width?? 367,
        child: ElevatedButton(

          onPressed:onTap,
          child:   Text(title, style: TextStyle( fontSize:fontSize?? 22,fontWeight: FontWeight.bold),),
        ),
      ),
    ),
  );
}

Widget RegisterTxtButton({required void Function()? onPressed,required text}){return
  Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children:  [
      const Text('don\'t have an account ?',style: TextStyle(
          color: Colors.black,
          fontSize: 18),),  TextButton(onPressed:onPressed , child:   Text(text,style: const TextStyle(
        // ignore: use_full_hex_values_for_flutter_colors
          color:Color(0xFFFF44A3C4),
          fontSize: 18),),)
    ],
  );
}


Widget customTextButton({required void Function()? onPressed,required String text}){

  return
    Padding(
      padding: const EdgeInsets.all( 12),
      child: TextButton(onPressed:onPressed , child:   Text(text,style: const TextStyle(
        // ignore: use_full_hex_values_for_flutter_colors
          color:Color(0xFFFF44A3C4),
          fontSize: 20),),),
    );
}
void normalNavigate(
    {required context,
      required method}){
  Navigator.push(context, MaterialPageRoute(builder: (context)=>method));

}

void navigateAndFinish(
    {required context,
      required method}) {
  Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context)=>method /*const Home()*/,
      ), (route) {
    return false;
  });
}

void printFullText(String text){
  final pattern=RegExp('.{1,800}');//800 is the size of each chunk
  pattern.allMatches(text).forEach((element) =>print(element.group(0)));
}
PreferredSizeWidget? postAppbar({required String title,required BuildContext context,
  required void Function()? actionOnPressed,
  required String actionTitle
})=>AppBar(title: Text(title),
  leading: IconButton(icon: const Icon(Icons.arrow_back_ios),
    onPressed: (){Navigator.pop(context);
    },),
  actions: [   Padding(
    padding: const EdgeInsets.all( 12),
    child: TextButton(onPressed:  actionOnPressed, child:   Text(actionTitle,style: const TextStyle(
// ignore: use_full_hex_values_for_flutter_colors
        color:Color(0xFFFF44A3C4),
        fontSize: 20),),),
  ),],
);
