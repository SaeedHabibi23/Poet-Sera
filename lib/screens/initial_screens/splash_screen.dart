import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:poet_sera/screens/home_screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  static const id = '/splash_screen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushNamedAndRemoveUntil(
          context, HomeScreen.id, (route) => false);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Text(
          'app_name'.tr(),
          style: const TextStyle(fontSize: 50),
        ),
      ),
    ));
  }
}
