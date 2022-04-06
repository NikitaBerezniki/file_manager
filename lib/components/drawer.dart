import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../resources/resources.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(child: Image.asset(AppImages.logo)),
            DrawerListTile(
                text: 'Dashboard', icon: AppIcons.menuDashbord, press: () {}),
            DrawerListTile(
                text: 'Transaction', icon: AppIcons.menuTran, press: () {}),
            DrawerListTile(text: 'Task', icon: AppIcons.menuTask, press: () {}),
            DrawerListTile(
                text: 'Documents', icon: AppIcons.menuDoc, press: () {}),
            DrawerListTile(
                text: 'Store', icon: AppIcons.menuStore, press: () {}),
            DrawerListTile(
                text: 'Notifications',
                icon: AppIcons.menuNotification,
                press: () {}),
            DrawerListTile(
                text: 'Profile', icon: AppIcons.menuProfile, press: () {}),
            DrawerListTile(
                text: 'Settings', icon: AppIcons.menuSetting, press: () {}),
          ],
        ),
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  final VoidCallback? press;
  final String text, icon;
  const DrawerListTile({
    Key? key,
    this.press,
    required this.text,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(icon, color: Colors.white54, height: 16),
      title: Text(text, style: const TextStyle(color: Colors.white54)),
    );
  }
}
