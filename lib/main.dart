import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:poet_sera/constants/color.dart';
import 'package:poet_sera/screens/home_screens/home_screen.dart';
import 'package:poet_sera/screens/home_screens/poet_detail_screen.dart';
import 'package:poet_sera/screens/initial_screens/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: kBackgroundColor,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: kBackgroundColor,
      systemNavigationBarIconBrightness: Brightness.dark,
      systemNavigationBarDividerColor: kBackgroundColor));
  runApp(
    EasyLocalization(
        supportedLocales: const [Locale('fa')],
        path: 'assets/translations',
        fallbackLocale: const Locale('fa'),
        child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'app_name'.tr(),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
      ),
      initialRoute: SplashScreen.id,
      routes: {
        SplashScreen.id: (context) => const SplashScreen(),
        HomeScreen.id: (context) => const HomeScreen(),
        PoetDetailScreen.id: (context) => const PoetDetailScreen(),
      },
    );
  }
}


