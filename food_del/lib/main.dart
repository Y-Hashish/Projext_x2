import 'package:flutter/material.dart';
import 'package:frist_pages/features/auth/onboarding/page/onBoarding_page.dart';
import 'package:frist_pages/features/auth/registration/view/page/regisration_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
 void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

  bool onBoarding = sharedPreferences.getBool('onBoarding') ?? false;

  MaterialApp materialApp = MaterialApp(
    debugShowCheckedModeBanner: false,
    home: onBoarding ? const RegistrationPage() : const onBoardingPage(),
    
  );

  // MaterialApp materialApp = const MaterialApp(
  //   home: dashboardpage(),

  // );

  runApp(materialApp);

}
