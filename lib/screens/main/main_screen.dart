import 'package:file_manager/screens/dashboard/dashboard_screen.dart';
import 'package:flutter/material.dart';
import '../../components/drawer.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Row(
        children: const [ 
           Expanded(child: DrawerWidget()),
          Expanded(flex: 5, child: DashboardScreen())
        ],
      )),
    );
  }
}