import 'package:flutter/services.dart';

import 'config/consts.dart';
import 'splash_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: appname,
      theme: ThemeData(
        scaffoldBackgroundColor: whiteColor,
        appBarTheme: const AppBarTheme(backgroundColor: Colors.transparent),
        fontFamily: regular,
      ),
      home: const SplashScreen(),
    );
  }
}
