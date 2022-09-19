import 'package:azkar_app/screens/home_screen.dart';
import 'package:azkar_app/screens/info_screen.dart';
import 'package:azkar_app/screens/launch_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,

      ],
        supportedLocales: const[
          Locale('ar'),
        ],
        locale:const Locale('ar'),
        initialRoute: '/launch_screen',
      routes: {
        '/launch_screen': (context) => const LaunchScreen(),
        '/home_screen': (context) => const HomeScreen(),
        '/info_screen': (context) => /*const*/ InfoScreen(),
      });
  }
}
