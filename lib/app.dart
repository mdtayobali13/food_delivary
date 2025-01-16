import 'package:flutter/material.dart';
import 'package:food_delivary/allPages/home_page.dart';
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey.shade100,
          primaryColor: Colors.grey.shade100,
          textTheme: TextTheme(
          bodyMedium: TextStyle(
              fontSize: 25, fontWeight:FontWeight.bold,
          ),
            bodySmall: TextStyle(
                fontSize: 16, color: Colors.grey
            ),

        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: Colors.white,
              padding:EdgeInsets.all(18),
              shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0)
              )
          ),
        )
      ),
      home:HomePage(),
    );
  }
}
