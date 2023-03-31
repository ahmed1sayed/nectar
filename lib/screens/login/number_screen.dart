import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/screens/login/verification_screen.dart';

import '../../widgets/app_widgets.dart';

class NumberScreen extends StatefulWidget {
  const NumberScreen({Key? key}) : super(key: key);

  @override
  State<NumberScreen> createState() => _NumberScreenState();
}

class _NumberScreenState extends State<NumberScreen> {
  final countryPicker = const FlCountryCodePicker();
  final countryPickerWithParams = const FlCountryCodePicker(
    filteredCountries:['{@+972}'] ,
    showDialCode: true,
    showSearchBar: true,
  );
  var numController = TextEditingController();
  Widget?flag;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        normalNavigate(context: context, method: const VerificationScreen());
      },
          child: const Icon(Icons.arrow_forward_ios)),
      body: screenBackGround(widget:       SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [ const SizedBox(height: 30,),

              IconButton(onPressed: () {
                Navigator.of(context).pop();
              }, icon: const Icon(Icons.arrow_back_ios)),
              const SizedBox(height: 50,),
              const Padding(
                padding: EdgeInsets.all(15.0),
                child: Text('inter your number', style: TextStyle(fontSize: 40),),
              ),

              defaultFormField(controller: numController,
                  imgOntap: ()  async {
                    // Show the country code picker when tapped.
                    final code = await countryPicker.showPicker(context: context,
                    );
                    if (code != null) {
                      numController.text=code.dialCode;

                      setState(() {
                        flag=code.flagImage;

                      });
                    }
                  },
                  flag: flag,
                  img: 'assets/images/Rectangle 11.png',

                  type: TextInputType.phone,
                  hint: '  phone number'),

            ]),
      ),
      )
    );
  }
}
