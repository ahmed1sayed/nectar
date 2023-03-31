import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../cache_helper.dart';
import '../../widgets/app_widgets.dart';
 import '../login/sign_in_screen.dart';
class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  void submit() {
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) => const SignInScreen() /*const Home()*/,
        ), (route) {
      return false;
    });
  }

  @override
  Widget build(BuildContext context) {
  var maxHeight=   MediaQuery.of(context).size.height;
  var maxWidth=    MediaQuery.of(context).size.width;

    return Scaffold(

        body:
        Stack(children: [
            Image(image: const AssetImage('assets/images/8140 1.png'),
            fit: BoxFit.fill,
            width: maxWidth,
          ),
          Column(mainAxisAlignment: MainAxisAlignment.start,
              children: [ //
                  SizedBox(height: maxHeight*.45,),
                  Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Image(
                    image: const AssetImage('assets/images/Group (2).png'), width: maxWidth*0.15,

                  ),
                ),
                const Center(
                    child: Text(' Welcome \nto our store', style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal,
                        color: Colors.white),)),
                const Center(child: Text(
                  'Get your groceries as faster as one hour', style: TextStyle(
                    fontSize: 18,
                    fontStyle: FontStyle.normal,
                    color: Colors.white70),))
                , Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: InkWell(onTap: () {
                    normalNavigate(context: context, method:
                    const SignInScreen());
                  },
                      child: Stack(
                        alignment: Alignment.center,
                        children: const [
                          Image(image: AssetImage(
                              'assets/images/Rectangle 6 (2).png'),
                          ), Center(
                            child: Text('Get Started', style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                                color: Colors.white),),
                          )

                        ],)),
                ),
              ]
          )
        ],)

    );
  }


}
