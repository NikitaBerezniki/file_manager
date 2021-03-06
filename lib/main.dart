import 'package:file_manager/conrollers/menu_controller.dart';
import 'package:file_manager/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'screens/main/main_screen.dart';

void main() {
  runApp(const MyApp1());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
            child: Column(
          children: [Text('data')],
        )),
      ),
    );
  }
}

class MyApp1 extends StatelessWidget {
  const MyApp1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: AppColor.bgColor,
          textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
              .apply(bodyColor: Colors.white),
          canvasColor: AppColor.secondaryColor),
      title: 'File manager app',
      // home: const MainScreen(),
      home: MultiProvider(providers: [
        ChangeNotifierProvider(create: (context) => MenuController())
      ], child: const MainScreen()),
    );
  }
}
