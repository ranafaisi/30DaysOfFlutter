import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tutorial_app/pages/homepage.dart';
import 'package:tutorial_app/pages/login_page.dart';
import 'package:tutorial_app/utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //debugShowCheckedModeBanner: false,
      //home: HomePAge(), If we will define the Routes then we will remove this return home to neglect overlap error
//USede to change the color of the theme
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),

      darkTheme: ThemeData(brightness: Brightness.light),

      // routes use to give the direction of the pages as / use in web to define page route
      //initialRoute:"/home", // This InitialRoute is used to display the First screen
      routes: {
        "/": (context) => const LoginPage(),
        //"/home": (context) => const HomePage(),
        //"/login": (context) => const LoginPage(),

        // Now we will use the below defined class or routes as route instead of using above mentioned routes
        MyRoutes.homeRout: (context) => const HomePage(),
        MyRoutes.loginRout: (context) => const LoginPage(),
      },
    );
  }
}
