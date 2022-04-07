import 'package:file_manager/resources/resources.dart';
import 'package:faker/faker.dart';

class RecentFile {
  final String icon, title, date, size;

  RecentFile(
      {required this.icon,
      required this.title,
      required this.date,
      required this.size});
}

final List<RecentFile> demoRecentFiles = [
  RecentFile(
      icon: AppIcons.xdFile,
      title: 'XD file',
      date: faker.date.time().toString(),
      size: '3.5 mb'),
  RecentFile(
      icon: AppIcons.figmaFile,
      title: 'figma file',
      date: faker.date.random.toString(),
      size: '3.5 mb'),
  RecentFile(
      icon: AppIcons.docFile,
      title: 'doc file',
      date: faker.date.random.toString(),
      size: '3.5 mb'),
];
