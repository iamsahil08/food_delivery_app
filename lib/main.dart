import 'package:flutter/material.dart';
import 'package:food_delivery_app_mitch_koko/auth/login_or_register.dart';
import 'package:food_delivery_app_mitch_koko/models/restaurant.dart';
import 'package:food_delivery_app_mitch_koko/themes/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    // theme provider
    ChangeNotifierProvider(create: (context) => ThemeProvider()),

    // restaurant provider
    ChangeNotifierProvider(create: (context) => Restaurant())
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: const EdgeInsets.only(bottom: 0),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const LoginOrRegister(),
        theme: Provider.of<ThemeProvider>(context).themeData,
      ),
    );
  }
}
