import 'package:file_manager/resources/resources.dart';
import 'package:flutter/material.dart';

class CloudStorageInfo {
  final String icon, title, totalStrage;
  final int numOfFiles, percentage;
  final Color color;

  CloudStorageInfo(
      {required this.icon,
      required this.title,
      required this.totalStrage,
      required this.numOfFiles,
      required this.percentage,
      required this.color});
}

List demoMyFiles = [
  CloudStorageInfo(
      icon: AppIcons.documents,
      title: 'Documents',
      totalStrage: '1.9GB',
      numOfFiles: 1328,
      percentage: 35,
      color: AppColor.primaryColor),
  CloudStorageInfo(
      icon: AppIcons.documents,
      title: 'Documents',
      totalStrage: '1.9GB',
      numOfFiles: 1328,
      percentage: 87,
      color: Colors.amber),
  CloudStorageInfo(
      icon: AppIcons.googleDrive,
      title: 'Google Drive',
      totalStrage: '2.19GB',
      numOfFiles: 4311,
      percentage: 23,
      color: Colors.lightGreen),
  CloudStorageInfo(
      icon: AppIcons.oneDrive,
      title: 'One Drives',
      totalStrage: '2.6GB',
      numOfFiles: 1231,
      percentage: 56,
      color: Colors.blueAccent),
];
