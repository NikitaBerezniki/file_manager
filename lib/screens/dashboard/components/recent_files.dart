import 'package:file_manager/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../models/recent_file.dart';



class RecentFilesWidget extends StatelessWidget {
  const RecentFilesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppConst.defaultPadding),
      decoration: const BoxDecoration(
          color: AppColor.secondaryColor,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text('Recent Files', style: Theme.of(context).textTheme.subtitle1),
        SizedBox(
          width: double.infinity,
          child: DataTable(
              horizontalMargin: 0,
              columnSpacing: AppConst.defaultPadding,
              columns: const [
                DataColumn(
                  label: Text('File name'),
                ),
                DataColumn(label: Text('Date')),
                DataColumn(label: Text('Size'))
              ],
              rows: List.generate(demoRecentFiles.length,
                  (index) => recentFileDataRow(demoRecentFiles[index]))),
        ),
      ]),
    );
  }

  DataRow recentFileDataRow(RecentFile fileInfo) {
    return DataRow(cells: [
      DataCell(
        Row(
          children: [
            SvgPicture.asset(fileInfo.icon, width: 30, height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: AppConst.defaultPadding),
              child: Text(fileInfo.title),
            )
          ],
        ),
      ),
      DataCell(Text(fileInfo.date)),
      DataCell(Text(fileInfo.size)),
    ]);
  }
}
