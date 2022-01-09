import 'package:cofee_shop/views/homepage.dart';
import 'package:cofee_shop/theme.dart';
import 'package:cofee_shop/views/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          fontFamily: GoogleFonts.roboto().fontFamily,
          scaffoldBackgroundColor: AppTheme.whiteColor),
      home: const SplashScreen(),
    );
  }
}
