import 'package:file_manager/conrollers/menu_controller.dart';
import 'package:file_manager/responsive.dart';
import 'package:file_manager/screens/dashboard/dashboard_screen.dart';
import 'package:flutter/material.dart';
import '../../components/drawer.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    //
    return Scaffold(
      key: context.read<MenuController>().scaffoldKey,
      body: SafeArea(
          child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (!Responsive.isDesktop(context))
            const Expanded(child: DrawerWidget()),
          const Expanded(flex: 5, child: DashboardScreen())
        ],
      )),
      drawer: const DrawerWidget(),
    );
  }
}
