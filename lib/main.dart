import 'package:flutter/material.dart';
 import 'package:shop_app/cache_helper.dart';
import 'package:shop_app/screens/on_boarding/on_boarding_screen.dart';

void main() {
 WidgetsFlutterBinding.ensureInitialized();

 // CacheHelper.init();

  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.green,
      ),
      home: const OnBoardingScreen(),
    );
  }
}
//https://github.com/ahmed1sayed/nectar.git
//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

